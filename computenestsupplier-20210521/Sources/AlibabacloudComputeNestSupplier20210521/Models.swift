import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateArtifactRequest : Tea.TeaModel {
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

    public var artifactProperty: CreateArtifactRequest.ArtifactProperty?

    public var artifactType: String?

    public var description_: String?

    public var name: String?

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
        if self.artifactType != nil {
            map["ArtifactType"] = self.artifactType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if dict.keys.contains("SupportRegionIds") {
            self.supportRegionIds = dict["SupportRegionIds"] as! [String]
        }
        if dict.keys.contains("VersionName") {
            self.versionName = dict["VersionName"] as! String
        }
    }
}

public class CreateArtifactShrinkRequest : Tea.TeaModel {
    public var artifactId: String?

    public var artifactPropertyShrink: String?

    public var artifactType: String?

    public var description_: String?

    public var name: String?

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
        if self.artifactType != nil {
            map["ArtifactType"] = self.artifactType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if dict.keys.contains("ArtifactType") {
            self.artifactType = dict["ArtifactType"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SupportRegionIds") {
            self.supportRegionIds = dict["SupportRegionIds"] as! [String]
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class GetArtifactRequest : Tea.TeaModel {
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

public class GetArtifactResponseBody : Tea.TeaModel {
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
        if self.progress != nil {
            map["Progress"] = self.progress!
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
        if dict.keys.contains("Progress") {
            self.progress = dict["Progress"] as! String
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            self.availableResources = dict["AvailableResources"] as! [GetArtifactRepositoryCredentialsResponseBody.AvailableResources]
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
                    self.connectionConfigs = dict["ConnectionConfigs"] as! [GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections.ConnectionConfigs]
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
                self.privateVpcConnections = dict["PrivateVpcConnections"] as! [GetServiceInstanceResponseBody.NetworkConfig.PrivateVpcConnections]
            }
            if dict.keys.contains("ReversePrivateVpcConnections") {
                self.reversePrivateVpcConnections = dict["ReversePrivateVpcConnections"] as! [GetServiceInstanceResponseBody.NetworkConfig.ReversePrivateVpcConnections]
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
                self.serviceInfos = dict["ServiceInfos"] as! [GetServiceInstanceResponseBody.Service.ServiceInfos]
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
    public var createTime: String?

    public var enableInstanceOps: Bool?

    public var endTime: String?

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

    public var progress: Int64?

    public var requestId: String?

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
        if self.progress != nil {
            map["Progress"] = self.progress!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if dict.keys.contains("Progress") {
            self.progress = dict["Progress"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
            self.tags = dict["Tags"] as! [GetServiceInstanceResponseBody.Tags]
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

public class ListArtifactVersionsRequest : Tea.TeaModel {
    public var artifactId: String?

    public var maxResult: String?

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
        if self.maxResult != nil {
            map["MaxResult"] = self.maxResult!
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
        if dict.keys.contains("MaxResult") {
            self.maxResult = dict["MaxResult"] as! String
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

    public var maxResults: String?

    public var nextToken: String?

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
            self.artifacts = dict["Artifacts"] as! [ListArtifactVersionsResponseBody.Artifacts]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
    public var filter: [ListArtifactsRequest.Filter]?

    public var maxResults: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! [ListArtifactsRequest.Filter]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
    }
}

public class ListArtifactsResponseBody : Tea.TeaModel {
    public class Artifacts : Tea.TeaModel {
        public var artifactId: String?

        public var artifactType: String?

        public var description_: String?

        public var gmtModified: String?

        public var maxVersion: String?

        public var name: String?

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
            if self.status != nil {
                map["Status"] = self.status!
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
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var artifacts: [ListArtifactsResponseBody.Artifacts]?

    public var maxResults: String?

    public var nextToken: String?

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
            self.artifacts = dict["Artifacts"] as! [ListArtifactsResponseBody.Artifacts]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

    public var maxResults: String?

    public var nextToken: String?

    public var regionId: String?

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
            self.filter = dict["Filter"] as! [ListServiceInstancesRequest.Filter]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [ListServiceInstancesRequest.Tag]
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

            public var publishTime: String?

            public var serviceId: String?

            public var serviceInfos: [ListServiceInstancesResponseBody.ServiceInstances.Service.ServiceInfos]?

            public var serviceType: String?

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
                if dict.keys.contains("PublishTime") {
                    self.publishTime = dict["PublishTime"] as! String
                }
                if dict.keys.contains("ServiceId") {
                    self.serviceId = dict["ServiceId"] as! String
                }
                if dict.keys.contains("ServiceInfos") {
                    self.serviceInfos = dict["ServiceInfos"] as! [ListServiceInstancesResponseBody.ServiceInstances.Service.ServiceInfos]
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
                self.tags = dict["Tags"] as! [ListServiceInstancesResponseBody.ServiceInstances.Tags]
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
    public var maxResults: String?

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
            self.maxResults = dict["MaxResults"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceInstances") {
            self.serviceInstances = dict["ServiceInstances"] as! [ListServiceInstancesResponseBody.ServiceInstances]
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! [ListServiceUsagesRequest.Filter]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
    }
}

public class ListServiceUsagesResponseBody : Tea.TeaModel {
    public class ServiceUsages : Tea.TeaModel {
        public class UserInformation : Tea.TeaModel {
            public var company: String?

            public var country: String?

            public var emailAddress: String?

            public var industry: String?

            public var name: String?

            public var source: String?

            public var telephone: String?

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
                if self.company != nil {
                    map["Company"] = self.company!
                }
                if self.country != nil {
                    map["Country"] = self.country!
                }
                if self.emailAddress != nil {
                    map["EmailAddress"] = self.emailAddress!
                }
                if self.industry != nil {
                    map["Industry"] = self.industry!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                if self.telephone != nil {
                    map["Telephone"] = self.telephone!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Company") {
                    self.company = dict["Company"] as! String
                }
                if dict.keys.contains("Country") {
                    self.country = dict["Country"] as! String
                }
                if dict.keys.contains("EmailAddress") {
                    self.emailAddress = dict["EmailAddress"] as! String
                }
                if dict.keys.contains("Industry") {
                    self.industry = dict["Industry"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Source") {
                    self.source = dict["Source"] as! String
                }
                if dict.keys.contains("Telephone") {
                    self.telephone = dict["Telephone"] as! String
                }
                if dict.keys.contains("Title") {
                    self.title = dict["Title"] as! String
                }
            }
        }
        public var comments: String?

        public var createTime: String?

        public var serviceId: String?

        public var serviceName: String?

        public var status: String?

        public var supplierName: String?

        public var updateTime: String?

        public var userAliUid: Int64?

        public var userInformation: ListServiceUsagesResponseBody.ServiceUsages.UserInformation?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.userInformation?.validate()
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
                map["UserInformation"] = self.userInformation?.toMap()
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
                var model = ListServiceUsagesResponseBody.ServiceUsages.UserInformation()
                model.fromMap(dict["UserInformation"] as! [String: Any])
                self.userInformation = model
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
            self.serviceUsages = dict["ServiceUsages"] as! [ListServiceUsagesResponseBody.ServiceUsages]
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
