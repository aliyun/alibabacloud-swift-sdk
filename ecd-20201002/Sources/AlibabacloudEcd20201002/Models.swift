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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessKeyId"] as? String {
            self.accessKeyId = value
        }
        if let value = dict["Endpoint"] as? String {
            self.endpoint = value
        }
        if let value = dict["FilePath"] as? String {
            self.filePath = value
        }
        if let value = dict["OssPolicy"] as? String {
            self.ossPolicy = value
        }
        if let value = dict["OssSignature"] as? String {
            self.ossSignature = value
        }
        if let value = dict["StsToken"] as? String {
            self.stsToken = value
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

    public var targetStatus: String?

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
        if self.targetStatus != nil {
            map["TargetStatus"] = self.targetStatus!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppVersion"] as? String {
            self.appVersion = value
        }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["DesktopId"] as? String {
            self.desktopId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["TargetStatus"] as? String {
            self.targetStatus = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ApproveFotaUpdateResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["NewPassword"] as? String {
            self.newPassword = value
        }
        if let value = dict["OfficeSiteId"] as? String {
            self.officeSiteId = value
        }
        if let value = dict["OldPassword"] as? String {
            self.oldPassword = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ChangePasswordResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Index"] as? Int32 {
            self.index = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteFingerPrintTemplateResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["DirectoryId"] as? [String] {
            self.directoryId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DesktopAccessType"] as? String {
                self.desktopAccessType = value
            }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["DirectoryType"] as? String {
                self.directoryType = value
            }
            if let value = dict["ProviderId"] as? String {
                self.providerId = value
            }
            if let value = dict["SsoServiceUrl"] as? String {
                self.ssoServiceUrl = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Directories"] as? [Any?] {
            var tmp : [DescribeDirectoriesResponseBody.Directories] = []
            for v in value {
                if v != nil {
                    var model = DescribeDirectoriesResponseBody.Directories()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.directories = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDirectoriesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClientId"] as? String {
                self.clientId = value
            }
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EndUserId"] as? String {
                self.endUserId = value
            }
            if let value = dict["Index"] as? Int64 {
                self.index = value
            }
            if let value = dict["LoginTime"] as? String {
                self.loginTime = value
            }
            if let value = dict["OfficeSiteId"] as? String {
                self.officeSiteId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FingerPrintTemplates"] as? [Any?] {
            var tmp : [DescribeFingerPrintTemplatesResponseBody.FingerPrintTemplates] = []
            for v in value {
                if v != nil {
                    var model = DescribeFingerPrintTemplatesResponseBody.FingerPrintTemplates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fingerPrintTemplates = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeFingerPrintTemplatesResponseBody()
            model.fromMap(value)
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

    public var language: String?

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
        if self.language != nil {
            map["Language"] = self.language!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["DesktopAccessType"] as? String {
            self.desktopAccessType = value
        }
        if let value = dict["DesktopId"] as? [String] {
            self.desktopId = value
        }
        if let value = dict["DesktopName"] as? String {
            self.desktopName = value
        }
        if let value = dict["DesktopStatus"] as? String {
            self.desktopStatus = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["LoginRegionId"] as? String {
            self.loginRegionId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OfficeSiteId"] as? String {
            self.officeSiteId = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["QueryFotaUpdate"] as? Bool {
            self.queryFotaUpdate = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SearchRegionId"] as? String {
            self.searchRegionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["SortType"] as? String {
            self.sortType = value
        }
        if let value = dict["WithoutLatency"] as? Bool {
            self.withoutLatency = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ClientType"] as? String {
                    self.clientType = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowClientSetting"] as? Bool {
                    self.allowClientSetting = value
                }
                if let value = dict["CronExpression"] as? String {
                    self.cronExpression = value
                }
                if let value = dict["Enforce"] as? Bool {
                    self.enforce = value
                }
                if let value = dict["ExecutionTime"] as? String {
                    self.executionTime = value
                }
                if let value = dict["Interval"] as? Int32 {
                    self.interval = value
                }
                if let value = dict["OperationType"] as? String {
                    self.operationType = value
                }
                if let value = dict["ResetType"] as? String {
                    self.resetType = value
                }
                if let value = dict["TimerType"] as? String {
                    self.timerType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DiskId"] as? String {
                    self.diskId = value
                }
                if let value = dict["DiskSize"] as? Int32 {
                    self.diskSize = value
                }
                if let value = dict["DiskType"] as? String {
                    self.diskType = value
                }
            }
        }
        public class FotaUpdate : Tea.TeaModel {
            public var channel: String?

            public var currentAppVersion: String?

            public var force: Bool?

            public var newAppVersion: String?

            public var newDcdVersion: String?

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
                if self.newDcdVersion != nil {
                    map["NewDcdVersion"] = self.newDcdVersion!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Channel"] as? String {
                    self.channel = value
                }
                if let value = dict["CurrentAppVersion"] as? String {
                    self.currentAppVersion = value
                }
                if let value = dict["Force"] as? Bool {
                    self.force = value
                }
                if let value = dict["NewAppVersion"] as? String {
                    self.newAppVersion = value
                }
                if let value = dict["NewDcdVersion"] as? String {
                    self.newDcdVersion = value
                }
                if let value = dict["Project"] as? String {
                    self.project = value
                }
                if let value = dict["ReleaseNote"] as? String {
                    self.releaseNote = value
                }
                if let value = dict["ReleaseNoteEn"] as? String {
                    self.releaseNoteEn = value
                }
                if let value = dict["ReleaseNoteJp"] as? String {
                    self.releaseNoteJp = value
                }
                if let value = dict["Size"] as? String {
                    self.size = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EndUserId"] as? String {
                    self.endUserId = value
                }
                if let value = dict["EstablishmentTime"] as? String {
                    self.establishmentTime = value
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

        public var osDescription: String?

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
            if self.osDescription != nil {
                map["OsDescription"] = self.osDescription!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["Clients"] as? [Any?] {
                var tmp : [DescribeGlobalDesktopsResponseBody.Desktops.Clients] = []
                for v in value {
                    if v != nil {
                        var model = DescribeGlobalDesktopsResponseBody.Desktops.Clients()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.clients = tmp
            }
            if let value = dict["ConnectionStatus"] as? String {
                self.connectionStatus = value
            }
            if let value = dict["Cpu"] as? Int32 {
                self.cpu = value
            }
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["DesktopGroupId"] as? String {
                self.desktopGroupId = value
            }
            if let value = dict["DesktopId"] as? String {
                self.desktopId = value
            }
            if let value = dict["DesktopName"] as? String {
                self.desktopName = value
            }
            if let value = dict["DesktopStatus"] as? String {
                self.desktopStatus = value
            }
            if let value = dict["DesktopTimers"] as? [Any?] {
                var tmp : [DescribeGlobalDesktopsResponseBody.Desktops.DesktopTimers] = []
                for v in value {
                    if v != nil {
                        var model = DescribeGlobalDesktopsResponseBody.Desktops.DesktopTimers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.desktopTimers = tmp
            }
            if let value = dict["DesktopType"] as? String {
                self.desktopType = value
            }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["Disks"] as? [Any?] {
                var tmp : [DescribeGlobalDesktopsResponseBody.Desktops.Disks] = []
                for v in value {
                    if v != nil {
                        var model = DescribeGlobalDesktopsResponseBody.Desktops.Disks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.disks = tmp
            }
            if let value = dict["EndUserId"] as? String {
                self.endUserId = value
            }
            if let value = dict["EndUserIds"] as? [String] {
                self.endUserIds = value
            }
            if let value = dict["ExpiredTime"] as? String {
                self.expiredTime = value
            }
            if let value = dict["FotaUpdate"] as? [String: Any?] {
                var model = DescribeGlobalDesktopsResponseBody.Desktops.FotaUpdate()
                model.fromMap(value)
                self.fotaUpdate = model
            }
            if let value = dict["GpuMemory"] as? Int32 {
                self.gpuMemory = value
            }
            if let value = dict["HibernationBeta"] as? Bool {
                self.hibernationBeta = value
            }
            if let value = dict["HostName"] as? String {
                self.hostName = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["LastStartTime"] as? String {
                self.lastStartTime = value
            }
            if let value = dict["LocalName"] as? String {
                self.localName = value
            }
            if let value = dict["ManagementFlags"] as? [String] {
                self.managementFlags = value
            }
            if let value = dict["Memory"] as? Int64 {
                self.memory = value
            }
            if let value = dict["NetworkInterfaceIp"] as? String {
                self.networkInterfaceIp = value
            }
            if let value = dict["OfficeSiteId"] as? String {
                self.officeSiteId = value
            }
            if let value = dict["Os"] as? String {
                self.os = value
            }
            if let value = dict["OsDescription"] as? String {
                self.osDescription = value
            }
            if let value = dict["OsType"] as? String {
                self.osType = value
            }
            if let value = dict["Platform"] as? String {
                self.platform = value
            }
            if let value = dict["PolicyGroupId"] as? String {
                self.policyGroupId = value
            }
            if let value = dict["ProtocolType"] as? String {
                self.protocolType = value
            }
            if let value = dict["RealDesktopId"] as? String {
                self.realDesktopId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RegionLocation"] as? String {
                self.regionLocation = value
            }
            if let value = dict["SessionType"] as? String {
                self.sessionType = value
            }
            if let value = dict["Sessions"] as? [Any?] {
                var tmp : [DescribeGlobalDesktopsResponseBody.Desktops.Sessions] = []
                for v in value {
                    if v != nil {
                        var model = DescribeGlobalDesktopsResponseBody.Desktops.Sessions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sessions = tmp
            }
            if let value = dict["SupportHibernation"] as? Bool {
                self.supportHibernation = value
            }
            if let value = dict["UserCustomName"] as? String {
                self.userCustomName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Desktops"] as? [Any?] {
            var tmp : [DescribeGlobalDesktopsResponseBody.Desktops] = []
            for v in value {
                if v != nil {
                    var model = DescribeGlobalDesktopsResponseBody.Desktops()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.desktops = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeGlobalDesktopsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeOfficeSitesRequest : Tea.TeaModel {
    public var clientId: String?

    public var officeSiteId: [String]?

    public var regionId: String?

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
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["OfficeSiteId"] as? [String] {
            self.officeSiteId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class DescribeOfficeSitesResponseBody : Tea.TeaModel {
    public class OfficeSites : Tea.TeaModel {
        public var aliUid: Int64?

        public var bizType: Int32?

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
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.bizType != nil {
                map["BizType"] = self.bizType!
            }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliUid"] as? Int64 {
                self.aliUid = value
            }
            if let value = dict["BizType"] as? Int32 {
                self.bizType = value
            }
            if let value = dict["DesktopAccessType"] as? String {
                self.desktopAccessType = value
            }
            if let value = dict["DesktopVpcEndpoint"] as? String {
                self.desktopVpcEndpoint = value
            }
            if let value = dict["OfficeSiteId"] as? String {
                self.officeSiteId = value
            }
            if let value = dict["OfficeSiteType"] as? String {
                self.officeSiteType = value
            }
            if let value = dict["ProviderId"] as? String {
                self.providerId = value
            }
            if let value = dict["SsoServiceUrl"] as? String {
                self.ssoServiceUrl = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OfficeSites"] as? [Any?] {
            var tmp : [DescribeOfficeSitesResponseBody.OfficeSites] = []
            for v in value {
                if v != nil {
                    var model = DescribeOfficeSitesResponseBody.OfficeSites()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.officeSites = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeOfficeSitesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["DesktopId"] as? String {
            self.desktopId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
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
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["SnapshotId"] as? String {
            self.snapshotId = value
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

        public var restorePointId: String?

        public var restorePointName: String?

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
            if self.restorePointId != nil {
                map["RestorePointId"] = self.restorePointId!
            }
            if self.restorePointName != nil {
                map["RestorePointName"] = self.restorePointName!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreationTime"] as? String {
                self.creationTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DesktopId"] as? String {
                self.desktopId = value
            }
            if let value = dict["Progress"] as? String {
                self.progress = value
            }
            if let value = dict["RemainTime"] as? Int32 {
                self.remainTime = value
            }
            if let value = dict["RestorePointId"] as? String {
                self.restorePointId = value
            }
            if let value = dict["RestorePointName"] as? String {
                self.restorePointName = value
            }
            if let value = dict["SnapshotId"] as? String {
                self.snapshotId = value
            }
            if let value = dict["SnapshotName"] as? String {
                self.snapshotName = value
            }
            if let value = dict["SnapshotType"] as? String {
                self.snapshotType = value
            }
            if let value = dict["SourceDiskSize"] as? String {
                self.sourceDiskSize = value
            }
            if let value = dict["SourceDiskType"] as? String {
                self.sourceDiskType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Snapshots"] as? [Any?] {
            var tmp : [DescribeSnapshotsResponseBody.Snapshots] = []
            for v in value {
                if v != nil {
                    var model = DescribeSnapshotsResponseBody.Snapshots()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSnapshotsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeUserResourcesRequest : Tea.TeaModel {
    public var accessType: String?

    public var autoRefresh: Bool?

    public var categoryId: Int32?

    public var categoryType: Int32?

    public var clientId: String?

    public var clientType: String?

    public var clientVersion: String?

    public var dualCenterForward: Bool?

    public var language: String?

    public var loginRegionId: String?

    public var loginToken: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var officeSiteIds: [String]?

    public var orderBy: String?

    public var productTypes: [String]?

    public var protocolType: String?

    public var queryDesktopDurationList: Bool?

    public var queryDesktopTimers: Bool?

    public var queryFotaUpdate: Bool?

    public var refreshFotaUpdate: Bool?

    public var resourceIds: [String]?

    public var resourceName: String?

    public var resourceTypes: [String]?

    public var scene: String?

    public var searchRegionId: String?

    public var sessionId: String?

    public var sortType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessType != nil {
            map["AccessType"] = self.accessType!
        }
        if self.autoRefresh != nil {
            map["AutoRefresh"] = self.autoRefresh!
        }
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.categoryType != nil {
            map["CategoryType"] = self.categoryType!
        }
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.dualCenterForward != nil {
            map["DualCenterForward"] = self.dualCenterForward!
        }
        if self.language != nil {
            map["Language"] = self.language!
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
        if self.officeSiteIds != nil {
            map["OfficeSiteIds"] = self.officeSiteIds!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.productTypes != nil {
            map["ProductTypes"] = self.productTypes!
        }
        if self.protocolType != nil {
            map["ProtocolType"] = self.protocolType!
        }
        if self.queryDesktopDurationList != nil {
            map["QueryDesktopDurationList"] = self.queryDesktopDurationList!
        }
        if self.queryDesktopTimers != nil {
            map["QueryDesktopTimers"] = self.queryDesktopTimers!
        }
        if self.queryFotaUpdate != nil {
            map["QueryFotaUpdate"] = self.queryFotaUpdate!
        }
        if self.refreshFotaUpdate != nil {
            map["RefreshFotaUpdate"] = self.refreshFotaUpdate!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.resourceTypes != nil {
            map["ResourceTypes"] = self.resourceTypes!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessType"] as? String {
            self.accessType = value
        }
        if let value = dict["AutoRefresh"] as? Bool {
            self.autoRefresh = value
        }
        if let value = dict["CategoryId"] as? Int32 {
            self.categoryId = value
        }
        if let value = dict["CategoryType"] as? Int32 {
            self.categoryType = value
        }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientType"] as? String {
            self.clientType = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["DualCenterForward"] as? Bool {
            self.dualCenterForward = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["LoginRegionId"] as? String {
            self.loginRegionId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OfficeSiteIds"] as? [String] {
            self.officeSiteIds = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["ProductTypes"] as? [String] {
            self.productTypes = value
        }
        if let value = dict["ProtocolType"] as? String {
            self.protocolType = value
        }
        if let value = dict["QueryDesktopDurationList"] as? Bool {
            self.queryDesktopDurationList = value
        }
        if let value = dict["QueryDesktopTimers"] as? Bool {
            self.queryDesktopTimers = value
        }
        if let value = dict["QueryFotaUpdate"] as? Bool {
            self.queryFotaUpdate = value
        }
        if let value = dict["RefreshFotaUpdate"] as? Bool {
            self.refreshFotaUpdate = value
        }
        if let value = dict["ResourceIds"] as? [String] {
            self.resourceIds = value
        }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["ResourceTypes"] as? [String] {
            self.resourceTypes = value
        }
        if let value = dict["Scene"] as? String {
            self.scene = value
        }
        if let value = dict["SearchRegionId"] as? String {
            self.searchRegionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["SortType"] as? String {
            self.sortType = value
        }
    }
}

public class DescribeUserResourcesResponseBody : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ClientType"] as? String {
                    self.clientType = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public class DesktopDurationList : Tea.TeaModel {
            public var orderInstanceId: String?

            public var packageCreationTime: String?

            public var packageExpiredTime: String?

            public var packageId: String?

            public var packageStatus: String?

            public var packageType: String?

            public var packageUsedUpStrategy: String?

            public var periodEndTime: String?

            public var periodStartTime: String?

            public var postPaidLimitFee: Double?

            public var totalDuration: Int64?

            public var usedDuration: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.orderInstanceId != nil {
                    map["OrderInstanceId"] = self.orderInstanceId!
                }
                if self.packageCreationTime != nil {
                    map["PackageCreationTime"] = self.packageCreationTime!
                }
                if self.packageExpiredTime != nil {
                    map["PackageExpiredTime"] = self.packageExpiredTime!
                }
                if self.packageId != nil {
                    map["PackageId"] = self.packageId!
                }
                if self.packageStatus != nil {
                    map["PackageStatus"] = self.packageStatus!
                }
                if self.packageType != nil {
                    map["PackageType"] = self.packageType!
                }
                if self.packageUsedUpStrategy != nil {
                    map["PackageUsedUpStrategy"] = self.packageUsedUpStrategy!
                }
                if self.periodEndTime != nil {
                    map["PeriodEndTime"] = self.periodEndTime!
                }
                if self.periodStartTime != nil {
                    map["PeriodStartTime"] = self.periodStartTime!
                }
                if self.postPaidLimitFee != nil {
                    map["PostPaidLimitFee"] = self.postPaidLimitFee!
                }
                if self.totalDuration != nil {
                    map["TotalDuration"] = self.totalDuration!
                }
                if self.usedDuration != nil {
                    map["UsedDuration"] = self.usedDuration!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["OrderInstanceId"] as? String {
                    self.orderInstanceId = value
                }
                if let value = dict["PackageCreationTime"] as? String {
                    self.packageCreationTime = value
                }
                if let value = dict["PackageExpiredTime"] as? String {
                    self.packageExpiredTime = value
                }
                if let value = dict["PackageId"] as? String {
                    self.packageId = value
                }
                if let value = dict["PackageStatus"] as? String {
                    self.packageStatus = value
                }
                if let value = dict["PackageType"] as? String {
                    self.packageType = value
                }
                if let value = dict["PackageUsedUpStrategy"] as? String {
                    self.packageUsedUpStrategy = value
                }
                if let value = dict["PeriodEndTime"] as? String {
                    self.periodEndTime = value
                }
                if let value = dict["PeriodStartTime"] as? String {
                    self.periodStartTime = value
                }
                if let value = dict["PostPaidLimitFee"] as? Double {
                    self.postPaidLimitFee = value
                }
                if let value = dict["TotalDuration"] as? Int64 {
                    self.totalDuration = value
                }
                if let value = dict["UsedDuration"] as? Int64 {
                    self.usedDuration = value
                }
            }
        }
        public class DesktopTimers : Tea.TeaModel {
            public var allowClientSetting: String?

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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowClientSetting"] as? String {
                    self.allowClientSetting = value
                }
                if let value = dict["CronExpression"] as? String {
                    self.cronExpression = value
                }
                if let value = dict["Enforce"] as? Bool {
                    self.enforce = value
                }
                if let value = dict["ExecutionTime"] as? String {
                    self.executionTime = value
                }
                if let value = dict["Interval"] as? Int32 {
                    self.interval = value
                }
                if let value = dict["OperationType"] as? String {
                    self.operationType = value
                }
                if let value = dict["ResetType"] as? String {
                    self.resetType = value
                }
                if let value = dict["TimerType"] as? String {
                    self.timerType = value
                }
            }
        }
        public class FotaUpdate : Tea.TeaModel {
            public var channel: String?

            public var currentAppVersion: String?

            public var force: Bool?

            public var newAppVersion: String?

            public var newDcdVersion: String?

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
                if self.newDcdVersion != nil {
                    map["NewDcdVersion"] = self.newDcdVersion!
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Channel"] as? String {
                    self.channel = value
                }
                if let value = dict["CurrentAppVersion"] as? String {
                    self.currentAppVersion = value
                }
                if let value = dict["Force"] as? Bool {
                    self.force = value
                }
                if let value = dict["NewAppVersion"] as? String {
                    self.newAppVersion = value
                }
                if let value = dict["NewDcdVersion"] as? String {
                    self.newDcdVersion = value
                }
                if let value = dict["Project"] as? String {
                    self.project = value
                }
                if let value = dict["ReleaseNote"] as? String {
                    self.releaseNote = value
                }
                if let value = dict["ReleaseNoteEn"] as? String {
                    self.releaseNoteEn = value
                }
                if let value = dict["ReleaseNoteJp"] as? String {
                    self.releaseNoteJp = value
                }
                if let value = dict["Size"] as? String {
                    self.size = value
                }
            }
        }
        public class OsUpdate : Tea.TeaModel {
            public class Packages : Tea.TeaModel {
                public var description_: String?

                public var kb: String?

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
                    if self.description_ != nil {
                        map["Description"] = self.description_!
                    }
                    if self.kb != nil {
                        map["Kb"] = self.kb!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Description"] as? String {
                        self.description_ = value
                    }
                    if let value = dict["Kb"] as? String {
                        self.kb = value
                    }
                    if let value = dict["Title"] as? String {
                        self.title = value
                    }
                }
            }
            public var checkId: String?

            public var kbListString: String?

            public var packageCount: Int32?

            public var packages: [DescribeUserResourcesResponseBody.Resources.OsUpdate.Packages]?

            public var updateCatalogUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.checkId != nil {
                    map["CheckId"] = self.checkId!
                }
                if self.kbListString != nil {
                    map["KbListString"] = self.kbListString!
                }
                if self.packageCount != nil {
                    map["PackageCount"] = self.packageCount!
                }
                if self.packages != nil {
                    var tmp : [Any] = []
                    for k in self.packages! {
                        tmp.append(k.toMap())
                    }
                    map["Packages"] = tmp
                }
                if self.updateCatalogUrl != nil {
                    map["UpdateCatalogUrl"] = self.updateCatalogUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheckId"] as? String {
                    self.checkId = value
                }
                if let value = dict["KbListString"] as? String {
                    self.kbListString = value
                }
                if let value = dict["PackageCount"] as? Int32 {
                    self.packageCount = value
                }
                if let value = dict["Packages"] as? [Any?] {
                    var tmp : [DescribeUserResourcesResponseBody.Resources.OsUpdate.Packages] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeUserResourcesResponseBody.Resources.OsUpdate.Packages()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.packages = tmp
                }
                if let value = dict["UpdateCatalogUrl"] as? String {
                    self.updateCatalogUrl = value
                }
            }
        }
        public class Sessions : Tea.TeaModel {
            public var nickName: String?

            public var resourceSessionStartTime: String?

            public var userId: String?

            public var userPrincipalName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.nickName != nil {
                    map["NickName"] = self.nickName!
                }
                if self.resourceSessionStartTime != nil {
                    map["ResourceSessionStartTime"] = self.resourceSessionStartTime!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.userPrincipalName != nil {
                    map["UserPrincipalName"] = self.userPrincipalName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NickName"] as? String {
                    self.nickName = value
                }
                if let value = dict["ResourceSessionStartTime"] as? String {
                    self.resourceSessionStartTime = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
                if let value = dict["UserPrincipalName"] as? String {
                    self.userPrincipalName = value
                }
            }
        }
        public var accessType: String?

        public var aliUid: Int64?

        public var appId: String?

        public var authMode: String?

        public var categoryId: Int32?

        public var categoryType: Int32?

        public var cdsName: String?

        public var centerResourceId: String?

        public var chargeType: String?

        public var clients: [DescribeUserResourcesResponseBody.Resources.Clients]?

        public var connectionProperties: String?

        public var createTime: String?

        public var desktopDurationList: [DescribeUserResourcesResponseBody.Resources.DesktopDurationList]?

        public var desktopTimers: [DescribeUserResourcesResponseBody.Resources.DesktopTimers]?

        public var expiredTime: String?

        public var externalDomainId: String?

        public var externalUserId: String?

        public var fotaUpdate: DescribeUserResourcesResponseBody.Resources.FotaUpdate?

        public var globalStatus: Bool?

        public var hasUpgrade: Bool?

        public var hibernationBeta: Bool?

        public var icon: String?

        public var lastStartTime: String?

        public var localName: String?

        public var managementStatuses: [String]?

        public var officeSiteId: String?

        public var orderStatus: String?

        public var os: String?

        public var osDescription: String?

        public var osType: String?

        public var osUpdate: DescribeUserResourcesResponseBody.Resources.OsUpdate?

        public var productType: String?

        public var protocolType: String?

        public var realDesktopId: String?

        public var regionId: String?

        public var regionLocation: String?

        public var resourceGroupId: String?

        public var resourceId: String?

        public var resourceLevel: String?

        public var resourceName: String?

        public var resourceSessionStatus: String?

        public var resourceStatus: String?

        public var resourceType: String?

        public var sessionType: String?

        public var sessions: [DescribeUserResourcesResponseBody.Resources.Sessions]?

        public var subPayType: String?

        public var supportHibernation: Bool?

        public var supportedActions: [String]?

        public var themeColor: String?

        public var userCustomName: String?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.fotaUpdate?.validate()
            try self.osUpdate?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessType != nil {
                map["AccessType"] = self.accessType!
            }
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.authMode != nil {
                map["AuthMode"] = self.authMode!
            }
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.categoryType != nil {
                map["CategoryType"] = self.categoryType!
            }
            if self.cdsName != nil {
                map["CdsName"] = self.cdsName!
            }
            if self.centerResourceId != nil {
                map["CenterResourceId"] = self.centerResourceId!
            }
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
            if self.connectionProperties != nil {
                map["ConnectionProperties"] = self.connectionProperties!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.desktopDurationList != nil {
                var tmp : [Any] = []
                for k in self.desktopDurationList! {
                    tmp.append(k.toMap())
                }
                map["DesktopDurationList"] = tmp
            }
            if self.desktopTimers != nil {
                var tmp : [Any] = []
                for k in self.desktopTimers! {
                    tmp.append(k.toMap())
                }
                map["DesktopTimers"] = tmp
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.externalDomainId != nil {
                map["ExternalDomainId"] = self.externalDomainId!
            }
            if self.externalUserId != nil {
                map["ExternalUserId"] = self.externalUserId!
            }
            if self.fotaUpdate != nil {
                map["FotaUpdate"] = self.fotaUpdate?.toMap()
            }
            if self.globalStatus != nil {
                map["GlobalStatus"] = self.globalStatus!
            }
            if self.hasUpgrade != nil {
                map["HasUpgrade"] = self.hasUpgrade!
            }
            if self.hibernationBeta != nil {
                map["HibernationBeta"] = self.hibernationBeta!
            }
            if self.icon != nil {
                map["Icon"] = self.icon!
            }
            if self.lastStartTime != nil {
                map["LastStartTime"] = self.lastStartTime!
            }
            if self.localName != nil {
                map["LocalName"] = self.localName!
            }
            if self.managementStatuses != nil {
                map["ManagementStatuses"] = self.managementStatuses!
            }
            if self.officeSiteId != nil {
                map["OfficeSiteId"] = self.officeSiteId!
            }
            if self.orderStatus != nil {
                map["OrderStatus"] = self.orderStatus!
            }
            if self.os != nil {
                map["Os"] = self.os!
            }
            if self.osDescription != nil {
                map["OsDescription"] = self.osDescription!
            }
            if self.osType != nil {
                map["OsType"] = self.osType!
            }
            if self.osUpdate != nil {
                map["OsUpdate"] = self.osUpdate?.toMap()
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
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
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceLevel != nil {
                map["ResourceLevel"] = self.resourceLevel!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.resourceSessionStatus != nil {
                map["ResourceSessionStatus"] = self.resourceSessionStatus!
            }
            if self.resourceStatus != nil {
                map["ResourceStatus"] = self.resourceStatus!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
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
            if self.subPayType != nil {
                map["SubPayType"] = self.subPayType!
            }
            if self.supportHibernation != nil {
                map["SupportHibernation"] = self.supportHibernation!
            }
            if self.supportedActions != nil {
                map["SupportedActions"] = self.supportedActions!
            }
            if self.themeColor != nil {
                map["ThemeColor"] = self.themeColor!
            }
            if self.userCustomName != nil {
                map["UserCustomName"] = self.userCustomName!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessType"] as? String {
                self.accessType = value
            }
            if let value = dict["AliUid"] as? Int64 {
                self.aliUid = value
            }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["AuthMode"] as? String {
                self.authMode = value
            }
            if let value = dict["CategoryId"] as? Int32 {
                self.categoryId = value
            }
            if let value = dict["CategoryType"] as? Int32 {
                self.categoryType = value
            }
            if let value = dict["CdsName"] as? String {
                self.cdsName = value
            }
            if let value = dict["CenterResourceId"] as? String {
                self.centerResourceId = value
            }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["Clients"] as? [Any?] {
                var tmp : [DescribeUserResourcesResponseBody.Resources.Clients] = []
                for v in value {
                    if v != nil {
                        var model = DescribeUserResourcesResponseBody.Resources.Clients()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.clients = tmp
            }
            if let value = dict["ConnectionProperties"] as? String {
                self.connectionProperties = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DesktopDurationList"] as? [Any?] {
                var tmp : [DescribeUserResourcesResponseBody.Resources.DesktopDurationList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeUserResourcesResponseBody.Resources.DesktopDurationList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.desktopDurationList = tmp
            }
            if let value = dict["DesktopTimers"] as? [Any?] {
                var tmp : [DescribeUserResourcesResponseBody.Resources.DesktopTimers] = []
                for v in value {
                    if v != nil {
                        var model = DescribeUserResourcesResponseBody.Resources.DesktopTimers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.desktopTimers = tmp
            }
            if let value = dict["ExpiredTime"] as? String {
                self.expiredTime = value
            }
            if let value = dict["ExternalDomainId"] as? String {
                self.externalDomainId = value
            }
            if let value = dict["ExternalUserId"] as? String {
                self.externalUserId = value
            }
            if let value = dict["FotaUpdate"] as? [String: Any?] {
                var model = DescribeUserResourcesResponseBody.Resources.FotaUpdate()
                model.fromMap(value)
                self.fotaUpdate = model
            }
            if let value = dict["GlobalStatus"] as? Bool {
                self.globalStatus = value
            }
            if let value = dict["HasUpgrade"] as? Bool {
                self.hasUpgrade = value
            }
            if let value = dict["HibernationBeta"] as? Bool {
                self.hibernationBeta = value
            }
            if let value = dict["Icon"] as? String {
                self.icon = value
            }
            if let value = dict["LastStartTime"] as? String {
                self.lastStartTime = value
            }
            if let value = dict["LocalName"] as? String {
                self.localName = value
            }
            if let value = dict["ManagementStatuses"] as? [String] {
                self.managementStatuses = value
            }
            if let value = dict["OfficeSiteId"] as? String {
                self.officeSiteId = value
            }
            if let value = dict["OrderStatus"] as? String {
                self.orderStatus = value
            }
            if let value = dict["Os"] as? String {
                self.os = value
            }
            if let value = dict["OsDescription"] as? String {
                self.osDescription = value
            }
            if let value = dict["OsType"] as? String {
                self.osType = value
            }
            if let value = dict["OsUpdate"] as? [String: Any?] {
                var model = DescribeUserResourcesResponseBody.Resources.OsUpdate()
                model.fromMap(value)
                self.osUpdate = model
            }
            if let value = dict["ProductType"] as? String {
                self.productType = value
            }
            if let value = dict["ProtocolType"] as? String {
                self.protocolType = value
            }
            if let value = dict["RealDesktopId"] as? String {
                self.realDesktopId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RegionLocation"] as? String {
                self.regionLocation = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceLevel"] as? String {
                self.resourceLevel = value
            }
            if let value = dict["ResourceName"] as? String {
                self.resourceName = value
            }
            if let value = dict["ResourceSessionStatus"] as? String {
                self.resourceSessionStatus = value
            }
            if let value = dict["ResourceStatus"] as? String {
                self.resourceStatus = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["SessionType"] as? String {
                self.sessionType = value
            }
            if let value = dict["Sessions"] as? [Any?] {
                var tmp : [DescribeUserResourcesResponseBody.Resources.Sessions] = []
                for v in value {
                    if v != nil {
                        var model = DescribeUserResourcesResponseBody.Resources.Sessions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sessions = tmp
            }
            if let value = dict["SubPayType"] as? String {
                self.subPayType = value
            }
            if let value = dict["SupportHibernation"] as? Bool {
                self.supportHibernation = value
            }
            if let value = dict["SupportedActions"] as? [String] {
                self.supportedActions = value
            }
            if let value = dict["ThemeColor"] as? String {
                self.themeColor = value
            }
            if let value = dict["UserCustomName"] as? String {
                self.userCustomName = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var queryFailedResourceTypes: [String]?

    public var rankVersion: Int64?

    public var requestId: String?

    public var resources: [DescribeUserResourcesResponseBody.Resources]?

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
        if self.queryFailedResourceTypes != nil {
            map["QueryFailedResourceTypes"] = self.queryFailedResourceTypes!
        }
        if self.rankVersion != nil {
            map["RankVersion"] = self.rankVersion!
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
        if let value = dict["QueryFailedResourceTypes"] as? [String] {
            self.queryFailedResourceTypes = value
        }
        if let value = dict["RankVersion"] as? Int64 {
            self.rankVersion = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Resources"] as? [Any?] {
            var tmp : [DescribeUserResourcesResponseBody.Resources] = []
            for v in value {
                if v != nil {
                    var model = DescribeUserResourcesResponseBody.Resources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resources = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeUserResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeUserResourcesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["OfficeSiteId"] as? String {
            self.officeSiteId = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EncryptedPassword"] as? String {
            self.encryptedPassword = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EncryptPasswordResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["OfficeSiteId"] as? String {
            self.officeSiteId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DomainId"] as? String {
                self.domainId = value
            }
            if let value = dict["ExpiredAfter"] as? String {
                self.expiredAfter = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Token"] as? String {
                self.token = value
            }
            if let value = dict["TotalSize"] as? Int64 {
                self.totalSize = value
            }
            if let value = dict["UsedSize"] as? Int64 {
                self.usedSize = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Token"] as? [String: Any?] {
            var model = GetCloudDriveServiceMountTokenResponseBody.Token()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetCloudDriveServiceMountTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetConnectionTicketRequest : Tea.TeaModel {
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
    public var accessType: String?

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

    public var tag: [GetConnectionTicketRequest.Tag]?

    public var taskId: String?

    public var ticketBlackList: [String]?

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
        if self.accessType != nil {
            map["AccessType"] = self.accessType!
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
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.ticketBlackList != nil {
            map["TicketBlackList"] = self.ticketBlackList!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessType"] as? String {
            self.accessType = value
        }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientOS"] as? String {
            self.clientOS = value
        }
        if let value = dict["ClientType"] as? String {
            self.clientType = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["CommandContent"] as? String {
            self.commandContent = value
        }
        if let value = dict["DesktopId"] as? String {
            self.desktopId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [GetConnectionTicketRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = GetConnectionTicketRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TicketBlackList"] as? [String] {
            self.ticketBlackList = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class GetConnectionTicketResponseBody : Tea.TeaModel {
    public var desktopId: String?

    public var p2PToken: String?

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
        if self.desktopId != nil {
            map["DesktopId"] = self.desktopId!
        }
        if self.p2PToken != nil {
            map["P2PToken"] = self.p2PToken!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DesktopId"] as? String {
            self.desktopId = value
        }
        if let value = dict["P2PToken"] as? String {
            self.p2PToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskCode"] as? String {
            self.taskCode = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskMessage"] as? String {
            self.taskMessage = value
        }
        if let value = dict["TaskStatus"] as? String {
            self.taskStatus = value
        }
        if let value = dict["Ticket"] as? String {
            self.ticket = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetConnectionTicketResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLoginTokenRequest : Tea.TeaModel {
    public var authenticationCode: String?

    public var availableFeatures: [String: String]?

    public var clientId: String?

    public var clientName: String?

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
        if self.availableFeatures != nil {
            map["AvailableFeatures"] = self.availableFeatures!
        }
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientName != nil {
            map["ClientName"] = self.clientName!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthenticationCode"] as? String {
            self.authenticationCode = value
        }
        if let value = dict["AvailableFeatures"] as? [String: String] {
            self.availableFeatures = value
        }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientName"] as? String {
            self.clientName = value
        }
        if let value = dict["ClientOS"] as? String {
            self.clientOS = value
        }
        if let value = dict["ClientType"] as? String {
            self.clientType = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["CurrentStage"] as? String {
            self.currentStage = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["KeepAlive"] as? Bool {
            self.keepAlive = value
        }
        if let value = dict["KeepAliveToken"] as? String {
            self.keepAliveToken = value
        }
        if let value = dict["NewPassword"] as? String {
            self.newPassword = value
        }
        if let value = dict["OfficeSiteId"] as? String {
            self.officeSiteId = value
        }
        if let value = dict["OldPassword"] as? String {
            self.oldPassword = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["TokenCode"] as? String {
            self.tokenCode = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class GetLoginTokenShrinkRequest : Tea.TeaModel {
    public var authenticationCode: String?

    public var availableFeaturesShrink: String?

    public var clientId: String?

    public var clientName: String?

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
        if self.availableFeaturesShrink != nil {
            map["AvailableFeatures"] = self.availableFeaturesShrink!
        }
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientName != nil {
            map["ClientName"] = self.clientName!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthenticationCode"] as? String {
            self.authenticationCode = value
        }
        if let value = dict["AvailableFeatures"] as? String {
            self.availableFeaturesShrink = value
        }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientName"] as? String {
            self.clientName = value
        }
        if let value = dict["ClientOS"] as? String {
            self.clientOS = value
        }
        if let value = dict["ClientType"] as? String {
            self.clientType = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["CurrentStage"] as? String {
            self.currentStage = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["KeepAlive"] as? Bool {
            self.keepAlive = value
        }
        if let value = dict["KeepAliveToken"] as? String {
            self.keepAliveToken = value
        }
        if let value = dict["NewPassword"] as? String {
            self.newPassword = value
        }
        if let value = dict["OfficeSiteId"] as? String {
            self.officeSiteId = value
        }
        if let value = dict["OldPassword"] as? String {
            self.oldPassword = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["TokenCode"] as? String {
            self.tokenCode = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TenantAlternativeChars"] as? [String] {
                self.tenantAlternativeChars = value
            }
            if let value = dict["TenantPasswordLength"] as? String {
                self.tenantPasswordLength = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["LastLockDuration"] as? Int64 {
                self.lastLockDuration = value
            }
            if let value = dict["Locked"] as? String {
                self.locked = value
            }
            if let value = dict["Phone"] as? String {
                self.phone = value
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

    public var nickName: String?

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

    public var wyId: String?

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
        if self.nickName != nil {
            map["NickName"] = self.nickName!
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
        if self.wyId != nil {
            map["WyId"] = self.wyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["Industry"] as? String {
            self.industry = value
        }
        if let value = dict["KeepAliveToken"] as? String {
            self.keepAliveToken = value
        }
        if let value = dict["Label"] as? String {
            self.label = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["NextStage"] as? String {
            self.nextStage = value
        }
        if let value = dict["NickName"] as? String {
            self.nickName = value
        }
        if let value = dict["PasswordStrategy"] as? [String: Any?] {
            var model = GetLoginTokenResponseBody.PasswordStrategy()
            model.fromMap(value)
            self.passwordStrategy = model
        }
        if let value = dict["Phone"] as? String {
            self.phone = value
        }
        if let value = dict["Props"] as? [String: String] {
            self.props = value
        }
        if let value = dict["QrCodePng"] as? String {
            self.qrCodePng = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RiskVerifyInfo"] as? [String: Any?] {
            var model = GetLoginTokenResponseBody.RiskVerifyInfo()
            model.fromMap(value)
            self.riskVerifyInfo = model
        }
        if let value = dict["Secret"] as? String {
            self.secret = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["TenantId"] as? Int64 {
            self.tenantId = value
        }
        if let value = dict["WindowDisplayMode"] as? String {
            self.windowDisplayMode = value
        }
        if let value = dict["WyId"] as? String {
            self.wyId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetLoginTokenResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["OfficeSiteId"] as? String {
            self.officeSiteId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsKeepAlive"] as? Bool {
            self.isKeepAlive = value
        }
        if let value = dict["OfficeSiteId"] as? String {
            self.officeSiteId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = IsKeepAliveResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliUid"] as? Int64 {
            self.aliUid = value
        }
        if let value = dict["DesktopId"] as? String {
            self.desktopId = value
        }
        if let value = dict["EcsInstanceId"] as? String {
            self.ecsInstanceId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Config"] as? String {
                self.config = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryEdsAgentReportConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryEdsAgentReportConfigResponseBody()
            model.fromMap(value)
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

    public var osUpdate: Bool?

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
        if self.osUpdate != nil {
            map["OsUpdate"] = self.osUpdate!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientOS"] as? String {
            self.clientOS = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["DesktopId"] as? [String] {
            self.desktopId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["OsUpdate"] as? Bool {
            self.osUpdate = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["SessionToken"] as? String {
            self.sessionToken = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RebootDesktopsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["OfficeSiteId"] as? String {
            self.officeSiteId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RefreshLoginTokenResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliUid"] as? Int64 {
            self.aliUid = value
        }
        if let value = dict["DesktopId"] as? String {
            self.desktopId = value
        }
        if let value = dict["EcsInstanceId"] as? String {
            self.ecsInstanceId = value
        }
        if let value = dict["EdsAgentInfo"] as? String {
            self.edsAgentInfo = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReportEdsAgentInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionChangeTime"] as? Int64 {
            self.sessionChangeTime = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["SessionStatus"] as? String {
            self.sessionStatus = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReportSessionStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["OfficeSiteId"] as? String {
            self.officeSiteId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["phone"] as? String {
            self.phone = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ResetPasswordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetSnapshotRequest : Tea.TeaModel {
    public var clientId: String?

    public var desktopId: String?

    public var loginToken: String?

    public var regionId: String?

    public var sessionId: String?

    public var snapshotId: String?

    public var stopDesktop: Bool?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.snapshotId != nil {
            map["SnapshotId"] = self.snapshotId!
        }
        if self.stopDesktop != nil {
            map["StopDesktop"] = self.stopDesktop!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["DesktopId"] as? String {
            self.desktopId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["SnapshotId"] as? String {
            self.snapshotId = value
        }
        if let value = dict["StopDesktop"] as? Bool {
            self.stopDesktop = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ResetSnapshotResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientOS"] as? String {
            self.clientOS = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["OfficeSiteId"] as? String {
            self.officeSiteId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["TokenCode"] as? String {
            self.tokenCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SendTokenCodeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EncryptedFingerPrintTemplate"] as? String {
            self.encryptedFingerPrintTemplate = value
        }
        if let value = dict["EncryptedKey"] as? String {
            self.encryptedKey = value
        }
        if let value = dict["FingerPrintTemplate"] as? String {
            self.fingerPrintTemplate = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EncryptedPassword"] as? String {
            self.encryptedPassword = value
        }
        if let value = dict["Index"] as? Int32 {
            self.index = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetFingerPrintTemplateResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Index"] as? Int32 {
            self.index = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetFingerPrintTemplateDescriptionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientOS"] as? String {
            self.clientOS = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["DesktopId"] as? [String] {
            self.desktopId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartDesktopsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientOS"] as? String {
            self.clientOS = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["DesktopId"] as? String {
            self.desktopId = value
        }
        if let value = dict["FilePath"] as? String {
            self.filePath = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartRecordContentResponseBody()
            model.fromMap(value)
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

    public var osUpdate: Bool?

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
        if self.osUpdate != nil {
            map["OsUpdate"] = self.osUpdate!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientOS"] as? String {
            self.clientOS = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["DesktopId"] as? [String] {
            self.desktopId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["OsUpdate"] as? Bool {
            self.osUpdate = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["SessionToken"] as? String {
            self.sessionToken = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopDesktopsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientOS"] as? String {
            self.clientOS = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["DesktopId"] as? String {
            self.desktopId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopRecordContentResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientType"] as? String {
            self.clientType = value
        }
        if let value = dict["Force"] as? Bool {
            self.force = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["UserDesktopId"] as? String {
            self.userDesktopId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UnbindUserDesktopResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["Credential"] as? String {
            self.credential = value
        }
        if let value = dict["CredentialType"] as? String {
            self.credentialType = value
        }
        if let value = dict["EncryptedKey"] as? String {
            self.encryptedKey = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["OfficeSiteId"] as? String {
            self.officeSiteId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = VerifyCredentialResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
