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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Permission") {
                self.permission = dict["Permission"] as! String
            }
            if dict.keys.contains("UserAliUid") {
                self.userAliUid = dict["UserAliUid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("SharedAccounts") {
            var tmp : [AddServiceSharedAccountsRequest.SharedAccounts] = []
            for v in dict["SharedAccounts"] as! [Any] {
                var model = AddServiceSharedAccountsRequest.SharedAccounts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sharedAccounts = tmp
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddServiceSharedAccountsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParametersAllowedToBeModified") {
                self.parametersAllowedToBeModified = dict["ParametersAllowedToBeModified"] as! [String]
            }
            if dict.keys.contains("ParametersConditionallyAllowedToBeModified") {
                self.parametersConditionallyAllowedToBeModified = dict["ParametersConditionallyAllowedToBeModified"] as! [String]
            }
            if dict.keys.contains("ParametersNotAllowedToBeModified") {
                self.parametersNotAllowedToBeModified = dict["ParametersNotAllowedToBeModified"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DryRunResult") {
            var model = ContinueDeployServiceInstanceResponseBody.DryRunResult()
            model.fromMap(dict["DryRunResult"] as! [String: Any])
            self.dryRunResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ContinueDeployServiceInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateArtifactRequest : Tea.TeaModel {
    public class ArtifactProperty : Tea.TeaModel {
        public var commodityCode: String?

        public var commodityVersion: String?

        public var fileScriptMetadata: String?

        public var imageId: String?

        public var regionId: String?

        public var repoId: String?

        public var repoName: String?

        public var scriptMetadata: String?

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
            if self.fileScriptMetadata != nil {
                map["FileScriptMetadata"] = self.fileScriptMetadata!
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
            if self.scriptMetadata != nil {
                map["ScriptMetadata"] = self.scriptMetadata!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CommodityCode") {
                self.commodityCode = dict["CommodityCode"] as! String
            }
            if dict.keys.contains("CommodityVersion") {
                self.commodityVersion = dict["CommodityVersion"] as! String
            }
            if dict.keys.contains("FileScriptMetadata") {
                self.fileScriptMetadata = dict["FileScriptMetadata"] as! String
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RepoId") {
                self.repoId = dict["RepoId"] as! String
            }
            if dict.keys.contains("RepoName") {
                self.repoName = dict["RepoName"] as! String
            }
            if dict.keys.contains("ScriptMetadata") {
                self.scriptMetadata = dict["ScriptMetadata"] as! String
            }
            if dict.keys.contains("Tag") {
                self.tag = dict["Tag"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var artifactId: String?

    public var artifactProperty: CreateArtifactRequest.ArtifactProperty?

    public var artifactType: String?

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
        try self.artifactProperty?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.artifactId != nil {
            map["ArtifactId"] = self.artifactId!
        }
        if self.artifactProperty != nil {
            map["ArtifactProperty"] = self.artifactProperty?.toMap()
        }
        if self.artifactType != nil {
            map["ArtifactType"] = self.artifactType!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArtifactId") {
            self.artifactId = dict["ArtifactId"] as! String
        }
        if dict.keys.contains("ArtifactProperty") {
            var model = CreateArtifactRequest.ArtifactProperty()
            model.fromMap(dict["ArtifactProperty"] as! [String: Any])
            self.artifactProperty = model
        }
        if dict.keys.contains("ArtifactType") {
            self.artifactType = dict["ArtifactType"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SupportRegionIds") {
            self.supportRegionIds = dict["SupportRegionIds"] as! [String]
        }
        if dict.keys.contains("Tag") {
            var tmp : [CreateArtifactRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateArtifactRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("VersionName") {
            self.versionName = dict["VersionName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var artifactId: String?

    public var artifactPropertyShrink: String?

    public var artifactType: String?

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
        if self.artifactId != nil {
            map["ArtifactId"] = self.artifactId!
        }
        if self.artifactPropertyShrink != nil {
            map["ArtifactProperty"] = self.artifactPropertyShrink!
        }
        if self.artifactType != nil {
            map["ArtifactType"] = self.artifactType!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArtifactId") {
            self.artifactId = dict["ArtifactId"] as! String
        }
        if dict.keys.contains("ArtifactProperty") {
            self.artifactPropertyShrink = dict["ArtifactProperty"] as! String
        }
        if dict.keys.contains("ArtifactType") {
            self.artifactType = dict["ArtifactType"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SupportRegionIds") {
            self.supportRegionIds = dict["SupportRegionIds"] as! [String]
        }
        if dict.keys.contains("Tag") {
            var tmp : [CreateArtifactShrinkRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateArtifactShrinkRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("VersionName") {
            self.versionName = dict["VersionName"] as! String
        }
    }
}

public class CreateArtifactResponseBody : Tea.TeaModel {
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
        if self.supportRegionIds != nil {
            map["SupportRegionIds"] = self.supportRegionIds!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArtifactId") {
            self.artifactId = dict["ArtifactId"] as! String
        }
        if dict.keys.contains("ArtifactProperty") {
            self.artifactProperty = dict["ArtifactProperty"] as! String
        }
        if dict.keys.contains("ArtifactType") {
            self.artifactType = dict["ArtifactType"] as! String
        }
        if dict.keys.contains("ArtifactVersion") {
            self.artifactVersion = dict["ArtifactVersion"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GmtModified") {
            self.gmtModified = dict["GmtModified"] as! String
        }
        if dict.keys.contains("MaxVersion") {
            self.maxVersion = dict["MaxVersion"] as! Int64
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SupportRegionIds") {
            self.supportRegionIds = dict["SupportRegionIds"] as! String
        }
        if dict.keys.contains("VersionName") {
            self.versionName = dict["VersionName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateArtifactResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateServiceRequest : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public var agreements: [CreateServiceRequest.ServiceInfo.Agreements]?

        public var image: String?

        public var locale: String?

        public var longDescriptionUrl: String?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Agreements") {
                var tmp : [CreateServiceRequest.ServiceInfo.Agreements] = []
                for v in dict["Agreements"] as! [Any] {
                    var model = CreateServiceRequest.ServiceInfo.Agreements()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.agreements = tmp
            }
            if dict.keys.contains("Image") {
                self.image = dict["Image"] as! String
            }
            if dict.keys.contains("Locale") {
                self.locale = dict["Locale"] as! String
            }
            if dict.keys.contains("LongDescriptionUrl") {
                self.longDescriptionUrl = dict["LongDescriptionUrl"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ShortDescription") {
                self.shortDescription = dict["ShortDescription"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var alarmMetadata: String?

    public var approvalType: String?

    public var buildParameters: String?

    public var clientToken: String?

    public var deployMetadata: String?

    public var deployType: String?

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
        if self.deployMetadata != nil {
            map["DeployMetadata"] = self.deployMetadata!
        }
        if self.deployType != nil {
            map["DeployType"] = self.deployType!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmMetadata") {
            self.alarmMetadata = dict["AlarmMetadata"] as! String
        }
        if dict.keys.contains("ApprovalType") {
            self.approvalType = dict["ApprovalType"] as! String
        }
        if dict.keys.contains("BuildParameters") {
            self.buildParameters = dict["BuildParameters"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DeployMetadata") {
            self.deployMetadata = dict["DeployMetadata"] as! String
        }
        if dict.keys.contains("DeployType") {
            self.deployType = dict["DeployType"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int64
        }
        if dict.keys.contains("IsSupportOperated") {
            self.isSupportOperated = dict["IsSupportOperated"] as! Bool
        }
        if dict.keys.contains("LicenseMetadata") {
            self.licenseMetadata = dict["LicenseMetadata"] as! String
        }
        if dict.keys.contains("LogMetadata") {
            self.logMetadata = dict["LogMetadata"] as! String
        }
        if dict.keys.contains("OperationMetadata") {
            self.operationMetadata = dict["OperationMetadata"] as! String
        }
        if dict.keys.contains("PolicyNames") {
            self.policyNames = dict["PolicyNames"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resellable") {
            self.resellable = dict["Resellable"] as! Bool
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceInfo") {
            var tmp : [CreateServiceRequest.ServiceInfo] = []
            for v in dict["ServiceInfo"] as! [Any] {
                var model = CreateServiceRequest.ServiceInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.serviceInfo = tmp
        }
        if dict.keys.contains("ServiceType") {
            self.serviceType = dict["ServiceType"] as! String
        }
        if dict.keys.contains("ShareType") {
            self.shareType = dict["ShareType"] as! String
        }
        if dict.keys.contains("SourceServiceId") {
            self.sourceServiceId = dict["SourceServiceId"] as! String
        }
        if dict.keys.contains("SourceServiceVersion") {
            self.sourceServiceVersion = dict["SourceServiceVersion"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [CreateServiceRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateServiceRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("TenantType") {
            self.tenantType = dict["TenantType"] as! String
        }
        if dict.keys.contains("TrialDuration") {
            self.trialDuration = dict["TrialDuration"] as! Int64
        }
        if dict.keys.contains("UpgradeMetadata") {
            self.upgradeMetadata = dict["UpgradeMetadata"] as! String
        }
        if dict.keys.contains("VersionName") {
            self.versionName = dict["VersionName"] as! String
        }
    }
}

public class CreateServiceResponseBody : Tea.TeaModel {
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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! [String: Any]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
        }
        if dict.keys.contains("SpecificationName") {
            self.specificationName = dict["SpecificationName"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [CreateServiceInstanceRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateServiceInstanceRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! Bool
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parametersShrink = dict["Parameters"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
        }
        if dict.keys.contains("SpecificationName") {
            self.specificationName = dict["SpecificationName"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [CreateServiceInstanceShrinkRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateServiceInstanceShrinkRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateServiceInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteArtifactRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArtifactId") {
            self.artifactId = dict["ArtifactId"] as! String
        }
        if dict.keys.contains("ArtifactVersion") {
            self.artifactVersion = dict["ArtifactVersion"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteArtifactResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteServiceInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeployServiceInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArtifactId") {
            self.artifactId = dict["ArtifactId"] as! String
        }
        if dict.keys.contains("ArtifactName") {
            self.artifactName = dict["ArtifactName"] as! String
        }
        if dict.keys.contains("ArtifactVersion") {
            self.artifactVersion = dict["ArtifactVersion"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var artifactId: String?

    public var artifactProperty: String?

    public var artifactType: String?

    public var artifactVersion: String?

    public var description_: String?

    public var gmtModified: String?

    public var maxVersion: Int64?

    public var name: String?

    public var progress: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var status: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArtifactId") {
            self.artifactId = dict["ArtifactId"] as! String
        }
        if dict.keys.contains("ArtifactProperty") {
            self.artifactProperty = dict["ArtifactProperty"] as! String
        }
        if dict.keys.contains("ArtifactType") {
            self.artifactType = dict["ArtifactType"] as! String
        }
        if dict.keys.contains("ArtifactVersion") {
            self.artifactVersion = dict["ArtifactVersion"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GmtModified") {
            self.gmtModified = dict["GmtModified"] as! String
        }
        if dict.keys.contains("MaxVersion") {
            self.maxVersion = dict["MaxVersion"] as! Int64
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Progress") {
            self.progress = dict["Progress"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SupportRegionIds") {
            self.supportRegionIds = dict["SupportRegionIds"] as! String
        }
        if dict.keys.contains("Tags") {
            var tmp : [GetArtifactResponseBody.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = GetArtifactResponseBody.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("VersionName") {
            self.versionName = dict["VersionName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetArtifactResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArtifactType") {
            self.artifactType = dict["ArtifactType"] as! String
        }
        if dict.keys.contains("DeployRegionId") {
            self.deployRegionId = dict["DeployRegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RepositoryName") {
                self.repositoryName = dict["RepositoryName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKeyId") {
                self.accessKeyId = dict["AccessKeyId"] as! String
            }
            if dict.keys.contains("AccessKeySecret") {
                self.accessKeySecret = dict["AccessKeySecret"] as! String
            }
            if dict.keys.contains("Password") {
                self.password = dict["Password"] as! String
            }
            if dict.keys.contains("SecurityToken") {
                self.securityToken = dict["SecurityToken"] as! String
            }
            if dict.keys.contains("Username") {
                self.username = dict["Username"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AvailableResources") {
            var tmp : [GetArtifactRepositoryCredentialsResponseBody.AvailableResources] = []
            for v in dict["AvailableResources"] as! [Any] {
                var model = GetArtifactRepositoryCredentialsResponseBody.AvailableResources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.availableResources = tmp
        }
        if dict.keys.contains("Credentials") {
            var model = GetArtifactRepositoryCredentialsResponseBody.Credentials()
            model.fromMap(dict["Credentials"] as! [String: Any])
            self.credentials = model
        }
        if dict.keys.contains("ExpireDate") {
            self.expireDate = dict["ExpireDate"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetArtifactRepositoryCredentialsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetServiceRequest : Tea.TeaModel {
    public var filterAliUid: Bool?

    public var regionId: String?

    public var serviceId: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FilterAliUid") {
            self.filterAliUid = dict["FilterAliUid"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
        }
        if dict.keys.contains("SharedAccountType") {
            self.sharedAccountType = dict["SharedAccountType"] as! String
        }
        if dict.keys.contains("ShowDetail") {
            self.showDetail = dict["ShowDetail"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Mappings") {
                        self.mappings = dict["Mappings"] as! [String: String]
                    }
                    if dict.keys.contains("TemplateName") {
                        self.templateName = dict["TemplateName"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EntityId") {
                        self.entityId = dict["EntityId"] as! String
                    }
                    if dict.keys.contains("MetricName") {
                        self.metricName = dict["MetricName"] as! String
                    }
                    if dict.keys.contains("Promql") {
                        self.promql = dict["Promql"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EntityIds") {
                        self.entityIds = dict["EntityIds"] as! String
                    }
                    if dict.keys.contains("SpecificationName") {
                        self.specificationName = dict["SpecificationName"] as! String
                    }
                    if dict.keys.contains("TemplateName") {
                        self.templateName = dict["TemplateName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ComponentsMappings") {
                    var tmp : [GetServiceResponseBody.Commodity.CssMetadata.ComponentsMappings] = []
                    for v in dict["ComponentsMappings"] as! [Any] {
                        var model = GetServiceResponseBody.Commodity.CssMetadata.ComponentsMappings()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.componentsMappings = tmp
                }
                if dict.keys.contains("MeteringEntityExtraInfos") {
                    var tmp : [GetServiceResponseBody.Commodity.CssMetadata.MeteringEntityExtraInfos] = []
                    for v in dict["MeteringEntityExtraInfos"] as! [Any] {
                        var model = GetServiceResponseBody.Commodity.CssMetadata.MeteringEntityExtraInfos()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.meteringEntityExtraInfos = tmp
                }
                if dict.keys.contains("MeteringEntityMappings") {
                    var tmp : [GetServiceResponseBody.Commodity.CssMetadata.MeteringEntityMappings] = []
                    for v in dict["MeteringEntityMappings"] as! [Any] {
                        var model = GetServiceResponseBody.Commodity.CssMetadata.MeteringEntityMappings()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EntityId") {
                        self.entityId = dict["EntityId"] as! String
                    }
                    if dict.keys.contains("MetricName") {
                        self.metricName = dict["MetricName"] as! String
                    }
                    if dict.keys.contains("Promql") {
                        self.promql = dict["Promql"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EntityIds") {
                        self.entityIds = dict["EntityIds"] as! String
                    }
                    if dict.keys.contains("SpecificationName") {
                        self.specificationName = dict["SpecificationName"] as! String
                    }
                    if dict.keys.contains("TemplateName") {
                        self.templateName = dict["TemplateName"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SpecificationCode") {
                        self.specificationCode = dict["SpecificationCode"] as! String
                    }
                    if dict.keys.contains("SpecificationName") {
                        self.specificationName = dict["SpecificationName"] as! String
                    }
                    if dict.keys.contains("TemplateName") {
                        self.templateName = dict["TemplateName"] as! String
                    }
                    if dict.keys.contains("TrialType") {
                        self.trialType = dict["TrialType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MeteringEntityExtraInfos") {
                    var tmp : [GetServiceResponseBody.Commodity.MarketplaceMetadata.MeteringEntityExtraInfos] = []
                    for v in dict["MeteringEntityExtraInfos"] as! [Any] {
                        var model = GetServiceResponseBody.Commodity.MarketplaceMetadata.MeteringEntityExtraInfos()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.meteringEntityExtraInfos = tmp
                }
                if dict.keys.contains("MeteringEntityMappings") {
                    var tmp : [GetServiceResponseBody.Commodity.MarketplaceMetadata.MeteringEntityMappings] = []
                    for v in dict["MeteringEntityMappings"] as! [Any] {
                        var model = GetServiceResponseBody.Commodity.MarketplaceMetadata.MeteringEntityMappings()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.meteringEntityMappings = tmp
                }
                if dict.keys.contains("SpecificationMappings") {
                    var tmp : [GetServiceResponseBody.Commodity.MarketplaceMetadata.SpecificationMappings] = []
                    for v in dict["SpecificationMappings"] as! [Any] {
                        var model = GetServiceResponseBody.Commodity.MarketplaceMetadata.SpecificationMappings()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EntityId") {
                    self.entityId = dict["EntityId"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Times") {
                    self.times = dict["Times"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChargeType") {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("CommodityCode") {
                self.commodityCode = dict["CommodityCode"] as! String
            }
            if dict.keys.contains("Components") {
                self.components = dict["Components"] as! [String]
            }
            if dict.keys.contains("CssMetadata") {
                var model = GetServiceResponseBody.Commodity.CssMetadata()
                model.fromMap(dict["CssMetadata"] as! [String: Any])
                self.cssMetadata = model
            }
            if dict.keys.contains("MarketplaceMetadata") {
                var model = GetServiceResponseBody.Commodity.MarketplaceMetadata()
                model.fromMap(dict["MarketplaceMetadata"] as! [String: Any])
                self.marketplaceMetadata = model
            }
            if dict.keys.contains("MeteringEntities") {
                var tmp : [GetServiceResponseBody.Commodity.MeteringEntities] = []
                for v in dict["MeteringEntities"] as! [Any] {
                    var model = GetServiceResponseBody.Commodity.MeteringEntities()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.meteringEntities = tmp
            }
            if dict.keys.contains("SaasBoostMetadata") {
                self.saasBoostMetadata = dict["SaasBoostMetadata"] as! String
            }
            if dict.keys.contains("Specifications") {
                var tmp : [GetServiceResponseBody.Commodity.Specifications] = []
                for v in dict["Specifications"] as! [Any] {
                    var model = GetServiceResponseBody.Commodity.Specifications()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.specifications = tmp
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public var agreements: [GetServiceResponseBody.ServiceInfos.Agreements]?

        public var image: String?

        public var locale: String?

        public var longDescriptionUrl: String?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Agreements") {
                var tmp : [GetServiceResponseBody.ServiceInfos.Agreements] = []
                for v in dict["Agreements"] as! [Any] {
                    var model = GetServiceResponseBody.ServiceInfos.Agreements()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.agreements = tmp
            }
            if dict.keys.contains("Image") {
                self.image = dict["Image"] as! String
            }
            if dict.keys.contains("Locale") {
                self.locale = dict["Locale"] as! String
            }
            if dict.keys.contains("LongDescriptionUrl") {
                self.longDescriptionUrl = dict["LongDescriptionUrl"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ShortDescription") {
                self.shortDescription = dict["ShortDescription"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccumulativeInstanceCount") {
                self.accumulativeInstanceCount = dict["AccumulativeInstanceCount"] as! Int32
            }
            if dict.keys.contains("AccumulativePocAmount") {
                self.accumulativePocAmount = dict["AccumulativePocAmount"] as! Double
            }
            if dict.keys.contains("AccumulativeUserCount") {
                self.accumulativeUserCount = dict["AccumulativeUserCount"] as! Int32
            }
            if dict.keys.contains("AveragePocAmount") {
                self.averagePocAmount = dict["AveragePocAmount"] as! Double
            }
            if dict.keys.contains("AveragePocDuration") {
                self.averagePocDuration = dict["AveragePocDuration"] as! Double
            }
            if dict.keys.contains("AveragePocUnitAmount") {
                self.averagePocUnitAmount = dict["AveragePocUnitAmount"] as! Double
            }
            if dict.keys.contains("DeployedServiceInstanceCount") {
                self.deployedServiceInstanceCount = dict["DeployedServiceInstanceCount"] as! Int32
            }
            if dict.keys.contains("DeployedUserCount") {
                self.deployedUserCount = dict["DeployedUserCount"] as! Int32
            }
            if dict.keys.contains("SubmittedUsageCount") {
                self.submittedUsageCount = dict["SubmittedUsageCount"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var alarmMetadata: String?

    public var approvalType: String?

    public var buildInfo: String?

    public var categories: String?

    public var commodity: GetServiceResponseBody.Commodity?

    public var commodityCode: String?

    public var createTime: String?

    public var crossRegionConnectionStatus: String?

    public var defaultLicenseDays: Int64?

    public var deployMetadata: String?

    public var deployType: String?

    public var duration: Int64?

    public var entitySource: [String: String]?

    public var isSupportOperated: Bool?

    public var licenseMetadata: String?

    public var logMetadata: String?

    public var operationMetadata: String?

    public var payFromType: String?

    public var payType: String?

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

    public var serviceDocUrl: String?

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
        if self.crossRegionConnectionStatus != nil {
            map["CrossRegionConnectionStatus"] = self.crossRegionConnectionStatus!
        }
        if self.defaultLicenseDays != nil {
            map["DefaultLicenseDays"] = self.defaultLicenseDays!
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
        if self.payType != nil {
            map["PayType"] = self.payType!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmMetadata") {
            self.alarmMetadata = dict["AlarmMetadata"] as! String
        }
        if dict.keys.contains("ApprovalType") {
            self.approvalType = dict["ApprovalType"] as! String
        }
        if dict.keys.contains("BuildInfo") {
            self.buildInfo = dict["BuildInfo"] as! String
        }
        if dict.keys.contains("Categories") {
            self.categories = dict["Categories"] as! String
        }
        if dict.keys.contains("Commodity") {
            var model = GetServiceResponseBody.Commodity()
            model.fromMap(dict["Commodity"] as! [String: Any])
            self.commodity = model
        }
        if dict.keys.contains("CommodityCode") {
            self.commodityCode = dict["CommodityCode"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CrossRegionConnectionStatus") {
            self.crossRegionConnectionStatus = dict["CrossRegionConnectionStatus"] as! String
        }
        if dict.keys.contains("DefaultLicenseDays") {
            self.defaultLicenseDays = dict["DefaultLicenseDays"] as! Int64
        }
        if dict.keys.contains("DeployMetadata") {
            self.deployMetadata = dict["DeployMetadata"] as! String
        }
        if dict.keys.contains("DeployType") {
            self.deployType = dict["DeployType"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int64
        }
        if dict.keys.contains("EntitySource") {
            self.entitySource = dict["EntitySource"] as! [String: String]
        }
        if dict.keys.contains("IsSupportOperated") {
            self.isSupportOperated = dict["IsSupportOperated"] as! Bool
        }
        if dict.keys.contains("LicenseMetadata") {
            self.licenseMetadata = dict["LicenseMetadata"] as! String
        }
        if dict.keys.contains("LogMetadata") {
            self.logMetadata = dict["LogMetadata"] as! String
        }
        if dict.keys.contains("OperationMetadata") {
            self.operationMetadata = dict["OperationMetadata"] as! String
        }
        if dict.keys.contains("PayFromType") {
            self.payFromType = dict["PayFromType"] as! String
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("Permission") {
            self.permission = dict["Permission"] as! String
        }
        if dict.keys.contains("PolicyNames") {
            self.policyNames = dict["PolicyNames"] as! String
        }
        if dict.keys.contains("Progress") {
            self.progress = dict["Progress"] as! Int64
        }
        if dict.keys.contains("PublishTime") {
            self.publishTime = dict["PublishTime"] as! String
        }
        if dict.keys.contains("RegistrationId") {
            self.registrationId = dict["RegistrationId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Resellable") {
            self.resellable = dict["Resellable"] as! Bool
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ServiceAuditDocumentUrl") {
            self.serviceAuditDocumentUrl = dict["ServiceAuditDocumentUrl"] as! String
        }
        if dict.keys.contains("ServiceDiscoverable") {
            self.serviceDiscoverable = dict["ServiceDiscoverable"] as! String
        }
        if dict.keys.contains("ServiceDocUrl") {
            self.serviceDocUrl = dict["ServiceDocUrl"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceInfos") {
            var tmp : [GetServiceResponseBody.ServiceInfos] = []
            for v in dict["ServiceInfos"] as! [Any] {
                var model = GetServiceResponseBody.ServiceInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.serviceInfos = tmp
        }
        if dict.keys.contains("ServiceProductUrl") {
            self.serviceProductUrl = dict["ServiceProductUrl"] as! String
        }
        if dict.keys.contains("ServiceType") {
            self.serviceType = dict["ServiceType"] as! String
        }
        if dict.keys.contains("ShareType") {
            self.shareType = dict["ShareType"] as! String
        }
        if dict.keys.contains("ShareTypeStatus") {
            self.shareTypeStatus = dict["ShareTypeStatus"] as! String
        }
        if dict.keys.contains("SourceServiceId") {
            self.sourceServiceId = dict["SourceServiceId"] as! String
        }
        if dict.keys.contains("SourceServiceVersion") {
            self.sourceServiceVersion = dict["SourceServiceVersion"] as! String
        }
        if dict.keys.contains("SourceSupplierName") {
            self.sourceSupplierName = dict["SourceSupplierName"] as! String
        }
        if dict.keys.contains("Statistic") {
            var model = GetServiceResponseBody.Statistic()
            model.fromMap(dict["Statistic"] as! [String: Any])
            self.statistic = model
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("StatusDetail") {
            self.statusDetail = dict["StatusDetail"] as! String
        }
        if dict.keys.contains("SupplierName") {
            self.supplierName = dict["SupplierName"] as! String
        }
        if dict.keys.contains("SupplierUrl") {
            self.supplierUrl = dict["SupplierUrl"] as! String
        }
        if dict.keys.contains("Tags") {
            var tmp : [GetServiceResponseBody.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = GetServiceResponseBody.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("TenantType") {
            self.tenantType = dict["TenantType"] as! String
        }
        if dict.keys.contains("TestStatus") {
            self.testStatus = dict["TestStatus"] as! String
        }
        if dict.keys.contains("TrialDuration") {
            self.trialDuration = dict["TrialDuration"] as! Int64
        }
        if dict.keys.contains("TrialType") {
            self.trialType = dict["TrialType"] as! String
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
        }
        if dict.keys.contains("UpgradeMetadata") {
            self.upgradeMetadata = dict["UpgradeMetadata"] as! String
        }
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! String
        }
        if dict.keys.contains("VersionName") {
            self.versionName = dict["VersionName"] as! String
        }
        if dict.keys.contains("VirtualInternetService") {
            self.virtualInternetService = dict["VirtualInternetService"] as! String
        }
        if dict.keys.contains("VirtualInternetServiceId") {
            self.virtualInternetServiceId = dict["VirtualInternetServiceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PayPeriod") {
                self.payPeriod = dict["PayPeriod"] as! Int32
            }
            if dict.keys.contains("PayPeriodUnit") {
                self.payPeriodUnit = dict["PayPeriodUnit"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Commodity") {
            var model = GetServiceEstimateCostRequest.Commodity()
            model.fromMap(dict["Commodity"] as! [String: Any])
            self.commodity = model
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! [String: Any]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
        }
        if dict.keys.contains("SpecificationName") {
            self.specificationName = dict["SpecificationName"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Commodity") {
            self.commodityShrink = dict["Commodity"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parametersShrink = dict["Parameters"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
        }
        if dict.keys.contains("SpecificationName") {
            self.specificationName = dict["SpecificationName"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Commodity") {
            self.commodity = dict["Commodity"] as! [String: Any]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Resources") {
            self.resources = dict["Resources"] as! [String: Any]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetServiceEstimateCostResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConnectBandwidth") {
                        self.connectBandwidth = dict["ConnectBandwidth"] as! Int32
                    }
                    if dict.keys.contains("DomainName") {
                        self.domainName = dict["DomainName"] as! String
                    }
                    if dict.keys.contains("EndpointIps") {
                        self.endpointIps = dict["EndpointIps"] as! [String]
                    }
                    if dict.keys.contains("IngressEndpointStatus") {
                        self.ingressEndpointStatus = dict["IngressEndpointStatus"] as! String
                    }
                    if dict.keys.contains("NetworkServiceStatus") {
                        self.networkServiceStatus = dict["NetworkServiceStatus"] as! String
                    }
                    if dict.keys.contains("SecurityGroups") {
                        self.securityGroups = dict["SecurityGroups"] as! [String]
                    }
                    if dict.keys.contains("VSwitches") {
                        self.vSwitches = dict["VSwitches"] as! [String]
                    }
                    if dict.keys.contains("VpcId") {
                        self.vpcId = dict["VpcId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectionConfigs") {
                    var tmp : [GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections.ConnectionConfigs] = []
                    for v in dict["ConnectionConfigs"] as! [Any] {
                        var model = GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections.ConnectionConfigs()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.connectionConfigs = tmp
                }
                if dict.keys.contains("EndpointId") {
                    self.endpointId = dict["EndpointId"] as! String
                }
                if dict.keys.contains("EndpointServiceId") {
                    self.endpointServiceId = dict["EndpointServiceId"] as! String
                }
                if dict.keys.contains("PrivateZoneName") {
                    self.privateZoneName = dict["PrivateZoneName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EndpointId") {
                    self.endpointId = dict["EndpointId"] as! String
                }
                if dict.keys.contains("EndpointServiceId") {
                    self.endpointServiceId = dict["EndpointServiceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndpointId") {
                self.endpointId = dict["EndpointId"] as! String
            }
            if dict.keys.contains("EndpointServiceId") {
                self.endpointServiceId = dict["EndpointServiceId"] as! String
            }
            if dict.keys.contains("PrivateVpcConnections") {
                var tmp : [GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections] = []
                for v in dict["PrivateVpcConnections"] as! [Any] {
                    var model = GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.privateVpcConnections = tmp
            }
            if dict.keys.contains("ReversePrivateVpcConnections") {
                var tmp : [GetServiceInstanceResponseBody.NetworkConfig.ReversePrivateVpcConnections] = []
                for v in dict["ReversePrivateVpcConnections"] as! [Any] {
                    var model = GetServiceInstanceResponseBody.NetworkConfig.ReversePrivateVpcConnections()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Image") {
                    self.image = dict["Image"] as! String
                }
                if dict.keys.contains("Locale") {
                    self.locale = dict["Locale"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("ShortDescription") {
                    self.shortDescription = dict["ShortDescription"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeployMetadata") {
                self.deployMetadata = dict["DeployMetadata"] as! String
            }
            if dict.keys.contains("DeployType") {
                self.deployType = dict["DeployType"] as! String
            }
            if dict.keys.contains("PublishTime") {
                self.publishTime = dict["PublishTime"] as! String
            }
            if dict.keys.contains("ServiceDocUrl") {
                self.serviceDocUrl = dict["ServiceDocUrl"] as! String
            }
            if dict.keys.contains("ServiceId") {
                self.serviceId = dict["ServiceId"] as! String
            }
            if dict.keys.contains("ServiceInfos") {
                var tmp : [GetServiceInstanceResponseBody.Service.ServiceInfos] = []
                for v in dict["ServiceInfos"] as! [Any] {
                    var model = GetServiceInstanceResponseBody.Service.ServiceInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.serviceInfos = tmp
            }
            if dict.keys.contains("ServiceProductUrl") {
                self.serviceProductUrl = dict["ServiceProductUrl"] as! String
            }
            if dict.keys.contains("ServiceType") {
                self.serviceType = dict["ServiceType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SupplierName") {
                self.supplierName = dict["SupplierName"] as! String
            }
            if dict.keys.contains("SupplierUrl") {
                self.supplierUrl = dict["SupplierUrl"] as! String
            }
            if dict.keys.contains("UpgradableServiceVersions") {
                self.upgradableServiceVersions = dict["UpgradableServiceVersions"] as! [String]
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
            if dict.keys.contains("VersionName") {
                self.versionName = dict["VersionName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizStatus") {
            self.bizStatus = dict["BizStatus"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("EnableInstanceOps") {
            self.enableInstanceOps = dict["EnableInstanceOps"] as! Bool
        }
        if dict.keys.contains("EnableUserPrometheus") {
            self.enableUserPrometheus = dict["EnableUserPrometheus"] as! Bool
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("GrafanaDashBoardUrl") {
            self.grafanaDashBoardUrl = dict["GrafanaDashBoardUrl"] as! String
        }
        if dict.keys.contains("IsOperated") {
            self.isOperated = dict["IsOperated"] as! Bool
        }
        if dict.keys.contains("LicenseMetadata") {
            self.licenseMetadata = dict["LicenseMetadata"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NetworkConfig") {
            var model = GetServiceInstanceResponseBody.NetworkConfig()
            model.fromMap(dict["NetworkConfig"] as! [String: Any])
            self.networkConfig = model
        }
        if dict.keys.contains("OperatedServiceInstanceId") {
            self.operatedServiceInstanceId = dict["OperatedServiceInstanceId"] as! String
        }
        if dict.keys.contains("OperationEndTime") {
            self.operationEndTime = dict["OperationEndTime"] as! String
        }
        if dict.keys.contains("OperationStartTime") {
            self.operationStartTime = dict["OperationStartTime"] as! String
        }
        if dict.keys.contains("Outputs") {
            self.outputs = dict["Outputs"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("PredefinedParameterName") {
            self.predefinedParameterName = dict["PredefinedParameterName"] as! String
        }
        if dict.keys.contains("Progress") {
            self.progress = dict["Progress"] as! Int64
        }
        if dict.keys.contains("RdAccountLoginUrl") {
            self.rdAccountLoginUrl = dict["RdAccountLoginUrl"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Resources") {
            self.resources = dict["Resources"] as! String
        }
        if dict.keys.contains("Service") {
            var model = GetServiceInstanceResponseBody.Service()
            model.fromMap(dict["Service"] as! [String: Any])
            self.service = model
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
        if dict.keys.contains("ServiceType") {
            self.serviceType = dict["ServiceType"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("StatusDetail") {
            self.statusDetail = dict["StatusDetail"] as! String
        }
        if dict.keys.contains("SupplierUid") {
            self.supplierUid = dict["SupplierUid"] as! Int64
        }
        if dict.keys.contains("Tags") {
            var tmp : [GetServiceInstanceResponseBody.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = GetServiceInstanceResponseBody.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetServiceInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("ParameterValue") {
                self.parameterValue = dict["ParameterValue"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DeployRegionId") {
            self.deployRegionId = dict["DeployRegionId"] as! String
        }
        if dict.keys.contains("EnablePrivateVpcConnection") {
            self.enablePrivateVpcConnection = dict["EnablePrivateVpcConnection"] as! Bool
        }
        if dict.keys.contains("Parameters") {
            var tmp : [GetServiceTemplateParameterConstraintsRequest.Parameters] = []
            for v in dict["Parameters"] as! [Any] {
                var model = GetServiceTemplateParameterConstraintsRequest.Parameters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameters = tmp
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowedValues") {
                    self.allowedValues = dict["AllowedValues"] as! [String]
                }
                if dict.keys.contains("PropertyName") {
                    self.propertyName = dict["PropertyName"] as! String
                }
                if dict.keys.contains("ResourceName") {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllowedValues") {
                self.allowedValues = dict["AllowedValues"] as! [String]
            }
            if dict.keys.contains("AssociationParameterNames") {
                self.associationParameterNames = dict["AssociationParameterNames"] as! [String]
            }
            if dict.keys.contains("Behavior") {
                self.behavior = dict["Behavior"] as! String
            }
            if dict.keys.contains("BehaviorReason") {
                self.behaviorReason = dict["BehaviorReason"] as! String
            }
            if dict.keys.contains("OriginalConstraints") {
                var tmp : [GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints.OriginalConstraints] = []
                for v in dict["OriginalConstraints"] as! [Any] {
                    var model = GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints.OriginalConstraints()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.originalConstraints = tmp
            }
            if dict.keys.contains("ParameterKey") {
                self.parameterKey = dict["ParameterKey"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FamilyConstraints") {
            self.familyConstraints = dict["FamilyConstraints"] as! [String]
        }
        if dict.keys.contains("ParameterConstraints") {
            var tmp : [GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints] = []
            for v in dict["ParameterConstraints"] as! [Any] {
                var model = GetServiceTemplateParameterConstraintsResponseBody.ParameterConstraints()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parameterConstraints = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetServiceTemplateParameterConstraintsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUploadCredentialsRequest : Tea.TeaModel {
    public var fileName: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileName") {
            self.fileName = dict["FileName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKeyId") {
                self.accessKeyId = dict["AccessKeyId"] as! String
            }
            if dict.keys.contains("AccessKeySecret") {
                self.accessKeySecret = dict["AccessKeySecret"] as! String
            }
            if dict.keys.contains("BucketName") {
                self.bucketName = dict["BucketName"] as! String
            }
            if dict.keys.contains("ExpireDate") {
                self.expireDate = dict["ExpireDate"] as! String
            }
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("SecurityToken") {
                self.securityToken = dict["SecurityToken"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetUploadCredentialsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetUploadCredentialsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArtifactType") {
            self.artifactType = dict["ArtifactType"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RepoName") {
            self.repoName = dict["RepoName"] as! String
        }
    }
}

public class ListAcrImageRepositoriesResponseBody : Tea.TeaModel {
    public class Repositories : Tea.TeaModel {
        public var createTime: String?

        public var modifiedTime: String?

        public var repoId: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ModifiedTime") {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("RepoId") {
                self.repoId = dict["RepoId"] as! String
            }
            if dict.keys.contains("RepoName") {
                self.repoName = dict["RepoName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Repositories") {
            var tmp : [ListAcrImageRepositoriesResponseBody.Repositories] = []
            for v in dict["Repositories"] as! [Any] {
                var model = ListAcrImageRepositoriesResponseBody.Repositories()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.repositories = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAcrImageRepositoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArtifactType") {
            self.artifactType = dict["ArtifactType"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RepoId") {
            self.repoId = dict["RepoId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ImageSize") {
                self.imageSize = dict["ImageSize"] as! String
            }
            if dict.keys.contains("ModifiedTime") {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("Tag") {
                self.tag = dict["Tag"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Images") {
            var tmp : [ListAcrImageTagsResponseBody.Images] = []
            for v in dict["Images"] as! [Any] {
                var model = ListAcrImageTagsResponseBody.Images()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.images = tmp
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAcrImageTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListArtifactVersionsRequest : Tea.TeaModel {
    public var artifactId: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArtifactId") {
            self.artifactId = dict["ArtifactId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
    }
}

public class ListArtifactVersionsResponseBody : Tea.TeaModel {
    public class Artifacts : Tea.TeaModel {
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
            if self.supportRegionIds != nil {
                map["SupportRegionIds"] = self.supportRegionIds!
            }
            if self.versionName != nil {
                map["VersionName"] = self.versionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ArtifactId") {
                self.artifactId = dict["ArtifactId"] as! String
            }
            if dict.keys.contains("ArtifactProperty") {
                self.artifactProperty = dict["ArtifactProperty"] as! String
            }
            if dict.keys.contains("ArtifactType") {
                self.artifactType = dict["ArtifactType"] as! String
            }
            if dict.keys.contains("ArtifactVersion") {
                self.artifactVersion = dict["ArtifactVersion"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("ImageDelivery") {
                self.imageDelivery = dict["ImageDelivery"] as! [String: String]
            }
            if dict.keys.contains("Progress") {
                self.progress = dict["Progress"] as! String
            }
            if dict.keys.contains("ResultFile") {
                self.resultFile = dict["ResultFile"] as! String
            }
            if dict.keys.contains("SecurityAuditResult") {
                self.securityAuditResult = dict["SecurityAuditResult"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SupportRegionIds") {
                self.supportRegionIds = dict["SupportRegionIds"] as! String
            }
            if dict.keys.contains("VersionName") {
                self.versionName = dict["VersionName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Artifacts") {
            var tmp : [ListArtifactVersionsResponseBody.Artifacts] = []
            for v in dict["Artifacts"] as! [Any] {
                var model = ListArtifactVersionsResponseBody.Artifacts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.artifacts = tmp
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListArtifactVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Values") {
                self.values = dict["Values"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            var tmp : [ListArtifactsRequest.Filter] = []
            for v in dict["Filter"] as! [Any] {
                var model = ListArtifactsRequest.Filter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filter = tmp
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [ListArtifactsRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListArtifactsRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var artifactId: String?

        public var artifactType: String?

        public var description_: String?

        public var gmtModified: String?

        public var maxVersion: String?

        public var name: String?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ArtifactId") {
                self.artifactId = dict["ArtifactId"] as! String
            }
            if dict.keys.contains("ArtifactType") {
                self.artifactType = dict["ArtifactType"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("MaxVersion") {
                self.maxVersion = dict["MaxVersion"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tags") {
                var tmp : [ListArtifactsResponseBody.Artifacts.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListArtifactsResponseBody.Artifacts.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Artifacts") {
            var tmp : [ListArtifactsResponseBody.Artifacts] = []
            for v in dict["Artifacts"] as! [Any] {
                var model = ListArtifactsResponseBody.Artifacts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.artifacts = tmp
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListArtifactsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            var tmp : [ListServiceInstancesRequest.Filter] = []
            for v in dict["Filter"] as! [Any] {
                var model = ListServiceInstancesRequest.Filter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filter = tmp
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ShowDeleted") {
            self.showDeleted = dict["ShowDeleted"] as! Bool
        }
        if dict.keys.contains("Tag") {
            var tmp : [ListServiceInstancesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListServiceInstancesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Image") {
                        self.image = dict["Image"] as! String
                    }
                    if dict.keys.contains("Locale") {
                        self.locale = dict["Locale"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("ShortDescription") {
                        self.shortDescription = dict["ShortDescription"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DeployMetadata") {
                    self.deployMetadata = dict["DeployMetadata"] as! String
                }
                if dict.keys.contains("DeployType") {
                    self.deployType = dict["DeployType"] as! String
                }
                if dict.keys.contains("EnablePrivateVpcConnection") {
                    self.enablePrivateVpcConnection = dict["EnablePrivateVpcConnection"] as! Bool
                }
                if dict.keys.contains("PublishTime") {
                    self.publishTime = dict["PublishTime"] as! String
                }
                if dict.keys.contains("ServiceId") {
                    self.serviceId = dict["ServiceId"] as! String
                }
                if dict.keys.contains("ServiceInfos") {
                    var tmp : [ListServiceInstancesResponseBody.ServiceInstances.Service.ServiceInfos] = []
                    for v in dict["ServiceInfos"] as! [Any] {
                        var model = ListServiceInstancesResponseBody.ServiceInstances.Service.ServiceInfos()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.serviceInfos = tmp
                }
                if dict.keys.contains("ServiceType") {
                    self.serviceType = dict["ServiceType"] as! String
                }
                if dict.keys.contains("SourceSupplierName") {
                    self.sourceSupplierName = dict["SourceSupplierName"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("SupplierName") {
                    self.supplierName = dict["SupplierName"] as! String
                }
                if dict.keys.contains("SupplierUrl") {
                    self.supplierUrl = dict["SupplierUrl"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
                }
                if dict.keys.contains("VersionName") {
                    self.versionName = dict["VersionName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizStatus") {
                self.bizStatus = dict["BizStatus"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EnableInstanceOps") {
                self.enableInstanceOps = dict["EnableInstanceOps"] as! Bool
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("IsOperated") {
                self.isOperated = dict["IsOperated"] as! Bool
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OperatedServiceInstanceId") {
                self.operatedServiceInstanceId = dict["OperatedServiceInstanceId"] as! String
            }
            if dict.keys.contains("OperationEndTime") {
                self.operationEndTime = dict["OperationEndTime"] as! String
            }
            if dict.keys.contains("OperationStartTime") {
                self.operationStartTime = dict["OperationStartTime"] as! String
            }
            if dict.keys.contains("Parameters") {
                self.parameters = dict["Parameters"] as! String
            }
            if dict.keys.contains("PayType") {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("Progress") {
                self.progress = dict["Progress"] as! Int64
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Service") {
                var model = ListServiceInstancesResponseBody.ServiceInstances.Service()
                model.fromMap(dict["Service"] as! [String: Any])
                self.service = model
            }
            if dict.keys.contains("ServiceInstanceId") {
                self.serviceInstanceId = dict["ServiceInstanceId"] as! String
            }
            if dict.keys.contains("ServiceType") {
                self.serviceType = dict["ServiceType"] as! String
            }
            if dict.keys.contains("Source") {
                self.source = dict["Source"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StatusDetail") {
                self.statusDetail = dict["StatusDetail"] as! String
            }
            if dict.keys.contains("Tags") {
                var tmp : [ListServiceInstancesResponseBody.ServiceInstances.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListServiceInstancesResponseBody.ServiceInstances.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("TemplateName") {
                self.templateName = dict["TemplateName"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceInstances") {
            var tmp : [ListServiceInstancesResponseBody.ServiceInstances] = []
            for v in dict["ServiceInstances"] as! [Any] {
                var model = ListServiceInstancesResponseBody.ServiceInstances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.serviceInstances = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListServiceInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            var tmp : [ListServiceUsagesRequest.Filter] = []
            for v in dict["Filter"] as! [Any] {
                var model = ListServiceUsagesRequest.Filter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filter = tmp
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("SupplierRole") {
            self.supplierRole = dict["SupplierRole"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comments") {
                self.comments = dict["Comments"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ServiceId") {
                self.serviceId = dict["ServiceId"] as! String
            }
            if dict.keys.contains("ServiceName") {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SupplierName") {
                self.supplierName = dict["SupplierName"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UserAliUid") {
                self.userAliUid = dict["UserAliUid"] as! Int64
            }
            if dict.keys.contains("UserInformation") {
                self.userInformation = dict["UserInformation"] as! [String: String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceUsages") {
            var tmp : [ListServiceUsagesResponseBody.ServiceUsages] = []
            for v in dict["ServiceUsages"] as! [Any] {
                var model = ListServiceUsagesResponseBody.ServiceUsages()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.serviceUsages = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListServiceUsagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllVersions") {
            self.allVersions = dict["AllVersions"] as! Bool
        }
        if dict.keys.contains("Filter") {
            var tmp : [ListServicesRequest.Filter] = []
            for v in dict["Filter"] as! [Any] {
                var model = ListServicesRequest.Filter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filter = tmp
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [ListServicesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListServicesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CommodityCode") {
                    self.commodityCode = dict["CommodityCode"] as! String
                }
                if dict.keys.contains("SaasBoostMetadata") {
                    self.saasBoostMetadata = dict["SaasBoostMetadata"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Image") {
                    self.image = dict["Image"] as! String
                }
                if dict.keys.contains("Locale") {
                    self.locale = dict["Locale"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("ShortDescription") {
                    self.shortDescription = dict["ShortDescription"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApprovalType") {
                self.approvalType = dict["ApprovalType"] as! String
            }
            if dict.keys.contains("ArtifactId") {
                self.artifactId = dict["ArtifactId"] as! String
            }
            if dict.keys.contains("ArtifactVersion") {
                self.artifactVersion = dict["ArtifactVersion"] as! String
            }
            if dict.keys.contains("BuildInfo") {
                self.buildInfo = dict["BuildInfo"] as! String
            }
            if dict.keys.contains("Categories") {
                self.categories = dict["Categories"] as! String
            }
            if dict.keys.contains("Commodity") {
                var model = ListServicesResponseBody.Services.Commodity()
                model.fromMap(dict["Commodity"] as! [String: Any])
                self.commodity = model
            }
            if dict.keys.contains("CommodityCode") {
                self.commodityCode = dict["CommodityCode"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DefaultVersion") {
                self.defaultVersion = dict["DefaultVersion"] as! Bool
            }
            if dict.keys.contains("DeployType") {
                self.deployType = dict["DeployType"] as! String
            }
            if dict.keys.contains("HasBeta") {
                self.hasBeta = dict["HasBeta"] as! Bool
            }
            if dict.keys.contains("HasDraft") {
                self.hasDraft = dict["HasDraft"] as! Bool
            }
            if dict.keys.contains("LatestResellSourceServiceVersion") {
                self.latestResellSourceServiceVersion = dict["LatestResellSourceServiceVersion"] as! String
            }
            if dict.keys.contains("PublishTime") {
                self.publishTime = dict["PublishTime"] as! String
            }
            if dict.keys.contains("RelationType") {
                self.relationType = dict["RelationType"] as! String
            }
            if dict.keys.contains("ResellApplyStatus") {
                self.resellApplyStatus = dict["ResellApplyStatus"] as! String
            }
            if dict.keys.contains("ResellServiceId") {
                self.resellServiceId = dict["ResellServiceId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ServiceDiscoverable") {
                self.serviceDiscoverable = dict["ServiceDiscoverable"] as! String
            }
            if dict.keys.contains("ServiceId") {
                self.serviceId = dict["ServiceId"] as! String
            }
            if dict.keys.contains("ServiceInfos") {
                var tmp : [ListServicesResponseBody.Services.ServiceInfos] = []
                for v in dict["ServiceInfos"] as! [Any] {
                    var model = ListServicesResponseBody.Services.ServiceInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.serviceInfos = tmp
            }
            if dict.keys.contains("ServiceType") {
                self.serviceType = dict["ServiceType"] as! String
            }
            if dict.keys.contains("ShareType") {
                self.shareType = dict["ShareType"] as! String
            }
            if dict.keys.contains("SourceImage") {
                self.sourceImage = dict["SourceImage"] as! String
            }
            if dict.keys.contains("SourceServiceId") {
                self.sourceServiceId = dict["SourceServiceId"] as! String
            }
            if dict.keys.contains("SourceServiceVersion") {
                self.sourceServiceVersion = dict["SourceServiceVersion"] as! String
            }
            if dict.keys.contains("SourceSupplierName") {
                self.sourceSupplierName = dict["SourceSupplierName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SupplierName") {
                self.supplierName = dict["SupplierName"] as! String
            }
            if dict.keys.contains("SupplierUrl") {
                self.supplierUrl = dict["SupplierUrl"] as! String
            }
            if dict.keys.contains("Tags") {
                var tmp : [ListServicesResponseBody.Services.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = ListServicesResponseBody.Services.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("TenantType") {
                self.tenantType = dict["TenantType"] as! String
            }
            if dict.keys.contains("TrialType") {
                self.trialType = dict["TrialType"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
            }
            if dict.keys.contains("VersionName") {
                self.versionName = dict["VersionName"] as! String
            }
            if dict.keys.contains("VirtualInternetService") {
                self.virtualInternetService = dict["VirtualInternetService"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Services") {
            var tmp : [ListServicesResponseBody.Services] = []
            for v in dict["Services"] as! [Any] {
                var model = ListServicesResponseBody.Services()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.services = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListServicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Resources") {
            self.resources = dict["Resources"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
        if dict.keys.contains("ServiceInstanceResourcesAction") {
            self.serviceInstanceResourcesAction = dict["ServiceInstanceResourcesAction"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyServiceInstanceResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Metering") {
            self.metering = dict["Metering"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PushMeteringDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegistrationId") {
            self.registrationId = dict["RegistrationId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RegisterServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReleaseArtifactRequest : Tea.TeaModel {
    public var artifactId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArtifactId") {
            self.artifactId = dict["ArtifactId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArtifactId") {
            self.artifactId = dict["ArtifactId"] as! String
        }
        if dict.keys.contains("ArtifactProperty") {
            self.artifactProperty = dict["ArtifactProperty"] as! String
        }
        if dict.keys.contains("ArtifactType") {
            self.artifactType = dict["ArtifactType"] as! String
        }
        if dict.keys.contains("ArtifactVersion") {
            self.artifactVersion = dict["ArtifactVersion"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GmtModified") {
            self.gmtModified = dict["GmtModified"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("VersionName") {
            self.versionName = dict["VersionName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ReleaseArtifactResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RestartServiceInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartServiceInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopServiceInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateArtifactRequest : Tea.TeaModel {
    public class ArtifactProperty : Tea.TeaModel {
        public var commodityCode: String?

        public var commodityVersion: String?

        public var fileScriptMetadata: String?

        public var imageId: String?

        public var regionId: String?

        public var scriptMetadata: String?

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
            if self.fileScriptMetadata != nil {
                map["FileScriptMetadata"] = self.fileScriptMetadata!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.scriptMetadata != nil {
                map["ScriptMetadata"] = self.scriptMetadata!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CommodityCode") {
                self.commodityCode = dict["CommodityCode"] as! String
            }
            if dict.keys.contains("CommodityVersion") {
                self.commodityVersion = dict["CommodityVersion"] as! String
            }
            if dict.keys.contains("FileScriptMetadata") {
                self.fileScriptMetadata = dict["FileScriptMetadata"] as! String
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ScriptMetadata") {
                self.scriptMetadata = dict["ScriptMetadata"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var artifactId: String?

    public var artifactProperty: UpdateArtifactRequest.ArtifactProperty?

    public var description_: String?

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
        try self.artifactProperty?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.artifactId != nil {
            map["ArtifactId"] = self.artifactId!
        }
        if self.artifactProperty != nil {
            map["ArtifactProperty"] = self.artifactProperty?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.supportRegionIds != nil {
            map["SupportRegionIds"] = self.supportRegionIds!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArtifactId") {
            self.artifactId = dict["ArtifactId"] as! String
        }
        if dict.keys.contains("ArtifactProperty") {
            var model = UpdateArtifactRequest.ArtifactProperty()
            model.fromMap(dict["ArtifactProperty"] as! [String: Any])
            self.artifactProperty = model
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("SupportRegionIds") {
            self.supportRegionIds = dict["SupportRegionIds"] as! [String]
        }
        if dict.keys.contains("VersionName") {
            self.versionName = dict["VersionName"] as! String
        }
    }
}

public class UpdateArtifactShrinkRequest : Tea.TeaModel {
    public var artifactId: String?

    public var artifactPropertyShrink: String?

    public var description_: String?

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
        if self.artifactId != nil {
            map["ArtifactId"] = self.artifactId!
        }
        if self.artifactPropertyShrink != nil {
            map["ArtifactProperty"] = self.artifactPropertyShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.supportRegionIds != nil {
            map["SupportRegionIds"] = self.supportRegionIds!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArtifactId") {
            self.artifactId = dict["ArtifactId"] as! String
        }
        if dict.keys.contains("ArtifactProperty") {
            self.artifactPropertyShrink = dict["ArtifactProperty"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("SupportRegionIds") {
            self.supportRegionIds = dict["SupportRegionIds"] as! [String]
        }
        if dict.keys.contains("VersionName") {
            self.versionName = dict["VersionName"] as! String
        }
    }
}

public class UpdateArtifactResponseBody : Tea.TeaModel {
    public var artifactId: String?

    public var artifactProperty: String?

    public var artifactType: String?

    public var artifactVersion: String?

    public var description_: String?

    public var gmtModified: String?

    public var requestId: String?

    public var status: String?

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
        if self.supportRegionIds != nil {
            map["SupportRegionIds"] = self.supportRegionIds!
        }
        if self.versionName != nil {
            map["VersionName"] = self.versionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArtifactId") {
            self.artifactId = dict["ArtifactId"] as! String
        }
        if dict.keys.contains("ArtifactProperty") {
            self.artifactProperty = dict["ArtifactProperty"] as! String
        }
        if dict.keys.contains("ArtifactType") {
            self.artifactType = dict["ArtifactType"] as! String
        }
        if dict.keys.contains("ArtifactVersion") {
            self.artifactVersion = dict["ArtifactVersion"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("GmtModified") {
            self.gmtModified = dict["GmtModified"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SupportRegionIds") {
            self.supportRegionIds = dict["SupportRegionIds"] as! String
        }
        if dict.keys.contains("VersionName") {
            self.versionName = dict["VersionName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateArtifactResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateServiceRequest : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public var agreements: [UpdateServiceRequest.ServiceInfo.Agreements]?

        public var image: String?

        public var locale: String?

        public var longDescriptionUrl: String?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Agreements") {
                var tmp : [UpdateServiceRequest.ServiceInfo.Agreements] = []
                for v in dict["Agreements"] as! [Any] {
                    var model = UpdateServiceRequest.ServiceInfo.Agreements()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.agreements = tmp
            }
            if dict.keys.contains("Image") {
                self.image = dict["Image"] as! String
            }
            if dict.keys.contains("Locale") {
                self.locale = dict["Locale"] as! String
            }
            if dict.keys.contains("LongDescriptionUrl") {
                self.longDescriptionUrl = dict["LongDescriptionUrl"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ShortDescription") {
                self.shortDescription = dict["ShortDescription"] as! String
            }
        }
    }
    public class UpdateOption : Tea.TeaModel {
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
            if self.updateFrom != nil {
                map["UpdateFrom"] = self.updateFrom!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UpdateFrom") {
                self.updateFrom = dict["UpdateFrom"] as! String
            }
        }
    }
    public var alarmMetadata: String?

    public var approvalType: String?

    public var clientToken: String?

    public var deployMetadata: String?

    public var deployType: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmMetadata") {
            self.alarmMetadata = dict["AlarmMetadata"] as! String
        }
        if dict.keys.contains("ApprovalType") {
            self.approvalType = dict["ApprovalType"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DeployMetadata") {
            self.deployMetadata = dict["DeployMetadata"] as! String
        }
        if dict.keys.contains("DeployType") {
            self.deployType = dict["DeployType"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int64
        }
        if dict.keys.contains("IsSupportOperated") {
            self.isSupportOperated = dict["IsSupportOperated"] as! Bool
        }
        if dict.keys.contains("LicenseMetadata") {
            self.licenseMetadata = dict["LicenseMetadata"] as! String
        }
        if dict.keys.contains("LogMetadata") {
            self.logMetadata = dict["LogMetadata"] as! String
        }
        if dict.keys.contains("OperationMetadata") {
            self.operationMetadata = dict["OperationMetadata"] as! String
        }
        if dict.keys.contains("PolicyNames") {
            self.policyNames = dict["PolicyNames"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resellable") {
            self.resellable = dict["Resellable"] as! Bool
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceInfo") {
            var tmp : [UpdateServiceRequest.ServiceInfo] = []
            for v in dict["ServiceInfo"] as! [Any] {
                var model = UpdateServiceRequest.ServiceInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.serviceInfo = tmp
        }
        if dict.keys.contains("ServiceType") {
            self.serviceType = dict["ServiceType"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
        }
        if dict.keys.contains("ShareType") {
            self.shareType = dict["ShareType"] as! String
        }
        if dict.keys.contains("TenantType") {
            self.tenantType = dict["TenantType"] as! String
        }
        if dict.keys.contains("TrialDuration") {
            self.trialDuration = dict["TrialDuration"] as! Int32
        }
        if dict.keys.contains("UpdateOption") {
            var model = UpdateServiceRequest.UpdateOption()
            model.fromMap(dict["UpdateOption"] as! [String: Any])
            self.updateOption = model
        }
        if dict.keys.contains("UpgradeMetadata") {
            self.upgradeMetadata = dict["UpgradeMetadata"] as! String
        }
        if dict.keys.contains("VersionName") {
            self.versionName = dict["VersionName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public var agreements: [UpdateServiceShrinkRequest.ServiceInfo.Agreements]?

        public var image: String?

        public var locale: String?

        public var longDescriptionUrl: String?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Agreements") {
                var tmp : [UpdateServiceShrinkRequest.ServiceInfo.Agreements] = []
                for v in dict["Agreements"] as! [Any] {
                    var model = UpdateServiceShrinkRequest.ServiceInfo.Agreements()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.agreements = tmp
            }
            if dict.keys.contains("Image") {
                self.image = dict["Image"] as! String
            }
            if dict.keys.contains("Locale") {
                self.locale = dict["Locale"] as! String
            }
            if dict.keys.contains("LongDescriptionUrl") {
                self.longDescriptionUrl = dict["LongDescriptionUrl"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ShortDescription") {
                self.shortDescription = dict["ShortDescription"] as! String
            }
        }
    }
    public var alarmMetadata: String?

    public var approvalType: String?

    public var clientToken: String?

    public var deployMetadata: String?

    public var deployType: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AlarmMetadata") {
            self.alarmMetadata = dict["AlarmMetadata"] as! String
        }
        if dict.keys.contains("ApprovalType") {
            self.approvalType = dict["ApprovalType"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DeployMetadata") {
            self.deployMetadata = dict["DeployMetadata"] as! String
        }
        if dict.keys.contains("DeployType") {
            self.deployType = dict["DeployType"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int64
        }
        if dict.keys.contains("IsSupportOperated") {
            self.isSupportOperated = dict["IsSupportOperated"] as! Bool
        }
        if dict.keys.contains("LicenseMetadata") {
            self.licenseMetadata = dict["LicenseMetadata"] as! String
        }
        if dict.keys.contains("LogMetadata") {
            self.logMetadata = dict["LogMetadata"] as! String
        }
        if dict.keys.contains("OperationMetadata") {
            self.operationMetadata = dict["OperationMetadata"] as! String
        }
        if dict.keys.contains("PolicyNames") {
            self.policyNames = dict["PolicyNames"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Resellable") {
            self.resellable = dict["Resellable"] as! Bool
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceInfo") {
            var tmp : [UpdateServiceShrinkRequest.ServiceInfo] = []
            for v in dict["ServiceInfo"] as! [Any] {
                var model = UpdateServiceShrinkRequest.ServiceInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.serviceInfo = tmp
        }
        if dict.keys.contains("ServiceType") {
            self.serviceType = dict["ServiceType"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
        }
        if dict.keys.contains("ShareType") {
            self.shareType = dict["ShareType"] as! String
        }
        if dict.keys.contains("TenantType") {
            self.tenantType = dict["TenantType"] as! String
        }
        if dict.keys.contains("TrialDuration") {
            self.trialDuration = dict["TrialDuration"] as! Int32
        }
        if dict.keys.contains("UpdateOption") {
            self.updateOptionShrink = dict["UpdateOption"] as! String
        }
        if dict.keys.contains("UpgradeMetadata") {
            self.upgradeMetadata = dict["UpgradeMetadata"] as! String
        }
        if dict.keys.contains("VersionName") {
            self.versionName = dict["VersionName"] as! String
        }
    }
}

public class UpdateServiceResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateServiceInstanceAttributeRequest : Tea.TeaModel {
    public var endTime: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.serviceInstanceId != nil {
            map["ServiceInstanceId"] = self.serviceInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateServiceInstanceAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("EnableUserPrometheus") {
            self.enableUserPrometheus = dict["EnableUserPrometheus"] as! Bool
        }
        if dict.keys.contains("OperationName") {
            self.operationName = dict["OperationName"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! [String: Any]
        }
        if dict.keys.contains("PredefinedParametersName") {
            self.predefinedParametersName = dict["PredefinedParametersName"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("EnableUserPrometheus") {
            self.enableUserPrometheus = dict["EnableUserPrometheus"] as! Bool
        }
        if dict.keys.contains("OperationName") {
            self.operationName = dict["OperationName"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parametersShrink = dict["Parameters"] as! String
        }
        if dict.keys.contains("PredefinedParametersName") {
            self.predefinedParametersName = dict["PredefinedParametersName"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateServiceInstanceSpecResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! [String: Any]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DryRun") {
            self.dryRun = dict["DryRun"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parametersShrink = dict["Parameters"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
        if dict.keys.contains("ServiceVersion") {
            self.serviceVersion = dict["ServiceVersion"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceInstanceId") {
            self.serviceInstanceId = dict["ServiceInstanceId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UpgradeRequiredParameters") {
            self.upgradeRequiredParameters = dict["UpgradeRequiredParameters"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpgradeServiceInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
