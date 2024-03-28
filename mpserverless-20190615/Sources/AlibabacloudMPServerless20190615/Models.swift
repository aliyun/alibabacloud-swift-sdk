import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddCorsDomainRequest : Tea.TeaModel {
    public var domain: String?

    public var spaceId: String?

    public override init() {
        super.init()
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
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class AddCorsDomainResponseBody : Tea.TeaModel {
    public var domainId: String?

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
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainId") && dict["DomainId"] != nil {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddCorsDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddCorsDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddCorsDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddDingtalkOpenPlatformConfigRequest : Tea.TeaModel {
    public var appId: String?

    public var appSecret: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appSecret != nil {
            map["AppSecret"] = self.appSecret!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppSecret") && dict["AppSecret"] != nil {
            self.appSecret = dict["AppSecret"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class AddDingtalkOpenPlatformConfigResponseBody : Tea.TeaModel {
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

public class AddDingtalkOpenPlatformConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDingtalkOpenPlatformConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddDingtalkOpenPlatformConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachWebHostingCertificateRequest : Tea.TeaModel {
    public var certName: String?

    public var certType: String?

    public var domain: String?

    public var privateKey: String?

    public var serverCertificate: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certName != nil {
            map["CertName"] = self.certName!
        }
        if self.certType != nil {
            map["CertType"] = self.certType!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.privateKey != nil {
            map["PrivateKey"] = self.privateKey!
        }
        if self.serverCertificate != nil {
            map["ServerCertificate"] = self.serverCertificate!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertName") && dict["CertName"] != nil {
            self.certName = dict["CertName"] as! String
        }
        if dict.keys.contains("CertType") && dict["CertType"] != nil {
            self.certType = dict["CertType"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("PrivateKey") && dict["PrivateKey"] != nil {
            self.privateKey = dict["PrivateKey"] as! String
        }
        if dict.keys.contains("ServerCertificate") && dict["ServerCertificate"] != nil {
            self.serverCertificate = dict["ServerCertificate"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class AttachWebHostingCertificateResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AttachWebHostingCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachWebHostingCertificateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AttachWebHostingCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchDeleteWebHostingFilesRequest : Tea.TeaModel {
    public var filePaths: [String]?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filePaths != nil {
            map["FilePaths"] = self.filePaths!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FilePaths") && dict["FilePaths"] != nil {
            self.filePaths = dict["FilePaths"] as! [String]
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class BatchDeleteWebHostingFilesResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BatchDeleteWebHostingFilesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchDeleteWebHostingFilesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchDeleteWebHostingFilesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindWebHostingCustomDomainRequest : Tea.TeaModel {
    public var customDomain: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customDomain != nil {
            map["CustomDomain"] = self.customDomain!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomDomain") && dict["CustomDomain"] != nil {
            self.customDomain = dict["CustomDomain"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class BindWebHostingCustomDomainResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BindWebHostingCustomDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindWebHostingCustomDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BindWebHostingCustomDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckMpServerlessRoleExistsRequest : Tea.TeaModel {
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
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RoleName") && dict["RoleName"] != nil {
            self.roleName = dict["RoleName"] as! String
        }
    }
}

public class CheckMpServerlessRoleExistsResponseBody : Tea.TeaModel {
    public var exists: Bool?

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
        if self.exists != nil {
            map["Exists"] = self.exists!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Exists") && dict["Exists"] != nil {
            self.exists = dict["Exists"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckMpServerlessRoleExistsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckMpServerlessRoleExistsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckMpServerlessRoleExistsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDBExportTaskRequest : Tea.TeaModel {
    public var collection: String?

    public var fields: String?

    public var fileType: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.collection != nil {
            map["Collection"] = self.collection!
        }
        if self.fields != nil {
            map["Fields"] = self.fields!
        }
        if self.fileType != nil {
            map["FileType"] = self.fileType!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Collection") && dict["Collection"] != nil {
            self.collection = dict["Collection"] as! String
        }
        if dict.keys.contains("Fields") && dict["Fields"] != nil {
            self.fields = dict["Fields"] as! String
        }
        if dict.keys.contains("FileType") && dict["FileType"] != nil {
            self.fileType = dict["FileType"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class CreateDBExportTaskResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateDBExportTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDBExportTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDBExportTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDBImportTaskRequest : Tea.TeaModel {
    public var collection: String?

    public var fileType: String?

    public var mode: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.collection != nil {
            map["Collection"] = self.collection!
        }
        if self.fileType != nil {
            map["FileType"] = self.fileType!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Collection") && dict["Collection"] != nil {
            self.collection = dict["Collection"] as! String
        }
        if dict.keys.contains("FileType") && dict["FileType"] != nil {
            self.fileType = dict["FileType"] as! String
        }
        if dict.keys.contains("Mode") && dict["Mode"] != nil {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class CreateDBImportTaskResponseBody : Tea.TeaModel {
    public var accessKeyId: String?

    public var expireTime: String?

    public var fileKey: String?

    public var host: String?

    public var policy: String?

    public var requestId: String?

    public var signature: String?

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
        if self.accessKeyId != nil {
            map["AccessKeyId"] = self.accessKeyId!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.fileKey != nil {
            map["FileKey"] = self.fileKey!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.signature != nil {
            map["Signature"] = self.signature!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessKeyId") && dict["AccessKeyId"] != nil {
            self.accessKeyId = dict["AccessKeyId"] as! String
        }
        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
            self.expireTime = dict["ExpireTime"] as! String
        }
        if dict.keys.contains("FileKey") && dict["FileKey"] != nil {
            self.fileKey = dict["FileKey"] as! String
        }
        if dict.keys.contains("Host") && dict["Host"] != nil {
            self.host = dict["Host"] as! String
        }
        if dict.keys.contains("Policy") && dict["Policy"] != nil {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Signature") && dict["Signature"] != nil {
            self.signature = dict["Signature"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateDBImportTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDBImportTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDBImportTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDBRestoreTaskRequest : Tea.TeaModel {
    public var backupId: String?

    public var newCollections: String?

    public var originCollections: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupId != nil {
            map["BackupId"] = self.backupId!
        }
        if self.newCollections != nil {
            map["NewCollections"] = self.newCollections!
        }
        if self.originCollections != nil {
            map["OriginCollections"] = self.originCollections!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupId") && dict["BackupId"] != nil {
            self.backupId = dict["BackupId"] as! String
        }
        if dict.keys.contains("NewCollections") && dict["NewCollections"] != nil {
            self.newCollections = dict["NewCollections"] as! String
        }
        if dict.keys.contains("OriginCollections") && dict["OriginCollections"] != nil {
            self.originCollections = dict["OriginCollections"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class CreateDBRestoreTaskResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateDBRestoreTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDBRestoreTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDBRestoreTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFunctionRequest : Tea.TeaModel {
    public var desc: String?

    public var memory: Int32?

    public var name: String?

    public var runtime: String?

    public var spaceId: String?

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
        if self.desc != nil {
            map["Desc"] = self.desc!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.runtime != nil {
            map["Runtime"] = self.runtime!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Desc") && dict["Desc"] != nil {
            self.desc = dict["Desc"] as! String
        }
        if dict.keys.contains("Memory") && dict["Memory"] != nil {
            self.memory = dict["Memory"] as! Int32
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Runtime") && dict["Runtime"] != nil {
            self.runtime = dict["Runtime"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
        if dict.keys.contains("Timeout") && dict["Timeout"] != nil {
            self.timeout = dict["Timeout"] as! Int32
        }
    }
}

public class CreateFunctionResponseBody : Tea.TeaModel {
    public class Spec : Tea.TeaModel {
        public var instanceConcurrency: String?

        public var memory: String?

        public var runtime: String?

        public var timeout: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceConcurrency != nil {
                map["InstanceConcurrency"] = self.instanceConcurrency!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.runtime != nil {
                map["Runtime"] = self.runtime!
            }
            if self.timeout != nil {
                map["Timeout"] = self.timeout!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceConcurrency") && dict["InstanceConcurrency"] != nil {
                self.instanceConcurrency = dict["InstanceConcurrency"] as! String
            }
            if dict.keys.contains("Memory") && dict["Memory"] != nil {
                self.memory = dict["Memory"] as! String
            }
            if dict.keys.contains("Runtime") && dict["Runtime"] != nil {
                self.runtime = dict["Runtime"] as! String
            }
            if dict.keys.contains("Timeout") && dict["Timeout"] != nil {
                self.timeout = dict["Timeout"] as! String
            }
        }
    }
    public var createdAt: String?

    public var desc: String?

    public var modifiedAt: String?

    public var name: String?

    public var requestId: String?

    public var spec: CreateFunctionResponseBody.Spec?

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
        if self.createdAt != nil {
            map["CreatedAt"] = self.createdAt!
        }
        if self.desc != nil {
            map["Desc"] = self.desc!
        }
        if self.modifiedAt != nil {
            map["ModifiedAt"] = self.modifiedAt!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.spec != nil {
            map["Spec"] = self.spec?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
            self.createdAt = dict["CreatedAt"] as! String
        }
        if dict.keys.contains("Desc") && dict["Desc"] != nil {
            self.desc = dict["Desc"] as! String
        }
        if dict.keys.contains("ModifiedAt") && dict["ModifiedAt"] != nil {
            self.modifiedAt = dict["ModifiedAt"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Spec") && dict["Spec"] != nil {
            var model = CreateFunctionResponseBody.Spec()
            model.fromMap(dict["Spec"] as! [String: Any])
            self.spec = model
        }
    }
}

public class CreateFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFunctionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateFunctionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFunctionDeploymentRequest : Tea.TeaModel {
    public var name: String?

    public var spaceId: String?

    public override init() {
        super.init()
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
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class CreateFunctionDeploymentResponseBody : Tea.TeaModel {
    public var deploymentId: String?

    public var requestId: String?

    public var uploadSignedUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deploymentId != nil {
            map["DeploymentId"] = self.deploymentId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.uploadSignedUrl != nil {
            map["UploadSignedUrl"] = self.uploadSignedUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeploymentId") && dict["DeploymentId"] != nil {
            self.deploymentId = dict["DeploymentId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UploadSignedUrl") && dict["UploadSignedUrl"] != nil {
            self.uploadSignedUrl = dict["UploadSignedUrl"] as! String
        }
    }
}

public class CreateFunctionDeploymentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFunctionDeploymentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateFunctionDeploymentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSpaceRequest : Tea.TeaModel {
    public var desc: String?

    public var name: String?

    public var workspaceId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.desc != nil {
            map["Desc"] = self.desc!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Desc") && dict["Desc"] != nil {
            self.desc = dict["Desc"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! Int64
        }
    }
}

public class CreateSpaceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var spaceId: String?

    public override init() {
        super.init()
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
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class CreateSpaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSpaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateSpaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSpaceWithOrderRequest : Tea.TeaModel {
    public var desc: String?

    public var name: String?

    public var packageVersion: String?

    public var period: Int32?

    public var subscriptionType: String?

    public var useCoupon: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.desc != nil {
            map["Desc"] = self.desc!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.packageVersion != nil {
            map["PackageVersion"] = self.packageVersion!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.subscriptionType != nil {
            map["SubscriptionType"] = self.subscriptionType!
        }
        if self.useCoupon != nil {
            map["UseCoupon"] = self.useCoupon!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Desc") && dict["Desc"] != nil {
            self.desc = dict["Desc"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PackageVersion") && dict["PackageVersion"] != nil {
            self.packageVersion = dict["PackageVersion"] as! String
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("SubscriptionType") && dict["SubscriptionType"] != nil {
            self.subscriptionType = dict["SubscriptionType"] as! String
        }
        if dict.keys.contains("UseCoupon") && dict["UseCoupon"] != nil {
            self.useCoupon = dict["UseCoupon"] as! Bool
        }
    }
}

public class CreateSpaceWithOrderResponseBody : Tea.TeaModel {
    public var instanceId: String?

    public var orderId: String?

    public var requestId: String?

    public var spaceId: String?

    public override init() {
        super.init()
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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class CreateSpaceWithOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSpaceWithOrderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateSpaceWithOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAntOpenPlatformConfigRequest : Tea.TeaModel {
    public var appId: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class DeleteAntOpenPlatformConfigResponseBody : Tea.TeaModel {
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

public class DeleteAntOpenPlatformConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAntOpenPlatformConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteAntOpenPlatformConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCorsDomainRequest : Tea.TeaModel {
    public var domainId: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainId") && dict["DomainId"] != nil {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class DeleteCorsDomainResponseBody : Tea.TeaModel {
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

public class DeleteCorsDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCorsDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteCorsDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDBCollectionRequest : Tea.TeaModel {
    public var body: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["Body"] = self.body!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Body") && dict["Body"] != nil {
            self.body = dict["Body"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class DeleteDBCollectionResponseBody : Tea.TeaModel {
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

public class DeleteDBCollectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDBCollectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDBCollectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDingtalkOpenPlatformConfigRequest : Tea.TeaModel {
    public var appId: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class DeleteDingtalkOpenPlatformConfigResponseBody : Tea.TeaModel {
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

public class DeleteDingtalkOpenPlatformConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDingtalkOpenPlatformConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDingtalkOpenPlatformConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFileRequest : Tea.TeaModel {
    public var id: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class DeleteFileResponseBody : Tea.TeaModel {
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

public class DeleteFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFunctionRequest : Tea.TeaModel {
    public var name: String?

    public var spaceId: String?

    public override init() {
        super.init()
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
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class DeleteFunctionResponseBody : Tea.TeaModel {
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

public class DeleteFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFunctionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteFunctionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSpaceRequest : Tea.TeaModel {
    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class DeleteSpaceResponseBody : Tea.TeaModel {
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

public class DeleteSpaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSpaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteSpaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteWebHostingCertificateRequest : Tea.TeaModel {
    public var domain: String?

    public var spaceId: String?

    public override init() {
        super.init()
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
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class DeleteWebHostingCertificateResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteWebHostingCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWebHostingCertificateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteWebHostingCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteWebHostingFileRequest : Tea.TeaModel {
    public var filePath: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FilePath") && dict["FilePath"] != nil {
            self.filePath = dict["FilePath"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class DeleteWebHostingFileResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteWebHostingFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWebHostingFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteWebHostingFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteWechatOpenPlatformConfigRequest : Tea.TeaModel {
    public var appId: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class DeleteWechatOpenPlatformConfigResponseBody : Tea.TeaModel {
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

public class DeleteWechatOpenPlatformConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWechatOpenPlatformConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteWechatOpenPlatformConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeployFunctionRequest : Tea.TeaModel {
    public var deploymentId: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deploymentId != nil {
            map["DeploymentId"] = self.deploymentId!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeploymentId") && dict["DeploymentId"] != nil {
            self.deploymentId = dict["DeploymentId"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class DeployFunctionResponseBody : Tea.TeaModel {
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

public class DeployFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeployFunctionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeployFunctionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCdnDomainRequest : Tea.TeaModel {
    public var spaceId: String?

    public var tenantId: String?

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
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeCdnDomainResponseBody : Tea.TeaModel {
    public class AuthConfig : Tea.TeaModel {
        public var authDelta: Int32?

        public var authKey: String?

        public var authType: String?

        public var configId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authDelta != nil {
                map["AuthDelta"] = self.authDelta!
            }
            if self.authKey != nil {
                map["AuthKey"] = self.authKey!
            }
            if self.authType != nil {
                map["AuthType"] = self.authType!
            }
            if self.configId != nil {
                map["configId"] = self.configId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthDelta") && dict["AuthDelta"] != nil {
                self.authDelta = dict["AuthDelta"] as! Int32
            }
            if dict.keys.contains("AuthKey") && dict["AuthKey"] != nil {
                self.authKey = dict["AuthKey"] as! String
            }
            if dict.keys.contains("AuthType") && dict["AuthType"] != nil {
                self.authType = dict["AuthType"] as! String
            }
            if dict.keys.contains("configId") && dict["configId"] != nil {
                self.configId = dict["configId"] as! String
            }
        }
    }
    public class CorsConfig : Tea.TeaModel {
        public var accessOriginControl: Bool?

        public var allowOrigin: String?

        public var configId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessOriginControl != nil {
                map["AccessOriginControl"] = self.accessOriginControl!
            }
            if self.allowOrigin != nil {
                map["AllowOrigin"] = self.allowOrigin!
            }
            if self.configId != nil {
                map["ConfigId"] = self.configId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessOriginControl") && dict["AccessOriginControl"] != nil {
                self.accessOriginControl = dict["AccessOriginControl"] as! Bool
            }
            if dict.keys.contains("AllowOrigin") && dict["AllowOrigin"] != nil {
                self.allowOrigin = dict["AllowOrigin"] as! String
            }
            if dict.keys.contains("ConfigId") && dict["ConfigId"] != nil {
                self.configId = dict["ConfigId"] as! String
            }
        }
    }
    public class IpConfig : Tea.TeaModel {
        public var configId: String?

        public var ipList: String?

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
            if self.configId != nil {
                map["ConfigId"] = self.configId!
            }
            if self.ipList != nil {
                map["IpList"] = self.ipList!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigId") && dict["ConfigId"] != nil {
                self.configId = dict["ConfigId"] as! String
            }
            if dict.keys.contains("IpList") && dict["IpList"] != nil {
                self.ipList = dict["IpList"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public class RefererConfig : Tea.TeaModel {
        public var allowEmpty: String?

        public var configId: String?

        public var disableAst: String?

        public var referList: String?

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
            if self.allowEmpty != nil {
                map["AllowEmpty"] = self.allowEmpty!
            }
            if self.configId != nil {
                map["ConfigId"] = self.configId!
            }
            if self.disableAst != nil {
                map["DisableAst"] = self.disableAst!
            }
            if self.referList != nil {
                map["ReferList"] = self.referList!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllowEmpty") && dict["AllowEmpty"] != nil {
                self.allowEmpty = dict["AllowEmpty"] as! String
            }
            if dict.keys.contains("ConfigId") && dict["ConfigId"] != nil {
                self.configId = dict["ConfigId"] as! String
            }
            if dict.keys.contains("DisableAst") && dict["DisableAst"] != nil {
                self.disableAst = dict["DisableAst"] as! String
            }
            if dict.keys.contains("ReferList") && dict["ReferList"] != nil {
                self.referList = dict["ReferList"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public class UaConfig : Tea.TeaModel {
        public var configId: String?

        public var type: String?

        public var uaList: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configId != nil {
                map["ConfigId"] = self.configId!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.uaList != nil {
                map["UaList"] = self.uaList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigId") && dict["ConfigId"] != nil {
                self.configId = dict["ConfigId"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UaList") && dict["UaList"] != nil {
                self.uaList = dict["UaList"] as! String
            }
        }
    }
    public var authConfig: DescribeCdnDomainResponseBody.AuthConfig?

    public var corsConfig: DescribeCdnDomainResponseBody.CorsConfig?

    public var domainName: String?

    public var ipConfig: DescribeCdnDomainResponseBody.IpConfig?

    public var refererConfig: DescribeCdnDomainResponseBody.RefererConfig?

    public var requestId: String?

    public var serviceStatus: String?

    public var spaceId: String?

    public var uaConfig: DescribeCdnDomainResponseBody.UaConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authConfig?.validate()
        try self.corsConfig?.validate()
        try self.ipConfig?.validate()
        try self.refererConfig?.validate()
        try self.uaConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authConfig != nil {
            map["AuthConfig"] = self.authConfig?.toMap()
        }
        if self.corsConfig != nil {
            map["CorsConfig"] = self.corsConfig?.toMap()
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.ipConfig != nil {
            map["IpConfig"] = self.ipConfig?.toMap()
        }
        if self.refererConfig != nil {
            map["RefererConfig"] = self.refererConfig?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceStatus != nil {
            map["ServiceStatus"] = self.serviceStatus!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        if self.uaConfig != nil {
            map["UaConfig"] = self.uaConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthConfig") && dict["AuthConfig"] != nil {
            var model = DescribeCdnDomainResponseBody.AuthConfig()
            model.fromMap(dict["AuthConfig"] as! [String: Any])
            self.authConfig = model
        }
        if dict.keys.contains("CorsConfig") && dict["CorsConfig"] != nil {
            var model = DescribeCdnDomainResponseBody.CorsConfig()
            model.fromMap(dict["CorsConfig"] as! [String: Any])
            self.corsConfig = model
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("IpConfig") && dict["IpConfig"] != nil {
            var model = DescribeCdnDomainResponseBody.IpConfig()
            model.fromMap(dict["IpConfig"] as! [String: Any])
            self.ipConfig = model
        }
        if dict.keys.contains("RefererConfig") && dict["RefererConfig"] != nil {
            var model = DescribeCdnDomainResponseBody.RefererConfig()
            model.fromMap(dict["RefererConfig"] as! [String: Any])
            self.refererConfig = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceStatus") && dict["ServiceStatus"] != nil {
            self.serviceStatus = dict["ServiceStatus"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
        if dict.keys.contains("UaConfig") && dict["UaConfig"] != nil {
            var model = DescribeCdnDomainResponseBody.UaConfig()
            model.fromMap(dict["UaConfig"] as! [String: Any])
            self.uaConfig = model
        }
    }
}

public class DescribeCdnDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCdnDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeCdnDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFCOpenStatusResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeFCOpenStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFCOpenStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeFCOpenStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFileUploadSignedUrlRequest : Tea.TeaModel {
    public var contentType: String?

    public var fileId: String?

    public var filename: String?

    public var size: Int64?

    public var spaceId: String?

    public override init() {
        super.init()
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
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.filename != nil {
            map["Filename"] = self.filename!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContentType") && dict["ContentType"] != nil {
            self.contentType = dict["ContentType"] as! String
        }
        if dict.keys.contains("FileId") && dict["FileId"] != nil {
            self.fileId = dict["FileId"] as! String
        }
        if dict.keys.contains("Filename") && dict["Filename"] != nil {
            self.filename = dict["Filename"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int64
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class DescribeFileUploadSignedUrlResponseBody : Tea.TeaModel {
    public var id: String?

    public var ossCallbackUrl: String?

    public var overwrite: Bool?

    public var requestId: String?

    public var signUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.ossCallbackUrl != nil {
            map["OssCallbackUrl"] = self.ossCallbackUrl!
        }
        if self.overwrite != nil {
            map["Overwrite"] = self.overwrite!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.signUrl != nil {
            map["SignUrl"] = self.signUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OssCallbackUrl") && dict["OssCallbackUrl"] != nil {
            self.ossCallbackUrl = dict["OssCallbackUrl"] as! String
        }
        if dict.keys.contains("Overwrite") && dict["Overwrite"] != nil {
            self.overwrite = dict["Overwrite"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SignUrl") && dict["SignUrl"] != nil {
            self.signUrl = dict["SignUrl"] as! String
        }
    }
}

public class DescribeFileUploadSignedUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFileUploadSignedUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeFileUploadSignedUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFunctionRequest : Tea.TeaModel {
    public var name: String?

    public var spaceId: String?

    public override init() {
        super.init()
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
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class DescribeFunctionResponseBody : Tea.TeaModel {
    public class Deployment : Tea.TeaModel {
        public var createdAt: String?

        public var deploymentId: String?

        public var downloadSignedUrl: String?

        public var modifiedAt: String?

        public var versionNo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.deploymentId != nil {
                map["DeploymentId"] = self.deploymentId!
            }
            if self.downloadSignedUrl != nil {
                map["DownloadSignedUrl"] = self.downloadSignedUrl!
            }
            if self.modifiedAt != nil {
                map["ModifiedAt"] = self.modifiedAt!
            }
            if self.versionNo != nil {
                map["VersionNo"] = self.versionNo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("DeploymentId") && dict["DeploymentId"] != nil {
                self.deploymentId = dict["DeploymentId"] as! String
            }
            if dict.keys.contains("DownloadSignedUrl") && dict["DownloadSignedUrl"] != nil {
                self.downloadSignedUrl = dict["DownloadSignedUrl"] as! String
            }
            if dict.keys.contains("ModifiedAt") && dict["ModifiedAt"] != nil {
                self.modifiedAt = dict["ModifiedAt"] as! String
            }
            if dict.keys.contains("VersionNo") && dict["VersionNo"] != nil {
                self.versionNo = dict["VersionNo"] as! String
            }
        }
    }
    public class Function : Tea.TeaModel {
        public class Spec : Tea.TeaModel {
            public var instanceConcurrency: Int32?

            public var memory: String?

            public var runtime: String?

            public var timeout: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.instanceConcurrency != nil {
                    map["InstanceConcurrency"] = self.instanceConcurrency!
                }
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                if self.runtime != nil {
                    map["Runtime"] = self.runtime!
                }
                if self.timeout != nil {
                    map["Timeout"] = self.timeout!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InstanceConcurrency") && dict["InstanceConcurrency"] != nil {
                    self.instanceConcurrency = dict["InstanceConcurrency"] as! Int32
                }
                if dict.keys.contains("Memory") && dict["Memory"] != nil {
                    self.memory = dict["Memory"] as! String
                }
                if dict.keys.contains("Runtime") && dict["Runtime"] != nil {
                    self.runtime = dict["Runtime"] as! String
                }
                if dict.keys.contains("Timeout") && dict["Timeout"] != nil {
                    self.timeout = dict["Timeout"] as! String
                }
            }
        }
        public var createdAt: String?

        public var desc: String?

        public var httpTriggerPath: String?

        public var modifiedAt: String?

        public var name: String?

        public var spec: DescribeFunctionResponseBody.Function.Spec?

        public var timingTriggerConfig: String?

        public var timingTriggerUserPayload: String?

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
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.desc != nil {
                map["Desc"] = self.desc!
            }
            if self.httpTriggerPath != nil {
                map["HttpTriggerPath"] = self.httpTriggerPath!
            }
            if self.modifiedAt != nil {
                map["ModifiedAt"] = self.modifiedAt!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.spec != nil {
                map["Spec"] = self.spec?.toMap()
            }
            if self.timingTriggerConfig != nil {
                map["TimingTriggerConfig"] = self.timingTriggerConfig!
            }
            if self.timingTriggerUserPayload != nil {
                map["TimingTriggerUserPayload"] = self.timingTriggerUserPayload!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Desc") && dict["Desc"] != nil {
                self.desc = dict["Desc"] as! String
            }
            if dict.keys.contains("HttpTriggerPath") && dict["HttpTriggerPath"] != nil {
                self.httpTriggerPath = dict["HttpTriggerPath"] as! String
            }
            if dict.keys.contains("ModifiedAt") && dict["ModifiedAt"] != nil {
                self.modifiedAt = dict["ModifiedAt"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Spec") && dict["Spec"] != nil {
                var model = DescribeFunctionResponseBody.Function.Spec()
                model.fromMap(dict["Spec"] as! [String: Any])
                self.spec = model
            }
            if dict.keys.contains("TimingTriggerConfig") && dict["TimingTriggerConfig"] != nil {
                self.timingTriggerConfig = dict["TimingTriggerConfig"] as! String
            }
            if dict.keys.contains("TimingTriggerUserPayload") && dict["TimingTriggerUserPayload"] != nil {
                self.timingTriggerUserPayload = dict["TimingTriggerUserPayload"] as! String
            }
        }
    }
    public var deployment: DescribeFunctionResponseBody.Deployment?

    public var function: DescribeFunctionResponseBody.Function?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deployment?.validate()
        try self.function?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deployment != nil {
            map["Deployment"] = self.deployment?.toMap()
        }
        if self.function != nil {
            map["Function"] = self.function?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Deployment") && dict["Deployment"] != nil {
            var model = DescribeFunctionResponseBody.Deployment()
            model.fromMap(dict["Deployment"] as! [String: Any])
            self.deployment = model
        }
        if dict.keys.contains("Function") && dict["Function"] != nil {
            var model = DescribeFunctionResponseBody.Function()
            model.fromMap(dict["Function"] as! [String: Any])
            self.function = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFunctionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeFunctionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHttpTriggerConfigRequest : Tea.TeaModel {
    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class DescribeHttpTriggerConfigResponseBody : Tea.TeaModel {
    public var customDomain: String?

    public var customDomainCertificateInfo: String?

    public var customDomainCname: String?

    public var defaultEndpoint: String?

    public var enableService: Bool?

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
        if self.customDomain != nil {
            map["CustomDomain"] = self.customDomain!
        }
        if self.customDomainCertificateInfo != nil {
            map["CustomDomainCertificateInfo"] = self.customDomainCertificateInfo!
        }
        if self.customDomainCname != nil {
            map["CustomDomainCname"] = self.customDomainCname!
        }
        if self.defaultEndpoint != nil {
            map["DefaultEndpoint"] = self.defaultEndpoint!
        }
        if self.enableService != nil {
            map["EnableService"] = self.enableService!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomDomain") && dict["CustomDomain"] != nil {
            self.customDomain = dict["CustomDomain"] as! String
        }
        if dict.keys.contains("CustomDomainCertificateInfo") && dict["CustomDomainCertificateInfo"] != nil {
            self.customDomainCertificateInfo = dict["CustomDomainCertificateInfo"] as! String
        }
        if dict.keys.contains("CustomDomainCname") && dict["CustomDomainCname"] != nil {
            self.customDomainCname = dict["CustomDomainCname"] as! String
        }
        if dict.keys.contains("DefaultEndpoint") && dict["DefaultEndpoint"] != nil {
            self.defaultEndpoint = dict["DefaultEndpoint"] as! String
        }
        if dict.keys.contains("EnableService") && dict["EnableService"] != nil {
            self.enableService = dict["EnableService"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeHttpTriggerConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHttpTriggerConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeHttpTriggerConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeResourceQuotaRequest : Tea.TeaModel {
    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class DescribeResourceQuotaResponseBody : Tea.TeaModel {
    public var cloudStorageDataSizeQuota: Double?

    public var requestId: String?

    public var staticWebDataSizeQuota: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cloudStorageDataSizeQuota != nil {
            map["CloudStorageDataSizeQuota"] = self.cloudStorageDataSizeQuota!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.staticWebDataSizeQuota != nil {
            map["StaticWebDataSizeQuota"] = self.staticWebDataSizeQuota!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CloudStorageDataSizeQuota") && dict["CloudStorageDataSizeQuota"] != nil {
            self.cloudStorageDataSizeQuota = dict["CloudStorageDataSizeQuota"] as! Double
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StaticWebDataSizeQuota") && dict["StaticWebDataSizeQuota"] != nil {
            self.staticWebDataSizeQuota = dict["StaticWebDataSizeQuota"] as! Double
        }
    }
}

public class DescribeResourceQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResourceQuotaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeResourceQuotaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeResourceUsageRequest : Tea.TeaModel {
    public var endTime: String?

    public var format: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var spaceId: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.format != nil {
            map["Format"] = self.format!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Format") && dict["Format"] != nil {
            self.format = dict["Format"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeResourceUsageResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public class CloudDB : Tea.TeaModel {
            public var dataSize: Int64?

            public var read: Int64?

            public var write: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataSize != nil {
                    map["DataSize"] = self.dataSize!
                }
                if self.read != nil {
                    map["Read"] = self.read!
                }
                if self.write != nil {
                    map["Write"] = self.write!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataSize") && dict["DataSize"] != nil {
                    self.dataSize = dict["DataSize"] as! Int64
                }
                if dict.keys.contains("Read") && dict["Read"] != nil {
                    self.read = dict["Read"] as! Int64
                }
                if dict.keys.contains("Write") && dict["Write"] != nil {
                    self.write = dict["Write"] as! Int64
                }
            }
        }
        public class CloudFunction : Tea.TeaModel {
            public var compute: Int64?

            public var count: Int64?

            public var traffic: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.compute != nil {
                    map["Compute"] = self.compute!
                }
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.traffic != nil {
                    map["Traffic"] = self.traffic!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Compute") && dict["Compute"] != nil {
                    self.compute = dict["Compute"] as! Int64
                }
                if dict.keys.contains("Count") && dict["Count"] != nil {
                    self.count = dict["Count"] as! Int64
                }
                if dict.keys.contains("Traffic") && dict["Traffic"] != nil {
                    self.traffic = dict["Traffic"] as! Int64
                }
            }
        }
        public class CloudStorage : Tea.TeaModel {
            public var dataSize: Int64?

            public var download: Int64?

            public var traffic: Int64?

            public var upload: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataSize != nil {
                    map["DataSize"] = self.dataSize!
                }
                if self.download != nil {
                    map["Download"] = self.download!
                }
                if self.traffic != nil {
                    map["Traffic"] = self.traffic!
                }
                if self.upload != nil {
                    map["Upload"] = self.upload!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataSize") && dict["DataSize"] != nil {
                    self.dataSize = dict["DataSize"] as! Int64
                }
                if dict.keys.contains("Download") && dict["Download"] != nil {
                    self.download = dict["Download"] as! Int64
                }
                if dict.keys.contains("Traffic") && dict["Traffic"] != nil {
                    self.traffic = dict["Traffic"] as! Int64
                }
                if dict.keys.contains("Upload") && dict["Upload"] != nil {
                    self.upload = dict["Upload"] as! Int64
                }
            }
        }
        public class StaticWeb : Tea.TeaModel {
            public var dataSize: Int64?

            public var traffic: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataSize != nil {
                    map["DataSize"] = self.dataSize!
                }
                if self.traffic != nil {
                    map["Traffic"] = self.traffic!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataSize") && dict["DataSize"] != nil {
                    self.dataSize = dict["DataSize"] as! Int64
                }
                if dict.keys.contains("Traffic") && dict["Traffic"] != nil {
                    self.traffic = dict["Traffic"] as! Int64
                }
            }
        }
        public var cloudDB: DescribeResourceUsageResponseBody.DataList.CloudDB?

        public var cloudFunction: DescribeResourceUsageResponseBody.DataList.CloudFunction?

        public var cloudStorage: DescribeResourceUsageResponseBody.DataList.CloudStorage?

        public var endTime: String?

        public var startTime: String?

        public var staticWeb: DescribeResourceUsageResponseBody.DataList.StaticWeb?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.cloudDB?.validate()
            try self.cloudFunction?.validate()
            try self.cloudStorage?.validate()
            try self.staticWeb?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cloudDB != nil {
                map["CloudDB"] = self.cloudDB?.toMap()
            }
            if self.cloudFunction != nil {
                map["CloudFunction"] = self.cloudFunction?.toMap()
            }
            if self.cloudStorage != nil {
                map["CloudStorage"] = self.cloudStorage?.toMap()
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.staticWeb != nil {
                map["StaticWeb"] = self.staticWeb?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CloudDB") && dict["CloudDB"] != nil {
                var model = DescribeResourceUsageResponseBody.DataList.CloudDB()
                model.fromMap(dict["CloudDB"] as! [String: Any])
                self.cloudDB = model
            }
            if dict.keys.contains("CloudFunction") && dict["CloudFunction"] != nil {
                var model = DescribeResourceUsageResponseBody.DataList.CloudFunction()
                model.fromMap(dict["CloudFunction"] as! [String: Any])
                self.cloudFunction = model
            }
            if dict.keys.contains("CloudStorage") && dict["CloudStorage"] != nil {
                var model = DescribeResourceUsageResponseBody.DataList.CloudStorage()
                model.fromMap(dict["CloudStorage"] as! [String: Any])
                self.cloudStorage = model
            }
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("StaticWeb") && dict["StaticWeb"] != nil {
                var model = DescribeResourceUsageResponseBody.DataList.StaticWeb()
                model.fromMap(dict["StaticWeb"] as! [String: Any])
                self.staticWeb = model
            }
        }
    }
    public class Paginator : Tea.TeaModel {
        public var pageCount: Int64?

        public var pageNum: Int64?

        public var pageSize: Int64?

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
            if self.pageCount != nil {
                map["PageCount"] = self.pageCount!
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageCount") && dict["PageCount"] != nil {
                self.pageCount = dict["PageCount"] as! Int64
            }
            if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
                self.pageNum = dict["PageNum"] as! Int64
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int64
            }
        }
    }
    public var code: String?

    public var dataList: [DescribeResourceUsageResponseBody.DataList]?

    public var httpStatusCode: String?

    public var message: String?

    public var paginator: DescribeResourceUsageResponseBody.Paginator?

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
        try self.paginator?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dataList != nil {
            var tmp : [Any] = []
            for k in self.dataList! {
                tmp.append(k.toMap())
            }
            map["DataList"] = tmp
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.paginator != nil {
            map["Paginator"] = self.paginator?.toMap()
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DataList") && dict["DataList"] != nil {
            var tmp : [DescribeResourceUsageResponseBody.DataList] = []
            for v in dict["DataList"] as! [Any] {
                var model = DescribeResourceUsageResponseBody.DataList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataList = tmp
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Paginator") && dict["Paginator"] != nil {
            var model = DescribeResourceUsageResponseBody.Paginator()
            model.fromMap(dict["Paginator"] as! [String: Any])
            self.paginator = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeResourceUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResourceUsageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeResourceUsageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeServicePolicyRequest : Tea.TeaModel {
    public var collectionName: String?

    public var serviceName: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.collectionName != nil {
            map["CollectionName"] = self.collectionName!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CollectionName") && dict["CollectionName"] != nil {
            self.collectionName = dict["CollectionName"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class DescribeServicePolicyResponseBody : Tea.TeaModel {
    public var collectionName: String?

    public var policy: String?

    public var policyName: String?

    public var requestId: String?

    public var serviceName: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.collectionName != nil {
            map["CollectionName"] = self.collectionName!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CollectionName") && dict["CollectionName"] != nil {
            self.collectionName = dict["CollectionName"] as! String
        }
        if dict.keys.contains("Policy") && dict["Policy"] != nil {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("PolicyName") && dict["PolicyName"] != nil {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class DescribeServicePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServicePolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeServicePolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSpaceClientConfigRequest : Tea.TeaModel {
    public var detail: String?

    public var spaceId: String?

    public var workspaceId: Int64?

    public override init() {
        super.init()
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
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Detail") && dict["Detail"] != nil {
            self.detail = dict["Detail"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
            self.workspaceId = dict["WorkspaceId"] as! Int64
        }
    }
}

public class DescribeSpaceClientConfigResponseBody : Tea.TeaModel {
    public var apiKey: String?

    public var endpoint: String?

    public var fileUploadEndpoint: String?

    public var name: String?

    public var privateKey: String?

    public var requestId: String?

    public var spaceId: String?

    public override init() {
        super.init()
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
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.fileUploadEndpoint != nil {
            map["FileUploadEndpoint"] = self.fileUploadEndpoint!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.privateKey != nil {
            map["PrivateKey"] = self.privateKey!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiKey") && dict["ApiKey"] != nil {
            self.apiKey = dict["ApiKey"] as! String
        }
        if dict.keys.contains("Endpoint") && dict["Endpoint"] != nil {
            self.endpoint = dict["Endpoint"] as! String
        }
        if dict.keys.contains("FileUploadEndpoint") && dict["FileUploadEndpoint"] != nil {
            self.fileUploadEndpoint = dict["FileUploadEndpoint"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PrivateKey") && dict["PrivateKey"] != nil {
            self.privateKey = dict["PrivateKey"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class DescribeSpaceClientConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSpaceClientConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSpaceClientConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSpacesRequest : Tea.TeaModel {
    public var emasWorkspaceId: Int64?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var spaceIds: [String]?

    public var specCode: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.emasWorkspaceId != nil {
            map["EmasWorkspaceId"] = self.emasWorkspaceId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.spaceIds != nil {
            map["SpaceIds"] = self.spaceIds!
        }
        if self.specCode != nil {
            map["SpecCode"] = self.specCode!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EmasWorkspaceId") && dict["EmasWorkspaceId"] != nil {
            self.emasWorkspaceId = dict["EmasWorkspaceId"] as! Int64
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SpaceIds") && dict["SpaceIds"] != nil {
            self.spaceIds = dict["SpaceIds"] as! [String]
        }
        if dict.keys.contains("SpecCode") && dict["SpecCode"] != nil {
            self.specCode = dict["SpecCode"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeSpacesShrinkRequest : Tea.TeaModel {
    public var emasWorkspaceId: Int64?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var spaceIdsShrink: String?

    public var specCode: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.emasWorkspaceId != nil {
            map["EmasWorkspaceId"] = self.emasWorkspaceId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.spaceIdsShrink != nil {
            map["SpaceIds"] = self.spaceIdsShrink!
        }
        if self.specCode != nil {
            map["SpecCode"] = self.specCode!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EmasWorkspaceId") && dict["EmasWorkspaceId"] != nil {
            self.emasWorkspaceId = dict["EmasWorkspaceId"] as! Int64
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SpaceIds") && dict["SpaceIds"] != nil {
            self.spaceIdsShrink = dict["SpaceIds"] as! String
        }
        if dict.keys.contains("SpecCode") && dict["SpecCode"] != nil {
            self.specCode = dict["SpecCode"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class DescribeSpacesResponseBody : Tea.TeaModel {
    public class Spaces : Tea.TeaModel {
        public var autoRenew: Bool?

        public var chargeType: String?

        public var description_: String?

        public var emasWorkspaceId: Int64?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var instanceId: String?

        public var name: String?

        public var orderType: String?

        public var packageEndDate: String?

        public var packageStartDate: String?

        public var packageStatus: String?

        public var renewDuration: String?

        public var serviceStatus: String?

        public var spaceId: String?

        public var specCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoRenew != nil {
                map["AutoRenew"] = self.autoRenew!
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.emasWorkspaceId != nil {
                map["EmasWorkspaceId"] = self.emasWorkspaceId!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.orderType != nil {
                map["OrderType"] = self.orderType!
            }
            if self.packageEndDate != nil {
                map["PackageEndDate"] = self.packageEndDate!
            }
            if self.packageStartDate != nil {
                map["PackageStartDate"] = self.packageStartDate!
            }
            if self.packageStatus != nil {
                map["PackageStatus"] = self.packageStatus!
            }
            if self.renewDuration != nil {
                map["RenewDuration"] = self.renewDuration!
            }
            if self.serviceStatus != nil {
                map["ServiceStatus"] = self.serviceStatus!
            }
            if self.spaceId != nil {
                map["SpaceId"] = self.spaceId!
            }
            if self.specCode != nil {
                map["SpecCode"] = self.specCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoRenew") && dict["AutoRenew"] != nil {
                self.autoRenew = dict["AutoRenew"] as! Bool
            }
            if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EmasWorkspaceId") && dict["EmasWorkspaceId"] != nil {
                self.emasWorkspaceId = dict["EmasWorkspaceId"] as! Int64
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OrderType") && dict["OrderType"] != nil {
                self.orderType = dict["OrderType"] as! String
            }
            if dict.keys.contains("PackageEndDate") && dict["PackageEndDate"] != nil {
                self.packageEndDate = dict["PackageEndDate"] as! String
            }
            if dict.keys.contains("PackageStartDate") && dict["PackageStartDate"] != nil {
                self.packageStartDate = dict["PackageStartDate"] as! String
            }
            if dict.keys.contains("PackageStatus") && dict["PackageStatus"] != nil {
                self.packageStatus = dict["PackageStatus"] as! String
            }
            if dict.keys.contains("RenewDuration") && dict["RenewDuration"] != nil {
                self.renewDuration = dict["RenewDuration"] as! String
            }
            if dict.keys.contains("ServiceStatus") && dict["ServiceStatus"] != nil {
                self.serviceStatus = dict["ServiceStatus"] as! String
            }
            if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
                self.spaceId = dict["SpaceId"] as! String
            }
            if dict.keys.contains("SpecCode") && dict["SpecCode"] != nil {
                self.specCode = dict["SpecCode"] as! String
            }
        }
    }
    public var count: Int32?

    public var gmtCreate: String?

    public var requestId: String?

    public var spaces: [DescribeSpacesResponseBody.Spaces]?

    public override init() {
        super.init()
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
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.spaces != nil {
            var tmp : [Any] = []
            for k in self.spaces! {
                tmp.append(k.toMap())
            }
            map["Spaces"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Count") && dict["Count"] != nil {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
            self.gmtCreate = dict["GmtCreate"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Spaces") && dict["Spaces"] != nil {
            var tmp : [DescribeSpacesResponseBody.Spaces] = []
            for v in dict["Spaces"] as! [Any] {
                var model = DescribeSpacesResponseBody.Spaces()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.spaces = tmp
        }
    }
}

public class DescribeSpacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSpacesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSpacesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeWebHostingFileRequest : Tea.TeaModel {
    public var filePath: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FilePath") && dict["FilePath"] != nil {
            self.filePath = dict["FilePath"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class DescribeWebHostingFileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var contentType: String?

        public var ETag: String?

        public var exists: Bool?

        public var filePath: String?

        public var lastModifiedTime: Int64?

        public var signedUrl: String?

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
            if self.contentType != nil {
                map["ContentType"] = self.contentType!
            }
            if self.ETag != nil {
                map["ETag"] = self.ETag!
            }
            if self.exists != nil {
                map["Exists"] = self.exists!
            }
            if self.filePath != nil {
                map["FilePath"] = self.filePath!
            }
            if self.lastModifiedTime != nil {
                map["LastModifiedTime"] = self.lastModifiedTime!
            }
            if self.signedUrl != nil {
                map["SignedUrl"] = self.signedUrl!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContentType") && dict["ContentType"] != nil {
                self.contentType = dict["ContentType"] as! String
            }
            if dict.keys.contains("ETag") && dict["ETag"] != nil {
                self.ETag = dict["ETag"] as! String
            }
            if dict.keys.contains("Exists") && dict["Exists"] != nil {
                self.exists = dict["Exists"] as! Bool
            }
            if dict.keys.contains("FilePath") && dict["FilePath"] != nil {
                self.filePath = dict["FilePath"] as! String
            }
            if dict.keys.contains("LastModifiedTime") && dict["LastModifiedTime"] != nil {
                self.lastModifiedTime = dict["LastModifiedTime"] as! Int64
            }
            if dict.keys.contains("SignedUrl") && dict["SignedUrl"] != nil {
                self.signedUrl = dict["SignedUrl"] as! String
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
                self.size = dict["Size"] as! Int64
            }
        }
    }
    public var data: DescribeWebHostingFileResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeWebHostingFileResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeWebHostingFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWebHostingFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeWebHostingFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableExtensionRequest : Tea.TeaModel {
    public var extensionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extensionId != nil {
            map["ExtensionId"] = self.extensionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExtensionId") && dict["ExtensionId"] != nil {
            self.extensionId = dict["ExtensionId"] as! String
        }
    }
}

public class EnableExtensionResponseBody : Tea.TeaModel {
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

public class EnableExtensionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableExtensionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnableExtensionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWebHostingCertificateDetailRequest : Tea.TeaModel {
    public var customDomain: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customDomain != nil {
            map["CustomDomain"] = self.customDomain!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomDomain") && dict["CustomDomain"] != nil {
            self.customDomain = dict["CustomDomain"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class GetWebHostingCertificateDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var certDomainName: String?

        public var certExpiredTime: Int64?

        public var certLife: String?

        public var certName: String?

        public var certType: String?

        public var serverCertificateStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certDomainName != nil {
                map["CertDomainName"] = self.certDomainName!
            }
            if self.certExpiredTime != nil {
                map["CertExpiredTime"] = self.certExpiredTime!
            }
            if self.certLife != nil {
                map["CertLife"] = self.certLife!
            }
            if self.certName != nil {
                map["CertName"] = self.certName!
            }
            if self.certType != nil {
                map["CertType"] = self.certType!
            }
            if self.serverCertificateStatus != nil {
                map["ServerCertificateStatus"] = self.serverCertificateStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertDomainName") && dict["CertDomainName"] != nil {
                self.certDomainName = dict["CertDomainName"] as! String
            }
            if dict.keys.contains("CertExpiredTime") && dict["CertExpiredTime"] != nil {
                self.certExpiredTime = dict["CertExpiredTime"] as! Int64
            }
            if dict.keys.contains("CertLife") && dict["CertLife"] != nil {
                self.certLife = dict["CertLife"] as! String
            }
            if dict.keys.contains("CertName") && dict["CertName"] != nil {
                self.certName = dict["CertName"] as! String
            }
            if dict.keys.contains("CertType") && dict["CertType"] != nil {
                self.certType = dict["CertType"] as! String
            }
            if dict.keys.contains("ServerCertificateStatus") && dict["ServerCertificateStatus"] != nil {
                self.serverCertificateStatus = dict["ServerCertificateStatus"] as! String
            }
        }
    }
    public var data: GetWebHostingCertificateDetailResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetWebHostingCertificateDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetWebHostingCertificateDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWebHostingCertificateDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetWebHostingCertificateDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWebHostingConfigRequest : Tea.TeaModel {
    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class GetWebHostingConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var allowedIps: String?

        public var defaultDomain: String?

        public var errorHttpStatus: String?

        public var errorPath: String?

        public var indexPath: String?

        public var spaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowedIps != nil {
                map["AllowedIps"] = self.allowedIps!
            }
            if self.defaultDomain != nil {
                map["DefaultDomain"] = self.defaultDomain!
            }
            if self.errorHttpStatus != nil {
                map["ErrorHttpStatus"] = self.errorHttpStatus!
            }
            if self.errorPath != nil {
                map["ErrorPath"] = self.errorPath!
            }
            if self.indexPath != nil {
                map["IndexPath"] = self.indexPath!
            }
            if self.spaceId != nil {
                map["SpaceId"] = self.spaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllowedIps") && dict["AllowedIps"] != nil {
                self.allowedIps = dict["AllowedIps"] as! String
            }
            if dict.keys.contains("DefaultDomain") && dict["DefaultDomain"] != nil {
                self.defaultDomain = dict["DefaultDomain"] as! String
            }
            if dict.keys.contains("ErrorHttpStatus") && dict["ErrorHttpStatus"] != nil {
                self.errorHttpStatus = dict["ErrorHttpStatus"] as! String
            }
            if dict.keys.contains("ErrorPath") && dict["ErrorPath"] != nil {
                self.errorPath = dict["ErrorPath"] as! String
            }
            if dict.keys.contains("IndexPath") && dict["IndexPath"] != nil {
                self.indexPath = dict["IndexPath"] as! String
            }
            if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
                self.spaceId = dict["SpaceId"] as! String
            }
        }
    }
    public var data: GetWebHostingConfigResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetWebHostingConfigResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetWebHostingConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWebHostingConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetWebHostingConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWebHostingDomainVerificationContentRequest : Tea.TeaModel {
    public var domain: String?

    public var spaceId: String?

    public override init() {
        super.init()
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
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class GetWebHostingDomainVerificationContentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var content: String?

        public var domain: String?

        public override init() {
            super.init()
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
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
        }
    }
    public var data: GetWebHostingDomainVerificationContentResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetWebHostingDomainVerificationContentResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetWebHostingDomainVerificationContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWebHostingDomainVerificationContentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetWebHostingDomainVerificationContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWebHostingStatusRequest : Tea.TeaModel {
    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class GetWebHostingStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var spaceId: String?

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
            if self.spaceId != nil {
                map["SpaceId"] = self.spaceId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
                self.spaceId = dict["SpaceId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var data: GetWebHostingStatusResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetWebHostingStatusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetWebHostingStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWebHostingStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetWebHostingStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWebHostingUploadCredentialRequest : Tea.TeaModel {
    public var filePath: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FilePath") && dict["FilePath"] != nil {
            self.filePath = dict["FilePath"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class GetWebHostingUploadCredentialResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessKeyId: String?

        public var endpoint: String?

        public var expiredTime: Int64?

        public var filePath: String?

        public var policy: String?

        public var securityToken: String?

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
            if self.accessKeyId != nil {
                map["AccessKeyId"] = self.accessKeyId!
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.filePath != nil {
                map["FilePath"] = self.filePath!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.securityToken != nil {
                map["SecurityToken"] = self.securityToken!
            }
            if self.signature != nil {
                map["Signature"] = self.signature!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKeyId") && dict["AccessKeyId"] != nil {
                self.accessKeyId = dict["AccessKeyId"] as! String
            }
            if dict.keys.contains("Endpoint") && dict["Endpoint"] != nil {
                self.endpoint = dict["Endpoint"] as! String
            }
            if dict.keys.contains("ExpiredTime") && dict["ExpiredTime"] != nil {
                self.expiredTime = dict["ExpiredTime"] as! Int64
            }
            if dict.keys.contains("FilePath") && dict["FilePath"] != nil {
                self.filePath = dict["FilePath"] as! String
            }
            if dict.keys.contains("Policy") && dict["Policy"] != nil {
                self.policy = dict["Policy"] as! String
            }
            if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
                self.securityToken = dict["SecurityToken"] as! String
            }
            if dict.keys.contains("Signature") && dict["Signature"] != nil {
                self.signature = dict["Signature"] as! String
            }
        }
    }
    public var data: GetWebHostingUploadCredentialResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetWebHostingUploadCredentialResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetWebHostingUploadCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWebHostingUploadCredentialResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetWebHostingUploadCredentialResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCorsDomainsRequest : Tea.TeaModel {
    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class ListCorsDomainsResponseBody : Tea.TeaModel {
    public class Domains : Tea.TeaModel {
        public var domain: String?

        public var domainId: String?

        public override init() {
            super.init()
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
            if self.domainId != nil {
                map["DomainId"] = self.domainId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("DomainId") && dict["DomainId"] != nil {
                self.domainId = dict["DomainId"] as! String
            }
        }
    }
    public var domains: [ListCorsDomainsResponseBody.Domains]?

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
        if self.domains != nil {
            var tmp : [Any] = []
            for k in self.domains! {
                tmp.append(k.toMap())
            }
            map["Domains"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domains") && dict["Domains"] != nil {
            var tmp : [ListCorsDomainsResponseBody.Domains] = []
            for v in dict["Domains"] as! [Any] {
                var model = ListCorsDomainsResponseBody.Domains()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.domains = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListCorsDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCorsDomainsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListCorsDomainsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDingtalkOpenPlatformConfigsRequest : Tea.TeaModel {
    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class ListDingtalkOpenPlatformConfigsResponseBody : Tea.TeaModel {
    public class Configs : Tea.TeaModel {
        public var appId: String?

        public var appSecret: String?

        public var createTime: String?

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
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appSecret != nil {
                map["AppSecret"] = self.appSecret!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppSecret") && dict["AppSecret"] != nil {
                self.appSecret = dict["AppSecret"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var configs: [ListDingtalkOpenPlatformConfigsResponseBody.Configs]?

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
        if self.configs != nil {
            var tmp : [Any] = []
            for k in self.configs! {
                tmp.append(k.toMap())
            }
            map["Configs"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Configs") && dict["Configs"] != nil {
            var tmp : [ListDingtalkOpenPlatformConfigsResponseBody.Configs] = []
            for v in dict["Configs"] as! [Any] {
                var model = ListDingtalkOpenPlatformConfigsResponseBody.Configs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.configs = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDingtalkOpenPlatformConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDingtalkOpenPlatformConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDingtalkOpenPlatformConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListExtensionsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListExtensionsResponseBody : Tea.TeaModel {
    public class Extensions : Tea.TeaModel {
        public var enabled: String?

        public var extensionDesc: String?

        public var extensionDocumentationLink: String?

        public var extensionId: String?

        public var extensionName: String?

        public override init() {
            super.init()
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
            if self.extensionDesc != nil {
                map["ExtensionDesc"] = self.extensionDesc!
            }
            if self.extensionDocumentationLink != nil {
                map["ExtensionDocumentationLink"] = self.extensionDocumentationLink!
            }
            if self.extensionId != nil {
                map["ExtensionId"] = self.extensionId!
            }
            if self.extensionName != nil {
                map["ExtensionName"] = self.extensionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                self.enabled = dict["Enabled"] as! String
            }
            if dict.keys.contains("ExtensionDesc") && dict["ExtensionDesc"] != nil {
                self.extensionDesc = dict["ExtensionDesc"] as! String
            }
            if dict.keys.contains("ExtensionDocumentationLink") && dict["ExtensionDocumentationLink"] != nil {
                self.extensionDocumentationLink = dict["ExtensionDocumentationLink"] as! String
            }
            if dict.keys.contains("ExtensionId") && dict["ExtensionId"] != nil {
                self.extensionId = dict["ExtensionId"] as! String
            }
            if dict.keys.contains("ExtensionName") && dict["ExtensionName"] != nil {
                self.extensionName = dict["ExtensionName"] as! String
            }
        }
    }
    public var extensions: [ListExtensionsResponseBody.Extensions]?

    public var pageNumber: Int32?

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
        if self.extensions != nil {
            var tmp : [Any] = []
            for k in self.extensions! {
                tmp.append(k.toMap())
            }
            map["Extensions"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        if dict.keys.contains("Extensions") && dict["Extensions"] != nil {
            var tmp : [ListExtensionsResponseBody.Extensions] = []
            for v in dict["Extensions"] as! [Any] {
                var model = ListExtensionsResponseBody.Extensions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.extensions = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
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

public class ListExtensionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExtensionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListExtensionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFileRequest : Tea.TeaModel {
    public var authDelta: Int32?

    public var fileId: String?

    public var keyword: String?

    public var mode: String?

    public var nextToken: String?

    public var pageSize: Int32?

    public var prefix_: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authDelta != nil {
            map["AuthDelta"] = self.authDelta!
        }
        if self.fileId != nil {
            map["FileId"] = self.fileId!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prefix_ != nil {
            map["Prefix"] = self.prefix_!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthDelta") && dict["AuthDelta"] != nil {
            self.authDelta = dict["AuthDelta"] as! Int32
        }
        if dict.keys.contains("FileId") && dict["FileId"] != nil {
            self.fileId = dict["FileId"] as! String
        }
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("Mode") && dict["Mode"] != nil {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Prefix") && dict["Prefix"] != nil {
            self.prefix_ = dict["Prefix"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class ListFileResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public var authDelta: Int32?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: String?

        public var name: String?

        public var size: Int32?

        public var type: String?

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
            if self.authDelta != nil {
                map["AuthDelta"] = self.authDelta!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthDelta") && dict["AuthDelta"] != nil {
                self.authDelta = dict["AuthDelta"] as! Int32
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
                self.size = dict["Size"] as! Int32
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Url") && dict["Url"] != nil {
                self.url = dict["Url"] as! String
            }
        }
    }
    public class Paginator : Tea.TeaModel {
        public var nextToken: String?

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
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
        }
    }
    public var dataList: [ListFileResponseBody.DataList]?

    public var paginator: ListFileResponseBody.Paginator?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.paginator?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataList != nil {
            var tmp : [Any] = []
            for k in self.dataList! {
                tmp.append(k.toMap())
            }
            map["DataList"] = tmp
        }
        if self.paginator != nil {
            map["Paginator"] = self.paginator?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataList") && dict["DataList"] != nil {
            var tmp : [ListFileResponseBody.DataList] = []
            for v in dict["DataList"] as! [Any] {
                var model = ListFileResponseBody.DataList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataList = tmp
        }
        if dict.keys.contains("Paginator") && dict["Paginator"] != nil {
            var model = ListFileResponseBody.Paginator()
            model.fromMap(dict["Paginator"] as! [String: Any])
            self.paginator = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFunctionRequest : Tea.TeaModel {
    public var filterBy: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filterBy != nil {
            map["FilterBy"] = self.filterBy!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FilterBy") && dict["FilterBy"] != nil {
            self.filterBy = dict["FilterBy"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class ListFunctionResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public class Spec : Tea.TeaModel {
            public var instanceConcurrency: Int32?

            public var memory: String?

            public var runtime: String?

            public var timeout: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.instanceConcurrency != nil {
                    map["InstanceConcurrency"] = self.instanceConcurrency!
                }
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                if self.runtime != nil {
                    map["Runtime"] = self.runtime!
                }
                if self.timeout != nil {
                    map["Timeout"] = self.timeout!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InstanceConcurrency") && dict["InstanceConcurrency"] != nil {
                    self.instanceConcurrency = dict["InstanceConcurrency"] as! Int32
                }
                if dict.keys.contains("Memory") && dict["Memory"] != nil {
                    self.memory = dict["Memory"] as! String
                }
                if dict.keys.contains("Runtime") && dict["Runtime"] != nil {
                    self.runtime = dict["Runtime"] as! String
                }
                if dict.keys.contains("Timeout") && dict["Timeout"] != nil {
                    self.timeout = dict["Timeout"] as! String
                }
            }
        }
        public var createdAt: String?

        public var desc: String?

        public var httpTriggerPath: String?

        public var modifiedAt: String?

        public var name: String?

        public var spec: ListFunctionResponseBody.DataList.Spec?

        public var timingTriggerConfig: String?

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
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.desc != nil {
                map["Desc"] = self.desc!
            }
            if self.httpTriggerPath != nil {
                map["HttpTriggerPath"] = self.httpTriggerPath!
            }
            if self.modifiedAt != nil {
                map["ModifiedAt"] = self.modifiedAt!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.spec != nil {
                map["Spec"] = self.spec?.toMap()
            }
            if self.timingTriggerConfig != nil {
                map["TimingTriggerConfig"] = self.timingTriggerConfig!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("Desc") && dict["Desc"] != nil {
                self.desc = dict["Desc"] as! String
            }
            if dict.keys.contains("HttpTriggerPath") && dict["HttpTriggerPath"] != nil {
                self.httpTriggerPath = dict["HttpTriggerPath"] as! String
            }
            if dict.keys.contains("ModifiedAt") && dict["ModifiedAt"] != nil {
                self.modifiedAt = dict["ModifiedAt"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Spec") && dict["Spec"] != nil {
                var model = ListFunctionResponseBody.DataList.Spec()
                model.fromMap(dict["Spec"] as! [String: Any])
                self.spec = model
            }
            if dict.keys.contains("TimingTriggerConfig") && dict["TimingTriggerConfig"] != nil {
                self.timingTriggerConfig = dict["TimingTriggerConfig"] as! String
            }
        }
    }
    public class Paginator : Tea.TeaModel {
        public var pageCount: Int32?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageCount != nil {
                map["PageCount"] = self.pageCount!
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageCount") && dict["PageCount"] != nil {
                self.pageCount = dict["PageCount"] as! Int32
            }
            if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var dataList: [ListFunctionResponseBody.DataList]?

    public var paginator: ListFunctionResponseBody.Paginator?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.paginator?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataList != nil {
            var tmp : [Any] = []
            for k in self.dataList! {
                tmp.append(k.toMap())
            }
            map["DataList"] = tmp
        }
        if self.paginator != nil {
            map["Paginator"] = self.paginator?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataList") && dict["DataList"] != nil {
            var tmp : [ListFunctionResponseBody.DataList] = []
            for v in dict["DataList"] as! [Any] {
                var model = ListFunctionResponseBody.DataList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataList = tmp
        }
        if dict.keys.contains("Paginator") && dict["Paginator"] != nil {
            var model = ListFunctionResponseBody.Paginator()
            model.fromMap(dict["Paginator"] as! [String: Any])
            self.paginator = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFunctionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListFunctionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFunctionDeploymentRequest : Tea.TeaModel {
    public var name: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var spaceId: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListFunctionDeploymentResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public class Status : Tea.TeaModel {
            public var label: String?

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
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Label") && dict["Label"] != nil {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var createdAt: String?

        public var deploymentId: String?

        public var downloadSignedUrl: String?

        public var modifiedAt: String?

        public var status: ListFunctionDeploymentResponseBody.DataList.Status?

        public var versionNo: String?

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
            if self.createdAt != nil {
                map["CreatedAt"] = self.createdAt!
            }
            if self.deploymentId != nil {
                map["DeploymentId"] = self.deploymentId!
            }
            if self.downloadSignedUrl != nil {
                map["DownloadSignedUrl"] = self.downloadSignedUrl!
            }
            if self.modifiedAt != nil {
                map["ModifiedAt"] = self.modifiedAt!
            }
            if self.status != nil {
                map["Status"] = self.status?.toMap()
            }
            if self.versionNo != nil {
                map["VersionNo"] = self.versionNo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
                self.createdAt = dict["CreatedAt"] as! String
            }
            if dict.keys.contains("DeploymentId") && dict["DeploymentId"] != nil {
                self.deploymentId = dict["DeploymentId"] as! String
            }
            if dict.keys.contains("DownloadSignedUrl") && dict["DownloadSignedUrl"] != nil {
                self.downloadSignedUrl = dict["DownloadSignedUrl"] as! String
            }
            if dict.keys.contains("ModifiedAt") && dict["ModifiedAt"] != nil {
                self.modifiedAt = dict["ModifiedAt"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                var model = ListFunctionDeploymentResponseBody.DataList.Status()
                model.fromMap(dict["Status"] as! [String: Any])
                self.status = model
            }
            if dict.keys.contains("VersionNo") && dict["VersionNo"] != nil {
                self.versionNo = dict["VersionNo"] as! String
            }
        }
    }
    public class Paginator : Tea.TeaModel {
        public var pageCount: Int32?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageCount != nil {
                map["PageCount"] = self.pageCount!
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageCount") && dict["PageCount"] != nil {
                self.pageCount = dict["PageCount"] as! Int32
            }
            if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var dataList: [ListFunctionDeploymentResponseBody.DataList]?

    public var paginator: ListFunctionDeploymentResponseBody.Paginator?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.paginator?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataList != nil {
            var tmp : [Any] = []
            for k in self.dataList! {
                tmp.append(k.toMap())
            }
            map["DataList"] = tmp
        }
        if self.paginator != nil {
            map["Paginator"] = self.paginator?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataList") && dict["DataList"] != nil {
            var tmp : [ListFunctionDeploymentResponseBody.DataList] = []
            for v in dict["DataList"] as! [Any] {
                var model = ListFunctionDeploymentResponseBody.DataList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataList = tmp
        }
        if dict.keys.contains("Paginator") && dict["Paginator"] != nil {
            var model = ListFunctionDeploymentResponseBody.Paginator()
            model.fromMap(dict["Paginator"] as! [String: Any])
            self.paginator = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListFunctionDeploymentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFunctionDeploymentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListFunctionDeploymentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFunctionLogRequest : Tea.TeaModel {
    public var fromDate: Int64?

    public var logRequestId: String?

    public var name: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var spaceId: String?

    public var status: String?

    public var toDate: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fromDate != nil {
            map["FromDate"] = self.fromDate!
        }
        if self.logRequestId != nil {
            map["LogRequestId"] = self.logRequestId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.toDate != nil {
            map["ToDate"] = self.toDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FromDate") && dict["FromDate"] != nil {
            self.fromDate = dict["FromDate"] as! Int64
        }
        if dict.keys.contains("LogRequestId") && dict["LogRequestId"] != nil {
            self.logRequestId = dict["LogRequestId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("ToDate") && dict["ToDate"] != nil {
            self.toDate = dict["ToDate"] as! Int64
        }
    }
}

public class ListFunctionLogResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public var contents: [String]?

        public var functionName: String?

        public var levels: [String]?

        public var requestId: String?

        public var spaceId: String?

        public var status: String?

        public var timestamps: [String]?

        public override init() {
            super.init()
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
                map["Contents"] = self.contents!
            }
            if self.functionName != nil {
                map["FunctionName"] = self.functionName!
            }
            if self.levels != nil {
                map["Levels"] = self.levels!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.spaceId != nil {
                map["SpaceId"] = self.spaceId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.timestamps != nil {
                map["Timestamps"] = self.timestamps!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Contents") && dict["Contents"] != nil {
                self.contents = dict["Contents"] as! [String]
            }
            if dict.keys.contains("FunctionName") && dict["FunctionName"] != nil {
                self.functionName = dict["FunctionName"] as! String
            }
            if dict.keys.contains("Levels") && dict["Levels"] != nil {
                self.levels = dict["Levels"] as! [String]
            }
            if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
                self.spaceId = dict["SpaceId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Timestamps") && dict["Timestamps"] != nil {
                self.timestamps = dict["Timestamps"] as! [String]
            }
        }
    }
    public class Paginator : Tea.TeaModel {
        public var pageCount: Int32?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageCount != nil {
                map["PageCount"] = self.pageCount!
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageCount") && dict["PageCount"] != nil {
                self.pageCount = dict["PageCount"] as! Int32
            }
            if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
            }
        }
    }
    public var dataList: [ListFunctionLogResponseBody.DataList]?

    public var paginator: ListFunctionLogResponseBody.Paginator?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.paginator?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataList != nil {
            var tmp : [Any] = []
            for k in self.dataList! {
                tmp.append(k.toMap())
            }
            map["DataList"] = tmp
        }
        if self.paginator != nil {
            map["Paginator"] = self.paginator?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataList") && dict["DataList"] != nil {
            var tmp : [ListFunctionLogResponseBody.DataList] = []
            for v in dict["DataList"] as! [Any] {
                var model = ListFunctionLogResponseBody.DataList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataList = tmp
        }
        if dict.keys.contains("Paginator") && dict["Paginator"] != nil {
            var model = ListFunctionLogResponseBody.Paginator()
            model.fromMap(dict["Paginator"] as! [String: Any])
            self.paginator = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListFunctionLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFunctionLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListFunctionLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOpenPlatformConfigRequest : Tea.TeaModel {
    public var platform: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Platform") && dict["Platform"] != nil {
            self.platform = dict["Platform"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class ListOpenPlatformConfigResponseBody : Tea.TeaModel {
    public class SecretList : Tea.TeaModel {
        public var appCert: String?

        public var appId: String?

        public var appSecret: String?

        public var platform: String?

        public var privateKey: String?

        public var publicCert: String?

        public var publicKey: String?

        public var rootCert: String?

        public var signMode: String?

        public var spaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appCert != nil {
                map["AppCert"] = self.appCert!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appSecret != nil {
                map["AppSecret"] = self.appSecret!
            }
            if self.platform != nil {
                map["Platform"] = self.platform!
            }
            if self.privateKey != nil {
                map["PrivateKey"] = self.privateKey!
            }
            if self.publicCert != nil {
                map["PublicCert"] = self.publicCert!
            }
            if self.publicKey != nil {
                map["PublicKey"] = self.publicKey!
            }
            if self.rootCert != nil {
                map["RootCert"] = self.rootCert!
            }
            if self.signMode != nil {
                map["SignMode"] = self.signMode!
            }
            if self.spaceId != nil {
                map["SpaceId"] = self.spaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppCert") && dict["AppCert"] != nil {
                self.appCert = dict["AppCert"] as! String
            }
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppSecret") && dict["AppSecret"] != nil {
                self.appSecret = dict["AppSecret"] as! String
            }
            if dict.keys.contains("Platform") && dict["Platform"] != nil {
                self.platform = dict["Platform"] as! String
            }
            if dict.keys.contains("PrivateKey") && dict["PrivateKey"] != nil {
                self.privateKey = dict["PrivateKey"] as! String
            }
            if dict.keys.contains("PublicCert") && dict["PublicCert"] != nil {
                self.publicCert = dict["PublicCert"] as! String
            }
            if dict.keys.contains("PublicKey") && dict["PublicKey"] != nil {
                self.publicKey = dict["PublicKey"] as! String
            }
            if dict.keys.contains("RootCert") && dict["RootCert"] != nil {
                self.rootCert = dict["RootCert"] as! String
            }
            if dict.keys.contains("SignMode") && dict["SignMode"] != nil {
                self.signMode = dict["SignMode"] as! String
            }
            if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
                self.spaceId = dict["SpaceId"] as! String
            }
        }
    }
    public var requestId: String?

    public var secretList: [ListOpenPlatformConfigResponseBody.SecretList]?

    public override init() {
        super.init()
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
        if self.secretList != nil {
            var tmp : [Any] = []
            for k in self.secretList! {
                tmp.append(k.toMap())
            }
            map["SecretList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretList") && dict["SecretList"] != nil {
            var tmp : [ListOpenPlatformConfigResponseBody.SecretList] = []
            for v in dict["SecretList"] as! [Any] {
                var model = ListOpenPlatformConfigResponseBody.SecretList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.secretList = tmp
        }
    }
}

public class ListOpenPlatformConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOpenPlatformConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListOpenPlatformConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSpaceRequest : Tea.TeaModel {
    public var emasWorkspaceId: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var spaceIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.emasWorkspaceId != nil {
            map["EmasWorkspaceId"] = self.emasWorkspaceId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.spaceIds != nil {
            map["SpaceIds"] = self.spaceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EmasWorkspaceId") && dict["EmasWorkspaceId"] != nil {
            self.emasWorkspaceId = dict["EmasWorkspaceId"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SpaceIds") && dict["SpaceIds"] != nil {
            self.spaceIds = dict["SpaceIds"] as! [String]
        }
    }
}

public class ListSpaceShrinkRequest : Tea.TeaModel {
    public var emasWorkspaceId: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var spaceIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.emasWorkspaceId != nil {
            map["EmasWorkspaceId"] = self.emasWorkspaceId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.spaceIdsShrink != nil {
            map["SpaceIds"] = self.spaceIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EmasWorkspaceId") && dict["EmasWorkspaceId"] != nil {
            self.emasWorkspaceId = dict["EmasWorkspaceId"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SpaceIds") && dict["SpaceIds"] != nil {
            self.spaceIdsShrink = dict["SpaceIds"] as! String
        }
    }
}

public class ListSpaceResponseBody : Tea.TeaModel {
    public class Spaces : Tea.TeaModel {
        public var desc: String?

        public var gmtCreate: Int64?

        public var gmtLastAccess: Int64?

        public var name: String?

        public var spaceId: String?

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
            if self.desc != nil {
                map["Desc"] = self.desc!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtLastAccess != nil {
                map["GmtLastAccess"] = self.gmtLastAccess!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.spaceId != nil {
                map["SpaceId"] = self.spaceId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Desc") && dict["Desc"] != nil {
                self.desc = dict["Desc"] as! String
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtLastAccess") && dict["GmtLastAccess"] != nil {
                self.gmtLastAccess = dict["GmtLastAccess"] as! Int64
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
                self.spaceId = dict["SpaceId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var count: Int32?

    public var gmtCreate: String?

    public var requestId: String?

    public var spaces: [ListSpaceResponseBody.Spaces]?

    public override init() {
        super.init()
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
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.spaces != nil {
            var tmp : [Any] = []
            for k in self.spaces! {
                tmp.append(k.toMap())
            }
            map["Spaces"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Count") && dict["Count"] != nil {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
            self.gmtCreate = dict["GmtCreate"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Spaces") && dict["Spaces"] != nil {
            var tmp : [ListSpaceResponseBody.Spaces] = []
            for v in dict["Spaces"] as! [Any] {
                var model = ListSpaceResponseBody.Spaces()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.spaces = tmp
        }
    }
}

public class ListSpaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSpaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListSpaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWebHostingCustomDomainsRequest : Tea.TeaModel {
    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class ListWebHostingCustomDomainsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessControlAllowOrigin: String?

        public var accessOriginControl: Bool?

        public var cname: String?

        public var createTime: Int64?

        public var description_: String?

        public var domain: String?

        public var enableCors: Bool?

        public var forceRedirectType: String?

        public var sslProtocol: String?

        public var status: String?

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
            if self.accessControlAllowOrigin != nil {
                map["AccessControlAllowOrigin"] = self.accessControlAllowOrigin!
            }
            if self.accessOriginControl != nil {
                map["AccessOriginControl"] = self.accessOriginControl!
            }
            if self.cname != nil {
                map["Cname"] = self.cname!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.enableCors != nil {
                map["EnableCors"] = self.enableCors!
            }
            if self.forceRedirectType != nil {
                map["ForceRedirectType"] = self.forceRedirectType!
            }
            if self.sslProtocol != nil {
                map["SslProtocol"] = self.sslProtocol!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessControlAllowOrigin") && dict["AccessControlAllowOrigin"] != nil {
                self.accessControlAllowOrigin = dict["AccessControlAllowOrigin"] as! String
            }
            if dict.keys.contains("AccessOriginControl") && dict["AccessOriginControl"] != nil {
                self.accessOriginControl = dict["AccessOriginControl"] as! Bool
            }
            if dict.keys.contains("Cname") && dict["Cname"] != nil {
                self.cname = dict["Cname"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("EnableCors") && dict["EnableCors"] != nil {
                self.enableCors = dict["EnableCors"] as! Bool
            }
            if dict.keys.contains("ForceRedirectType") && dict["ForceRedirectType"] != nil {
                self.forceRedirectType = dict["ForceRedirectType"] as! String
            }
            if dict.keys.contains("SslProtocol") && dict["SslProtocol"] != nil {
                self.sslProtocol = dict["SslProtocol"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
        }
    }
    public var data: [ListWebHostingCustomDomainsResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [ListWebHostingCustomDomainsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListWebHostingCustomDomainsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListWebHostingCustomDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWebHostingCustomDomainsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListWebHostingCustomDomainsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListWebHostingFilesRequest : Tea.TeaModel {
    public var marker: String?

    public var pageSize: Int32?

    public var prefix_: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prefix_ != nil {
            map["Prefix"] = self.prefix_!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Marker") && dict["Marker"] != nil {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Prefix") && dict["Prefix"] != nil {
            self.prefix_ = dict["Prefix"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class ListWebHostingFilesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class WebHostingFiles : Tea.TeaModel {
            public var contentType: String?

            public var ETag: String?

            public var filePath: String?

            public var lastModifiedTime: Int64?

            public var signedUrl: String?

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
                if self.contentType != nil {
                    map["ContentType"] = self.contentType!
                }
                if self.ETag != nil {
                    map["ETag"] = self.ETag!
                }
                if self.filePath != nil {
                    map["FilePath"] = self.filePath!
                }
                if self.lastModifiedTime != nil {
                    map["LastModifiedTime"] = self.lastModifiedTime!
                }
                if self.signedUrl != nil {
                    map["SignedUrl"] = self.signedUrl!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ContentType") && dict["ContentType"] != nil {
                    self.contentType = dict["ContentType"] as! String
                }
                if dict.keys.contains("ETag") && dict["ETag"] != nil {
                    self.ETag = dict["ETag"] as! String
                }
                if dict.keys.contains("FilePath") && dict["FilePath"] != nil {
                    self.filePath = dict["FilePath"] as! String
                }
                if dict.keys.contains("LastModifiedTime") && dict["LastModifiedTime"] != nil {
                    self.lastModifiedTime = dict["LastModifiedTime"] as! Int64
                }
                if dict.keys.contains("SignedUrl") && dict["SignedUrl"] != nil {
                    self.signedUrl = dict["SignedUrl"] as! String
                }
                if dict.keys.contains("Size") && dict["Size"] != nil {
                    self.size = dict["Size"] as! Int64
                }
            }
        }
        public var count: Int32?

        public var nextMarker: String?

        public var webHostingFiles: [ListWebHostingFilesResponseBody.Data.WebHostingFiles]?

        public override init() {
            super.init()
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
            if self.nextMarker != nil {
                map["NextMarker"] = self.nextMarker!
            }
            if self.webHostingFiles != nil {
                var tmp : [Any] = []
                for k in self.webHostingFiles! {
                    tmp.append(k.toMap())
                }
                map["WebHostingFiles"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") && dict["Count"] != nil {
                self.count = dict["Count"] as! Int32
            }
            if dict.keys.contains("NextMarker") && dict["NextMarker"] != nil {
                self.nextMarker = dict["NextMarker"] as! String
            }
            if dict.keys.contains("WebHostingFiles") && dict["WebHostingFiles"] != nil {
                var tmp : [ListWebHostingFilesResponseBody.Data.WebHostingFiles] = []
                for v in dict["WebHostingFiles"] as! [Any] {
                    var model = ListWebHostingFilesResponseBody.Data.WebHostingFiles()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.webHostingFiles = tmp
            }
        }
    }
    public var data: ListWebHostingFilesResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListWebHostingFilesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListWebHostingFilesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWebHostingFilesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListWebHostingFilesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyWebHostingConfigRequest : Tea.TeaModel {
    public var allowedIps: String?

    public var errorHttpStatus: String?

    public var errorPath: String?

    public var indexPath: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowedIps != nil {
            map["AllowedIps"] = self.allowedIps!
        }
        if self.errorHttpStatus != nil {
            map["ErrorHttpStatus"] = self.errorHttpStatus!
        }
        if self.errorPath != nil {
            map["ErrorPath"] = self.errorPath!
        }
        if self.indexPath != nil {
            map["IndexPath"] = self.indexPath!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowedIps") && dict["AllowedIps"] != nil {
            self.allowedIps = dict["AllowedIps"] as! String
        }
        if dict.keys.contains("ErrorHttpStatus") && dict["ErrorHttpStatus"] != nil {
            self.errorHttpStatus = dict["ErrorHttpStatus"] as! String
        }
        if dict.keys.contains("ErrorPath") && dict["ErrorPath"] != nil {
            self.errorPath = dict["ErrorPath"] as! String
        }
        if dict.keys.contains("IndexPath") && dict["IndexPath"] != nil {
            self.indexPath = dict["IndexPath"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class ModifyWebHostingConfigResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyWebHostingConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyWebHostingConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyWebHostingConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenServiceRequest : Tea.TeaModel {
    public var serviceName: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class OpenServiceResponseBody : Tea.TeaModel {
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

public class OpenServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OpenServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenWebHostingServiceRequest : Tea.TeaModel {
    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class OpenWebHostingServiceResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OpenWebHostingServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenWebHostingServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OpenWebHostingServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryDBBackupCollectionsRequest : Tea.TeaModel {
    public var backupId: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupId != nil {
            map["BackupId"] = self.backupId!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupId") && dict["BackupId"] != nil {
            self.backupId = dict["BackupId"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class QueryDBBackupCollectionsResponseBody : Tea.TeaModel {
    public var collections: [String]?

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
        if self.collections != nil {
            map["Collections"] = self.collections!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Collections") && dict["Collections"] != nil {
            self.collections = dict["Collections"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryDBBackupCollectionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDBBackupCollectionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryDBBackupCollectionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryDBBackupDumpTimesRequest : Tea.TeaModel {
    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class QueryDBBackupDumpTimesResponseBody : Tea.TeaModel {
    public class BackupDumpTimes : Tea.TeaModel {
        public var backupId: String?

        public var dumpTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backupId != nil {
                map["BackupId"] = self.backupId!
            }
            if self.dumpTime != nil {
                map["DumpTime"] = self.dumpTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupId") && dict["BackupId"] != nil {
                self.backupId = dict["BackupId"] as! String
            }
            if dict.keys.contains("DumpTime") && dict["DumpTime"] != nil {
                self.dumpTime = dict["DumpTime"] as! String
            }
        }
    }
    public var backupDumpTimes: [QueryDBBackupDumpTimesResponseBody.BackupDumpTimes]?

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
        if self.backupDumpTimes != nil {
            var tmp : [Any] = []
            for k in self.backupDumpTimes! {
                tmp.append(k.toMap())
            }
            map["BackupDumpTimes"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupDumpTimes") && dict["BackupDumpTimes"] != nil {
            var tmp : [QueryDBBackupDumpTimesResponseBody.BackupDumpTimes] = []
            for v in dict["BackupDumpTimes"] as! [Any] {
                var model = QueryDBBackupDumpTimesResponseBody.BackupDumpTimes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.backupDumpTimes = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryDBBackupDumpTimesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDBBackupDumpTimesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryDBBackupDumpTimesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryDBExportTaskStatusRequest : Tea.TeaModel {
    public var spaceId: String?

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
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class QueryDBExportTaskStatusResponseBody : Tea.TeaModel {
    public var detailMessage: String?

    public var downloadUrl: String?

    public var exportedCount: String?

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
        if self.detailMessage != nil {
            map["DetailMessage"] = self.detailMessage!
        }
        if self.downloadUrl != nil {
            map["DownloadUrl"] = self.downloadUrl!
        }
        if self.exportedCount != nil {
            map["ExportedCount"] = self.exportedCount!
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
        if dict.keys.contains("DetailMessage") && dict["DetailMessage"] != nil {
            self.detailMessage = dict["DetailMessage"] as! String
        }
        if dict.keys.contains("DownloadUrl") && dict["DownloadUrl"] != nil {
            self.downloadUrl = dict["DownloadUrl"] as! String
        }
        if dict.keys.contains("ExportedCount") && dict["ExportedCount"] != nil {
            self.exportedCount = dict["ExportedCount"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class QueryDBExportTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDBExportTaskStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryDBExportTaskStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryDBImportTaskStatusRequest : Tea.TeaModel {
    public var spaceId: String?

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
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class QueryDBImportTaskStatusResponseBody : Tea.TeaModel {
    public var detailMessage: String?

    public var failedCount: String?

    public var requestId: String?

    public var status: String?

    public var successCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.detailMessage != nil {
            map["DetailMessage"] = self.detailMessage!
        }
        if self.failedCount != nil {
            map["FailedCount"] = self.failedCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.successCount != nil {
            map["SuccessCount"] = self.successCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DetailMessage") && dict["DetailMessage"] != nil {
            self.detailMessage = dict["DetailMessage"] as! String
        }
        if dict.keys.contains("FailedCount") && dict["FailedCount"] != nil {
            self.failedCount = dict["FailedCount"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SuccessCount") && dict["SuccessCount"] != nil {
            self.successCount = dict["SuccessCount"] as! String
        }
    }
}

public class QueryDBImportTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDBImportTaskStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryDBImportTaskStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryDBRestoreTaskStatusRequest : Tea.TeaModel {
    public var spaceId: String?

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
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class QueryDBRestoreTaskStatusResponseBody : Tea.TeaModel {
    public var detailMessage: String?

    public var failedCount: Int64?

    public var requestId: String?

    public var status: String?

    public var successCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.detailMessage != nil {
            map["DetailMessage"] = self.detailMessage!
        }
        if self.failedCount != nil {
            map["FailedCount"] = self.failedCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.successCount != nil {
            map["SuccessCount"] = self.successCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DetailMessage") && dict["DetailMessage"] != nil {
            self.detailMessage = dict["DetailMessage"] as! String
        }
        if dict.keys.contains("FailedCount") && dict["FailedCount"] != nil {
            self.failedCount = dict["FailedCount"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SuccessCount") && dict["SuccessCount"] != nil {
            self.successCount = dict["SuccessCount"] as! Int64
        }
    }
}

public class QueryDBRestoreTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDBRestoreTaskStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryDBRestoreTaskStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryServiceStatusRequest : Tea.TeaModel {
    public var serviceName: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class QueryServiceStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var serviceStatus: String?

    public override init() {
        super.init()
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
        if self.serviceStatus != nil {
            map["ServiceStatus"] = self.serviceStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceStatus") && dict["ServiceStatus"] != nil {
            self.serviceStatus = dict["ServiceStatus"] as! String
        }
    }
}

public class QueryServiceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryServiceStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryServiceStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySpaceConsumptionRequest : Tea.TeaModel {
    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class QuerySpaceConsumptionResponseBody : Tea.TeaModel {
    public class CsUsage : Tea.TeaModel {
        public var cdnTraffic: Int64?

        public var downloadCount: Int64?

        public var storageSize: Int64?

        public var uploadCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cdnTraffic != nil {
                map["CdnTraffic"] = self.cdnTraffic!
            }
            if self.downloadCount != nil {
                map["DownloadCount"] = self.downloadCount!
            }
            if self.storageSize != nil {
                map["StorageSize"] = self.storageSize!
            }
            if self.uploadCount != nil {
                map["UploadCount"] = self.uploadCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CdnTraffic") && dict["CdnTraffic"] != nil {
                self.cdnTraffic = dict["CdnTraffic"] as! Int64
            }
            if dict.keys.contains("DownloadCount") && dict["DownloadCount"] != nil {
                self.downloadCount = dict["DownloadCount"] as! Int64
            }
            if dict.keys.contains("StorageSize") && dict["StorageSize"] != nil {
                self.storageSize = dict["StorageSize"] as! Int64
            }
            if dict.keys.contains("UploadCount") && dict["UploadCount"] != nil {
                self.uploadCount = dict["UploadCount"] as! Int64
            }
        }
    }
    public class DbUsage : Tea.TeaModel {
        public var readCount: Int64?

        public var storageSize: Int64?

        public var writeCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.readCount != nil {
                map["ReadCount"] = self.readCount!
            }
            if self.storageSize != nil {
                map["StorageSize"] = self.storageSize!
            }
            if self.writeCount != nil {
                map["WriteCount"] = self.writeCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ReadCount") && dict["ReadCount"] != nil {
                self.readCount = dict["ReadCount"] as! Int64
            }
            if dict.keys.contains("StorageSize") && dict["StorageSize"] != nil {
                self.storageSize = dict["StorageSize"] as! Int64
            }
            if dict.keys.contains("WriteCount") && dict["WriteCount"] != nil {
                self.writeCount = dict["WriteCount"] as! Int64
            }
        }
    }
    public class FcUsage : Tea.TeaModel {
        public var cost: Int64?

        public var requestCount: Int64?

        public var txTraffic: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cost != nil {
                map["Cost"] = self.cost!
            }
            if self.requestCount != nil {
                map["RequestCount"] = self.requestCount!
            }
            if self.txTraffic != nil {
                map["TxTraffic"] = self.txTraffic!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cost") && dict["Cost"] != nil {
                self.cost = dict["Cost"] as! Int64
            }
            if dict.keys.contains("RequestCount") && dict["RequestCount"] != nil {
                self.requestCount = dict["RequestCount"] as! Int64
            }
            if dict.keys.contains("TxTraffic") && dict["TxTraffic"] != nil {
                self.txTraffic = dict["TxTraffic"] as! Int64
            }
        }
    }
    public class WhUsage : Tea.TeaModel {
        public var cdnTraffic: Int64?

        public var storageSize: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cdnTraffic != nil {
                map["CdnTraffic"] = self.cdnTraffic!
            }
            if self.storageSize != nil {
                map["StorageSize"] = self.storageSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CdnTraffic") && dict["CdnTraffic"] != nil {
                self.cdnTraffic = dict["CdnTraffic"] as! Int64
            }
            if dict.keys.contains("StorageSize") && dict["StorageSize"] != nil {
                self.storageSize = dict["StorageSize"] as! Int64
            }
        }
    }
    public var csUsage: QuerySpaceConsumptionResponseBody.CsUsage?

    public var cycleEndTime: Int64?

    public var cycleStartTime: Int64?

    public var dbUsage: QuerySpaceConsumptionResponseBody.DbUsage?

    public var fcUsage: QuerySpaceConsumptionResponseBody.FcUsage?

    public var gmtCreate: String?

    public var requestId: String?

    public var spaceId: String?

    public var specCode: String?

    public var whUsage: QuerySpaceConsumptionResponseBody.WhUsage?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.csUsage?.validate()
        try self.dbUsage?.validate()
        try self.fcUsage?.validate()
        try self.whUsage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.csUsage != nil {
            map["CsUsage"] = self.csUsage?.toMap()
        }
        if self.cycleEndTime != nil {
            map["CycleEndTime"] = self.cycleEndTime!
        }
        if self.cycleStartTime != nil {
            map["CycleStartTime"] = self.cycleStartTime!
        }
        if self.dbUsage != nil {
            map["DbUsage"] = self.dbUsage?.toMap()
        }
        if self.fcUsage != nil {
            map["FcUsage"] = self.fcUsage?.toMap()
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        if self.specCode != nil {
            map["SpecCode"] = self.specCode!
        }
        if self.whUsage != nil {
            map["WhUsage"] = self.whUsage?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CsUsage") && dict["CsUsage"] != nil {
            var model = QuerySpaceConsumptionResponseBody.CsUsage()
            model.fromMap(dict["CsUsage"] as! [String: Any])
            self.csUsage = model
        }
        if dict.keys.contains("CycleEndTime") && dict["CycleEndTime"] != nil {
            self.cycleEndTime = dict["CycleEndTime"] as! Int64
        }
        if dict.keys.contains("CycleStartTime") && dict["CycleStartTime"] != nil {
            self.cycleStartTime = dict["CycleStartTime"] as! Int64
        }
        if dict.keys.contains("DbUsage") && dict["DbUsage"] != nil {
            var model = QuerySpaceConsumptionResponseBody.DbUsage()
            model.fromMap(dict["DbUsage"] as! [String: Any])
            self.dbUsage = model
        }
        if dict.keys.contains("FcUsage") && dict["FcUsage"] != nil {
            var model = QuerySpaceConsumptionResponseBody.FcUsage()
            model.fromMap(dict["FcUsage"] as! [String: Any])
            self.fcUsage = model
        }
        if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
            self.gmtCreate = dict["GmtCreate"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
        if dict.keys.contains("SpecCode") && dict["SpecCode"] != nil {
            self.specCode = dict["SpecCode"] as! String
        }
        if dict.keys.contains("WhUsage") && dict["WhUsage"] != nil {
            var model = QuerySpaceConsumptionResponseBody.WhUsage()
            model.fromMap(dict["WhUsage"] as! [String: Any])
            self.whUsage = model
        }
    }
}

public class QuerySpaceConsumptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySpaceConsumptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QuerySpaceConsumptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySpaceSpecDetailRequest : Tea.TeaModel {
    public var specCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.specCode != nil {
            map["SpecCode"] = self.specCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SpecCode") && dict["SpecCode"] != nil {
            self.specCode = dict["SpecCode"] as! String
        }
    }
}

public class QuerySpaceSpecDetailResponseBody : Tea.TeaModel {
    public var csCdnTraffic: Int64?

    public var csDownloadCount: Int64?

    public var csStorageSize: Int64?

    public var csUploadCount: Int64?

    public var dbReadCount: Int64?

    public var dbStorageSize: Int64?

    public var dbWriteCount: Int64?

    public var fcCost: Int64?

    public var fcRequestCount: Int64?

    public var fcTxTraffic: Int64?

    public var gmtCreate: String?

    public var requestId: String?

    public var specCode: String?

    public var specDetailText: String?

    public var whCdnTraffic: Int64?

    public var whStorageSize: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.csCdnTraffic != nil {
            map["CsCdnTraffic"] = self.csCdnTraffic!
        }
        if self.csDownloadCount != nil {
            map["CsDownloadCount"] = self.csDownloadCount!
        }
        if self.csStorageSize != nil {
            map["CsStorageSize"] = self.csStorageSize!
        }
        if self.csUploadCount != nil {
            map["CsUploadCount"] = self.csUploadCount!
        }
        if self.dbReadCount != nil {
            map["DbReadCount"] = self.dbReadCount!
        }
        if self.dbStorageSize != nil {
            map["DbStorageSize"] = self.dbStorageSize!
        }
        if self.dbWriteCount != nil {
            map["DbWriteCount"] = self.dbWriteCount!
        }
        if self.fcCost != nil {
            map["FcCost"] = self.fcCost!
        }
        if self.fcRequestCount != nil {
            map["FcRequestCount"] = self.fcRequestCount!
        }
        if self.fcTxTraffic != nil {
            map["FcTxTraffic"] = self.fcTxTraffic!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.specCode != nil {
            map["SpecCode"] = self.specCode!
        }
        if self.specDetailText != nil {
            map["SpecDetailText"] = self.specDetailText!
        }
        if self.whCdnTraffic != nil {
            map["WhCdnTraffic"] = self.whCdnTraffic!
        }
        if self.whStorageSize != nil {
            map["WhStorageSize"] = self.whStorageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CsCdnTraffic") && dict["CsCdnTraffic"] != nil {
            self.csCdnTraffic = dict["CsCdnTraffic"] as! Int64
        }
        if dict.keys.contains("CsDownloadCount") && dict["CsDownloadCount"] != nil {
            self.csDownloadCount = dict["CsDownloadCount"] as! Int64
        }
        if dict.keys.contains("CsStorageSize") && dict["CsStorageSize"] != nil {
            self.csStorageSize = dict["CsStorageSize"] as! Int64
        }
        if dict.keys.contains("CsUploadCount") && dict["CsUploadCount"] != nil {
            self.csUploadCount = dict["CsUploadCount"] as! Int64
        }
        if dict.keys.contains("DbReadCount") && dict["DbReadCount"] != nil {
            self.dbReadCount = dict["DbReadCount"] as! Int64
        }
        if dict.keys.contains("DbStorageSize") && dict["DbStorageSize"] != nil {
            self.dbStorageSize = dict["DbStorageSize"] as! Int64
        }
        if dict.keys.contains("DbWriteCount") && dict["DbWriteCount"] != nil {
            self.dbWriteCount = dict["DbWriteCount"] as! Int64
        }
        if dict.keys.contains("FcCost") && dict["FcCost"] != nil {
            self.fcCost = dict["FcCost"] as! Int64
        }
        if dict.keys.contains("FcRequestCount") && dict["FcRequestCount"] != nil {
            self.fcRequestCount = dict["FcRequestCount"] as! Int64
        }
        if dict.keys.contains("FcTxTraffic") && dict["FcTxTraffic"] != nil {
            self.fcTxTraffic = dict["FcTxTraffic"] as! Int64
        }
        if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
            self.gmtCreate = dict["GmtCreate"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SpecCode") && dict["SpecCode"] != nil {
            self.specCode = dict["SpecCode"] as! String
        }
        if dict.keys.contains("SpecDetailText") && dict["SpecDetailText"] != nil {
            self.specDetailText = dict["SpecDetailText"] as! String
        }
        if dict.keys.contains("WhCdnTraffic") && dict["WhCdnTraffic"] != nil {
            self.whCdnTraffic = dict["WhCdnTraffic"] as! Int64
        }
        if dict.keys.contains("WhStorageSize") && dict["WhStorageSize"] != nil {
            self.whStorageSize = dict["WhStorageSize"] as! Int64
        }
    }
}

public class QuerySpaceSpecDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySpaceSpecDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QuerySpaceSpecDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySpaceUsageRequest : Tea.TeaModel {
    public var endTime: String?

    public var interval: Int32?

    public var spaceId: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Interval") && dict["Interval"] != nil {
            self.interval = dict["Interval"] as! Int32
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class QuerySpaceUsageResponseBody : Tea.TeaModel {
    public class SpaceUsageDataList : Tea.TeaModel {
        public class CsUsage : Tea.TeaModel {
            public var cdnTraffic: Int64?

            public var downloadCount: Int64?

            public var storageSize: Int64?

            public var uploadCount: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cdnTraffic != nil {
                    map["CdnTraffic"] = self.cdnTraffic!
                }
                if self.downloadCount != nil {
                    map["DownloadCount"] = self.downloadCount!
                }
                if self.storageSize != nil {
                    map["StorageSize"] = self.storageSize!
                }
                if self.uploadCount != nil {
                    map["UploadCount"] = self.uploadCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CdnTraffic") && dict["CdnTraffic"] != nil {
                    self.cdnTraffic = dict["CdnTraffic"] as! Int64
                }
                if dict.keys.contains("DownloadCount") && dict["DownloadCount"] != nil {
                    self.downloadCount = dict["DownloadCount"] as! Int64
                }
                if dict.keys.contains("StorageSize") && dict["StorageSize"] != nil {
                    self.storageSize = dict["StorageSize"] as! Int64
                }
                if dict.keys.contains("UploadCount") && dict["UploadCount"] != nil {
                    self.uploadCount = dict["UploadCount"] as! Int64
                }
            }
        }
        public class DbUsage : Tea.TeaModel {
            public var readCount: Int64?

            public var storageSize: Int64?

            public var writeCount: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.readCount != nil {
                    map["ReadCount"] = self.readCount!
                }
                if self.storageSize != nil {
                    map["StorageSize"] = self.storageSize!
                }
                if self.writeCount != nil {
                    map["WriteCount"] = self.writeCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ReadCount") && dict["ReadCount"] != nil {
                    self.readCount = dict["ReadCount"] as! Int64
                }
                if dict.keys.contains("StorageSize") && dict["StorageSize"] != nil {
                    self.storageSize = dict["StorageSize"] as! Int64
                }
                if dict.keys.contains("WriteCount") && dict["WriteCount"] != nil {
                    self.writeCount = dict["WriteCount"] as! Int64
                }
            }
        }
        public class FcUsage : Tea.TeaModel {
            public var cost: Int64?

            public var requestCount: Int64?

            public var txTraffic: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cost != nil {
                    map["Cost"] = self.cost!
                }
                if self.requestCount != nil {
                    map["RequestCount"] = self.requestCount!
                }
                if self.txTraffic != nil {
                    map["TxTraffic"] = self.txTraffic!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cost") && dict["Cost"] != nil {
                    self.cost = dict["Cost"] as! Int64
                }
                if dict.keys.contains("RequestCount") && dict["RequestCount"] != nil {
                    self.requestCount = dict["RequestCount"] as! Int64
                }
                if dict.keys.contains("TxTraffic") && dict["TxTraffic"] != nil {
                    self.txTraffic = dict["TxTraffic"] as! Int64
                }
            }
        }
        public class WhUsage : Tea.TeaModel {
            public var cdnTraffic: Int64?

            public var storageSize: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cdnTraffic != nil {
                    map["CdnTraffic"] = self.cdnTraffic!
                }
                if self.storageSize != nil {
                    map["StorageSize"] = self.storageSize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CdnTraffic") && dict["CdnTraffic"] != nil {
                    self.cdnTraffic = dict["CdnTraffic"] as! Int64
                }
                if dict.keys.contains("StorageSize") && dict["StorageSize"] != nil {
                    self.storageSize = dict["StorageSize"] as! Int64
                }
            }
        }
        public var csUsage: QuerySpaceUsageResponseBody.SpaceUsageDataList.CsUsage?

        public var dbUsage: QuerySpaceUsageResponseBody.SpaceUsageDataList.DbUsage?

        public var effectiveBillFlag: Bool?

        public var fcUsage: QuerySpaceUsageResponseBody.SpaceUsageDataList.FcUsage?

        public var timestamp: String?

        public var whUsage: QuerySpaceUsageResponseBody.SpaceUsageDataList.WhUsage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.csUsage?.validate()
            try self.dbUsage?.validate()
            try self.fcUsage?.validate()
            try self.whUsage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.csUsage != nil {
                map["CsUsage"] = self.csUsage?.toMap()
            }
            if self.dbUsage != nil {
                map["DbUsage"] = self.dbUsage?.toMap()
            }
            if self.effectiveBillFlag != nil {
                map["EffectiveBillFlag"] = self.effectiveBillFlag!
            }
            if self.fcUsage != nil {
                map["FcUsage"] = self.fcUsage?.toMap()
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            if self.whUsage != nil {
                map["WhUsage"] = self.whUsage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CsUsage") && dict["CsUsage"] != nil {
                var model = QuerySpaceUsageResponseBody.SpaceUsageDataList.CsUsage()
                model.fromMap(dict["CsUsage"] as! [String: Any])
                self.csUsage = model
            }
            if dict.keys.contains("DbUsage") && dict["DbUsage"] != nil {
                var model = QuerySpaceUsageResponseBody.SpaceUsageDataList.DbUsage()
                model.fromMap(dict["DbUsage"] as! [String: Any])
                self.dbUsage = model
            }
            if dict.keys.contains("EffectiveBillFlag") && dict["EffectiveBillFlag"] != nil {
                self.effectiveBillFlag = dict["EffectiveBillFlag"] as! Bool
            }
            if dict.keys.contains("FcUsage") && dict["FcUsage"] != nil {
                var model = QuerySpaceUsageResponseBody.SpaceUsageDataList.FcUsage()
                model.fromMap(dict["FcUsage"] as! [String: Any])
                self.fcUsage = model
            }
            if dict.keys.contains("Timestamp") && dict["Timestamp"] != nil {
                self.timestamp = dict["Timestamp"] as! String
            }
            if dict.keys.contains("WhUsage") && dict["WhUsage"] != nil {
                var model = QuerySpaceUsageResponseBody.SpaceUsageDataList.WhUsage()
                model.fromMap(dict["WhUsage"] as! [String: Any])
                self.whUsage = model
            }
        }
    }
    public var endTime: String?

    public var requestId: String?

    public var spaceId: String?

    public var spaceUsageDataList: [QuerySpaceUsageResponseBody.SpaceUsageDataList]?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        if self.spaceUsageDataList != nil {
            var tmp : [Any] = []
            for k in self.spaceUsageDataList! {
                tmp.append(k.toMap())
            }
            map["SpaceUsageDataList"] = tmp
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
        if dict.keys.contains("SpaceUsageDataList") && dict["SpaceUsageDataList"] != nil {
            var tmp : [QuerySpaceUsageResponseBody.SpaceUsageDataList] = []
            for v in dict["SpaceUsageDataList"] as! [Any] {
                var model = QuerySpaceUsageResponseBody.SpaceUsageDataList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.spaceUsageDataList = tmp
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class QuerySpaceUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySpaceUsageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QuerySpaceUsageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefreshWebHostingCustomDomainCacheRequest : Tea.TeaModel {
    public var domainName: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class RefreshWebHostingCustomDomainCacheResponseBody : Tea.TeaModel {
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

public class RefreshWebHostingCustomDomainCacheResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefreshWebHostingCustomDomainCacheResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RefreshWebHostingCustomDomainCacheResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RegisterFileRequest : Tea.TeaModel {
    public var id: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class RegisterFileResponseBody : Tea.TeaModel {
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

public class RegisterFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RegisterFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RegisterFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenameDBCollectionRequest : Tea.TeaModel {
    public var newCollection: String?

    public var originCollection: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newCollection != nil {
            map["NewCollection"] = self.newCollection!
        }
        if self.originCollection != nil {
            map["OriginCollection"] = self.originCollection!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewCollection") && dict["NewCollection"] != nil {
            self.newCollection = dict["NewCollection"] as! String
        }
        if dict.keys.contains("OriginCollection") && dict["OriginCollection"] != nil {
            self.originCollection = dict["OriginCollection"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class RenameDBCollectionResponseBody : Tea.TeaModel {
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

public class RenameDBCollectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenameDBCollectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RenameDBCollectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetServerSecretRequest : Tea.TeaModel {
    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class ResetServerSecretResponseBody : Tea.TeaModel {
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

public class ResetServerSecretResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetServerSecretResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ResetServerSecretResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunDBCommandRequest : Tea.TeaModel {
    public var body: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["Body"] = self.body!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Body") && dict["Body"] != nil {
            self.body = dict["Body"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class RunDBCommandResponseBody : Tea.TeaModel {
    public var affectedDocs: Int32?

    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.affectedDocs != nil {
            map["AffectedDocs"] = self.affectedDocs!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AffectedDocs") && dict["AffectedDocs"] != nil {
            self.affectedDocs = dict["AffectedDocs"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! String
        }
    }
}

public class RunDBCommandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunDBCommandResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RunDBCommandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunFunctionRequest : Tea.TeaModel {
    public var body: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["Body"] = self.body!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Body") && dict["Body"] != nil {
            self.body = dict["Body"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class RunFunctionResponseBody : Tea.TeaModel {
    public class RuntimeMeta : Tea.TeaModel {
        public var billingDuration: Int32?

        public var invocationDuration: Int32?

        public var maxMemoryUsage: Int32?

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
            if self.billingDuration != nil {
                map["BillingDuration"] = self.billingDuration!
            }
            if self.invocationDuration != nil {
                map["InvocationDuration"] = self.invocationDuration!
            }
            if self.maxMemoryUsage != nil {
                map["MaxMemoryUsage"] = self.maxMemoryUsage!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BillingDuration") && dict["BillingDuration"] != nil {
                self.billingDuration = dict["BillingDuration"] as! Int32
            }
            if dict.keys.contains("InvocationDuration") && dict["InvocationDuration"] != nil {
                self.invocationDuration = dict["InvocationDuration"] as! Int32
            }
            if dict.keys.contains("MaxMemoryUsage") && dict["MaxMemoryUsage"] != nil {
                self.maxMemoryUsage = dict["MaxMemoryUsage"] as! Int32
            }
            if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
                self.requestId = dict["RequestId"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: String?

    public var runtimeMeta: RunFunctionResponseBody.RuntimeMeta?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.runtimeMeta?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.runtimeMeta != nil {
            map["RuntimeMeta"] = self.runtimeMeta?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("RuntimeMeta") && dict["RuntimeMeta"] != nil {
            var model = RunFunctionResponseBody.RuntimeMeta()
            model.fromMap(dict["RuntimeMeta"] as! [String: Any])
            self.runtimeMeta = model
        }
    }
}

public class RunFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunFunctionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RunFunctionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveAntOpenPlatformConfigRequest : Tea.TeaModel {
    public var appCert: String?

    public var appId: String?

    public var privateKey: String?

    public var publicCert: String?

    public var publicKey: String?

    public var rootCert: String?

    public var signMode: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appCert != nil {
            map["AppCert"] = self.appCert!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.privateKey != nil {
            map["PrivateKey"] = self.privateKey!
        }
        if self.publicCert != nil {
            map["PublicCert"] = self.publicCert!
        }
        if self.publicKey != nil {
            map["PublicKey"] = self.publicKey!
        }
        if self.rootCert != nil {
            map["RootCert"] = self.rootCert!
        }
        if self.signMode != nil {
            map["SignMode"] = self.signMode!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppCert") && dict["AppCert"] != nil {
            self.appCert = dict["AppCert"] as! String
        }
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("PrivateKey") && dict["PrivateKey"] != nil {
            self.privateKey = dict["PrivateKey"] as! String
        }
        if dict.keys.contains("PublicCert") && dict["PublicCert"] != nil {
            self.publicCert = dict["PublicCert"] as! String
        }
        if dict.keys.contains("PublicKey") && dict["PublicKey"] != nil {
            self.publicKey = dict["PublicKey"] as! String
        }
        if dict.keys.contains("RootCert") && dict["RootCert"] != nil {
            self.rootCert = dict["RootCert"] as! String
        }
        if dict.keys.contains("SignMode") && dict["SignMode"] != nil {
            self.signMode = dict["SignMode"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class SaveAntOpenPlatformConfigResponseBody : Tea.TeaModel {
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

public class SaveAntOpenPlatformConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveAntOpenPlatformConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SaveAntOpenPlatformConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveAppAuthTokenRequest : Tea.TeaModel {
    public var appAuthToken: String?

    public var appId: String?

    public var isvAppId: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appAuthToken != nil {
            map["AppAuthToken"] = self.appAuthToken!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.isvAppId != nil {
            map["IsvAppId"] = self.isvAppId!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppAuthToken") && dict["AppAuthToken"] != nil {
            self.appAuthToken = dict["AppAuthToken"] as! String
        }
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("IsvAppId") && dict["IsvAppId"] != nil {
            self.isvAppId = dict["IsvAppId"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class SaveAppAuthTokenResponseBody : Tea.TeaModel {
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

public class SaveAppAuthTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveAppAuthTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SaveAppAuthTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveCdnDomainConfigRequest : Tea.TeaModel {
    public var authConfig: String?

    public var corsConfig: String?

    public var ipConfig: String?

    public var refererConfig: String?

    public var spaceId: String?

    public var tenantId: String?

    public var type: String?

    public var uaConfig: String?

    public override init() {
        super.init()
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
            map["AuthConfig"] = self.authConfig!
        }
        if self.corsConfig != nil {
            map["CorsConfig"] = self.corsConfig!
        }
        if self.ipConfig != nil {
            map["IpConfig"] = self.ipConfig!
        }
        if self.refererConfig != nil {
            map["RefererConfig"] = self.refererConfig!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.uaConfig != nil {
            map["UaConfig"] = self.uaConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthConfig") && dict["AuthConfig"] != nil {
            self.authConfig = dict["AuthConfig"] as! String
        }
        if dict.keys.contains("CorsConfig") && dict["CorsConfig"] != nil {
            self.corsConfig = dict["CorsConfig"] as! String
        }
        if dict.keys.contains("IpConfig") && dict["IpConfig"] != nil {
            self.ipConfig = dict["IpConfig"] as! String
        }
        if dict.keys.contains("RefererConfig") && dict["RefererConfig"] != nil {
            self.refererConfig = dict["RefererConfig"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("UaConfig") && dict["UaConfig"] != nil {
            self.uaConfig = dict["UaConfig"] as! String
        }
    }
}

public class SaveCdnDomainConfigResponseBody : Tea.TeaModel {
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

public class SaveCdnDomainConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveCdnDomainConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SaveCdnDomainConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveWebHostingCustomDomainConfigRequest : Tea.TeaModel {
    public var domainName: String?

    public var forceRedirectType: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.forceRedirectType != nil {
            map["ForceRedirectType"] = self.forceRedirectType!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("ForceRedirectType") && dict["ForceRedirectType"] != nil {
            self.forceRedirectType = dict["ForceRedirectType"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class SaveWebHostingCustomDomainConfigResponseBody : Tea.TeaModel {
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

public class SaveWebHostingCustomDomainConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveWebHostingCustomDomainConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SaveWebHostingCustomDomainConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveWebHostingCustomDomainCorsConfigRequest : Tea.TeaModel {
    public var accessControlAllowOrigin: String?

    public var accessOriginControl: Bool?

    public var domainName: String?

    public var enableCors: Bool?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessControlAllowOrigin != nil {
            map["AccessControlAllowOrigin"] = self.accessControlAllowOrigin!
        }
        if self.accessOriginControl != nil {
            map["AccessOriginControl"] = self.accessOriginControl!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.enableCors != nil {
            map["EnableCors"] = self.enableCors!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessControlAllowOrigin") && dict["AccessControlAllowOrigin"] != nil {
            self.accessControlAllowOrigin = dict["AccessControlAllowOrigin"] as! String
        }
        if dict.keys.contains("AccessOriginControl") && dict["AccessOriginControl"] != nil {
            self.accessOriginControl = dict["AccessOriginControl"] as! Bool
        }
        if dict.keys.contains("DomainName") && dict["DomainName"] != nil {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("EnableCors") && dict["EnableCors"] != nil {
            self.enableCors = dict["EnableCors"] as! Bool
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class SaveWebHostingCustomDomainCorsConfigResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var httpStatusCode: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SaveWebHostingCustomDomainCorsConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveWebHostingCustomDomainCorsConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SaveWebHostingCustomDomainCorsConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveWechatOpenPlatformConfigRequest : Tea.TeaModel {
    public var appId: String?

    public var appSecret: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appSecret != nil {
            map["AppSecret"] = self.appSecret!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppSecret") && dict["AppSecret"] != nil {
            self.appSecret = dict["AppSecret"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class SaveWechatOpenPlatformConfigResponseBody : Tea.TeaModel {
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

public class SaveWechatOpenPlatformConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveWechatOpenPlatformConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SaveWechatOpenPlatformConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindWebHostingCustomDomainRequest : Tea.TeaModel {
    public var customDomain: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customDomain != nil {
            map["CustomDomain"] = self.customDomain!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomDomain") && dict["CustomDomain"] != nil {
            self.customDomain = dict["CustomDomain"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class UnbindWebHostingCustomDomainResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UnbindWebHostingCustomDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindWebHostingCustomDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UnbindWebHostingCustomDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDingtalkOpenPlatformConfigRequest : Tea.TeaModel {
    public var appId: String?

    public var appSecret: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appSecret != nil {
            map["AppSecret"] = self.appSecret!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppSecret") && dict["AppSecret"] != nil {
            self.appSecret = dict["AppSecret"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class UpdateDingtalkOpenPlatformConfigResponseBody : Tea.TeaModel {
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

public class UpdateDingtalkOpenPlatformConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDingtalkOpenPlatformConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDingtalkOpenPlatformConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateFunctionRequest : Tea.TeaModel {
    public var desc: String?

    public var httpTriggerPath: String?

    public var instanceConcurrency: Int32?

    public var memory: Int32?

    public var name: String?

    public var runtime: String?

    public var spaceId: String?

    public var timeout: Int32?

    public var timingTriggerConfig: String?

    public var timingTriggerUserPayload: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.desc != nil {
            map["Desc"] = self.desc!
        }
        if self.httpTriggerPath != nil {
            map["HttpTriggerPath"] = self.httpTriggerPath!
        }
        if self.instanceConcurrency != nil {
            map["InstanceConcurrency"] = self.instanceConcurrency!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.runtime != nil {
            map["Runtime"] = self.runtime!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        if self.timingTriggerConfig != nil {
            map["TimingTriggerConfig"] = self.timingTriggerConfig!
        }
        if self.timingTriggerUserPayload != nil {
            map["TimingTriggerUserPayload"] = self.timingTriggerUserPayload!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Desc") && dict["Desc"] != nil {
            self.desc = dict["Desc"] as! String
        }
        if dict.keys.contains("HttpTriggerPath") && dict["HttpTriggerPath"] != nil {
            self.httpTriggerPath = dict["HttpTriggerPath"] as! String
        }
        if dict.keys.contains("InstanceConcurrency") && dict["InstanceConcurrency"] != nil {
            self.instanceConcurrency = dict["InstanceConcurrency"] as! Int32
        }
        if dict.keys.contains("Memory") && dict["Memory"] != nil {
            self.memory = dict["Memory"] as! Int32
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Runtime") && dict["Runtime"] != nil {
            self.runtime = dict["Runtime"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
        if dict.keys.contains("Timeout") && dict["Timeout"] != nil {
            self.timeout = dict["Timeout"] as! Int32
        }
        if dict.keys.contains("TimingTriggerConfig") && dict["TimingTriggerConfig"] != nil {
            self.timingTriggerConfig = dict["TimingTriggerConfig"] as! String
        }
        if dict.keys.contains("TimingTriggerUserPayload") && dict["TimingTriggerUserPayload"] != nil {
            self.timingTriggerUserPayload = dict["TimingTriggerUserPayload"] as! String
        }
    }
}

public class UpdateFunctionResponseBody : Tea.TeaModel {
    public class Spec : Tea.TeaModel {
        public var instanceConcurrency: Int32?

        public var memory: String?

        public var runtime: String?

        public var timeout: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceConcurrency != nil {
                map["InstanceConcurrency"] = self.instanceConcurrency!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.runtime != nil {
                map["Runtime"] = self.runtime!
            }
            if self.timeout != nil {
                map["Timeout"] = self.timeout!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceConcurrency") && dict["InstanceConcurrency"] != nil {
                self.instanceConcurrency = dict["InstanceConcurrency"] as! Int32
            }
            if dict.keys.contains("Memory") && dict["Memory"] != nil {
                self.memory = dict["Memory"] as! String
            }
            if dict.keys.contains("Runtime") && dict["Runtime"] != nil {
                self.runtime = dict["Runtime"] as! String
            }
            if dict.keys.contains("Timeout") && dict["Timeout"] != nil {
                self.timeout = dict["Timeout"] as! String
            }
        }
    }
    public var createdAt: String?

    public var desc: String?

    public var httpTriggerPath: String?

    public var modifiedAt: String?

    public var name: String?

    public var requestId: String?

    public var spec: UpdateFunctionResponseBody.Spec?

    public var timingTriggerConfig: String?

    public var timingTriggerUserPayload: String?

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
        if self.createdAt != nil {
            map["CreatedAt"] = self.createdAt!
        }
        if self.desc != nil {
            map["Desc"] = self.desc!
        }
        if self.httpTriggerPath != nil {
            map["HttpTriggerPath"] = self.httpTriggerPath!
        }
        if self.modifiedAt != nil {
            map["ModifiedAt"] = self.modifiedAt!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.spec != nil {
            map["Spec"] = self.spec?.toMap()
        }
        if self.timingTriggerConfig != nil {
            map["TimingTriggerConfig"] = self.timingTriggerConfig!
        }
        if self.timingTriggerUserPayload != nil {
            map["TimingTriggerUserPayload"] = self.timingTriggerUserPayload!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
            self.createdAt = dict["CreatedAt"] as! String
        }
        if dict.keys.contains("Desc") && dict["Desc"] != nil {
            self.desc = dict["Desc"] as! String
        }
        if dict.keys.contains("HttpTriggerPath") && dict["HttpTriggerPath"] != nil {
            self.httpTriggerPath = dict["HttpTriggerPath"] as! String
        }
        if dict.keys.contains("ModifiedAt") && dict["ModifiedAt"] != nil {
            self.modifiedAt = dict["ModifiedAt"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Spec") && dict["Spec"] != nil {
            var model = UpdateFunctionResponseBody.Spec()
            model.fromMap(dict["Spec"] as! [String: Any])
            self.spec = model
        }
        if dict.keys.contains("TimingTriggerConfig") && dict["TimingTriggerConfig"] != nil {
            self.timingTriggerConfig = dict["TimingTriggerConfig"] as! String
        }
        if dict.keys.contains("TimingTriggerUserPayload") && dict["TimingTriggerUserPayload"] != nil {
            self.timingTriggerUserPayload = dict["TimingTriggerUserPayload"] as! String
        }
    }
}

public class UpdateFunctionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFunctionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateFunctionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateHttpTriggerConfigRequest : Tea.TeaModel {
    public var customDomain: String?

    public var customDomainCertificate: String?

    public var customDomainPrivateKey: String?

    public var enableService: Bool?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customDomain != nil {
            map["CustomDomain"] = self.customDomain!
        }
        if self.customDomainCertificate != nil {
            map["CustomDomainCertificate"] = self.customDomainCertificate!
        }
        if self.customDomainPrivateKey != nil {
            map["CustomDomainPrivateKey"] = self.customDomainPrivateKey!
        }
        if self.enableService != nil {
            map["EnableService"] = self.enableService!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomDomain") && dict["CustomDomain"] != nil {
            self.customDomain = dict["CustomDomain"] as! String
        }
        if dict.keys.contains("CustomDomainCertificate") && dict["CustomDomainCertificate"] != nil {
            self.customDomainCertificate = dict["CustomDomainCertificate"] as! String
        }
        if dict.keys.contains("CustomDomainPrivateKey") && dict["CustomDomainPrivateKey"] != nil {
            self.customDomainPrivateKey = dict["CustomDomainPrivateKey"] as! String
        }
        if dict.keys.contains("EnableService") && dict["EnableService"] != nil {
            self.enableService = dict["EnableService"] as! Bool
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class UpdateHttpTriggerConfigResponseBody : Tea.TeaModel {
    public var customDomain: String?

    public var customDomainCertificateInfo: String?

    public var customDomainCname: String?

    public var defaultEndpoint: String?

    public var enableService: Bool?

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
        if self.customDomain != nil {
            map["CustomDomain"] = self.customDomain!
        }
        if self.customDomainCertificateInfo != nil {
            map["CustomDomainCertificateInfo"] = self.customDomainCertificateInfo!
        }
        if self.customDomainCname != nil {
            map["CustomDomainCname"] = self.customDomainCname!
        }
        if self.defaultEndpoint != nil {
            map["DefaultEndpoint"] = self.defaultEndpoint!
        }
        if self.enableService != nil {
            map["EnableService"] = self.enableService!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomDomain") && dict["CustomDomain"] != nil {
            self.customDomain = dict["CustomDomain"] as! String
        }
        if dict.keys.contains("CustomDomainCertificateInfo") && dict["CustomDomainCertificateInfo"] != nil {
            self.customDomainCertificateInfo = dict["CustomDomainCertificateInfo"] as! String
        }
        if dict.keys.contains("CustomDomainCname") && dict["CustomDomainCname"] != nil {
            self.customDomainCname = dict["CustomDomainCname"] as! String
        }
        if dict.keys.contains("DefaultEndpoint") && dict["DefaultEndpoint"] != nil {
            self.defaultEndpoint = dict["DefaultEndpoint"] as! String
        }
        if dict.keys.contains("EnableService") && dict["EnableService"] != nil {
            self.enableService = dict["EnableService"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateHttpTriggerConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateHttpTriggerConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateHttpTriggerConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateServicePolicyRequest : Tea.TeaModel {
    public var collectionName: String?

    public var policy: String?

    public var policyName: String?

    public var serviceName: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.collectionName != nil {
            map["CollectionName"] = self.collectionName!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CollectionName") && dict["CollectionName"] != nil {
            self.collectionName = dict["CollectionName"] as! String
        }
        if dict.keys.contains("Policy") && dict["Policy"] != nil {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("PolicyName") && dict["PolicyName"] != nil {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class UpdateServicePolicyResponseBody : Tea.TeaModel {
    public var collectionName: String?

    public var policy: String?

    public var policyName: String?

    public var requestId: String?

    public var serviceName: String?

    public var spaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.collectionName != nil {
            map["CollectionName"] = self.collectionName!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CollectionName") && dict["CollectionName"] != nil {
            self.collectionName = dict["CollectionName"] as! String
        }
        if dict.keys.contains("Policy") && dict["Policy"] != nil {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("PolicyName") && dict["PolicyName"] != nil {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
    }
}

public class UpdateServicePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServicePolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateServicePolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSpaceRequest : Tea.TeaModel {
    public var desc: String?

    public var spaceId: String?

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
        if self.desc != nil {
            map["Desc"] = self.desc!
        }
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Desc") && dict["Desc"] != nil {
            self.desc = dict["Desc"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class UpdateSpaceResponseBody : Tea.TeaModel {
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

public class UpdateSpaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSpaceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateSpaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyWebHostingDomainOwnerRequest : Tea.TeaModel {
    public var domain: String?

    public var spaceId: String?

    public var verifyType: String?

    public override init() {
        super.init()
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
        if self.spaceId != nil {
            map["SpaceId"] = self.spaceId!
        }
        if self.verifyType != nil {
            map["VerifyType"] = self.verifyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("SpaceId") && dict["SpaceId"] != nil {
            self.spaceId = dict["SpaceId"] as! String
        }
        if dict.keys.contains("VerifyType") && dict["VerifyType"] != nil {
            self.verifyType = dict["VerifyType"] as! String
        }
    }
}

public class VerifyWebHostingDomainOwnerResponseBody : Tea.TeaModel {
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

public class VerifyWebHostingDomainOwnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyWebHostingDomainOwnerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = VerifyWebHostingDomainOwnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
