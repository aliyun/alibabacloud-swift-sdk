import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class OssUploadCredential : Tea.TeaModel {
    public var accessKeyId: String?

    public var endpoint: String?

    public var filePath: String?

    public var ossPolicy: String?

    public var ossSignature: String?

    public var stsToken: String?

    public override init() {
        super.init()
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
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.ossPolicy != nil {
            map["OssPolicy"] = self.ossPolicy!
        }
        if self.ossSignature != nil {
            map["OssSignature"] = self.ossSignature!
        }
        if self.stsToken != nil {
            map["StsToken"] = self.stsToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessKeyId") {
            self.accessKeyId = dict["AccessKeyId"] as! String
        }
        if dict.keys.contains("Endpoint") {
            self.endpoint = dict["Endpoint"] as! String
        }
        if dict.keys.contains("FilePath") {
            self.filePath = dict["FilePath"] as! String
        }
        if dict.keys.contains("OssPolicy") {
            self.ossPolicy = dict["OssPolicy"] as! String
        }
        if dict.keys.contains("OssSignature") {
            self.ossSignature = dict["OssSignature"] as! String
        }
        if dict.keys.contains("StsToken") {
            self.stsToken = dict["StsToken"] as! String
        }
    }
}

public class ApproveFotaUpdateRequest : Tea.TeaModel {
    public var appVersion: String?

    public var clientId: String?

    public var desktopId: String?

    public var loginToken: String?

    public var regionId: String?

    public var sessionId: String?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppVersion") {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class ApproveFotaUpdateResponseBody : Tea.TeaModel {
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

public class ApproveFotaUpdateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApproveFotaUpdateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ApproveFotaUpdateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChangePasswordRequest : Tea.TeaModel {
    public var clientId: String?

    public var endUserId: String?

    public var loginToken: String?

    public var newPassword: String?

    public var officeSiteId: String?

    public var oldPassword: String?

    public var regionId: String?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.newPassword != nil {
            map["NewPassword"] = self.newPassword!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.oldPassword != nil {
            map["OldPassword"] = self.oldPassword!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("NewPassword") {
            self.newPassword = dict["NewPassword"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("OldPassword") {
            self.oldPassword = dict["OldPassword"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
    }
}

public class ChangePasswordResponseBody : Tea.TeaModel {
    public var loginToken: String?

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
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ChangePasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangePasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ChangePasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFingerPrintTemplateRequest : Tea.TeaModel {
    public var clientId: String?

    public var clientToken: String?

    public var index: Int32?

    public var loginToken: String?

    public var regionId: String?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.index != nil {
            map["Index"] = self.index!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Index") {
            self.index = dict["Index"] as! Int32
        }
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
    }
}

public class DeleteFingerPrintTemplateResponseBody : Tea.TeaModel {
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

public class DeleteFingerPrintTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFingerPrintTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteFingerPrintTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDirectoriesRequest : Tea.TeaModel {
    public var clientId: String?

    public var directoryId: [String]?

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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeDirectoriesResponseBody : Tea.TeaModel {
    public class Directories : Tea.TeaModel {
        public var desktopAccessType: String?

        public var directoryId: String?

        public var directoryType: String?

        public var providerId: String?

        public var ssoServiceUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.desktopAccessType != nil {
                map["DesktopAccessType"] = self.desktopAccessType!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.directoryType != nil {
                map["DirectoryType"] = self.directoryType!
            }
            if self.providerId != nil {
                map["ProviderId"] = self.providerId!
            }
            if self.ssoServiceUrl != nil {
                map["SsoServiceUrl"] = self.ssoServiceUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DesktopAccessType") {
                self.desktopAccessType = dict["DesktopAccessType"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("DirectoryType") {
                self.directoryType = dict["DirectoryType"] as! String
            }
            if dict.keys.contains("ProviderId") {
                self.providerId = dict["ProviderId"] as! String
            }
            if dict.keys.contains("SsoServiceUrl") {
                self.ssoServiceUrl = dict["SsoServiceUrl"] as! String
            }
        }
    }
    public var directories: [DescribeDirectoriesResponseBody.Directories]?

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
        if self.directories != nil {
            var tmp : [Any] = []
            for k in self.directories! {
                tmp.append(k.toMap())
            }
            map["Directories"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Directories") {
            var tmp : [DescribeDirectoriesResponseBody.Directories] = []
            for v in dict["Directories"] as! [Any] {
                var model = DescribeDirectoriesResponseBody.Directories()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.directories = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDirectoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDirectoriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDirectoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeFingerPrintTemplatesRequest : Tea.TeaModel {
    public var clientId: String?

    public var loginToken: String?

    public var regionId: String?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
    }
}

public class DescribeFingerPrintTemplatesResponseBody : Tea.TeaModel {
    public class FingerPrintTemplates : Tea.TeaModel {
        public var clientId: String?

        public var creationTime: String?

        public var description_: String?

        public var endUserId: String?

        public var index: Int64?

        public var loginTime: String?

        public var officeSiteId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientId != nil {
                map["ClientId"] = self.clientId!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.endUserId != nil {
                map["EndUserId"] = self.endUserId!
            }
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.loginTime != nil {
                map["LoginTime"] = self.loginTime!
            }
            if self.officeSiteId != nil {
                map["OfficeSiteId"] = self.officeSiteId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientId") {
                self.clientId = dict["ClientId"] as! String
            }
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EndUserId") {
                self.endUserId = dict["EndUserId"] as! String
            }
            if dict.keys.contains("Index") {
                self.index = dict["Index"] as! Int64
            }
            if dict.keys.contains("LoginTime") {
                self.loginTime = dict["LoginTime"] as! String
            }
            if dict.keys.contains("OfficeSiteId") {
                self.officeSiteId = dict["OfficeSiteId"] as! String
            }
        }
    }
    public var fingerPrintTemplates: [DescribeFingerPrintTemplatesResponseBody.FingerPrintTemplates]?

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
        if self.fingerPrintTemplates != nil {
            var tmp : [Any] = []
            for k in self.fingerPrintTemplates! {
                tmp.append(k.toMap())
            }
            map["FingerPrintTemplates"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FingerPrintTemplates") {
            var tmp : [DescribeFingerPrintTemplatesResponseBody.FingerPrintTemplates] = []
            for v in dict["FingerPrintTemplates"] as! [Any] {
                var model = DescribeFingerPrintTemplatesResponseBody.FingerPrintTemplates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fingerPrintTemplates = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeFingerPrintTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFingerPrintTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeFingerPrintTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGlobalDesktopsRequest : Tea.TeaModel {
    public var clientId: String?

    public var desktopAccessType: String?

    public var desktopId: [String]?

    public var desktopName: String?

    public var desktopStatus: String?

    public var directoryId: String?

    public var keyword: String?

    public var loginRegionId: String?

    public var loginToken: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var officeSiteId: String?

    public var orderBy: String?

    public var queryFotaUpdate: Bool?

    public var regionId: String?

    public var searchRegionId: String?

    public var sessionId: String?

    public var sortType: String?

    public var withoutLatency: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.desktopAccessType != nil {
            map["DesktopAccessType"] = self.desktopAccessType!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.desktopName != nil {
            map["DesktopName"] = self.desktopName!
        }
        if self.desktopStatus != nil {
            map["DesktopStatus"] = self.desktopStatus!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.loginRegionId != nil {
            map["LoginRegionId"] = self.loginRegionId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.queryFotaUpdate != nil {
            map["QueryFotaUpdate"] = self.queryFotaUpdate!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.searchRegionId != nil {
            map["SearchRegionId"] = self.searchRegionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.sortType != nil {
            map["SortType"] = self.sortType!
        }
        if self.withoutLatency != nil {
            map["WithoutLatency"] = self.withoutLatency!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("DesktopAccessType") {
            self.desktopAccessType = dict["DesktopAccessType"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! [String]
        }
        if dict.keys.contains("DesktopName") {
            self.desktopName = dict["DesktopName"] as! String
        }
        if dict.keys.contains("DesktopStatus") {
            self.desktopStatus = dict["DesktopStatus"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("LoginRegionId") {
            self.loginRegionId = dict["LoginRegionId"] as! String
        }
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("QueryFotaUpdate") {
            self.queryFotaUpdate = dict["QueryFotaUpdate"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SearchRegionId") {
            self.searchRegionId = dict["SearchRegionId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("SortType") {
            self.sortType = dict["SortType"] as! String
        }
        if dict.keys.contains("WithoutLatency") {
            self.withoutLatency = dict["WithoutLatency"] as! Bool
        }
    }
}

public class DescribeGlobalDesktopsResponseBody : Tea.TeaModel {
    public class Desktops : Tea.TeaModel {
        public class Clients : Tea.TeaModel {
            public var clientType: String?

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
                if self.clientType != nil {
                    map["ClientType"] = self.clientType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClientType") {
                    self.clientType = dict["ClientType"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public class DesktopTimers : Tea.TeaModel {
            public var allowClientSetting: Bool?

            public var cronExpression: String?

            public var enforce: Bool?

            public var executionTime: String?

            public var interval: Int32?

            public var operationType: String?

            public var resetType: String?

            public var timerType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowClientSetting != nil {
                    map["AllowClientSetting"] = self.allowClientSetting!
                }
                if self.cronExpression != nil {
                    map["CronExpression"] = self.cronExpression!
                }
                if self.enforce != nil {
                    map["Enforce"] = self.enforce!
                }
                if self.executionTime != nil {
                    map["ExecutionTime"] = self.executionTime!
                }
                if self.interval != nil {
                    map["Interval"] = self.interval!
                }
                if self.operationType != nil {
                    map["OperationType"] = self.operationType!
                }
                if self.resetType != nil {
                    map["ResetType"] = self.resetType!
                }
                if self.timerType != nil {
                    map["TimerType"] = self.timerType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowClientSetting") {
                    self.allowClientSetting = dict["AllowClientSetting"] as! Bool
                }
                if dict.keys.contains("CronExpression") {
                    self.cronExpression = dict["CronExpression"] as! String
                }
                if dict.keys.contains("Enforce") {
                    self.enforce = dict["Enforce"] as! Bool
                }
                if dict.keys.contains("ExecutionTime") {
                    self.executionTime = dict["ExecutionTime"] as! String
                }
                if dict.keys.contains("Interval") {
                    self.interval = dict["Interval"] as! Int32
                }
                if dict.keys.contains("OperationType") {
                    self.operationType = dict["OperationType"] as! String
                }
                if dict.keys.contains("ResetType") {
                    self.resetType = dict["ResetType"] as! String
                }
                if dict.keys.contains("TimerType") {
                    self.timerType = dict["TimerType"] as! String
                }
            }
        }
        public class Disks : Tea.TeaModel {
            public var diskId: String?

            public var diskSize: Int32?

            public var diskType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.diskId != nil {
                    map["DiskId"] = self.diskId!
                }
                if self.diskSize != nil {
                    map["DiskSize"] = self.diskSize!
                }
                if self.diskType != nil {
                    map["DiskType"] = self.diskType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DiskId") {
                    self.diskId = dict["DiskId"] as! String
                }
                if dict.keys.contains("DiskSize") {
                    self.diskSize = dict["DiskSize"] as! Int32
                }
                if dict.keys.contains("DiskType") {
                    self.diskType = dict["DiskType"] as! String
                }
            }
        }
        public class FotaUpdate : Tea.TeaModel {
            public var channel: String?

            public var currentAppVersion: String?

            public var force: Bool?

            public var newAppVersion: String?

            public var project: String?

            public var releaseNote: String?

            public var releaseNoteEn: String?

            public var releaseNoteJp: String?

            public var size: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.channel != nil {
                    map["Channel"] = self.channel!
                }
                if self.currentAppVersion != nil {
                    map["CurrentAppVersion"] = self.currentAppVersion!
                }
                if self.force != nil {
                    map["Force"] = self.force!
                }
                if self.newAppVersion != nil {
                    map["NewAppVersion"] = self.newAppVersion!
                }
                if self.project != nil {
                    map["Project"] = self.project!
                }
                if self.releaseNote != nil {
                    map["ReleaseNote"] = self.releaseNote!
                }
                if self.releaseNoteEn != nil {
                    map["ReleaseNoteEn"] = self.releaseNoteEn!
                }
                if self.releaseNoteJp != nil {
                    map["ReleaseNoteJp"] = self.releaseNoteJp!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Channel") {
                    self.channel = dict["Channel"] as! String
                }
                if dict.keys.contains("CurrentAppVersion") {
                    self.currentAppVersion = dict["CurrentAppVersion"] as! String
                }
                if dict.keys.contains("Force") {
                    self.force = dict["Force"] as! Bool
                }
                if dict.keys.contains("NewAppVersion") {
                    self.newAppVersion = dict["NewAppVersion"] as! String
                }
                if dict.keys.contains("Project") {
                    self.project = dict["Project"] as! String
                }
                if dict.keys.contains("ReleaseNote") {
                    self.releaseNote = dict["ReleaseNote"] as! String
                }
                if dict.keys.contains("ReleaseNoteEn") {
                    self.releaseNoteEn = dict["ReleaseNoteEn"] as! String
                }
                if dict.keys.contains("ReleaseNoteJp") {
                    self.releaseNoteJp = dict["ReleaseNoteJp"] as! String
                }
                if dict.keys.contains("Size") {
                    self.size = dict["Size"] as! String
                }
            }
        }
        public class Sessions : Tea.TeaModel {
            public var endUserId: String?

            public var establishmentTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endUserId != nil {
                    map["EndUserId"] = self.endUserId!
                }
                if self.establishmentTime != nil {
                    map["EstablishmentTime"] = self.establishmentTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EndUserId") {
                    self.endUserId = dict["EndUserId"] as! String
                }
                if dict.keys.contains("EstablishmentTime") {
                    self.establishmentTime = dict["EstablishmentTime"] as! String
                }
            }
        }
        public var chargeType: String?

        public var clients: [DescribeGlobalDesktopsResponseBody.Desktops.Clients]?

        public var connectionStatus: String?

        public var cpu: Int32?

        public var creationTime: String?

        public var desktopGroupId: String?

        public var desktopId: String?

        public var desktopName: String?

        public var desktopStatus: String?

        public var desktopTimers: [DescribeGlobalDesktopsResponseBody.Desktops.DesktopTimers]?

        public var desktopType: String?

        public var directoryId: String?

        public var disks: [DescribeGlobalDesktopsResponseBody.Desktops.Disks]?

        public var endUserId: String?

        public var endUserIds: [String]?

        public var expiredTime: String?

        public var fotaUpdate: DescribeGlobalDesktopsResponseBody.Desktops.FotaUpdate?

        public var gpuMemory: Int32?

        public var hibernationBeta: Bool?

        public var hostName: String?

        public var imageId: String?

        public var lastStartTime: String?

        public var localName: String?

        public var managementFlags: [String]?

        public var memory: Int64?

        public var networkInterfaceIp: String?

        public var officeSiteId: String?

        public var os: String?

        public var osType: String?

        public var platform: String?

        public var policyGroupId: String?

        public var protocolType: String?

        public var realDesktopId: String?

        public var regionId: String?

        public var regionLocation: String?

        public var sessionType: String?

        public var sessions: [DescribeGlobalDesktopsResponseBody.Desktops.Sessions]?

        public var supportHibernation: Bool?

        public var userCustomName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.fotaUpdate?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.clients != nil {
                var tmp : [Any] = []
                for k in self.clients! {
                    tmp.append(k.toMap())
                }
                map["Clients"] = tmp
            }
            if self.connectionStatus != nil {
                map["ConnectionStatus"] = self.connectionStatus!
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.desktopGroupId != nil {
                map["DesktopGroupId"] = self.desktopGroupId!
            }
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.desktopName != nil {
                map["DesktopName"] = self.desktopName!
            }
            if self.desktopStatus != nil {
                map["DesktopStatus"] = self.desktopStatus!
            }
            if self.desktopTimers != nil {
                var tmp : [Any] = []
                for k in self.desktopTimers! {
                    tmp.append(k.toMap())
                }
                map["DesktopTimers"] = tmp
            }
            if self.desktopType != nil {
                map["DesktopType"] = self.desktopType!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.disks != nil {
                var tmp : [Any] = []
                for k in self.disks! {
                    tmp.append(k.toMap())
                }
                map["Disks"] = tmp
            }
            if self.endUserId != nil {
                map["EndUserId"] = self.endUserId!
            }
            if self.endUserIds != nil {
                map["EndUserIds"] = self.endUserIds!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.fotaUpdate != nil {
                map["FotaUpdate"] = self.fotaUpdate?.toMap()
            }
            if self.gpuMemory != nil {
                map["GpuMemory"] = self.gpuMemory!
            }
            if self.hibernationBeta != nil {
                map["HibernationBeta"] = self.hibernationBeta!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.lastStartTime != nil {
                map["LastStartTime"] = self.lastStartTime!
            }
            if self.localName != nil {
                map["LocalName"] = self.localName!
            }
            if self.managementFlags != nil {
                map["ManagementFlags"] = self.managementFlags!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.networkInterfaceIp != nil {
                map["NetworkInterfaceIp"] = self.networkInterfaceIp!
            }
            if self.officeSiteId != nil {
                map["OfficeSiteId"] = self.officeSiteId!
            }
            if self.os != nil {
                map["Os"] = self.os!
            }
            if self.osType != nil {
                map["OsType"] = self.osType!
            }
            if self.platform != nil {
                map["Platform"] = self.platform!
            }
            if self.policyGroupId != nil {
                map["PolicyGroupId"] = self.policyGroupId!
            }
            if self.protocolType != nil {
                map["ProtocolType"] = self.protocolType!
            }
            if self.realDesktopId != nil {
                map["RealDesktopId"] = self.realDesktopId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.regionLocation != nil {
                map["RegionLocation"] = self.regionLocation!
            }
            if self.sessionType != nil {
                map["SessionType"] = self.sessionType!
            }
            if self.sessions != nil {
                var tmp : [Any] = []
                for k in self.sessions! {
                    tmp.append(k.toMap())
                }
                map["Sessions"] = tmp
            }
            if self.supportHibernation != nil {
                map["SupportHibernation"] = self.supportHibernation!
            }
            if self.userCustomName != nil {
                map["UserCustomName"] = self.userCustomName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChargeType") {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("Clients") {
                var tmp : [DescribeGlobalDesktopsResponseBody.Desktops.Clients] = []
                for v in dict["Clients"] as! [Any] {
                    var model = DescribeGlobalDesktopsResponseBody.Desktops.Clients()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.clients = tmp
            }
            if dict.keys.contains("ConnectionStatus") {
                self.connectionStatus = dict["ConnectionStatus"] as! String
            }
            if dict.keys.contains("Cpu") {
                self.cpu = dict["Cpu"] as! Int32
            }
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("DesktopGroupId") {
                self.desktopGroupId = dict["DesktopGroupId"] as! String
            }
            if dict.keys.contains("DesktopId") {
                self.desktopId = dict["DesktopId"] as! String
            }
            if dict.keys.contains("DesktopName") {
                self.desktopName = dict["DesktopName"] as! String
            }
            if dict.keys.contains("DesktopStatus") {
                self.desktopStatus = dict["DesktopStatus"] as! String
            }
            if dict.keys.contains("DesktopTimers") {
                var tmp : [DescribeGlobalDesktopsResponseBody.Desktops.DesktopTimers] = []
                for v in dict["DesktopTimers"] as! [Any] {
                    var model = DescribeGlobalDesktopsResponseBody.Desktops.DesktopTimers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.desktopTimers = tmp
            }
            if dict.keys.contains("DesktopType") {
                self.desktopType = dict["DesktopType"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("Disks") {
                var tmp : [DescribeGlobalDesktopsResponseBody.Desktops.Disks] = []
                for v in dict["Disks"] as! [Any] {
                    var model = DescribeGlobalDesktopsResponseBody.Desktops.Disks()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.disks = tmp
            }
            if dict.keys.contains("EndUserId") {
                self.endUserId = dict["EndUserId"] as! String
            }
            if dict.keys.contains("EndUserIds") {
                self.endUserIds = dict["EndUserIds"] as! [String]
            }
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("FotaUpdate") {
                var model = DescribeGlobalDesktopsResponseBody.Desktops.FotaUpdate()
                model.fromMap(dict["FotaUpdate"] as! [String: Any])
                self.fotaUpdate = model
            }
            if dict.keys.contains("GpuMemory") {
                self.gpuMemory = dict["GpuMemory"] as! Int32
            }
            if dict.keys.contains("HibernationBeta") {
                self.hibernationBeta = dict["HibernationBeta"] as! Bool
            }
            if dict.keys.contains("HostName") {
                self.hostName = dict["HostName"] as! String
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("LastStartTime") {
                self.lastStartTime = dict["LastStartTime"] as! String
            }
            if dict.keys.contains("LocalName") {
                self.localName = dict["LocalName"] as! String
            }
            if dict.keys.contains("ManagementFlags") {
                self.managementFlags = dict["ManagementFlags"] as! [String]
            }
            if dict.keys.contains("Memory") {
                self.memory = dict["Memory"] as! Int64
            }
            if dict.keys.contains("NetworkInterfaceIp") {
                self.networkInterfaceIp = dict["NetworkInterfaceIp"] as! String
            }
            if dict.keys.contains("OfficeSiteId") {
                self.officeSiteId = dict["OfficeSiteId"] as! String
            }
            if dict.keys.contains("Os") {
                self.os = dict["Os"] as! String
            }
            if dict.keys.contains("OsType") {
                self.osType = dict["OsType"] as! String
            }
            if dict.keys.contains("Platform") {
                self.platform = dict["Platform"] as! String
            }
            if dict.keys.contains("PolicyGroupId") {
                self.policyGroupId = dict["PolicyGroupId"] as! String
            }
            if dict.keys.contains("ProtocolType") {
                self.protocolType = dict["ProtocolType"] as! String
            }
            if dict.keys.contains("RealDesktopId") {
                self.realDesktopId = dict["RealDesktopId"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RegionLocation") {
                self.regionLocation = dict["RegionLocation"] as! String
            }
            if dict.keys.contains("SessionType") {
                self.sessionType = dict["SessionType"] as! String
            }
            if dict.keys.contains("Sessions") {
                var tmp : [DescribeGlobalDesktopsResponseBody.Desktops.Sessions] = []
                for v in dict["Sessions"] as! [Any] {
                    var model = DescribeGlobalDesktopsResponseBody.Desktops.Sessions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sessions = tmp
            }
            if dict.keys.contains("SupportHibernation") {
                self.supportHibernation = dict["SupportHibernation"] as! Bool
            }
            if dict.keys.contains("UserCustomName") {
                self.userCustomName = dict["UserCustomName"] as! String
            }
        }
    }
    public var desktops: [DescribeGlobalDesktopsResponseBody.Desktops]?

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
        if self.desktops != nil {
            var tmp : [Any] = []
            for k in self.desktops! {
                tmp.append(k.toMap())
            }
            map["Desktops"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Desktops") {
            var tmp : [DescribeGlobalDesktopsResponseBody.Desktops] = []
            for v in dict["Desktops"] as! [Any] {
                var model = DescribeGlobalDesktopsResponseBody.Desktops()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.desktops = tmp
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeGlobalDesktopsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGlobalDesktopsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeGlobalDesktopsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOfficeSitesRequest : Tea.TeaModel {
    public var clientId: String?

    public var officeSiteId: [String]?

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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeOfficeSitesResponseBody : Tea.TeaModel {
    public class OfficeSites : Tea.TeaModel {
        public var desktopAccessType: String?

        public var desktopVpcEndpoint: String?

        public var officeSiteId: String?

        public var officeSiteType: String?

        public var providerId: String?

        public var ssoServiceUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.desktopAccessType != nil {
                map["DesktopAccessType"] = self.desktopAccessType!
            }
            if self.desktopVpcEndpoint != nil {
                map["DesktopVpcEndpoint"] = self.desktopVpcEndpoint!
            }
            if self.officeSiteId != nil {
                map["OfficeSiteId"] = self.officeSiteId!
            }
            if self.officeSiteType != nil {
                map["OfficeSiteType"] = self.officeSiteType!
            }
            if self.providerId != nil {
                map["ProviderId"] = self.providerId!
            }
            if self.ssoServiceUrl != nil {
                map["SsoServiceUrl"] = self.ssoServiceUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DesktopAccessType") {
                self.desktopAccessType = dict["DesktopAccessType"] as! String
            }
            if dict.keys.contains("DesktopVpcEndpoint") {
                self.desktopVpcEndpoint = dict["DesktopVpcEndpoint"] as! String
            }
            if dict.keys.contains("OfficeSiteId") {
                self.officeSiteId = dict["OfficeSiteId"] as! String
            }
            if dict.keys.contains("OfficeSiteType") {
                self.officeSiteType = dict["OfficeSiteType"] as! String
            }
            if dict.keys.contains("ProviderId") {
                self.providerId = dict["ProviderId"] as! String
            }
            if dict.keys.contains("SsoServiceUrl") {
                self.ssoServiceUrl = dict["SsoServiceUrl"] as! String
            }
        }
    }
    public var officeSites: [DescribeOfficeSitesResponseBody.OfficeSites]?

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
        if self.officeSites != nil {
            var tmp : [Any] = []
            for k in self.officeSites! {
                tmp.append(k.toMap())
            }
            map["OfficeSites"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OfficeSites") {
            var tmp : [DescribeOfficeSitesResponseBody.OfficeSites] = []
            for v in dict["OfficeSites"] as! [Any] {
                var model = DescribeOfficeSitesResponseBody.OfficeSites()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.officeSites = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeOfficeSitesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOfficeSitesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeOfficeSitesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var clientId: String?

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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
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
            if self.regionEndpoint != nil {
                map["RegionEndpoint"] = self.regionEndpoint!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegionEndpoint") {
                self.regionEndpoint = dict["RegionEndpoint"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") {
            var tmp : [DescribeRegionsResponseBody.Regions] = []
            for v in dict["Regions"] as! [Any] {
                var model = DescribeRegionsResponseBody.Regions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.regions = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSnapshotsRequest : Tea.TeaModel {
    public var clientId: String?

    public var desktopId: String?

    public var loginToken: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var sessionId: String?

    public var snapshotId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
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
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
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
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("SnapshotId") {
            self.snapshotId = dict["SnapshotId"] as! String
        }
    }
}

public class DescribeSnapshotsResponseBody : Tea.TeaModel {
    public class Snapshots : Tea.TeaModel {
        public var creationTime: String?

        public var description_: String?

        public var desktopId: String?

        public var progress: String?

        public var remainTime: Int32?

        public var snapshotId: String?

        public var snapshotName: String?

        public var snapshotType: String?

        public var sourceDiskSize: String?

        public var sourceDiskType: String?

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
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.desktopId != nil {
                map["DesktopId"] = self.desktopId!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.remainTime != nil {
                map["RemainTime"] = self.remainTime!
            }
            if self.snapshotId != nil {
                map["SnapshotId"] = self.snapshotId!
            }
            if self.snapshotName != nil {
                map["SnapshotName"] = self.snapshotName!
            }
            if self.snapshotType != nil {
                map["SnapshotType"] = self.snapshotType!
            }
            if self.sourceDiskSize != nil {
                map["SourceDiskSize"] = self.sourceDiskSize!
            }
            if self.sourceDiskType != nil {
                map["SourceDiskType"] = self.sourceDiskType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreationTime") {
                self.creationTime = dict["CreationTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DesktopId") {
                self.desktopId = dict["DesktopId"] as! String
            }
            if dict.keys.contains("Progress") {
                self.progress = dict["Progress"] as! String
            }
            if dict.keys.contains("RemainTime") {
                self.remainTime = dict["RemainTime"] as! Int32
            }
            if dict.keys.contains("SnapshotId") {
                self.snapshotId = dict["SnapshotId"] as! String
            }
            if dict.keys.contains("SnapshotName") {
                self.snapshotName = dict["SnapshotName"] as! String
            }
            if dict.keys.contains("SnapshotType") {
                self.snapshotType = dict["SnapshotType"] as! String
            }
            if dict.keys.contains("SourceDiskSize") {
                self.sourceDiskSize = dict["SourceDiskSize"] as! String
            }
            if dict.keys.contains("SourceDiskType") {
                self.sourceDiskType = dict["SourceDiskType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var snapshots: [DescribeSnapshotsResponseBody.Snapshots]?

    public override init() {
        super.init()
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
        if self.snapshots != nil {
            var tmp : [Any] = []
            for k in self.snapshots! {
                tmp.append(k.toMap())
            }
            map["Snapshots"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Snapshots") {
            var tmp : [DescribeSnapshotsResponseBody.Snapshots] = []
            for v in dict["Snapshots"] as! [Any] {
                var model = DescribeSnapshotsResponseBody.Snapshots()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.snapshots = tmp
        }
    }
}

public class DescribeSnapshotsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSnapshotsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeSnapshotsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EncryptPasswordRequest : Tea.TeaModel {
    public var clientId: String?

    public var directoryId: String?

    public var loginToken: String?

    public var officeSiteId: String?

    public var password: String?

    public var regionId: String?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
    }
}

public class EncryptPasswordResponseBody : Tea.TeaModel {
    public var encryptedPassword: String?

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
        if self.encryptedPassword != nil {
            map["EncryptedPassword"] = self.encryptedPassword!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EncryptedPassword") {
            self.encryptedPassword = dict["EncryptedPassword"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class EncryptPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EncryptPasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = EncryptPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCloudDriveServiceMountTokenRequest : Tea.TeaModel {
    public var clientId: String?

    public var loginToken: String?

    public var officeSiteId: String?

    public var regionId: String?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
    }
}

public class GetCloudDriveServiceMountTokenResponseBody : Tea.TeaModel {
    public class Token : Tea.TeaModel {
        public var domainId: String?

        public var expiredAfter: String?

        public var status: String?

        public var token: String?

        public var totalSize: Int64?

        public var usedSize: Int64?

        public override init() {
            super.init()
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
            if self.expiredAfter != nil {
                map["ExpiredAfter"] = self.expiredAfter!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.token != nil {
                map["Token"] = self.token!
            }
            if self.totalSize != nil {
                map["TotalSize"] = self.totalSize!
            }
            if self.usedSize != nil {
                map["UsedSize"] = self.usedSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DomainId") {
                self.domainId = dict["DomainId"] as! String
            }
            if dict.keys.contains("ExpiredAfter") {
                self.expiredAfter = dict["ExpiredAfter"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Token") {
                self.token = dict["Token"] as! String
            }
            if dict.keys.contains("TotalSize") {
                self.totalSize = dict["TotalSize"] as! Int64
            }
            if dict.keys.contains("UsedSize") {
                self.usedSize = dict["UsedSize"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var token: GetCloudDriveServiceMountTokenResponseBody.Token?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.token?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.token != nil {
            map["Token"] = self.token?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Token") {
            var model = GetCloudDriveServiceMountTokenResponseBody.Token()
            model.fromMap(dict["Token"] as! [String: Any])
            self.token = model
        }
    }
}

public class GetCloudDriveServiceMountTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCloudDriveServiceMountTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetCloudDriveServiceMountTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetConnectionTicketRequest : Tea.TeaModel {
    public var clientId: String?

    public var clientOS: String?

    public var clientType: String?

    public var clientVersion: String?

    public var commandContent: String?

    public var desktopId: String?

    public var loginToken: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sessionId: String?

    public var taskId: String?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientOS != nil {
            map["ClientOS"] = self.clientOS!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.commandContent != nil {
            map["CommandContent"] = self.commandContent!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ClientOS") {
            self.clientOS = dict["ClientOS"] as! String
        }
        if dict.keys.contains("ClientType") {
            self.clientType = dict["ClientType"] as! String
        }
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("CommandContent") {
            self.commandContent = dict["CommandContent"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class GetConnectionTicketResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var taskCode: String?

    public var taskId: String?

    public var taskMessage: String?

    public var taskStatus: String?

    public var ticket: String?

    public override init() {
        super.init()
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
        if self.taskCode != nil {
            map["TaskCode"] = self.taskCode!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskMessage != nil {
            map["TaskMessage"] = self.taskMessage!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.ticket != nil {
            map["Ticket"] = self.ticket!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskCode") {
            self.taskCode = dict["TaskCode"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskMessage") {
            self.taskMessage = dict["TaskMessage"] as! String
        }
        if dict.keys.contains("TaskStatus") {
            self.taskStatus = dict["TaskStatus"] as! String
        }
        if dict.keys.contains("Ticket") {
            self.ticket = dict["Ticket"] as! String
        }
    }
}

public class GetConnectionTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConnectionTicketResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetConnectionTicketResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLoginTokenRequest : Tea.TeaModel {
    public var authenticationCode: String?

    public var clientId: String?

    public var clientOS: String?

    public var clientType: String?

    public var clientVersion: String?

    public var currentStage: String?

    public var directoryId: String?

    public var endUserId: String?

    public var keepAlive: Bool?

    public var keepAliveToken: String?

    public var newPassword: String?

    public var officeSiteId: String?

    public var oldPassword: String?

    public var password: String?

    public var regionId: String?

    public var sessionId: String?

    public var tokenCode: String?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authenticationCode != nil {
            map["AuthenticationCode"] = self.authenticationCode!
        }
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientOS != nil {
            map["ClientOS"] = self.clientOS!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.currentStage != nil {
            map["CurrentStage"] = self.currentStage!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.keepAlive != nil {
            map["KeepAlive"] = self.keepAlive!
        }
        if self.keepAliveToken != nil {
            map["KeepAliveToken"] = self.keepAliveToken!
        }
        if self.newPassword != nil {
            map["NewPassword"] = self.newPassword!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.oldPassword != nil {
            map["OldPassword"] = self.oldPassword!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.tokenCode != nil {
            map["TokenCode"] = self.tokenCode!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthenticationCode") {
            self.authenticationCode = dict["AuthenticationCode"] as! String
        }
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ClientOS") {
            self.clientOS = dict["ClientOS"] as! String
        }
        if dict.keys.contains("ClientType") {
            self.clientType = dict["ClientType"] as! String
        }
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("CurrentStage") {
            self.currentStage = dict["CurrentStage"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("KeepAlive") {
            self.keepAlive = dict["KeepAlive"] as! Bool
        }
        if dict.keys.contains("KeepAliveToken") {
            self.keepAliveToken = dict["KeepAliveToken"] as! String
        }
        if dict.keys.contains("NewPassword") {
            self.newPassword = dict["NewPassword"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("OldPassword") {
            self.oldPassword = dict["OldPassword"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TokenCode") {
            self.tokenCode = dict["TokenCode"] as! String
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class GetLoginTokenResponseBody : Tea.TeaModel {
    public class PasswordStrategy : Tea.TeaModel {
        public var tenantAlternativeChars: [String]?

        public var tenantPasswordLength: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantAlternativeChars != nil {
                map["TenantAlternativeChars"] = self.tenantAlternativeChars!
            }
            if self.tenantPasswordLength != nil {
                map["TenantPasswordLength"] = self.tenantPasswordLength!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TenantAlternativeChars") {
                self.tenantAlternativeChars = dict["TenantAlternativeChars"] as! [String]
            }
            if dict.keys.contains("TenantPasswordLength") {
                self.tenantPasswordLength = dict["TenantPasswordLength"] as! String
            }
        }
    }
    public class RiskVerifyInfo : Tea.TeaModel {
        public var email: String?

        public var lastLockDuration: Int64?

        public var locked: String?

        public var phone: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.lastLockDuration != nil {
                map["LastLockDuration"] = self.lastLockDuration!
            }
            if self.locked != nil {
                map["Locked"] = self.locked!
            }
            if self.phone != nil {
                map["Phone"] = self.phone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("LastLockDuration") {
                self.lastLockDuration = dict["LastLockDuration"] as! Int64
            }
            if dict.keys.contains("Locked") {
                self.locked = dict["Locked"] as! String
            }
            if dict.keys.contains("Phone") {
                self.phone = dict["Phone"] as! String
            }
        }
    }
    public var email: String?

    public var endUserId: String?

    public var industry: String?

    public var keepAliveToken: String?

    public var label: String?

    public var loginToken: String?

    public var nextStage: String?

    public var passwordStrategy: GetLoginTokenResponseBody.PasswordStrategy?

    public var phone: String?

    public var props: [String: String]?

    public var qrCodePng: String?

    public var reason: String?

    public var requestId: String?

    public var riskVerifyInfo: GetLoginTokenResponseBody.RiskVerifyInfo?

    public var secret: String?

    public var sessionId: String?

    public var tenantId: Int64?

    public var windowDisplayMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.passwordStrategy?.validate()
        try self.riskVerifyInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.industry != nil {
            map["Industry"] = self.industry!
        }
        if self.keepAliveToken != nil {
            map["KeepAliveToken"] = self.keepAliveToken!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.nextStage != nil {
            map["NextStage"] = self.nextStage!
        }
        if self.passwordStrategy != nil {
            map["PasswordStrategy"] = self.passwordStrategy?.toMap()
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.props != nil {
            map["Props"] = self.props!
        }
        if self.qrCodePng != nil {
            map["QrCodePng"] = self.qrCodePng!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.riskVerifyInfo != nil {
            map["RiskVerifyInfo"] = self.riskVerifyInfo?.toMap()
        }
        if self.secret != nil {
            map["Secret"] = self.secret!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.windowDisplayMode != nil {
            map["WindowDisplayMode"] = self.windowDisplayMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("Industry") {
            self.industry = dict["Industry"] as! String
        }
        if dict.keys.contains("KeepAliveToken") {
            self.keepAliveToken = dict["KeepAliveToken"] as! String
        }
        if dict.keys.contains("Label") {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("NextStage") {
            self.nextStage = dict["NextStage"] as! String
        }
        if dict.keys.contains("PasswordStrategy") {
            var model = GetLoginTokenResponseBody.PasswordStrategy()
            model.fromMap(dict["PasswordStrategy"] as! [String: Any])
            self.passwordStrategy = model
        }
        if dict.keys.contains("Phone") {
            self.phone = dict["Phone"] as! String
        }
        if dict.keys.contains("Props") {
            self.props = dict["Props"] as! [String: String]
        }
        if dict.keys.contains("QrCodePng") {
            self.qrCodePng = dict["QrCodePng"] as! String
        }
        if dict.keys.contains("Reason") {
            self.reason = dict["Reason"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RiskVerifyInfo") {
            var model = GetLoginTokenResponseBody.RiskVerifyInfo()
            model.fromMap(dict["RiskVerifyInfo"] as! [String: Any])
            self.riskVerifyInfo = model
        }
        if dict.keys.contains("Secret") {
            self.secret = dict["Secret"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("WindowDisplayMode") {
            self.windowDisplayMode = dict["WindowDisplayMode"] as! String
        }
    }
}

public class GetLoginTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLoginTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetLoginTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class IsKeepAliveRequest : Tea.TeaModel {
    public var clientId: String?

    public var officeSiteId: String?

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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class IsKeepAliveResponseBody : Tea.TeaModel {
    public var isKeepAlive: Bool?

    public var officeSiteId: String?

    public var requestId: String?

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
        if self.isKeepAlive != nil {
            map["IsKeepAlive"] = self.isKeepAlive!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsKeepAlive") {
            self.isKeepAlive = dict["IsKeepAlive"] as! Bool
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! String
        }
    }
}

public class IsKeepAliveResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IsKeepAliveResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = IsKeepAliveResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryEdsAgentReportConfigRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var desktopId: String?

    public var ecsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.ecsInstanceId != nil {
            map["EcsInstanceId"] = self.ecsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("EcsInstanceId") {
            self.ecsInstanceId = dict["EcsInstanceId"] as! String
        }
    }
}

public class QueryEdsAgentReportConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var config: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.config != nil {
                map["Config"] = self.config!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Config") {
                self.config = dict["Config"] as! String
            }
        }
    }
    public var data: QueryEdsAgentReportConfigResponseBody.Data?

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
        if dict.keys.contains("Data") {
            var model = QueryEdsAgentReportConfigResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryEdsAgentReportConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryEdsAgentReportConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = QueryEdsAgentReportConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RebootDesktopsRequest : Tea.TeaModel {
    public var clientId: String?

    public var clientOS: String?

    public var clientToken: String?

    public var clientVersion: String?

    public var desktopId: [String]?

    public var loginToken: String?

    public var regionId: String?

    public var sessionId: String?

    public var sessionToken: String?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientOS != nil {
            map["ClientOS"] = self.clientOS!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.sessionToken != nil {
            map["SessionToken"] = self.sessionToken!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ClientOS") {
            self.clientOS = dict["ClientOS"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! [String]
        }
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("SessionToken") {
            self.sessionToken = dict["SessionToken"] as! String
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class RebootDesktopsResponseBody : Tea.TeaModel {
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

public class RebootDesktopsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RebootDesktopsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RebootDesktopsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefreshLoginTokenRequest : Tea.TeaModel {
    public var clientId: String?

    public var directoryId: String?

    public var endUserId: String?

    public var loginToken: String?

    public var officeSiteId: String?

    public var regionId: String?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
    }
}

public class RefreshLoginTokenResponseBody : Tea.TeaModel {
    public var loginToken: String?

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
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RefreshLoginTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefreshLoginTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RefreshLoginTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReportEdsAgentInfoRequest : Tea.TeaModel {
    public var aliUid: Int64?

    public var desktopId: String?

    public var ecsInstanceId: String?

    public var edsAgentInfo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliUid != nil {
            map["AliUid"] = self.aliUid!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.ecsInstanceId != nil {
            map["EcsInstanceId"] = self.ecsInstanceId!
        }
        if self.edsAgentInfo != nil {
            map["EdsAgentInfo"] = self.edsAgentInfo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliUid") {
            self.aliUid = dict["AliUid"] as! Int64
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("EcsInstanceId") {
            self.ecsInstanceId = dict["EcsInstanceId"] as! String
        }
        if dict.keys.contains("EdsAgentInfo") {
            self.edsAgentInfo = dict["EdsAgentInfo"] as! String
        }
    }
}

public class ReportEdsAgentInfoResponseBody : Tea.TeaModel {
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

public class ReportEdsAgentInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReportEdsAgentInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ReportEdsAgentInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReportSessionStatusRequest : Tea.TeaModel {
    public var endUserId: String?

    public var instanceId: String?

    public var regionId: String?

    public var sessionChangeTime: Int64?

    public var sessionId: String?

    public var sessionStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionChangeTime != nil {
            map["SessionChangeTime"] = self.sessionChangeTime!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.sessionStatus != nil {
            map["SessionStatus"] = self.sessionStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SessionChangeTime") {
            self.sessionChangeTime = dict["SessionChangeTime"] as! Int64
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("SessionStatus") {
            self.sessionStatus = dict["SessionStatus"] as! String
        }
    }
}

public class ReportSessionStatusResponseBody : Tea.TeaModel {
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

public class ReportSessionStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReportSessionStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ReportSessionStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetPasswordRequest : Tea.TeaModel {
    public var clientId: String?

    public var clientToken: String?

    public var email: String?

    public var endUserId: String?

    public var officeSiteId: String?

    public var regionId: String?

    public var phone: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.phone != nil {
            map["phone"] = self.phone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("phone") {
            self.phone = dict["phone"] as! String
        }
    }
}

public class ResetPasswordResponseBody : Tea.TeaModel {
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

public class ResetPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetPasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ResetPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetSnapshotRequest : Tea.TeaModel {
    public var clientId: String?

    public var loginToken: String?

    public var regionId: String?

    public var sessionId: String?

    public var snapshotId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("SnapshotId") {
            self.snapshotId = dict["SnapshotId"] as! String
        }
    }
}

public class ResetSnapshotResponseBody : Tea.TeaModel {
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

public class ResetSnapshotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetSnapshotResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ResetSnapshotResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendTokenCodeRequest : Tea.TeaModel {
    public var clientId: String?

    public var clientOS: String?

    public var clientVersion: String?

    public var endUserId: String?

    public var loginToken: String?

    public var officeSiteId: String?

    public var sessionId: String?

    public var tokenCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientOS != nil {
            map["ClientOS"] = self.clientOS!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.tokenCode != nil {
            map["TokenCode"] = self.tokenCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ClientOS") {
            self.clientOS = dict["ClientOS"] as! String
        }
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TokenCode") {
            self.tokenCode = dict["TokenCode"] as! String
        }
    }
}

public class SendTokenCodeResponseBody : Tea.TeaModel {
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

public class SendTokenCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendTokenCodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SendTokenCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetFingerPrintTemplateRequest : Tea.TeaModel {
    public var clientId: String?

    public var clientToken: String?

    public var description_: String?

    public var encryptedFingerPrintTemplate: String?

    public var encryptedKey: String?

    public var fingerPrintTemplate: String?

    public var loginToken: String?

    public var password: String?

    public var regionId: String?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.encryptedFingerPrintTemplate != nil {
            map["EncryptedFingerPrintTemplate"] = self.encryptedFingerPrintTemplate!
        }
        if self.encryptedKey != nil {
            map["EncryptedKey"] = self.encryptedKey!
        }
        if self.fingerPrintTemplate != nil {
            map["FingerPrintTemplate"] = self.fingerPrintTemplate!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EncryptedFingerPrintTemplate") {
            self.encryptedFingerPrintTemplate = dict["EncryptedFingerPrintTemplate"] as! String
        }
        if dict.keys.contains("EncryptedKey") {
            self.encryptedKey = dict["EncryptedKey"] as! String
        }
        if dict.keys.contains("FingerPrintTemplate") {
            self.fingerPrintTemplate = dict["FingerPrintTemplate"] as! String
        }
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
    }
}

public class SetFingerPrintTemplateResponseBody : Tea.TeaModel {
    public var encryptedPassword: String?

    public var index: Int32?

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
        if self.encryptedPassword != nil {
            map["EncryptedPassword"] = self.encryptedPassword!
        }
        if self.index != nil {
            map["Index"] = self.index!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EncryptedPassword") {
            self.encryptedPassword = dict["EncryptedPassword"] as! String
        }
        if dict.keys.contains("Index") {
            self.index = dict["Index"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetFingerPrintTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetFingerPrintTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetFingerPrintTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetFingerPrintTemplateDescriptionRequest : Tea.TeaModel {
    public var clientId: String?

    public var clientToken: String?

    public var description_: String?

    public var index: Int32?

    public var loginToken: String?

    public var regionId: String?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.index != nil {
            map["Index"] = self.index!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Index") {
            self.index = dict["Index"] as! Int32
        }
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
    }
}

public class SetFingerPrintTemplateDescriptionResponseBody : Tea.TeaModel {
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

public class SetFingerPrintTemplateDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetFingerPrintTemplateDescriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetFingerPrintTemplateDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartDesktopsRequest : Tea.TeaModel {
    public var clientId: String?

    public var clientOS: String?

    public var clientToken: String?

    public var clientVersion: String?

    public var desktopId: [String]?

    public var loginToken: String?

    public var regionId: String?

    public var sessionId: String?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientOS != nil {
            map["ClientOS"] = self.clientOS!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ClientOS") {
            self.clientOS = dict["ClientOS"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! [String]
        }
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class StartDesktopsResponseBody : Tea.TeaModel {
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

public class StartDesktopsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartDesktopsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StartDesktopsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartRecordContentRequest : Tea.TeaModel {
    public var clientId: String?

    public var clientOS: String?

    public var clientVersion: String?

    public var desktopId: String?

    public var filePath: String?

    public var loginToken: String?

    public var regionId: String?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientOS != nil {
            map["ClientOS"] = self.clientOS!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ClientOS") {
            self.clientOS = dict["ClientOS"] as! String
        }
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("FilePath") {
            self.filePath = dict["FilePath"] as! String
        }
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
    }
}

public class StartRecordContentResponseBody : Tea.TeaModel {
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

public class StartRecordContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartRecordContentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StartRecordContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopDesktopsRequest : Tea.TeaModel {
    public var clientId: String?

    public var clientOS: String?

    public var clientToken: String?

    public var clientVersion: String?

    public var desktopId: [String]?

    public var loginToken: String?

    public var regionId: String?

    public var sessionId: String?

    public var sessionToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientOS != nil {
            map["ClientOS"] = self.clientOS!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.sessionToken != nil {
            map["SessionToken"] = self.sessionToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ClientOS") {
            self.clientOS = dict["ClientOS"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! [String]
        }
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("SessionToken") {
            self.sessionToken = dict["SessionToken"] as! String
        }
    }
}

public class StopDesktopsResponseBody : Tea.TeaModel {
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

public class StopDesktopsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopDesktopsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StopDesktopsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopRecordContentRequest : Tea.TeaModel {
    public var clientId: String?

    public var clientOS: String?

    public var clientVersion: String?

    public var desktopId: String?

    public var loginToken: String?

    public var regionId: String?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientOS != nil {
            map["ClientOS"] = self.clientOS!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ClientOS") {
            self.clientOS = dict["ClientOS"] as! String
        }
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("DesktopId") {
            self.desktopId = dict["DesktopId"] as! String
        }
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
    }
}

public class StopRecordContentResponseBody : Tea.TeaModel {
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

public class StopRecordContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopRecordContentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StopRecordContentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindUserDesktopRequest : Tea.TeaModel {
    public var clientId: String?

    public var clientType: String?

    public var force: Bool?

    public var loginToken: String?

    public var regionId: String?

    public var sessionId: String?

    public var userDesktopId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.force != nil {
            map["Force"] = self.force!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.userDesktopId != nil {
            map["UserDesktopId"] = self.userDesktopId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ClientType") {
            self.clientType = dict["ClientType"] as! String
        }
        if dict.keys.contains("Force") {
            self.force = dict["Force"] as! Bool
        }
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("UserDesktopId") {
            self.userDesktopId = dict["UserDesktopId"] as! String
        }
    }
}

public class UnbindUserDesktopResponseBody : Tea.TeaModel {
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

public class UnbindUserDesktopResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindUserDesktopResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UnbindUserDesktopResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyCredentialRequest : Tea.TeaModel {
    public var clientId: String?

    public var credential: String?

    public var credentialType: String?

    public var encryptedKey: String?

    public var loginToken: String?

    public var officeSiteId: String?

    public var regionId: String?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.credential != nil {
            map["Credential"] = self.credential!
        }
        if self.credentialType != nil {
            map["CredentialType"] = self.credentialType!
        }
        if self.encryptedKey != nil {
            map["EncryptedKey"] = self.encryptedKey!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("Credential") {
            self.credential = dict["Credential"] as! String
        }
        if dict.keys.contains("CredentialType") {
            self.credentialType = dict["CredentialType"] as! String
        }
        if dict.keys.contains("EncryptedKey") {
            self.encryptedKey = dict["EncryptedKey"] as! String
        }
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
    }
}

public class VerifyCredentialResponseBody : Tea.TeaModel {
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

public class VerifyCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyCredentialResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = VerifyCredentialResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
