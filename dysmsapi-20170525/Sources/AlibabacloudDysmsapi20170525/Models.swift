import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddExtCodeSignRequest : Tea.TeaModel {
    public var extCode: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var signName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extCode != nil {
            map["ExtCode"] = self.extCode!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExtCode"] as? String {
            self.extCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
    }
}

public class AddExtCodeSignResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
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

public class AddExtCodeSignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddExtCodeSignResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddExtCodeSignResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddShortUrlRequest : Tea.TeaModel {
    public var effectiveDays: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var shortUrlName: String?

    public var sourceUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.effectiveDays != nil {
            map["EffectiveDays"] = self.effectiveDays!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.shortUrlName != nil {
            map["ShortUrlName"] = self.shortUrlName!
        }
        if self.sourceUrl != nil {
            map["SourceUrl"] = self.sourceUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EffectiveDays"] as? String {
            self.effectiveDays = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ShortUrlName"] as? String {
            self.shortUrlName = value
        }
        if let value = dict["SourceUrl"] as? String {
            self.sourceUrl = value
        }
    }
}

public class AddShortUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var expireDate: String?

        public var shortUrl: String?

        public var sourceUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expireDate != nil {
                map["ExpireDate"] = self.expireDate!
            }
            if self.shortUrl != nil {
                map["ShortUrl"] = self.shortUrl!
            }
            if self.sourceUrl != nil {
                map["SourceUrl"] = self.sourceUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExpireDate"] as? String {
                self.expireDate = value
            }
            if let value = dict["ShortUrl"] as? String {
                self.shortUrl = value
            }
            if let value = dict["SourceUrl"] as? String {
                self.sourceUrl = value
            }
        }
    }
    public var code: String?

    public var data: AddShortUrlResponseBody.Data?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = AddShortUrlResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AddShortUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddShortUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddShortUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddSmsSignRequest : Tea.TeaModel {
    public class SignFileList : Tea.TeaModel {
        public var fileContents: String?

        public var fileSuffix: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileContents != nil {
                map["FileContents"] = self.fileContents!
            }
            if self.fileSuffix != nil {
                map["FileSuffix"] = self.fileSuffix!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileContents"] as? String {
                self.fileContents = value
            }
            if let value = dict["FileSuffix"] as? String {
                self.fileSuffix = value
            }
        }
    }
    public var ownerId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var signFileList: [AddSmsSignRequest.SignFileList]?

    public var signName: String?

    public var signSource: Int32?

    public var signType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.signFileList != nil {
            var tmp : [Any] = []
            for k in self.signFileList! {
                tmp.append(k.toMap())
            }
            map["SignFileList"] = tmp
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        if self.signSource != nil {
            map["SignSource"] = self.signSource!
        }
        if self.signType != nil {
            map["SignType"] = self.signType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SignFileList"] as? [Any?] {
            var tmp : [AddSmsSignRequest.SignFileList] = []
            for v in value {
                if v != nil {
                    var model = AddSmsSignRequest.SignFileList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.signFileList = tmp
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
        if let value = dict["SignSource"] as? Int32 {
            self.signSource = value
        }
        if let value = dict["SignType"] as? Int32 {
            self.signType = value
        }
    }
}

public class AddSmsSignResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var signName: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
    }
}

public class AddSmsSignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddSmsSignResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddSmsSignResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddSmsTemplateRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var templateContent: String?

    public var templateName: String?

    public var templateType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.templateContent != nil {
            map["TemplateContent"] = self.templateContent!
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
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TemplateContent"] as? String {
            self.templateContent = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateType"] as? Int32 {
            self.templateType = value
        }
    }
}

public class AddSmsTemplateResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var templateCode: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
    }
}

public class AddSmsTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddSmsTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddSmsTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeSignatureQualificationRequest : Tea.TeaModel {
    public var authorizationLetterId: Int64?

    public var ownerId: Int64?

    public var qualificationId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var signatureName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationLetterId != nil {
            map["AuthorizationLetterId"] = self.authorizationLetterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.qualificationId != nil {
            map["QualificationId"] = self.qualificationId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.signatureName != nil {
            map["SignatureName"] = self.signatureName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthorizationLetterId"] as? Int64 {
            self.authorizationLetterId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["QualificationId"] as? Int64 {
            self.qualificationId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SignatureName"] as? String {
            self.signatureName = value
        }
    }
}

public class ChangeSignatureQualificationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var data: [String: Any]?

        public var errCode: String?

        public var errMessage: String?

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
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.errCode != nil {
                map["ErrCode"] = self.errCode!
            }
            if self.errMessage != nil {
                map["ErrMessage"] = self.errMessage!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [String: Any] {
                self.data = value
            }
            if let value = dict["ErrCode"] as? String {
                self.errCode = value
            }
            if let value = dict["ErrMessage"] as? String {
                self.errMessage = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: ChangeSignatureQualificationResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ChangeSignatureQualificationResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class ChangeSignatureQualificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeSignatureQualificationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ChangeSignatureQualificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckMobilesCardSupportRequest : Tea.TeaModel {
    public var mobiles: [[String: Any]]?

    public var templateCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mobiles != nil {
            map["Mobiles"] = self.mobiles!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Mobiles"] as? [[String: Any]] {
            self.mobiles = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
    }
}

public class CheckMobilesCardSupportResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class QueryResult : Tea.TeaModel {
            public var mobile: String?

            public var support: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mobile != nil {
                    map["mobile"] = self.mobile!
                }
                if self.support != nil {
                    map["support"] = self.support!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["mobile"] as? String {
                    self.mobile = value
                }
                if let value = dict["support"] as? Bool {
                    self.support = value
                }
            }
        }
        public var queryResult: [CheckMobilesCardSupportResponseBody.Data.QueryResult]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.queryResult != nil {
                var tmp : [Any] = []
                for k in self.queryResult! {
                    tmp.append(k.toMap())
                }
                map["queryResult"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["queryResult"] as? [Any?] {
                var tmp : [CheckMobilesCardSupportResponseBody.Data.QueryResult] = []
                for v in value {
                    if v != nil {
                        var model = CheckMobilesCardSupportResponseBody.Data.QueryResult()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.queryResult = tmp
            }
        }
    }
    public var code: String?

    public var data: CheckMobilesCardSupportResponseBody.Data?

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
            var model = CheckMobilesCardSupportResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CheckMobilesCardSupportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckMobilesCardSupportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckMobilesCardSupportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConversionDataIntlRequest : Tea.TeaModel {
    public var conversionRate: String?

    public var ownerId: Int64?

    public var reportTime: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conversionRate != nil {
            map["ConversionRate"] = self.conversionRate!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.reportTime != nil {
            map["ReportTime"] = self.reportTime!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConversionRate"] as? String {
            self.conversionRate = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ReportTime"] as? Int64 {
            self.reportTime = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ConversionDataIntlResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ConversionDataIntlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConversionDataIntlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ConversionDataIntlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCardSmsTemplateRequest : Tea.TeaModel {
    public var factorys: String?

    public var memo: String?

    public var template: [String: Any]?

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
        if self.factorys != nil {
            map["Factorys"] = self.factorys!
        }
        if self.memo != nil {
            map["Memo"] = self.memo!
        }
        if self.template != nil {
            map["Template"] = self.template!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Factorys"] as? String {
            self.factorys = value
        }
        if let value = dict["Memo"] as? String {
            self.memo = value
        }
        if let value = dict["Template"] as? [String: Any] {
            self.template = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
    }
}

public class CreateCardSmsTemplateShrinkRequest : Tea.TeaModel {
    public var factorys: String?

    public var memo: String?

    public var templateShrink: String?

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
        if self.factorys != nil {
            map["Factorys"] = self.factorys!
        }
        if self.memo != nil {
            map["Memo"] = self.memo!
        }
        if self.templateShrink != nil {
            map["Template"] = self.templateShrink!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Factorys"] as? String {
            self.factorys = value
        }
        if let value = dict["Memo"] as? String {
            self.memo = value
        }
        if let value = dict["Template"] as? String {
            self.templateShrink = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
    }
}

public class CreateCardSmsTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var templateCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.templateCode != nil {
                map["TemplateCode"] = self.templateCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TemplateCode"] as? String {
                self.templateCode = value
            }
        }
    }
    public var code: String?

    public var data: CreateCardSmsTemplateResponseBody.Data?

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
            var model = CreateCardSmsTemplateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateCardSmsTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCardSmsTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateCardSmsTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSmartShortUrlRequest : Tea.TeaModel {
    public var outId: String?

    public var ownerId: Int64?

    public var phoneNumbers: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sourceUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumbers != nil {
            map["PhoneNumbers"] = self.phoneNumbers!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sourceUrl != nil {
            map["SourceUrl"] = self.sourceUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumbers"] as? String {
            self.phoneNumbers = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SourceUrl"] as? String {
            self.sourceUrl = value
        }
    }
}

public class CreateSmartShortUrlResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var domain: String?

        public var expiration: Int64?

        public var phoneNumber: String?

        public var shortName: String?

        public var shortUrl: String?

        public override init() {
            super.init()
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
            if self.expiration != nil {
                map["Expiration"] = self.expiration!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.shortName != nil {
                map["ShortName"] = self.shortName!
            }
            if self.shortUrl != nil {
                map["ShortUrl"] = self.shortUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["Expiration"] as? Int64 {
                self.expiration = value
            }
            if let value = dict["PhoneNumber"] as? String {
                self.phoneNumber = value
            }
            if let value = dict["ShortName"] as? String {
                self.shortName = value
            }
            if let value = dict["ShortUrl"] as? String {
                self.shortUrl = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var model: [CreateSmartShortUrlResponseBody.Model]?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            var tmp : [Any] = []
            for k in self.model! {
                tmp.append(k.toMap())
            }
            map["Model"] = tmp
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
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [Any?] {
            var tmp : [CreateSmartShortUrlResponseBody.Model] = []
            for v in value {
                if v != nil {
                    var model = CreateSmartShortUrlResponseBody.Model()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.model = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateSmartShortUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSmartShortUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSmartShortUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSmsAppIcpRecordRequest : Tea.TeaModel {
    public var appApprovalDate: String?

    public var appIcpLicenseNumber: String?

    public var appIcpRecordPic: String?

    public var appPrincipalUnitName: String?

    public var appServiceName: String?

    public var domain: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appApprovalDate != nil {
            map["AppApprovalDate"] = self.appApprovalDate!
        }
        if self.appIcpLicenseNumber != nil {
            map["AppIcpLicenseNumber"] = self.appIcpLicenseNumber!
        }
        if self.appIcpRecordPic != nil {
            map["AppIcpRecordPic"] = self.appIcpRecordPic!
        }
        if self.appPrincipalUnitName != nil {
            map["AppPrincipalUnitName"] = self.appPrincipalUnitName!
        }
        if self.appServiceName != nil {
            map["AppServiceName"] = self.appServiceName!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppApprovalDate"] as? String {
            self.appApprovalDate = value
        }
        if let value = dict["AppIcpLicenseNumber"] as? String {
            self.appIcpLicenseNumber = value
        }
        if let value = dict["AppIcpRecordPic"] as? String {
            self.appIcpRecordPic = value
        }
        if let value = dict["AppPrincipalUnitName"] as? String {
            self.appPrincipalUnitName = value
        }
        if let value = dict["AppServiceName"] as? String {
            self.appServiceName = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CreateSmsAppIcpRecordResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
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

public class CreateSmsAppIcpRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSmsAppIcpRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSmsAppIcpRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSmsAuthorizationLetterRequest : Tea.TeaModel {
    public var authorization: String?

    public var authorizationLetterExpDate: String?

    public var authorizationLetterName: String?

    public var authorizationLetterPic: String?

    public var organizationCode: String?

    public var ownerId: Int64?

    public var proxyAuthorization: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var signList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        if self.authorizationLetterExpDate != nil {
            map["AuthorizationLetterExpDate"] = self.authorizationLetterExpDate!
        }
        if self.authorizationLetterName != nil {
            map["AuthorizationLetterName"] = self.authorizationLetterName!
        }
        if self.authorizationLetterPic != nil {
            map["AuthorizationLetterPic"] = self.authorizationLetterPic!
        }
        if self.organizationCode != nil {
            map["OrganizationCode"] = self.organizationCode!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.proxyAuthorization != nil {
            map["ProxyAuthorization"] = self.proxyAuthorization!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.signList != nil {
            map["SignList"] = self.signList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Authorization"] as? String {
            self.authorization = value
        }
        if let value = dict["AuthorizationLetterExpDate"] as? String {
            self.authorizationLetterExpDate = value
        }
        if let value = dict["AuthorizationLetterName"] as? String {
            self.authorizationLetterName = value
        }
        if let value = dict["AuthorizationLetterPic"] as? String {
            self.authorizationLetterPic = value
        }
        if let value = dict["OrganizationCode"] as? String {
            self.organizationCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ProxyAuthorization"] as? String {
            self.proxyAuthorization = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SignList"] as? [String] {
            self.signList = value
        }
    }
}

public class CreateSmsAuthorizationLetterShrinkRequest : Tea.TeaModel {
    public var authorization: String?

    public var authorizationLetterExpDate: String?

    public var authorizationLetterName: String?

    public var authorizationLetterPic: String?

    public var organizationCode: String?

    public var ownerId: Int64?

    public var proxyAuthorization: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var signListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        if self.authorizationLetterExpDate != nil {
            map["AuthorizationLetterExpDate"] = self.authorizationLetterExpDate!
        }
        if self.authorizationLetterName != nil {
            map["AuthorizationLetterName"] = self.authorizationLetterName!
        }
        if self.authorizationLetterPic != nil {
            map["AuthorizationLetterPic"] = self.authorizationLetterPic!
        }
        if self.organizationCode != nil {
            map["OrganizationCode"] = self.organizationCode!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.proxyAuthorization != nil {
            map["ProxyAuthorization"] = self.proxyAuthorization!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.signListShrink != nil {
            map["SignList"] = self.signListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Authorization"] as? String {
            self.authorization = value
        }
        if let value = dict["AuthorizationLetterExpDate"] as? String {
            self.authorizationLetterExpDate = value
        }
        if let value = dict["AuthorizationLetterName"] as? String {
            self.authorizationLetterName = value
        }
        if let value = dict["AuthorizationLetterPic"] as? String {
            self.authorizationLetterPic = value
        }
        if let value = dict["OrganizationCode"] as? String {
            self.organizationCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ProxyAuthorization"] as? String {
            self.proxyAuthorization = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SignList"] as? String {
            self.signListShrink = value
        }
    }
}

public class CreateSmsAuthorizationLetterResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
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

public class CreateSmsAuthorizationLetterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSmsAuthorizationLetterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSmsAuthorizationLetterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSmsSignRequest : Tea.TeaModel {
    public var appIcpRecordId: Int64?

    public var applySceneContent: String?

    public var authorizationLetterId: Int64?

    public var moreData: [String]?

    public var ownerId: Int64?

    public var qualificationId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var signName: String?

    public var signSource: Int32?

    public var signType: Int32?

    public var thirdParty: Bool?

    public var trademarkId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appIcpRecordId != nil {
            map["AppIcpRecordId"] = self.appIcpRecordId!
        }
        if self.applySceneContent != nil {
            map["ApplySceneContent"] = self.applySceneContent!
        }
        if self.authorizationLetterId != nil {
            map["AuthorizationLetterId"] = self.authorizationLetterId!
        }
        if self.moreData != nil {
            map["MoreData"] = self.moreData!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.qualificationId != nil {
            map["QualificationId"] = self.qualificationId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        if self.signSource != nil {
            map["SignSource"] = self.signSource!
        }
        if self.signType != nil {
            map["SignType"] = self.signType!
        }
        if self.thirdParty != nil {
            map["ThirdParty"] = self.thirdParty!
        }
        if self.trademarkId != nil {
            map["TrademarkId"] = self.trademarkId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppIcpRecordId"] as? Int64 {
            self.appIcpRecordId = value
        }
        if let value = dict["ApplySceneContent"] as? String {
            self.applySceneContent = value
        }
        if let value = dict["AuthorizationLetterId"] as? Int64 {
            self.authorizationLetterId = value
        }
        if let value = dict["MoreData"] as? [String] {
            self.moreData = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["QualificationId"] as? Int64 {
            self.qualificationId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
        if let value = dict["SignSource"] as? Int32 {
            self.signSource = value
        }
        if let value = dict["SignType"] as? Int32 {
            self.signType = value
        }
        if let value = dict["ThirdParty"] as? Bool {
            self.thirdParty = value
        }
        if let value = dict["TrademarkId"] as? Int64 {
            self.trademarkId = value
        }
    }
}

public class CreateSmsSignShrinkRequest : Tea.TeaModel {
    public var appIcpRecordId: Int64?

    public var applySceneContent: String?

    public var authorizationLetterId: Int64?

    public var moreDataShrink: String?

    public var ownerId: Int64?

    public var qualificationId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var signName: String?

    public var signSource: Int32?

    public var signType: Int32?

    public var thirdParty: Bool?

    public var trademarkId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appIcpRecordId != nil {
            map["AppIcpRecordId"] = self.appIcpRecordId!
        }
        if self.applySceneContent != nil {
            map["ApplySceneContent"] = self.applySceneContent!
        }
        if self.authorizationLetterId != nil {
            map["AuthorizationLetterId"] = self.authorizationLetterId!
        }
        if self.moreDataShrink != nil {
            map["MoreData"] = self.moreDataShrink!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.qualificationId != nil {
            map["QualificationId"] = self.qualificationId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        if self.signSource != nil {
            map["SignSource"] = self.signSource!
        }
        if self.signType != nil {
            map["SignType"] = self.signType!
        }
        if self.thirdParty != nil {
            map["ThirdParty"] = self.thirdParty!
        }
        if self.trademarkId != nil {
            map["TrademarkId"] = self.trademarkId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppIcpRecordId"] as? Int64 {
            self.appIcpRecordId = value
        }
        if let value = dict["ApplySceneContent"] as? String {
            self.applySceneContent = value
        }
        if let value = dict["AuthorizationLetterId"] as? Int64 {
            self.authorizationLetterId = value
        }
        if let value = dict["MoreData"] as? String {
            self.moreDataShrink = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["QualificationId"] as? Int64 {
            self.qualificationId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
        if let value = dict["SignSource"] as? Int32 {
            self.signSource = value
        }
        if let value = dict["SignType"] as? Int32 {
            self.signType = value
        }
        if let value = dict["ThirdParty"] as? Bool {
            self.thirdParty = value
        }
        if let value = dict["TrademarkId"] as? Int64 {
            self.trademarkId = value
        }
    }
}

public class CreateSmsSignResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var orderId: String?

    public var requestId: String?

    public var signName: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
    }
}

public class CreateSmsSignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSmsSignResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSmsSignResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSmsTemplateRequest : Tea.TeaModel {
    public var applySceneContent: String?

    public var intlType: Int32?

    public var moreData: [String]?

    public var ownerId: Int64?

    public var relatedSignName: String?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var templateContent: String?

    public var templateName: String?

    public var templateRule: String?

    public var templateType: Int32?

    public var trafficDriving: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applySceneContent != nil {
            map["ApplySceneContent"] = self.applySceneContent!
        }
        if self.intlType != nil {
            map["IntlType"] = self.intlType!
        }
        if self.moreData != nil {
            map["MoreData"] = self.moreData!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.relatedSignName != nil {
            map["RelatedSignName"] = self.relatedSignName!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.templateContent != nil {
            map["TemplateContent"] = self.templateContent!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateRule != nil {
            map["TemplateRule"] = self.templateRule!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        if self.trafficDriving != nil {
            map["TrafficDriving"] = self.trafficDriving!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplySceneContent"] as? String {
            self.applySceneContent = value
        }
        if let value = dict["IntlType"] as? Int32 {
            self.intlType = value
        }
        if let value = dict["MoreData"] as? [String] {
            self.moreData = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RelatedSignName"] as? String {
            self.relatedSignName = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TemplateContent"] as? String {
            self.templateContent = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateRule"] as? String {
            self.templateRule = value
        }
        if let value = dict["TemplateType"] as? Int32 {
            self.templateType = value
        }
        if let value = dict["TrafficDriving"] as? String {
            self.trafficDriving = value
        }
    }
}

public class CreateSmsTemplateShrinkRequest : Tea.TeaModel {
    public var applySceneContent: String?

    public var intlType: Int32?

    public var moreDataShrink: String?

    public var ownerId: Int64?

    public var relatedSignName: String?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var templateContent: String?

    public var templateName: String?

    public var templateRule: String?

    public var templateType: Int32?

    public var trafficDriving: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applySceneContent != nil {
            map["ApplySceneContent"] = self.applySceneContent!
        }
        if self.intlType != nil {
            map["IntlType"] = self.intlType!
        }
        if self.moreDataShrink != nil {
            map["MoreData"] = self.moreDataShrink!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.relatedSignName != nil {
            map["RelatedSignName"] = self.relatedSignName!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.templateContent != nil {
            map["TemplateContent"] = self.templateContent!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateRule != nil {
            map["TemplateRule"] = self.templateRule!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        if self.trafficDriving != nil {
            map["TrafficDriving"] = self.trafficDriving!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplySceneContent"] as? String {
            self.applySceneContent = value
        }
        if let value = dict["IntlType"] as? Int32 {
            self.intlType = value
        }
        if let value = dict["MoreData"] as? String {
            self.moreDataShrink = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RelatedSignName"] as? String {
            self.relatedSignName = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TemplateContent"] as? String {
            self.templateContent = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateRule"] as? String {
            self.templateRule = value
        }
        if let value = dict["TemplateType"] as? Int32 {
            self.templateType = value
        }
        if let value = dict["TrafficDriving"] as? String {
            self.trafficDriving = value
        }
    }
}

public class CreateSmsTemplateResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var orderId: String?

    public var requestId: String?

    public var templateCode: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
    }
}

public class CreateSmsTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSmsTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSmsTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSmsTrademarkRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var trademarkApplicantName: String?

    public var trademarkEffExpDate: String?

    public var trademarkName: String?

    public var trademarkPic: String?

    public var trademarkRegistrationNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.trademarkApplicantName != nil {
            map["TrademarkApplicantName"] = self.trademarkApplicantName!
        }
        if self.trademarkEffExpDate != nil {
            map["TrademarkEffExpDate"] = self.trademarkEffExpDate!
        }
        if self.trademarkName != nil {
            map["TrademarkName"] = self.trademarkName!
        }
        if self.trademarkPic != nil {
            map["TrademarkPic"] = self.trademarkPic!
        }
        if self.trademarkRegistrationNumber != nil {
            map["TrademarkRegistrationNumber"] = self.trademarkRegistrationNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TrademarkApplicantName"] as? String {
            self.trademarkApplicantName = value
        }
        if let value = dict["TrademarkEffExpDate"] as? String {
            self.trademarkEffExpDate = value
        }
        if let value = dict["TrademarkName"] as? String {
            self.trademarkName = value
        }
        if let value = dict["TrademarkPic"] as? String {
            self.trademarkPic = value
        }
        if let value = dict["TrademarkRegistrationNumber"] as? String {
            self.trademarkRegistrationNumber = value
        }
    }
}

public class CreateSmsTrademarkResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
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

public class CreateSmsTrademarkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSmsTrademarkResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSmsTrademarkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteExtCodeSignRequest : Tea.TeaModel {
    public var extCode: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var signName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extCode != nil {
            map["ExtCode"] = self.extCode!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExtCode"] as? String {
            self.extCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
    }
}

public class DeleteExtCodeSignResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
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

public class DeleteExtCodeSignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteExtCodeSignResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteExtCodeSignResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteShortUrlRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sourceUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sourceUrl != nil {
            map["SourceUrl"] = self.sourceUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SourceUrl"] as? String {
            self.sourceUrl = value
        }
    }
}

public class DeleteShortUrlResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteShortUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteShortUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteShortUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSmsQualificationRequest : Tea.TeaModel {
    public var orderId: Int64?

    public var ownerId: Int64?

    public var qualificationGroupId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.qualificationGroupId != nil {
            map["QualificationGroupId"] = self.qualificationGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["QualificationGroupId"] as? Int64 {
            self.qualificationGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DeleteSmsQualificationResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
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

public class DeleteSmsQualificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSmsQualificationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteSmsQualificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSmsSignRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var signName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
    }
}

public class DeleteSmsSignResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var signName: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
    }
}

public class DeleteSmsSignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSmsSignResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteSmsSignResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSmsTemplateRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var templateCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
    }
}

public class DeleteSmsTemplateResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var templateCode: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
    }
}

public class DeleteSmsTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSmsTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteSmsTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCardSmsDetailsRequest : Tea.TeaModel {
    public var bizCardId: String?

    public var bizDigitId: String?

    public var bizSmsId: String?

    public var currentPage: Int64?

    public var ownerId: Int64?

    public var pageSize: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sendDate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizCardId != nil {
            map["BizCardId"] = self.bizCardId!
        }
        if self.bizDigitId != nil {
            map["BizDigitId"] = self.bizDigitId!
        }
        if self.bizSmsId != nil {
            map["BizSmsId"] = self.bizSmsId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sendDate != nil {
            map["SendDate"] = self.sendDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCardId"] as? String {
            self.bizCardId = value
        }
        if let value = dict["BizDigitId"] as? String {
            self.bizDigitId = value
        }
        if let value = dict["BizSmsId"] as? String {
            self.bizSmsId = value
        }
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SendDate"] as? String {
            self.sendDate = value
        }
    }
}

public class GetCardSmsDetailsResponseBody : Tea.TeaModel {
    public class CardSendDetailDTO : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public var errCode: String?

            public var outId: String?

            public var phoneNumber: String?

            public var receiveDate: String?

            public var receiveType: String?

            public var renderDate: String?

            public var renderStatus: Int64?

            public var sendDate: String?

            public var sendStatus: Int64?

            public var smsContent: String?

            public var templateCode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.errCode != nil {
                    map["ErrCode"] = self.errCode!
                }
                if self.outId != nil {
                    map["OutId"] = self.outId!
                }
                if self.phoneNumber != nil {
                    map["PhoneNumber"] = self.phoneNumber!
                }
                if self.receiveDate != nil {
                    map["ReceiveDate"] = self.receiveDate!
                }
                if self.receiveType != nil {
                    map["ReceiveType"] = self.receiveType!
                }
                if self.renderDate != nil {
                    map["RenderDate"] = self.renderDate!
                }
                if self.renderStatus != nil {
                    map["RenderStatus"] = self.renderStatus!
                }
                if self.sendDate != nil {
                    map["SendDate"] = self.sendDate!
                }
                if self.sendStatus != nil {
                    map["SendStatus"] = self.sendStatus!
                }
                if self.smsContent != nil {
                    map["SmsContent"] = self.smsContent!
                }
                if self.templateCode != nil {
                    map["TemplateCode"] = self.templateCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ErrCode"] as? String {
                    self.errCode = value
                }
                if let value = dict["OutId"] as? String {
                    self.outId = value
                }
                if let value = dict["PhoneNumber"] as? String {
                    self.phoneNumber = value
                }
                if let value = dict["ReceiveDate"] as? String {
                    self.receiveDate = value
                }
                if let value = dict["ReceiveType"] as? String {
                    self.receiveType = value
                }
                if let value = dict["RenderDate"] as? String {
                    self.renderDate = value
                }
                if let value = dict["RenderStatus"] as? Int64 {
                    self.renderStatus = value
                }
                if let value = dict["SendDate"] as? String {
                    self.sendDate = value
                }
                if let value = dict["SendStatus"] as? Int64 {
                    self.sendStatus = value
                }
                if let value = dict["SmsContent"] as? String {
                    self.smsContent = value
                }
                if let value = dict["TemplateCode"] as? String {
                    self.templateCode = value
                }
            }
        }
        public var currentPage: Int64?

        public var pageSize: Int64?

        public var records: [GetCardSmsDetailsResponseBody.CardSendDetailDTO.Records]?

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
            if self.currentPage != nil {
                map["CurrentPage"] = self.currentPage!
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
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentPage"] as? Int64 {
                self.currentPage = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["Records"] as? [Any?] {
                var tmp : [GetCardSmsDetailsResponseBody.CardSendDetailDTO.Records] = []
                for v in value {
                    if v != nil {
                        var model = GetCardSmsDetailsResponseBody.CardSendDetailDTO.Records()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.records = tmp
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var cardSendDetailDTO: GetCardSmsDetailsResponseBody.CardSendDetailDTO?

    public var code: String?

    public var message: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.cardSendDetailDTO?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.cardSendDetailDTO != nil {
            map["CardSendDetailDTO"] = self.cardSendDetailDTO?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["CardSendDetailDTO"] as? [String: Any?] {
            var model = GetCardSmsDetailsResponseBody.CardSendDetailDTO()
            model.fromMap(value)
            self.cardSendDetailDTO = model
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetCardSmsDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCardSmsDetailsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetCardSmsDetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCardSmsLinkRequest : Tea.TeaModel {
    public var cardCodeType: Int32?

    public var cardLinkType: Int32?

    public var cardTemplateCode: String?

    public var cardTemplateParamJson: String?

    public var customShortCodeJson: String?

    public var domain: String?

    public var outId: String?

    public var phoneNumberJson: String?

    public var signNameJson: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cardCodeType != nil {
            map["CardCodeType"] = self.cardCodeType!
        }
        if self.cardLinkType != nil {
            map["CardLinkType"] = self.cardLinkType!
        }
        if self.cardTemplateCode != nil {
            map["CardTemplateCode"] = self.cardTemplateCode!
        }
        if self.cardTemplateParamJson != nil {
            map["CardTemplateParamJson"] = self.cardTemplateParamJson!
        }
        if self.customShortCodeJson != nil {
            map["CustomShortCodeJson"] = self.customShortCodeJson!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.phoneNumberJson != nil {
            map["PhoneNumberJson"] = self.phoneNumberJson!
        }
        if self.signNameJson != nil {
            map["SignNameJson"] = self.signNameJson!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CardCodeType"] as? Int32 {
            self.cardCodeType = value
        }
        if let value = dict["CardLinkType"] as? Int32 {
            self.cardLinkType = value
        }
        if let value = dict["CardTemplateCode"] as? String {
            self.cardTemplateCode = value
        }
        if let value = dict["CardTemplateParamJson"] as? String {
            self.cardTemplateParamJson = value
        }
        if let value = dict["CustomShortCodeJson"] as? String {
            self.customShortCodeJson = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["PhoneNumberJson"] as? String {
            self.phoneNumberJson = value
        }
        if let value = dict["SignNameJson"] as? String {
            self.signNameJson = value
        }
    }
}

public class GetCardSmsLinkResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cardPhoneNumbers: String?

        public var cardSignNames: String?

        public var cardSmsLinks: String?

        public var cardTmpState: Int32?

        public var notMediaMobiles: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cardPhoneNumbers != nil {
                map["CardPhoneNumbers"] = self.cardPhoneNumbers!
            }
            if self.cardSignNames != nil {
                map["CardSignNames"] = self.cardSignNames!
            }
            if self.cardSmsLinks != nil {
                map["CardSmsLinks"] = self.cardSmsLinks!
            }
            if self.cardTmpState != nil {
                map["CardTmpState"] = self.cardTmpState!
            }
            if self.notMediaMobiles != nil {
                map["NotMediaMobiles"] = self.notMediaMobiles!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CardPhoneNumbers"] as? String {
                self.cardPhoneNumbers = value
            }
            if let value = dict["CardSignNames"] as? String {
                self.cardSignNames = value
            }
            if let value = dict["CardSmsLinks"] as? String {
                self.cardSmsLinks = value
            }
            if let value = dict["CardTmpState"] as? Int32 {
                self.cardTmpState = value
            }
            if let value = dict["NotMediaMobiles"] as? String {
                self.notMediaMobiles = value
            }
        }
    }
    public var code: String?

    public var data: GetCardSmsLinkResponseBody.Data?

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
            var model = GetCardSmsLinkResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetCardSmsLinkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCardSmsLinkResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetCardSmsLinkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMediaResourceIdRequest : Tea.TeaModel {
    public var extendInfo: String?

    public var fileSize: Int64?

    public var memo: String?

    public var ossKey: String?

    public var resourceType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extendInfo != nil {
            map["ExtendInfo"] = self.extendInfo!
        }
        if self.fileSize != nil {
            map["FileSize"] = self.fileSize!
        }
        if self.memo != nil {
            map["Memo"] = self.memo!
        }
        if self.ossKey != nil {
            map["OssKey"] = self.ossKey!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExtendInfo"] as? String {
            self.extendInfo = value
        }
        if let value = dict["FileSize"] as? Int64 {
            self.fileSize = value
        }
        if let value = dict["Memo"] as? String {
            self.memo = value
        }
        if let value = dict["OssKey"] as? String {
            self.ossKey = value
        }
        if let value = dict["ResourceType"] as? Int32 {
            self.resourceType = value
        }
    }
}

public class GetMediaResourceIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var resUrlDownload: String?

        public var resourceId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resUrlDownload != nil {
                map["ResUrlDownload"] = self.resUrlDownload!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResUrlDownload"] as? String {
                self.resUrlDownload = value
            }
            if let value = dict["ResourceId"] as? Int64 {
                self.resourceId = value
            }
        }
    }
    public var code: String?

    public var data: GetMediaResourceIdResponseBody.Data?

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
            var model = GetMediaResourceIdResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetMediaResourceIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMediaResourceIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMediaResourceIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOSSInfoForCardTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessKeyId: String?

        public var aliUid: String?

        public var bucket: String?

        public var expireTime: String?

        public var host: String?

        public var policy: String?

        public var signature: String?

        public var startPath: String?

        public override init() {
            super.init()
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
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.bucket != nil {
                map["Bucket"] = self.bucket!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.signature != nil {
                map["Signature"] = self.signature!
            }
            if self.startPath != nil {
                map["StartPath"] = self.startPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKeyId"] as? String {
                self.accessKeyId = value
            }
            if let value = dict["AliUid"] as? String {
                self.aliUid = value
            }
            if let value = dict["Bucket"] as? String {
                self.bucket = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["Host"] as? String {
                self.host = value
            }
            if let value = dict["Policy"] as? String {
                self.policy = value
            }
            if let value = dict["Signature"] as? String {
                self.signature = value
            }
            if let value = dict["StartPath"] as? String {
                self.startPath = value
            }
        }
    }
    public var code: String?

    public var data: GetOSSInfoForCardTemplateResponseBody.Data?

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
            var model = GetOSSInfoForCardTemplateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetOSSInfoForCardTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOSSInfoForCardTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetOSSInfoForCardTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOSSInfoForUploadFileRequest : Tea.TeaModel {
    public var bizType: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class GetOSSInfoForUploadFileResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var accessKeyId: String?

        public var expireTime: String?

        public var host: String?

        public var policy: String?

        public var signature: String?

        public var startPath: String?

        public override init() {
            super.init()
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
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.signature != nil {
                map["Signature"] = self.signature!
            }
            if self.startPath != nil {
                map["StartPath"] = self.startPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKeyId"] as? String {
                self.accessKeyId = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["Host"] as? String {
                self.host = value
            }
            if let value = dict["Policy"] as? String {
                self.policy = value
            }
            if let value = dict["Signature"] as? String {
                self.signature = value
            }
            if let value = dict["StartPath"] as? String {
                self.startPath = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var model: GetOSSInfoForUploadFileResponseBody.Model?

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
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
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
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = GetOSSInfoForUploadFileResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetOSSInfoForUploadFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOSSInfoForUploadFileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetOSSInfoForUploadFileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetQualificationOssInfoRequest : Tea.TeaModel {
    public var bizType: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class GetQualificationOssInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessKeyId: String?

        public var expire: Int64?

        public var host: String?

        public var policy: String?

        public var signature: String?

        public var startPath: String?

        public override init() {
            super.init()
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
            if self.expire != nil {
                map["Expire"] = self.expire!
            }
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.signature != nil {
                map["Signature"] = self.signature!
            }
            if self.startPath != nil {
                map["StartPath"] = self.startPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKeyId"] as? String {
                self.accessKeyId = value
            }
            if let value = dict["Expire"] as? Int64 {
                self.expire = value
            }
            if let value = dict["Host"] as? String {
                self.host = value
            }
            if let value = dict["Policy"] as? String {
                self.policy = value
            }
            if let value = dict["Signature"] as? String {
                self.signature = value
            }
            if let value = dict["StartPath"] as? String {
                self.startPath = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetQualificationOssInfoResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetQualificationOssInfoResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class GetQualificationOssInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQualificationOssInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetQualificationOssInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSmsOcrOssInfoRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class GetSmsOcrOssInfoResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var accessKeyId: String?

        public var bucket: String?

        public var expireTime: String?

        public var host: String?

        public var policy: String?

        public var signature: String?

        public var startPath: String?

        public override init() {
            super.init()
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
            if self.bucket != nil {
                map["Bucket"] = self.bucket!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.policy != nil {
                map["Policy"] = self.policy!
            }
            if self.signature != nil {
                map["Signature"] = self.signature!
            }
            if self.startPath != nil {
                map["StartPath"] = self.startPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKeyId"] as? String {
                self.accessKeyId = value
            }
            if let value = dict["Bucket"] as? String {
                self.bucket = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["Host"] as? String {
                self.host = value
            }
            if let value = dict["Policy"] as? String {
                self.policy = value
            }
            if let value = dict["Signature"] as? String {
                self.signature = value
            }
            if let value = dict["StartPath"] as? String {
                self.startPath = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: GetSmsOcrOssInfoResponseBody.Model?

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
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = GetSmsOcrOssInfoResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetSmsOcrOssInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSmsOcrOssInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSmsOcrOssInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSmsSignRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var signName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
    }
}

public class GetSmsSignResponseBody : Tea.TeaModel {
    public class AuditInfo : Tea.TeaModel {
        public var auditDate: String?

        public var rejectInfo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auditDate != nil {
                map["AuditDate"] = self.auditDate!
            }
            if self.rejectInfo != nil {
                map["RejectInfo"] = self.rejectInfo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuditDate"] as? String {
                self.auditDate = value
            }
            if let value = dict["RejectInfo"] as? String {
                self.rejectInfo = value
            }
        }
    }
    public class SignIspRegisterDetailList : Tea.TeaModel {
        public class RegisterStatusReasons : Tea.TeaModel {
            public var reasonCode: String?

            public var reasonDescList: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.reasonCode != nil {
                    map["ReasonCode"] = self.reasonCode!
                }
                if self.reasonDescList != nil {
                    map["ReasonDescList"] = self.reasonDescList!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ReasonCode"] as? String {
                    self.reasonCode = value
                }
                if let value = dict["ReasonDescList"] as? [String] {
                    self.reasonDescList = value
                }
            }
        }
        public var operatorCode: String?

        public var operatorCompleteTime: String?

        public var registerStatus: Int32?

        public var registerStatusReasons: [GetSmsSignResponseBody.SignIspRegisterDetailList.RegisterStatusReasons]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.operatorCode != nil {
                map["OperatorCode"] = self.operatorCode!
            }
            if self.operatorCompleteTime != nil {
                map["OperatorCompleteTime"] = self.operatorCompleteTime!
            }
            if self.registerStatus != nil {
                map["RegisterStatus"] = self.registerStatus!
            }
            if self.registerStatusReasons != nil {
                var tmp : [Any] = []
                for k in self.registerStatusReasons! {
                    tmp.append(k.toMap())
                }
                map["RegisterStatusReasons"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OperatorCode"] as? String {
                self.operatorCode = value
            }
            if let value = dict["OperatorCompleteTime"] as? String {
                self.operatorCompleteTime = value
            }
            if let value = dict["RegisterStatus"] as? Int32 {
                self.registerStatus = value
            }
            if let value = dict["RegisterStatusReasons"] as? [Any?] {
                var tmp : [GetSmsSignResponseBody.SignIspRegisterDetailList.RegisterStatusReasons] = []
                for v in value {
                    if v != nil {
                        var model = GetSmsSignResponseBody.SignIspRegisterDetailList.RegisterStatusReasons()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.registerStatusReasons = tmp
            }
        }
    }
    public var appIcpRecordId: Int64?

    public var applyScene: String?

    public var auditInfo: GetSmsSignResponseBody.AuditInfo?

    public var authorizationLetterAuditPass: Bool?

    public var authorizationLetterId: Int64?

    public var code: String?

    public var createDate: String?

    public var fileUrlList: [String]?

    public var message: String?

    public var orderId: String?

    public var qualificationId: Int64?

    public var registerResult: Int32?

    public var remark: String?

    public var requestId: String?

    public var signCode: String?

    public var signIspRegisterDetailList: [GetSmsSignResponseBody.SignIspRegisterDetailList]?

    public var signName: String?

    public var signStatus: Int64?

    public var signTag: String?

    public var signUsage: String?

    public var thirdParty: Bool?

    public var trademarkId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.auditInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appIcpRecordId != nil {
            map["AppIcpRecordId"] = self.appIcpRecordId!
        }
        if self.applyScene != nil {
            map["ApplyScene"] = self.applyScene!
        }
        if self.auditInfo != nil {
            map["AuditInfo"] = self.auditInfo?.toMap()
        }
        if self.authorizationLetterAuditPass != nil {
            map["AuthorizationLetterAuditPass"] = self.authorizationLetterAuditPass!
        }
        if self.authorizationLetterId != nil {
            map["AuthorizationLetterId"] = self.authorizationLetterId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.createDate != nil {
            map["CreateDate"] = self.createDate!
        }
        if self.fileUrlList != nil {
            map["FileUrlList"] = self.fileUrlList!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.qualificationId != nil {
            map["QualificationId"] = self.qualificationId!
        }
        if self.registerResult != nil {
            map["RegisterResult"] = self.registerResult!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.signCode != nil {
            map["SignCode"] = self.signCode!
        }
        if self.signIspRegisterDetailList != nil {
            var tmp : [Any] = []
            for k in self.signIspRegisterDetailList! {
                tmp.append(k.toMap())
            }
            map["SignIspRegisterDetailList"] = tmp
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        if self.signStatus != nil {
            map["SignStatus"] = self.signStatus!
        }
        if self.signTag != nil {
            map["SignTag"] = self.signTag!
        }
        if self.signUsage != nil {
            map["SignUsage"] = self.signUsage!
        }
        if self.thirdParty != nil {
            map["ThirdParty"] = self.thirdParty!
        }
        if self.trademarkId != nil {
            map["TrademarkId"] = self.trademarkId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppIcpRecordId"] as? Int64 {
            self.appIcpRecordId = value
        }
        if let value = dict["ApplyScene"] as? String {
            self.applyScene = value
        }
        if let value = dict["AuditInfo"] as? [String: Any?] {
            var model = GetSmsSignResponseBody.AuditInfo()
            model.fromMap(value)
            self.auditInfo = model
        }
        if let value = dict["AuthorizationLetterAuditPass"] as? Bool {
            self.authorizationLetterAuditPass = value
        }
        if let value = dict["AuthorizationLetterId"] as? Int64 {
            self.authorizationLetterId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CreateDate"] as? String {
            self.createDate = value
        }
        if let value = dict["FileUrlList"] as? [String] {
            self.fileUrlList = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["QualificationId"] as? Int64 {
            self.qualificationId = value
        }
        if let value = dict["RegisterResult"] as? Int32 {
            self.registerResult = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SignCode"] as? String {
            self.signCode = value
        }
        if let value = dict["SignIspRegisterDetailList"] as? [Any?] {
            var tmp : [GetSmsSignResponseBody.SignIspRegisterDetailList] = []
            for v in value {
                if v != nil {
                    var model = GetSmsSignResponseBody.SignIspRegisterDetailList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.signIspRegisterDetailList = tmp
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
        if let value = dict["SignStatus"] as? Int64 {
            self.signStatus = value
        }
        if let value = dict["SignTag"] as? String {
            self.signTag = value
        }
        if let value = dict["SignUsage"] as? String {
            self.signUsage = value
        }
        if let value = dict["ThirdParty"] as? Bool {
            self.thirdParty = value
        }
        if let value = dict["TrademarkId"] as? Int64 {
            self.trademarkId = value
        }
    }
}

public class GetSmsSignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSmsSignResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSmsSignResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSmsTemplateRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var templateCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
    }
}

public class GetSmsTemplateResponseBody : Tea.TeaModel {
    public class AuditInfo : Tea.TeaModel {
        public var auditDate: String?

        public var rejectInfo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auditDate != nil {
                map["AuditDate"] = self.auditDate!
            }
            if self.rejectInfo != nil {
                map["RejectInfo"] = self.rejectInfo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuditDate"] as? String {
                self.auditDate = value
            }
            if let value = dict["RejectInfo"] as? String {
                self.rejectInfo = value
            }
        }
    }
    public class FileUrlList : Tea.TeaModel {
        public var fileUrl: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileUrl != nil {
                map["FileUrl"] = self.fileUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileUrl"] as? [String] {
                self.fileUrl = value
            }
        }
    }
    public class MoreDataFileUrlList : Tea.TeaModel {
        public var moreDataFileUrl: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.moreDataFileUrl != nil {
                map["MoreDataFileUrl"] = self.moreDataFileUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MoreDataFileUrl"] as? [String] {
                self.moreDataFileUrl = value
            }
        }
    }
    public var applyScene: String?

    public var auditInfo: GetSmsTemplateResponseBody.AuditInfo?

    public var code: String?

    public var createDate: String?

    public var fileUrlList: GetSmsTemplateResponseBody.FileUrlList?

    public var intlType: Int32?

    public var message: String?

    public var moreDataFileUrlList: GetSmsTemplateResponseBody.MoreDataFileUrlList?

    public var orderId: String?

    public var relatedSignName: String?

    public var remark: String?

    public var requestId: String?

    public var templateCode: String?

    public var templateContent: String?

    public var templateName: String?

    public var templateStatus: String?

    public var templateTag: Int32?

    public var templateType: String?

    public var variableAttribute: String?

    public var vendorAuditStatus: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.auditInfo?.validate()
        try self.fileUrlList?.validate()
        try self.moreDataFileUrlList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applyScene != nil {
            map["ApplyScene"] = self.applyScene!
        }
        if self.auditInfo != nil {
            map["AuditInfo"] = self.auditInfo?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.createDate != nil {
            map["CreateDate"] = self.createDate!
        }
        if self.fileUrlList != nil {
            map["FileUrlList"] = self.fileUrlList?.toMap()
        }
        if self.intlType != nil {
            map["IntlType"] = self.intlType!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.moreDataFileUrlList != nil {
            map["MoreDataFileUrlList"] = self.moreDataFileUrlList?.toMap()
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.relatedSignName != nil {
            map["RelatedSignName"] = self.relatedSignName!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateContent != nil {
            map["TemplateContent"] = self.templateContent!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateStatus != nil {
            map["TemplateStatus"] = self.templateStatus!
        }
        if self.templateTag != nil {
            map["TemplateTag"] = self.templateTag!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        if self.variableAttribute != nil {
            map["VariableAttribute"] = self.variableAttribute!
        }
        if self.vendorAuditStatus != nil {
            map["VendorAuditStatus"] = self.vendorAuditStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplyScene"] as? String {
            self.applyScene = value
        }
        if let value = dict["AuditInfo"] as? [String: Any?] {
            var model = GetSmsTemplateResponseBody.AuditInfo()
            model.fromMap(value)
            self.auditInfo = model
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CreateDate"] as? String {
            self.createDate = value
        }
        if let value = dict["FileUrlList"] as? [String: Any?] {
            var model = GetSmsTemplateResponseBody.FileUrlList()
            model.fromMap(value)
            self.fileUrlList = model
        }
        if let value = dict["IntlType"] as? Int32 {
            self.intlType = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["MoreDataFileUrlList"] as? [String: Any?] {
            var model = GetSmsTemplateResponseBody.MoreDataFileUrlList()
            model.fromMap(value)
            self.moreDataFileUrlList = model
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RelatedSignName"] as? String {
            self.relatedSignName = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateContent"] as? String {
            self.templateContent = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateStatus"] as? String {
            self.templateStatus = value
        }
        if let value = dict["TemplateTag"] as? Int32 {
            self.templateTag = value
        }
        if let value = dict["TemplateType"] as? String {
            self.templateType = value
        }
        if let value = dict["VariableAttribute"] as? String {
            self.variableAttribute = value
        }
        if let value = dict["VendorAuditStatus"] as? [String: Any] {
            self.vendorAuditStatus = value
        }
    }
}

public class GetSmsTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSmsTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSmsTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSmsTemplateListRequest : Tea.TeaModel {
    public var auditStatus: Int64?

    public var ownerId: Int64?

    public var pageIndex: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var signName: String?

    public var templateCode: String?

    public var templateName: String?

    public var templateTag: String?

    public var templateType: Int64?

    public var usableStateList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditStatus != nil {
            map["AuditStatus"] = self.auditStatus!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateTag != nil {
            map["TemplateTag"] = self.templateTag!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        if self.usableStateList != nil {
            map["UsableStateList"] = self.usableStateList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuditStatus"] as? Int64 {
            self.auditStatus = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageIndex"] as? Int64 {
            self.pageIndex = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateTag"] as? String {
            self.templateTag = value
        }
        if let value = dict["TemplateType"] as? Int64 {
            self.templateType = value
        }
        if let value = dict["UsableStateList"] as? [String] {
            self.usableStateList = value
        }
    }
}

public class GetSmsTemplateListShrinkRequest : Tea.TeaModel {
    public var auditStatus: Int64?

    public var ownerId: Int64?

    public var pageIndex: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var signName: String?

    public var templateCode: String?

    public var templateName: String?

    public var templateTag: String?

    public var templateType: Int64?

    public var usableStateListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditStatus != nil {
            map["AuditStatus"] = self.auditStatus!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateTag != nil {
            map["TemplateTag"] = self.templateTag!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        if self.usableStateListShrink != nil {
            map["UsableStateList"] = self.usableStateListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuditStatus"] as? Int64 {
            self.auditStatus = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageIndex"] as? Int64 {
            self.pageIndex = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateTag"] as? String {
            self.templateTag = value
        }
        if let value = dict["TemplateType"] as? Int64 {
            self.templateType = value
        }
        if let value = dict["UsableStateList"] as? String {
            self.usableStateListShrink = value
        }
    }
}

public class GetSmsTemplateListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class TemplateTag : Tea.TeaModel {
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
            public var auditStatus: Int64?

            public var gmtCreate: String?

            public var signName: String?

            public var templateCode: String?

            public var templateName: String?

            public var templateTag: [GetSmsTemplateListResponseBody.Data.List.TemplateTag]?

            public var templateType: Int64?

            public var usableStateList: [String]?

            public var workOrderId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.auditStatus != nil {
                    map["AuditStatus"] = self.auditStatus!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.signName != nil {
                    map["SignName"] = self.signName!
                }
                if self.templateCode != nil {
                    map["TemplateCode"] = self.templateCode!
                }
                if self.templateName != nil {
                    map["TemplateName"] = self.templateName!
                }
                if self.templateTag != nil {
                    var tmp : [Any] = []
                    for k in self.templateTag! {
                        tmp.append(k.toMap())
                    }
                    map["TemplateTag"] = tmp
                }
                if self.templateType != nil {
                    map["TemplateType"] = self.templateType!
                }
                if self.usableStateList != nil {
                    map["UsableStateList"] = self.usableStateList!
                }
                if self.workOrderId != nil {
                    map["WorkOrderId"] = self.workOrderId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AuditStatus"] as? Int64 {
                    self.auditStatus = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["SignName"] as? String {
                    self.signName = value
                }
                if let value = dict["TemplateCode"] as? String {
                    self.templateCode = value
                }
                if let value = dict["TemplateName"] as? String {
                    self.templateName = value
                }
                if let value = dict["TemplateTag"] as? [Any?] {
                    var tmp : [GetSmsTemplateListResponseBody.Data.List.TemplateTag] = []
                    for v in value {
                        if v != nil {
                            var model = GetSmsTemplateListResponseBody.Data.List.TemplateTag()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.templateTag = tmp
                }
                if let value = dict["TemplateType"] as? Int64 {
                    self.templateType = value
                }
                if let value = dict["UsableStateList"] as? [String] {
                    self.usableStateList = value
                }
                if let value = dict["WorkOrderId"] as? String {
                    self.workOrderId = value
                }
            }
        }
        public var list: [GetSmsTemplateListResponseBody.Data.List]?

        public var pageNo: Int64?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [GetSmsTemplateListResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = GetSmsTemplateListResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["PageNo"] as? Int64 {
                self.pageNo = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetSmsTemplateListResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetSmsTemplateListResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class GetSmsTemplateListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSmsTemplateListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSmsTemplateListResponseBody()
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

    public var ownerId: Int64?

    public var pageSize: Int32?

    public var prodCode: String?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProdCode"] as? String {
            self.prodCode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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
    public var code: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
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

public class ModifySmsSignRequest : Tea.TeaModel {
    public class SignFileList : Tea.TeaModel {
        public var fileContents: String?

        public var fileSuffix: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileContents != nil {
                map["FileContents"] = self.fileContents!
            }
            if self.fileSuffix != nil {
                map["FileSuffix"] = self.fileSuffix!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileContents"] as? String {
                self.fileContents = value
            }
            if let value = dict["FileSuffix"] as? String {
                self.fileSuffix = value
            }
        }
    }
    public var ownerId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var signFileList: [ModifySmsSignRequest.SignFileList]?

    public var signName: String?

    public var signSource: Int32?

    public var signType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.signFileList != nil {
            var tmp : [Any] = []
            for k in self.signFileList! {
                tmp.append(k.toMap())
            }
            map["SignFileList"] = tmp
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        if self.signSource != nil {
            map["SignSource"] = self.signSource!
        }
        if self.signType != nil {
            map["SignType"] = self.signType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SignFileList"] as? [Any?] {
            var tmp : [ModifySmsSignRequest.SignFileList] = []
            for v in value {
                if v != nil {
                    var model = ModifySmsSignRequest.SignFileList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.signFileList = tmp
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
        if let value = dict["SignSource"] as? Int32 {
            self.signSource = value
        }
        if let value = dict["SignType"] as? Int32 {
            self.signType = value
        }
    }
}

public class ModifySmsSignResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var signName: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
    }
}

public class ModifySmsSignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySmsSignResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifySmsSignResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifySmsTemplateRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var templateCode: String?

    public var templateContent: String?

    public var templateName: String?

    public var templateType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateContent != nil {
            map["TemplateContent"] = self.templateContent!
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
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateContent"] as? String {
            self.templateContent = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateType"] as? Int32 {
            self.templateType = value
        }
    }
}

public class ModifySmsTemplateResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var templateCode: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
    }
}

public class ModifySmsTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySmsTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifySmsTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryCardSmsTemplateRequest : Tea.TeaModel {
    public var templateCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
    }
}

public class QueryCardSmsTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var templates: [[String: Any]]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.templates != nil {
                map["Templates"] = self.templates!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Templates"] as? [[String: Any]] {
                self.templates = value
            }
        }
    }
    public var code: String?

    public var data: QueryCardSmsTemplateResponseBody.Data?

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
            var model = QueryCardSmsTemplateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryCardSmsTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCardSmsTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryCardSmsTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryCardSmsTemplateReportRequest : Tea.TeaModel {
    public var endDate: String?

    public var startDate: String?

    public var templateCodes: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.templateCodes != nil {
            map["TemplateCodes"] = self.templateCodes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["TemplateCodes"] as? [String] {
            self.templateCodes = value
        }
    }
}

public class QueryCardSmsTemplateReportResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var model: [[String: Any]]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.model != nil {
                map["model"] = self.model!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["model"] as? [[String: Any]] {
                self.model = value
            }
        }
    }
    public var code: String?

    public var data: QueryCardSmsTemplateReportResponseBody.Data?

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
            var model = QueryCardSmsTemplateReportResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryCardSmsTemplateReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCardSmsTemplateReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryCardSmsTemplateReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryExtCodeSignRequest : Tea.TeaModel {
    public var extCode: String?

    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var signName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extCode != nil {
            map["ExtCode"] = self.extCode!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExtCode"] as? String {
            self.extCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int64 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
    }
}

public class QueryExtCodeSignResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var active: Int64?

            public var extCode: String?

            public var sendCount: Int64?

            public var signName: String?

            public var source: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.active != nil {
                    map["Active"] = self.active!
                }
                if self.extCode != nil {
                    map["ExtCode"] = self.extCode!
                }
                if self.sendCount != nil {
                    map["SendCount"] = self.sendCount!
                }
                if self.signName != nil {
                    map["SignName"] = self.signName!
                }
                if self.source != nil {
                    map["Source"] = self.source!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Active"] as? Int64 {
                    self.active = value
                }
                if let value = dict["ExtCode"] as? String {
                    self.extCode = value
                }
                if let value = dict["SendCount"] as? Int64 {
                    self.sendCount = value
                }
                if let value = dict["SignName"] as? String {
                    self.signName = value
                }
                if let value = dict["Source"] as? String {
                    self.source = value
                }
            }
        }
        public var list: [QueryExtCodeSignResponseBody.Data.List]?

        public var pageNo: Int64?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [QueryExtCodeSignResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = QueryExtCodeSignResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["PageNo"] as? Int64 {
                self.pageNo = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: QueryExtCodeSignResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryExtCodeSignResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class QueryExtCodeSignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryExtCodeSignResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryExtCodeSignResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryMobilesCardSupportRequest : Tea.TeaModel {
    public var encryptType: String?

    public var mobiles: [[String: Any]]?

    public var templateCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.encryptType != nil {
            map["EncryptType"] = self.encryptType!
        }
        if self.mobiles != nil {
            map["Mobiles"] = self.mobiles!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EncryptType"] as? String {
            self.encryptType = value
        }
        if let value = dict["Mobiles"] as? [[String: Any]] {
            self.mobiles = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
    }
}

public class QueryMobilesCardSupportShrinkRequest : Tea.TeaModel {
    public var encryptType: String?

    public var mobilesShrink: String?

    public var templateCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.encryptType != nil {
            map["EncryptType"] = self.encryptType!
        }
        if self.mobilesShrink != nil {
            map["Mobiles"] = self.mobilesShrink!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EncryptType"] as? String {
            self.encryptType = value
        }
        if let value = dict["Mobiles"] as? String {
            self.mobilesShrink = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
    }
}

public class QueryMobilesCardSupportResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class QueryResult : Tea.TeaModel {
            public var mobile: String?

            public var support: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mobile != nil {
                    map["Mobile"] = self.mobile!
                }
                if self.support != nil {
                    map["Support"] = self.support!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Mobile"] as? String {
                    self.mobile = value
                }
                if let value = dict["Support"] as? Bool {
                    self.support = value
                }
            }
        }
        public var queryResult: [QueryMobilesCardSupportResponseBody.Data.QueryResult]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.queryResult != nil {
                var tmp : [Any] = []
                for k in self.queryResult! {
                    tmp.append(k.toMap())
                }
                map["QueryResult"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["QueryResult"] as? [Any?] {
                var tmp : [QueryMobilesCardSupportResponseBody.Data.QueryResult] = []
                for v in value {
                    if v != nil {
                        var model = QueryMobilesCardSupportResponseBody.Data.QueryResult()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.queryResult = tmp
            }
        }
    }
    public var code: String?

    public var data: QueryMobilesCardSupportResponseBody.Data?

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
            var model = QueryMobilesCardSupportResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryMobilesCardSupportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMobilesCardSupportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryMobilesCardSupportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryPageSmartShortUrlLogRequest : Tea.TeaModel {
    public var createDateEnd: Int64?

    public var createDateStart: Int64?

    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var shortUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createDateEnd != nil {
            map["CreateDateEnd"] = self.createDateEnd!
        }
        if self.createDateStart != nil {
            map["CreateDateStart"] = self.createDateStart!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.shortUrl != nil {
            map["ShortUrl"] = self.shortUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateDateEnd"] as? Int64 {
            self.createDateEnd = value
        }
        if let value = dict["CreateDateStart"] as? Int64 {
            self.createDateStart = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int64 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ShortUrl"] as? String {
            self.shortUrl = value
        }
    }
}

public class QueryPageSmartShortUrlLogResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var clickState: Int64?

            public var clickTime: Int64?

            public var createTime: Int64?

            public var phoneNumber: String?

            public var shortName: String?

            public var shortUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clickState != nil {
                    map["ClickState"] = self.clickState!
                }
                if self.clickTime != nil {
                    map["ClickTime"] = self.clickTime!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.phoneNumber != nil {
                    map["PhoneNumber"] = self.phoneNumber!
                }
                if self.shortName != nil {
                    map["ShortName"] = self.shortName!
                }
                if self.shortUrl != nil {
                    map["ShortUrl"] = self.shortUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ClickState"] as? Int64 {
                    self.clickState = value
                }
                if let value = dict["ClickTime"] as? Int64 {
                    self.clickTime = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["PhoneNumber"] as? String {
                    self.phoneNumber = value
                }
                if let value = dict["ShortName"] as? String {
                    self.shortName = value
                }
                if let value = dict["ShortUrl"] as? String {
                    self.shortUrl = value
                }
            }
        }
        public var list: [QueryPageSmartShortUrlLogResponseBody.Model.List]?

        public var pageNo: Int64?

        public var pageSize: Int64?

        public var totalCount: Int64?

        public var totalPage: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.totalPage != nil {
                map["TotalPage"] = self.totalPage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [QueryPageSmartShortUrlLogResponseBody.Model.List] = []
                for v in value {
                    if v != nil {
                        var model = QueryPageSmartShortUrlLogResponseBody.Model.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["PageNo"] as? Int64 {
                self.pageNo = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["TotalPage"] as? Int64 {
                self.totalPage = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var model: QueryPageSmartShortUrlLogResponseBody.Model?

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
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
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
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = QueryPageSmartShortUrlLogResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryPageSmartShortUrlLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPageSmartShortUrlLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryPageSmartShortUrlLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySendDetailsRequest : Tea.TeaModel {
    public var bizId: String?

    public var currentPage: Int64?

    public var ownerId: Int64?

    public var pageSize: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sendDate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sendDate != nil {
            map["SendDate"] = self.sendDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SendDate"] as? String {
            self.sendDate = value
        }
    }
}

public class QuerySendDetailsResponseBody : Tea.TeaModel {
    public class SmsSendDetailDTOs : Tea.TeaModel {
        public class SmsSendDetailDTO : Tea.TeaModel {
            public var content: String?

            public var errCode: String?

            public var outId: String?

            public var phoneNum: String?

            public var receiveDate: String?

            public var sendDate: String?

            public var sendStatus: Int64?

            public var templateCode: String?

            public override init() {
                super.init()
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
                if self.errCode != nil {
                    map["ErrCode"] = self.errCode!
                }
                if self.outId != nil {
                    map["OutId"] = self.outId!
                }
                if self.phoneNum != nil {
                    map["PhoneNum"] = self.phoneNum!
                }
                if self.receiveDate != nil {
                    map["ReceiveDate"] = self.receiveDate!
                }
                if self.sendDate != nil {
                    map["SendDate"] = self.sendDate!
                }
                if self.sendStatus != nil {
                    map["SendStatus"] = self.sendStatus!
                }
                if self.templateCode != nil {
                    map["TemplateCode"] = self.templateCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["ErrCode"] as? String {
                    self.errCode = value
                }
                if let value = dict["OutId"] as? String {
                    self.outId = value
                }
                if let value = dict["PhoneNum"] as? String {
                    self.phoneNum = value
                }
                if let value = dict["ReceiveDate"] as? String {
                    self.receiveDate = value
                }
                if let value = dict["SendDate"] as? String {
                    self.sendDate = value
                }
                if let value = dict["SendStatus"] as? Int64 {
                    self.sendStatus = value
                }
                if let value = dict["TemplateCode"] as? String {
                    self.templateCode = value
                }
            }
        }
        public var smsSendDetailDTO: [QuerySendDetailsResponseBody.SmsSendDetailDTOs.SmsSendDetailDTO]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.smsSendDetailDTO != nil {
                var tmp : [Any] = []
                for k in self.smsSendDetailDTO! {
                    tmp.append(k.toMap())
                }
                map["SmsSendDetailDTO"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SmsSendDetailDTO"] as? [Any?] {
                var tmp : [QuerySendDetailsResponseBody.SmsSendDetailDTOs.SmsSendDetailDTO] = []
                for v in value {
                    if v != nil {
                        var model = QuerySendDetailsResponseBody.SmsSendDetailDTOs.SmsSendDetailDTO()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.smsSendDetailDTO = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var smsSendDetailDTOs: QuerySendDetailsResponseBody.SmsSendDetailDTOs?

    public var totalCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.smsSendDetailDTOs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.smsSendDetailDTOs != nil {
            map["SmsSendDetailDTOs"] = self.smsSendDetailDTOs?.toMap()
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
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SmsSendDetailDTOs"] as? [String: Any?] {
            var model = QuerySendDetailsResponseBody.SmsSendDetailDTOs()
            model.fromMap(value)
            self.smsSendDetailDTOs = model
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class QuerySendDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySendDetailsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QuerySendDetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySendStatisticsRequest : Tea.TeaModel {
    public var endDate: String?

    public var isGlobe: Int32?

    public var ownerId: Int64?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var signName: String?

    public var startDate: String?

    public var templateType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.isGlobe != nil {
            map["IsGlobe"] = self.isGlobe!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["IsGlobe"] as? Int32 {
            self.isGlobe = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["TemplateType"] as? Int32 {
            self.templateType = value
        }
    }
}

public class QuerySendStatisticsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TargetList : Tea.TeaModel {
            public var noRespondedCount: Int64?

            public var respondedFailCount: Int64?

            public var respondedSuccessCount: Int64?

            public var sendDate: String?

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
                if self.noRespondedCount != nil {
                    map["NoRespondedCount"] = self.noRespondedCount!
                }
                if self.respondedFailCount != nil {
                    map["RespondedFailCount"] = self.respondedFailCount!
                }
                if self.respondedSuccessCount != nil {
                    map["RespondedSuccessCount"] = self.respondedSuccessCount!
                }
                if self.sendDate != nil {
                    map["SendDate"] = self.sendDate!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NoRespondedCount"] as? Int64 {
                    self.noRespondedCount = value
                }
                if let value = dict["RespondedFailCount"] as? Int64 {
                    self.respondedFailCount = value
                }
                if let value = dict["RespondedSuccessCount"] as? Int64 {
                    self.respondedSuccessCount = value
                }
                if let value = dict["SendDate"] as? String {
                    self.sendDate = value
                }
                if let value = dict["TotalCount"] as? Int64 {
                    self.totalCount = value
                }
            }
        }
        public var targetList: [QuerySendStatisticsResponseBody.Data.TargetList]?

        public var totalSize: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.targetList != nil {
                var tmp : [Any] = []
                for k in self.targetList! {
                    tmp.append(k.toMap())
                }
                map["TargetList"] = tmp
            }
            if self.totalSize != nil {
                map["TotalSize"] = self.totalSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TargetList"] as? [Any?] {
                var tmp : [QuerySendStatisticsResponseBody.Data.TargetList] = []
                for v in value {
                    if v != nil {
                        var model = QuerySendStatisticsResponseBody.Data.TargetList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.targetList = tmp
            }
            if let value = dict["TotalSize"] as? Int64 {
                self.totalSize = value
            }
        }
    }
    public var code: String?

    public var data: QuerySendStatisticsResponseBody.Data?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = QuerySendStatisticsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QuerySendStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySendStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QuerySendStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryShortUrlRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var shortUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.shortUrl != nil {
            map["ShortUrl"] = self.shortUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ShortUrl"] as? String {
            self.shortUrl = value
        }
    }
}

public class QueryShortUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createDate: String?

        public var expireDate: String?

        public var pageViewCount: String?

        public var shortUrl: String?

        public var shortUrlName: String?

        public var shortUrlStatus: String?

        public var sourceUrl: String?

        public var uniqueVisitorCount: String?

        public override init() {
            super.init()
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
            if self.expireDate != nil {
                map["ExpireDate"] = self.expireDate!
            }
            if self.pageViewCount != nil {
                map["PageViewCount"] = self.pageViewCount!
            }
            if self.shortUrl != nil {
                map["ShortUrl"] = self.shortUrl!
            }
            if self.shortUrlName != nil {
                map["ShortUrlName"] = self.shortUrlName!
            }
            if self.shortUrlStatus != nil {
                map["ShortUrlStatus"] = self.shortUrlStatus!
            }
            if self.sourceUrl != nil {
                map["SourceUrl"] = self.sourceUrl!
            }
            if self.uniqueVisitorCount != nil {
                map["UniqueVisitorCount"] = self.uniqueVisitorCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["ExpireDate"] as? String {
                self.expireDate = value
            }
            if let value = dict["PageViewCount"] as? String {
                self.pageViewCount = value
            }
            if let value = dict["ShortUrl"] as? String {
                self.shortUrl = value
            }
            if let value = dict["ShortUrlName"] as? String {
                self.shortUrlName = value
            }
            if let value = dict["ShortUrlStatus"] as? String {
                self.shortUrlStatus = value
            }
            if let value = dict["SourceUrl"] as? String {
                self.sourceUrl = value
            }
            if let value = dict["UniqueVisitorCount"] as? String {
                self.uniqueVisitorCount = value
            }
        }
    }
    public var code: String?

    public var data: QueryShortUrlResponseBody.Data?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryShortUrlResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryShortUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryShortUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryShortUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySingleSmsQualificationRequest : Tea.TeaModel {
    public var orderId: Int64?

    public var ownerId: Int64?

    public var qualificationGroupId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.qualificationGroupId != nil {
            map["QualificationGroupId"] = self.qualificationGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["QualificationGroupId"] as? Int64 {
            self.qualificationGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class QuerySingleSmsQualificationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BusinessLicensePics : Tea.TeaModel {
            public var licensePic: String?

            public var picUrl: String?

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
                if self.licensePic != nil {
                    map["LicensePic"] = self.licensePic!
                }
                if self.picUrl != nil {
                    map["PicUrl"] = self.picUrl!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LicensePic"] as? String {
                    self.licensePic = value
                }
                if let value = dict["PicUrl"] as? String {
                    self.picUrl = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public class OtherFiles : Tea.TeaModel {
            public var licensePic: String?

            public var picUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.licensePic != nil {
                    map["LicensePic"] = self.licensePic!
                }
                if self.picUrl != nil {
                    map["PicUrl"] = self.picUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LicensePic"] as? String {
                    self.licensePic = value
                }
                if let value = dict["PicUrl"] as? String {
                    self.picUrl = value
                }
            }
        }
        public var adminIDCardExpDate: String?

        public var adminIDCardFrontFace: String?

        public var adminIDCardNo: String?

        public var adminIDCardPic: String?

        public var adminIDCardType: String?

        public var adminName: String?

        public var adminPhoneNo: String?

        public var businessLicensePics: [QuerySingleSmsQualificationResponseBody.Data.BusinessLicensePics]?

        public var businessType: String?

        public var companyName: String?

        public var companyType: String?

        public var effTimeStr: String?

        public var legalPersonIDCardNo: String?

        public var legalPersonIDCardType: String?

        public var legalPersonIdCardEffTime: String?

        public var legalPersonName: String?

        public var organizationCode: String?

        public var otherFiles: [QuerySingleSmsQualificationResponseBody.Data.OtherFiles]?

        public var qualificationGroupId: Int64?

        public var qualificationName: String?

        public var remark: String?

        public var state: String?

        public var useBySelf: Bool?

        public var whetherShare: Bool?

        public var workOrderId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.adminIDCardExpDate != nil {
                map["AdminIDCardExpDate"] = self.adminIDCardExpDate!
            }
            if self.adminIDCardFrontFace != nil {
                map["AdminIDCardFrontFace"] = self.adminIDCardFrontFace!
            }
            if self.adminIDCardNo != nil {
                map["AdminIDCardNo"] = self.adminIDCardNo!
            }
            if self.adminIDCardPic != nil {
                map["AdminIDCardPic"] = self.adminIDCardPic!
            }
            if self.adminIDCardType != nil {
                map["AdminIDCardType"] = self.adminIDCardType!
            }
            if self.adminName != nil {
                map["AdminName"] = self.adminName!
            }
            if self.adminPhoneNo != nil {
                map["AdminPhoneNo"] = self.adminPhoneNo!
            }
            if self.businessLicensePics != nil {
                var tmp : [Any] = []
                for k in self.businessLicensePics! {
                    tmp.append(k.toMap())
                }
                map["BusinessLicensePics"] = tmp
            }
            if self.businessType != nil {
                map["BusinessType"] = self.businessType!
            }
            if self.companyName != nil {
                map["CompanyName"] = self.companyName!
            }
            if self.companyType != nil {
                map["CompanyType"] = self.companyType!
            }
            if self.effTimeStr != nil {
                map["EffTimeStr"] = self.effTimeStr!
            }
            if self.legalPersonIDCardNo != nil {
                map["LegalPersonIDCardNo"] = self.legalPersonIDCardNo!
            }
            if self.legalPersonIDCardType != nil {
                map["LegalPersonIDCardType"] = self.legalPersonIDCardType!
            }
            if self.legalPersonIdCardEffTime != nil {
                map["LegalPersonIdCardEffTime"] = self.legalPersonIdCardEffTime!
            }
            if self.legalPersonName != nil {
                map["LegalPersonName"] = self.legalPersonName!
            }
            if self.organizationCode != nil {
                map["OrganizationCode"] = self.organizationCode!
            }
            if self.otherFiles != nil {
                var tmp : [Any] = []
                for k in self.otherFiles! {
                    tmp.append(k.toMap())
                }
                map["OtherFiles"] = tmp
            }
            if self.qualificationGroupId != nil {
                map["QualificationGroupId"] = self.qualificationGroupId!
            }
            if self.qualificationName != nil {
                map["QualificationName"] = self.qualificationName!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.useBySelf != nil {
                map["UseBySelf"] = self.useBySelf!
            }
            if self.whetherShare != nil {
                map["WhetherShare"] = self.whetherShare!
            }
            if self.workOrderId != nil {
                map["WorkOrderId"] = self.workOrderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdminIDCardExpDate"] as? String {
                self.adminIDCardExpDate = value
            }
            if let value = dict["AdminIDCardFrontFace"] as? String {
                self.adminIDCardFrontFace = value
            }
            if let value = dict["AdminIDCardNo"] as? String {
                self.adminIDCardNo = value
            }
            if let value = dict["AdminIDCardPic"] as? String {
                self.adminIDCardPic = value
            }
            if let value = dict["AdminIDCardType"] as? String {
                self.adminIDCardType = value
            }
            if let value = dict["AdminName"] as? String {
                self.adminName = value
            }
            if let value = dict["AdminPhoneNo"] as? String {
                self.adminPhoneNo = value
            }
            if let value = dict["BusinessLicensePics"] as? [Any?] {
                var tmp : [QuerySingleSmsQualificationResponseBody.Data.BusinessLicensePics] = []
                for v in value {
                    if v != nil {
                        var model = QuerySingleSmsQualificationResponseBody.Data.BusinessLicensePics()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.businessLicensePics = tmp
            }
            if let value = dict["BusinessType"] as? String {
                self.businessType = value
            }
            if let value = dict["CompanyName"] as? String {
                self.companyName = value
            }
            if let value = dict["CompanyType"] as? String {
                self.companyType = value
            }
            if let value = dict["EffTimeStr"] as? String {
                self.effTimeStr = value
            }
            if let value = dict["LegalPersonIDCardNo"] as? String {
                self.legalPersonIDCardNo = value
            }
            if let value = dict["LegalPersonIDCardType"] as? String {
                self.legalPersonIDCardType = value
            }
            if let value = dict["LegalPersonIdCardEffTime"] as? String {
                self.legalPersonIdCardEffTime = value
            }
            if let value = dict["LegalPersonName"] as? String {
                self.legalPersonName = value
            }
            if let value = dict["OrganizationCode"] as? String {
                self.organizationCode = value
            }
            if let value = dict["OtherFiles"] as? [Any?] {
                var tmp : [QuerySingleSmsQualificationResponseBody.Data.OtherFiles] = []
                for v in value {
                    if v != nil {
                        var model = QuerySingleSmsQualificationResponseBody.Data.OtherFiles()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.otherFiles = tmp
            }
            if let value = dict["QualificationGroupId"] as? Int64 {
                self.qualificationGroupId = value
            }
            if let value = dict["QualificationName"] as? String {
                self.qualificationName = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
            if let value = dict["UseBySelf"] as? Bool {
                self.useBySelf = value
            }
            if let value = dict["WhetherShare"] as? Bool {
                self.whetherShare = value
            }
            if let value = dict["WorkOrderId"] as? Int64 {
                self.workOrderId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: QuerySingleSmsQualificationResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QuerySingleSmsQualificationResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class QuerySingleSmsQualificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySingleSmsQualificationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QuerySingleSmsQualificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySmsAppIcpRecordRequest : Tea.TeaModel {
    public var appIcpRecordIdList: [Int64]?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appIcpRecordIdList != nil {
            map["AppIcpRecordIdList"] = self.appIcpRecordIdList!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppIcpRecordIdList"] as? [Int64] {
            self.appIcpRecordIdList = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class QuerySmsAppIcpRecordShrinkRequest : Tea.TeaModel {
    public var appIcpRecordIdListShrink: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appIcpRecordIdListShrink != nil {
            map["AppIcpRecordIdList"] = self.appIcpRecordIdListShrink!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppIcpRecordIdList"] as? String {
            self.appIcpRecordIdListShrink = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class QuerySmsAppIcpRecordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appApprovalDate: String?

        public var appIcpLicenseNumber: String?

        public var appIcpRecordId: Int64?

        public var appIcpRecordPic: String?

        public var appIcpRecordPicUrl: String?

        public var appPrincipalUnitName: String?

        public var appServiceName: String?

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
            if self.appApprovalDate != nil {
                map["AppApprovalDate"] = self.appApprovalDate!
            }
            if self.appIcpLicenseNumber != nil {
                map["AppIcpLicenseNumber"] = self.appIcpLicenseNumber!
            }
            if self.appIcpRecordId != nil {
                map["AppIcpRecordId"] = self.appIcpRecordId!
            }
            if self.appIcpRecordPic != nil {
                map["AppIcpRecordPic"] = self.appIcpRecordPic!
            }
            if self.appIcpRecordPicUrl != nil {
                map["AppIcpRecordPicUrl"] = self.appIcpRecordPicUrl!
            }
            if self.appPrincipalUnitName != nil {
                map["AppPrincipalUnitName"] = self.appPrincipalUnitName!
            }
            if self.appServiceName != nil {
                map["AppServiceName"] = self.appServiceName!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppApprovalDate"] as? String {
                self.appApprovalDate = value
            }
            if let value = dict["AppIcpLicenseNumber"] as? String {
                self.appIcpLicenseNumber = value
            }
            if let value = dict["AppIcpRecordId"] as? Int64 {
                self.appIcpRecordId = value
            }
            if let value = dict["AppIcpRecordPic"] as? String {
                self.appIcpRecordPic = value
            }
            if let value = dict["AppIcpRecordPicUrl"] as? String {
                self.appIcpRecordPicUrl = value
            }
            if let value = dict["AppPrincipalUnitName"] as? String {
                self.appPrincipalUnitName = value
            }
            if let value = dict["AppServiceName"] as? String {
                self.appServiceName = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [QuerySmsAppIcpRecordResponseBody.Data]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QuerySmsAppIcpRecordResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QuerySmsAppIcpRecordResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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

public class QuerySmsAppIcpRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySmsAppIcpRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QuerySmsAppIcpRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySmsAuthorizationLetterRequest : Tea.TeaModel {
    public var authorizationLetterIdList: [Int64]?

    public var organizationCode: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var signName: String?

    public var state: String?

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
        if self.authorizationLetterIdList != nil {
            map["AuthorizationLetterIdList"] = self.authorizationLetterIdList!
        }
        if self.organizationCode != nil {
            map["OrganizationCode"] = self.organizationCode!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthorizationLetterIdList"] as? [Int64] {
            self.authorizationLetterIdList = value
        }
        if let value = dict["OrganizationCode"] as? String {
            self.organizationCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class QuerySmsAuthorizationLetterShrinkRequest : Tea.TeaModel {
    public var authorizationLetterIdListShrink: String?

    public var organizationCode: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var signName: String?

    public var state: String?

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
        if self.authorizationLetterIdListShrink != nil {
            map["AuthorizationLetterIdList"] = self.authorizationLetterIdListShrink!
        }
        if self.organizationCode != nil {
            map["OrganizationCode"] = self.organizationCode!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthorizationLetterIdList"] as? String {
            self.authorizationLetterIdListShrink = value
        }
        if let value = dict["OrganizationCode"] as? String {
            self.organizationCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class QuerySmsAuthorizationLetterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var authorization: String?

        public var authorizationLetterExpDate: String?

        public var authorizationLetterId: Int64?

        public var authorizationLetterName: String?

        public var authorizationLetterPic: String?

        public var organizationCode: String?

        public var proxyAuthorization: String?

        public var signScope: String?

        public var state: String?

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
            if self.authorization != nil {
                map["Authorization"] = self.authorization!
            }
            if self.authorizationLetterExpDate != nil {
                map["AuthorizationLetterExpDate"] = self.authorizationLetterExpDate!
            }
            if self.authorizationLetterId != nil {
                map["AuthorizationLetterId"] = self.authorizationLetterId!
            }
            if self.authorizationLetterName != nil {
                map["AuthorizationLetterName"] = self.authorizationLetterName!
            }
            if self.authorizationLetterPic != nil {
                map["AuthorizationLetterPic"] = self.authorizationLetterPic!
            }
            if self.organizationCode != nil {
                map["OrganizationCode"] = self.organizationCode!
            }
            if self.proxyAuthorization != nil {
                map["ProxyAuthorization"] = self.proxyAuthorization!
            }
            if self.signScope != nil {
                map["SignScope"] = self.signScope!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Authorization"] as? String {
                self.authorization = value
            }
            if let value = dict["AuthorizationLetterExpDate"] as? String {
                self.authorizationLetterExpDate = value
            }
            if let value = dict["AuthorizationLetterId"] as? Int64 {
                self.authorizationLetterId = value
            }
            if let value = dict["AuthorizationLetterName"] as? String {
                self.authorizationLetterName = value
            }
            if let value = dict["AuthorizationLetterPic"] as? String {
                self.authorizationLetterPic = value
            }
            if let value = dict["OrganizationCode"] as? String {
                self.organizationCode = value
            }
            if let value = dict["ProxyAuthorization"] as? String {
                self.proxyAuthorization = value
            }
            if let value = dict["SignScope"] as? String {
                self.signScope = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [QuerySmsAuthorizationLetterResponseBody.Data]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QuerySmsAuthorizationLetterResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QuerySmsAuthorizationLetterResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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

public class QuerySmsAuthorizationLetterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySmsAuthorizationLetterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QuerySmsAuthorizationLetterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySmsQualificationRecordRequest : Tea.TeaModel {
    public var companyName: String?

    public var legalPersonName: String?

    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var qualificationGroupName: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var state: String?

    public var useBySelf: Bool?

    public var workOrderId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.companyName != nil {
            map["CompanyName"] = self.companyName!
        }
        if self.legalPersonName != nil {
            map["LegalPersonName"] = self.legalPersonName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.qualificationGroupName != nil {
            map["QualificationGroupName"] = self.qualificationGroupName!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.useBySelf != nil {
            map["UseBySelf"] = self.useBySelf!
        }
        if self.workOrderId != nil {
            map["WorkOrderId"] = self.workOrderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CompanyName"] as? String {
            self.companyName = value
        }
        if let value = dict["LegalPersonName"] as? String {
            self.legalPersonName = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int64 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["QualificationGroupName"] as? String {
            self.qualificationGroupName = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
        if let value = dict["UseBySelf"] as? Bool {
            self.useBySelf = value
        }
        if let value = dict["WorkOrderId"] as? Int64 {
            self.workOrderId = value
        }
    }
}

public class QuerySmsQualificationRecordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var auditRemark: String?

            public var auditTime: String?

            public var companyName: String?

            public var createDate: String?

            public var groupId: Int64?

            public var legalPersonName: String?

            public var qualificationGroupName: String?

            public var stateName: String?

            public var useBySelf: String?

            public var workOrderId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.auditRemark != nil {
                    map["AuditRemark"] = self.auditRemark!
                }
                if self.auditTime != nil {
                    map["AuditTime"] = self.auditTime!
                }
                if self.companyName != nil {
                    map["CompanyName"] = self.companyName!
                }
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.legalPersonName != nil {
                    map["LegalPersonName"] = self.legalPersonName!
                }
                if self.qualificationGroupName != nil {
                    map["QualificationGroupName"] = self.qualificationGroupName!
                }
                if self.stateName != nil {
                    map["StateName"] = self.stateName!
                }
                if self.useBySelf != nil {
                    map["UseBySelf"] = self.useBySelf!
                }
                if self.workOrderId != nil {
                    map["WorkOrderId"] = self.workOrderId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AuditRemark"] as? String {
                    self.auditRemark = value
                }
                if let value = dict["AuditTime"] as? String {
                    self.auditTime = value
                }
                if let value = dict["CompanyName"] as? String {
                    self.companyName = value
                }
                if let value = dict["CreateDate"] as? String {
                    self.createDate = value
                }
                if let value = dict["GroupId"] as? Int64 {
                    self.groupId = value
                }
                if let value = dict["LegalPersonName"] as? String {
                    self.legalPersonName = value
                }
                if let value = dict["QualificationGroupName"] as? String {
                    self.qualificationGroupName = value
                }
                if let value = dict["StateName"] as? String {
                    self.stateName = value
                }
                if let value = dict["UseBySelf"] as? String {
                    self.useBySelf = value
                }
                if let value = dict["WorkOrderId"] as? Int64 {
                    self.workOrderId = value
                }
            }
        }
        public var list: [QuerySmsQualificationRecordResponseBody.Data.List]?

        public var pageNo: Int64?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [QuerySmsQualificationRecordResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = QuerySmsQualificationRecordResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["PageNo"] as? Int64 {
                self.pageNo = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: QuerySmsQualificationRecordResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QuerySmsQualificationRecordResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class QuerySmsQualificationRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySmsQualificationRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QuerySmsQualificationRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySmsSignRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var signName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
    }
}

public class QuerySmsSignResponseBody : Tea.TeaModel {
    public var code: String?

    public var createDate: String?

    public var message: String?

    public var reason: String?

    public var requestId: String?

    public var signName: String?

    public var signStatus: Int32?

    public override init() {
        super.init()
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
        if self.createDate != nil {
            map["CreateDate"] = self.createDate!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        if self.signStatus != nil {
            map["SignStatus"] = self.signStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CreateDate"] as? String {
            self.createDate = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
        if let value = dict["SignStatus"] as? Int32 {
            self.signStatus = value
        }
    }
}

public class QuerySmsSignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySmsSignResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QuerySmsSignResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySmsSignListRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class QuerySmsSignListResponseBody : Tea.TeaModel {
    public class SmsSignList : Tea.TeaModel {
        public class Reason : Tea.TeaModel {
            public var rejectDate: String?

            public var rejectInfo: String?

            public var rejectSubInfo: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.rejectDate != nil {
                    map["RejectDate"] = self.rejectDate!
                }
                if self.rejectInfo != nil {
                    map["RejectInfo"] = self.rejectInfo!
                }
                if self.rejectSubInfo != nil {
                    map["RejectSubInfo"] = self.rejectSubInfo!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RejectDate"] as? String {
                    self.rejectDate = value
                }
                if let value = dict["RejectInfo"] as? String {
                    self.rejectInfo = value
                }
                if let value = dict["RejectSubInfo"] as? String {
                    self.rejectSubInfo = value
                }
            }
        }
        public var appIcpRecordId: Int64?

        public var auditStatus: String?

        public var authorizationLetterId: Int64?

        public var businessType: String?

        public var createDate: String?

        public var orderId: String?

        public var reason: QuerySmsSignListResponseBody.SmsSignList.Reason?

        public var signName: String?

        public var trademarkId: Int64?

        public var authorizationLetterAuditPass: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.reason?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appIcpRecordId != nil {
                map["AppIcpRecordId"] = self.appIcpRecordId!
            }
            if self.auditStatus != nil {
                map["AuditStatus"] = self.auditStatus!
            }
            if self.authorizationLetterId != nil {
                map["AuthorizationLetterId"] = self.authorizationLetterId!
            }
            if self.businessType != nil {
                map["BusinessType"] = self.businessType!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.reason != nil {
                map["Reason"] = self.reason?.toMap()
            }
            if self.signName != nil {
                map["SignName"] = self.signName!
            }
            if self.trademarkId != nil {
                map["TrademarkId"] = self.trademarkId!
            }
            if self.authorizationLetterAuditPass != nil {
                map["authorizationLetterAuditPass"] = self.authorizationLetterAuditPass!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppIcpRecordId"] as? Int64 {
                self.appIcpRecordId = value
            }
            if let value = dict["AuditStatus"] as? String {
                self.auditStatus = value
            }
            if let value = dict["AuthorizationLetterId"] as? Int64 {
                self.authorizationLetterId = value
            }
            if let value = dict["BusinessType"] as? String {
                self.businessType = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["OrderId"] as? String {
                self.orderId = value
            }
            if let value = dict["Reason"] as? [String: Any?] {
                var model = QuerySmsSignListResponseBody.SmsSignList.Reason()
                model.fromMap(value)
                self.reason = model
            }
            if let value = dict["SignName"] as? String {
                self.signName = value
            }
            if let value = dict["TrademarkId"] as? Int64 {
                self.trademarkId = value
            }
            if let value = dict["authorizationLetterAuditPass"] as? Bool {
                self.authorizationLetterAuditPass = value
            }
        }
    }
    public var code: String?

    public var currentPage: Int32?

    public var message: String?

    public var pageSize: Int32?

    public var requestId: String?

    public var smsSignList: [QuerySmsSignListResponseBody.SmsSignList]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.smsSignList != nil {
            var tmp : [Any] = []
            for k in self.smsSignList! {
                tmp.append(k.toMap())
            }
            map["SmsSignList"] = tmp
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
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SmsSignList"] as? [Any?] {
            var tmp : [QuerySmsSignListResponseBody.SmsSignList] = []
            for v in value {
                if v != nil {
                    var model = QuerySmsSignListResponseBody.SmsSignList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.smsSignList = tmp
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class QuerySmsSignListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySmsSignListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QuerySmsSignListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySmsTemplateRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var templateCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
    }
}

public class QuerySmsTemplateResponseBody : Tea.TeaModel {
    public var code: String?

    public var createDate: String?

    public var message: String?

    public var reason: String?

    public var requestId: String?

    public var templateCode: String?

    public var templateContent: String?

    public var templateName: String?

    public var templateStatus: Int32?

    public var templateType: Int32?

    public override init() {
        super.init()
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
        if self.createDate != nil {
            map["CreateDate"] = self.createDate!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateContent != nil {
            map["TemplateContent"] = self.templateContent!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateStatus != nil {
            map["TemplateStatus"] = self.templateStatus!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CreateDate"] as? String {
            self.createDate = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateContent"] as? String {
            self.templateContent = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateStatus"] as? Int32 {
            self.templateStatus = value
        }
        if let value = dict["TemplateType"] as? Int32 {
            self.templateType = value
        }
    }
}

public class QuerySmsTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySmsTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QuerySmsTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySmsTemplateListRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class QuerySmsTemplateListResponseBody : Tea.TeaModel {
    public class SmsTemplateList : Tea.TeaModel {
        public class Reason : Tea.TeaModel {
            public var rejectDate: String?

            public var rejectInfo: String?

            public var rejectSubInfo: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.rejectDate != nil {
                    map["RejectDate"] = self.rejectDate!
                }
                if self.rejectInfo != nil {
                    map["RejectInfo"] = self.rejectInfo!
                }
                if self.rejectSubInfo != nil {
                    map["RejectSubInfo"] = self.rejectSubInfo!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RejectDate"] as? String {
                    self.rejectDate = value
                }
                if let value = dict["RejectInfo"] as? String {
                    self.rejectInfo = value
                }
                if let value = dict["RejectSubInfo"] as? String {
                    self.rejectSubInfo = value
                }
            }
        }
        public var auditStatus: String?

        public var createDate: String?

        public var orderId: String?

        public var outerTemplateType: Int32?

        public var reason: QuerySmsTemplateListResponseBody.SmsTemplateList.Reason?

        public var signatureName: String?

        public var templateCode: String?

        public var templateContent: String?

        public var templateName: String?

        public var templateType: Int32?

        public var trafficDriving: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.reason?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auditStatus != nil {
                map["AuditStatus"] = self.auditStatus!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.outerTemplateType != nil {
                map["OuterTemplateType"] = self.outerTemplateType!
            }
            if self.reason != nil {
                map["Reason"] = self.reason?.toMap()
            }
            if self.signatureName != nil {
                map["SignatureName"] = self.signatureName!
            }
            if self.templateCode != nil {
                map["TemplateCode"] = self.templateCode!
            }
            if self.templateContent != nil {
                map["TemplateContent"] = self.templateContent!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateType != nil {
                map["TemplateType"] = self.templateType!
            }
            if self.trafficDriving != nil {
                map["TrafficDriving"] = self.trafficDriving!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuditStatus"] as? String {
                self.auditStatus = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["OrderId"] as? String {
                self.orderId = value
            }
            if let value = dict["OuterTemplateType"] as? Int32 {
                self.outerTemplateType = value
            }
            if let value = dict["Reason"] as? [String: Any?] {
                var model = QuerySmsTemplateListResponseBody.SmsTemplateList.Reason()
                model.fromMap(value)
                self.reason = model
            }
            if let value = dict["SignatureName"] as? String {
                self.signatureName = value
            }
            if let value = dict["TemplateCode"] as? String {
                self.templateCode = value
            }
            if let value = dict["TemplateContent"] as? String {
                self.templateContent = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["TemplateType"] as? Int32 {
                self.templateType = value
            }
            if let value = dict["TrafficDriving"] as? String {
                self.trafficDriving = value
            }
        }
    }
    public var code: String?

    public var currentPage: Int32?

    public var message: String?

    public var pageSize: Int32?

    public var requestId: String?

    public var smsTemplateList: [QuerySmsTemplateListResponseBody.SmsTemplateList]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.smsTemplateList != nil {
            var tmp : [Any] = []
            for k in self.smsTemplateList! {
                tmp.append(k.toMap())
            }
            map["SmsTemplateList"] = tmp
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
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SmsTemplateList"] as? [Any?] {
            var tmp : [QuerySmsTemplateListResponseBody.SmsTemplateList] = []
            for v in value {
                if v != nil {
                    var model = QuerySmsTemplateListResponseBody.SmsTemplateList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.smsTemplateList = tmp
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class QuerySmsTemplateListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySmsTemplateListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QuerySmsTemplateListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySmsTrademarkRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var trademarkIdList: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.trademarkIdList != nil {
            map["TrademarkIdList"] = self.trademarkIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TrademarkIdList"] as? [Int64] {
            self.trademarkIdList = value
        }
    }
}

public class QuerySmsTrademarkShrinkRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var trademarkIdListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.trademarkIdListShrink != nil {
            map["TrademarkIdList"] = self.trademarkIdListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TrademarkIdList"] as? String {
            self.trademarkIdListShrink = value
        }
    }
}

public class QuerySmsTrademarkResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var trademarkApplicantName: String?

        public var trademarkEffExpDate: String?

        public var trademarkId: Int64?

        public var trademarkName: String?

        public var trademarkPic: String?

        public var trademarkPicUrl: String?

        public var trademarkRegistrationNumber: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.trademarkApplicantName != nil {
                map["TrademarkApplicantName"] = self.trademarkApplicantName!
            }
            if self.trademarkEffExpDate != nil {
                map["TrademarkEffExpDate"] = self.trademarkEffExpDate!
            }
            if self.trademarkId != nil {
                map["TrademarkId"] = self.trademarkId!
            }
            if self.trademarkName != nil {
                map["TrademarkName"] = self.trademarkName!
            }
            if self.trademarkPic != nil {
                map["TrademarkPic"] = self.trademarkPic!
            }
            if self.trademarkPicUrl != nil {
                map["TrademarkPicUrl"] = self.trademarkPicUrl!
            }
            if self.trademarkRegistrationNumber != nil {
                map["TrademarkRegistrationNumber"] = self.trademarkRegistrationNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TrademarkApplicantName"] as? String {
                self.trademarkApplicantName = value
            }
            if let value = dict["TrademarkEffExpDate"] as? String {
                self.trademarkEffExpDate = value
            }
            if let value = dict["TrademarkId"] as? Int64 {
                self.trademarkId = value
            }
            if let value = dict["TrademarkName"] as? String {
                self.trademarkName = value
            }
            if let value = dict["TrademarkPic"] as? String {
                self.trademarkPic = value
            }
            if let value = dict["TrademarkPicUrl"] as? String {
                self.trademarkPicUrl = value
            }
            if let value = dict["TrademarkRegistrationNumber"] as? String {
                self.trademarkRegistrationNumber = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [QuerySmsTrademarkResponseBody.Data]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QuerySmsTrademarkResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QuerySmsTrademarkResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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

public class QuerySmsTrademarkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySmsTrademarkResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QuerySmsTrademarkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RequiredPhoneCodeRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var phoneNo: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNo != nil {
            map["PhoneNo"] = self.phoneNo!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNo"] as? String {
            self.phoneNo = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class RequiredPhoneCodeResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
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

public class RequiredPhoneCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RequiredPhoneCodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RequiredPhoneCodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendBatchCardSmsRequest : Tea.TeaModel {
    public var cardTemplateCode: String?

    public var cardTemplateParamJson: String?

    public var digitalTemplateCode: String?

    public var digitalTemplateParamJson: String?

    public var fallbackType: String?

    public var outId: String?

    public var phoneNumberJson: String?

    public var signNameJson: String?

    public var smsTemplateCode: String?

    public var smsTemplateParamJson: String?

    public var smsUpExtendCodeJson: String?

    public var templateCode: String?

    public var templateParamJson: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cardTemplateCode != nil {
            map["CardTemplateCode"] = self.cardTemplateCode!
        }
        if self.cardTemplateParamJson != nil {
            map["CardTemplateParamJson"] = self.cardTemplateParamJson!
        }
        if self.digitalTemplateCode != nil {
            map["DigitalTemplateCode"] = self.digitalTemplateCode!
        }
        if self.digitalTemplateParamJson != nil {
            map["DigitalTemplateParamJson"] = self.digitalTemplateParamJson!
        }
        if self.fallbackType != nil {
            map["FallbackType"] = self.fallbackType!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.phoneNumberJson != nil {
            map["PhoneNumberJson"] = self.phoneNumberJson!
        }
        if self.signNameJson != nil {
            map["SignNameJson"] = self.signNameJson!
        }
        if self.smsTemplateCode != nil {
            map["SmsTemplateCode"] = self.smsTemplateCode!
        }
        if self.smsTemplateParamJson != nil {
            map["SmsTemplateParamJson"] = self.smsTemplateParamJson!
        }
        if self.smsUpExtendCodeJson != nil {
            map["SmsUpExtendCodeJson"] = self.smsUpExtendCodeJson!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateParamJson != nil {
            map["TemplateParamJson"] = self.templateParamJson!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CardTemplateCode"] as? String {
            self.cardTemplateCode = value
        }
        if let value = dict["CardTemplateParamJson"] as? String {
            self.cardTemplateParamJson = value
        }
        if let value = dict["DigitalTemplateCode"] as? String {
            self.digitalTemplateCode = value
        }
        if let value = dict["DigitalTemplateParamJson"] as? String {
            self.digitalTemplateParamJson = value
        }
        if let value = dict["FallbackType"] as? String {
            self.fallbackType = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["PhoneNumberJson"] as? String {
            self.phoneNumberJson = value
        }
        if let value = dict["SignNameJson"] as? String {
            self.signNameJson = value
        }
        if let value = dict["SmsTemplateCode"] as? String {
            self.smsTemplateCode = value
        }
        if let value = dict["SmsTemplateParamJson"] as? String {
            self.smsTemplateParamJson = value
        }
        if let value = dict["SmsUpExtendCodeJson"] as? String {
            self.smsUpExtendCodeJson = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateParamJson"] as? String {
            self.templateParamJson = value
        }
    }
}

public class SendBatchCardSmsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bizCardId: String?

        public var bizDigitalId: String?

        public var bizSmsId: String?

        public var cardTmpState: Int32?

        public var mediaMobiles: String?

        public var notMediaMobiles: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizCardId != nil {
                map["BizCardId"] = self.bizCardId!
            }
            if self.bizDigitalId != nil {
                map["BizDigitalId"] = self.bizDigitalId!
            }
            if self.bizSmsId != nil {
                map["BizSmsId"] = self.bizSmsId!
            }
            if self.cardTmpState != nil {
                map["CardTmpState"] = self.cardTmpState!
            }
            if self.mediaMobiles != nil {
                map["MediaMobiles"] = self.mediaMobiles!
            }
            if self.notMediaMobiles != nil {
                map["NotMediaMobiles"] = self.notMediaMobiles!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCardId"] as? String {
                self.bizCardId = value
            }
            if let value = dict["BizDigitalId"] as? String {
                self.bizDigitalId = value
            }
            if let value = dict["BizSmsId"] as? String {
                self.bizSmsId = value
            }
            if let value = dict["CardTmpState"] as? Int32 {
                self.cardTmpState = value
            }
            if let value = dict["MediaMobiles"] as? String {
                self.mediaMobiles = value
            }
            if let value = dict["NotMediaMobiles"] as? String {
                self.notMediaMobiles = value
            }
        }
    }
    public var code: String?

    public var data: SendBatchCardSmsResponseBody.Data?

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
            var model = SendBatchCardSmsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SendBatchCardSmsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendBatchCardSmsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SendBatchCardSmsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendBatchSmsRequest : Tea.TeaModel {
    public var outId: String?

    public var ownerId: Int64?

    public var phoneNumberJson: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var signNameJson: String?

    public var smsUpExtendCodeJson: String?

    public var templateCode: String?

    public var templateParamJson: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumberJson != nil {
            map["PhoneNumberJson"] = self.phoneNumberJson!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.signNameJson != nil {
            map["SignNameJson"] = self.signNameJson!
        }
        if self.smsUpExtendCodeJson != nil {
            map["SmsUpExtendCodeJson"] = self.smsUpExtendCodeJson!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateParamJson != nil {
            map["TemplateParamJson"] = self.templateParamJson!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumberJson"] as? String {
            self.phoneNumberJson = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SignNameJson"] as? String {
            self.signNameJson = value
        }
        if let value = dict["SmsUpExtendCodeJson"] as? String {
            self.smsUpExtendCodeJson = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateParamJson"] as? String {
            self.templateParamJson = value
        }
    }
}

public class SendBatchSmsResponseBody : Tea.TeaModel {
    public var bizId: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SendBatchSmsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendBatchSmsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SendBatchSmsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendCardSmsRequest : Tea.TeaModel {
    public class CardObjects : Tea.TeaModel {
        public var customUrl: String?

        public var dyncParams: String?

        public var mobile: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customUrl != nil {
                map["customUrl"] = self.customUrl!
            }
            if self.dyncParams != nil {
                map["dyncParams"] = self.dyncParams!
            }
            if self.mobile != nil {
                map["mobile"] = self.mobile!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["customUrl"] as? String {
                self.customUrl = value
            }
            if let value = dict["dyncParams"] as? String {
                self.dyncParams = value
            }
            if let value = dict["mobile"] as? String {
                self.mobile = value
            }
        }
    }
    public var cardObjects: [SendCardSmsRequest.CardObjects]?

    public var cardTemplateCode: String?

    public var digitalTemplateCode: String?

    public var digitalTemplateParam: String?

    public var fallbackType: String?

    public var outId: String?

    public var signName: String?

    public var smsTemplateCode: String?

    public var smsTemplateParam: String?

    public var smsUpExtendCode: String?

    public var templateCode: String?

    public var templateParam: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cardObjects != nil {
            var tmp : [Any] = []
            for k in self.cardObjects! {
                tmp.append(k.toMap())
            }
            map["CardObjects"] = tmp
        }
        if self.cardTemplateCode != nil {
            map["CardTemplateCode"] = self.cardTemplateCode!
        }
        if self.digitalTemplateCode != nil {
            map["DigitalTemplateCode"] = self.digitalTemplateCode!
        }
        if self.digitalTemplateParam != nil {
            map["DigitalTemplateParam"] = self.digitalTemplateParam!
        }
        if self.fallbackType != nil {
            map["FallbackType"] = self.fallbackType!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        if self.smsTemplateCode != nil {
            map["SmsTemplateCode"] = self.smsTemplateCode!
        }
        if self.smsTemplateParam != nil {
            map["SmsTemplateParam"] = self.smsTemplateParam!
        }
        if self.smsUpExtendCode != nil {
            map["SmsUpExtendCode"] = self.smsUpExtendCode!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateParam != nil {
            map["TemplateParam"] = self.templateParam!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CardObjects"] as? [Any?] {
            var tmp : [SendCardSmsRequest.CardObjects] = []
            for v in value {
                if v != nil {
                    var model = SendCardSmsRequest.CardObjects()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.cardObjects = tmp
        }
        if let value = dict["CardTemplateCode"] as? String {
            self.cardTemplateCode = value
        }
        if let value = dict["DigitalTemplateCode"] as? String {
            self.digitalTemplateCode = value
        }
        if let value = dict["DigitalTemplateParam"] as? String {
            self.digitalTemplateParam = value
        }
        if let value = dict["FallbackType"] as? String {
            self.fallbackType = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
        if let value = dict["SmsTemplateCode"] as? String {
            self.smsTemplateCode = value
        }
        if let value = dict["SmsTemplateParam"] as? String {
            self.smsTemplateParam = value
        }
        if let value = dict["SmsUpExtendCode"] as? String {
            self.smsUpExtendCode = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateParam"] as? String {
            self.templateParam = value
        }
    }
}

public class SendCardSmsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bizCardId: String?

        public var bizDigitalId: String?

        public var bizSmsId: String?

        public var cardTmpState: Int32?

        public var mediaMobiles: String?

        public var notMediaMobiles: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizCardId != nil {
                map["BizCardId"] = self.bizCardId!
            }
            if self.bizDigitalId != nil {
                map["BizDigitalId"] = self.bizDigitalId!
            }
            if self.bizSmsId != nil {
                map["BizSmsId"] = self.bizSmsId!
            }
            if self.cardTmpState != nil {
                map["CardTmpState"] = self.cardTmpState!
            }
            if self.mediaMobiles != nil {
                map["MediaMobiles"] = self.mediaMobiles!
            }
            if self.notMediaMobiles != nil {
                map["NotMediaMobiles"] = self.notMediaMobiles!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCardId"] as? String {
                self.bizCardId = value
            }
            if let value = dict["BizDigitalId"] as? String {
                self.bizDigitalId = value
            }
            if let value = dict["BizSmsId"] as? String {
                self.bizSmsId = value
            }
            if let value = dict["CardTmpState"] as? Int32 {
                self.cardTmpState = value
            }
            if let value = dict["MediaMobiles"] as? String {
                self.mediaMobiles = value
            }
            if let value = dict["NotMediaMobiles"] as? String {
                self.notMediaMobiles = value
            }
        }
    }
    public var code: String?

    public var data: SendCardSmsResponseBody.Data?

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
            var model = SendCardSmsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SendCardSmsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendCardSmsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SendCardSmsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendLogisticsSmsRequest : Tea.TeaModel {
    public var expressCompanyCode: String?

    public var mailNo: String?

    public var outId: String?

    public var ownerId: Int64?

    public var platformCompanyCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var signName: String?

    public var templateCode: String?

    public var templateParam: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expressCompanyCode != nil {
            map["ExpressCompanyCode"] = self.expressCompanyCode!
        }
        if self.mailNo != nil {
            map["MailNo"] = self.mailNo!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.platformCompanyCode != nil {
            map["PlatformCompanyCode"] = self.platformCompanyCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateParam != nil {
            map["TemplateParam"] = self.templateParam!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExpressCompanyCode"] as? String {
            self.expressCompanyCode = value
        }
        if let value = dict["MailNo"] as? String {
            self.mailNo = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PlatformCompanyCode"] as? String {
            self.platformCompanyCode = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateParam"] as? String {
            self.templateParam = value
        }
    }
}

public class SendLogisticsSmsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bizId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizId != nil {
                map["BizId"] = self.bizId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizId"] as? String {
                self.bizId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: SendLogisticsSmsResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SendLogisticsSmsResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class SendLogisticsSmsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendLogisticsSmsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SendLogisticsSmsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendSmsRequest : Tea.TeaModel {
    public var outId: String?

    public var ownerId: Int64?

    public var phoneNumbers: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var signName: String?

    public var smsUpExtendCode: String?

    public var templateCode: String?

    public var templateParam: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumbers != nil {
            map["PhoneNumbers"] = self.phoneNumbers!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        if self.smsUpExtendCode != nil {
            map["SmsUpExtendCode"] = self.smsUpExtendCode!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateParam != nil {
            map["TemplateParam"] = self.templateParam!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumbers"] as? String {
            self.phoneNumbers = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
        if let value = dict["SmsUpExtendCode"] as? String {
            self.smsUpExtendCode = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateParam"] as? String {
            self.templateParam = value
        }
    }
}

public class SendSmsResponseBody : Tea.TeaModel {
    public var bizId: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SendSmsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendSmsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SendSmsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SmsConversionIntlRequest : Tea.TeaModel {
    public var conversionTime: Int64?

    public var delivered: Bool?

    public var messageId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conversionTime != nil {
            map["ConversionTime"] = self.conversionTime!
        }
        if self.delivered != nil {
            map["Delivered"] = self.delivered!
        }
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConversionTime"] as? Int64 {
            self.conversionTime = value
        }
        if let value = dict["Delivered"] as? Bool {
            self.delivered = value
        }
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class SmsConversionIntlResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SmsConversionIntlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SmsConversionIntlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SmsConversionIntlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitSmsQualificationRequest : Tea.TeaModel {
    public class BusinessLicensePics : Tea.TeaModel {
        public var licensePic: String?

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
            if self.licensePic != nil {
                map["LicensePic"] = self.licensePic!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LicensePic"] as? String {
                self.licensePic = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class OtherFiles : Tea.TeaModel {
        public var licensePic: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.licensePic != nil {
                map["LicensePic"] = self.licensePic!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LicensePic"] as? String {
                self.licensePic = value
            }
        }
    }
    public var adminIDCardExpDate: String?

    public var adminIDCardFrontFace: String?

    public var adminIDCardNo: String?

    public var adminIDCardPic: String?

    public var adminIDCardType: String?

    public var adminName: String?

    public var adminPhoneNo: String?

    public var businessLicensePics: [SubmitSmsQualificationRequest.BusinessLicensePics]?

    public var bussinessLicenseExpDate: String?

    public var certifyCode: String?

    public var companyName: String?

    public var companyType: String?

    public var legalPersonIDCardNo: String?

    public var legalPersonIDCardType: String?

    public var legalPersonIdCardBackSide: String?

    public var legalPersonIdCardEffTime: String?

    public var legalPersonIdCardFrontSide: String?

    public var legalPersonName: String?

    public var organizationCode: String?

    public var otherFiles: [SubmitSmsQualificationRequest.OtherFiles]?

    public var ownerId: Int64?

    public var qualificationName: String?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var useBySelf: Bool?

    public var whetherShare: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adminIDCardExpDate != nil {
            map["AdminIDCardExpDate"] = self.adminIDCardExpDate!
        }
        if self.adminIDCardFrontFace != nil {
            map["AdminIDCardFrontFace"] = self.adminIDCardFrontFace!
        }
        if self.adminIDCardNo != nil {
            map["AdminIDCardNo"] = self.adminIDCardNo!
        }
        if self.adminIDCardPic != nil {
            map["AdminIDCardPic"] = self.adminIDCardPic!
        }
        if self.adminIDCardType != nil {
            map["AdminIDCardType"] = self.adminIDCardType!
        }
        if self.adminName != nil {
            map["AdminName"] = self.adminName!
        }
        if self.adminPhoneNo != nil {
            map["AdminPhoneNo"] = self.adminPhoneNo!
        }
        if self.businessLicensePics != nil {
            var tmp : [Any] = []
            for k in self.businessLicensePics! {
                tmp.append(k.toMap())
            }
            map["BusinessLicensePics"] = tmp
        }
        if self.bussinessLicenseExpDate != nil {
            map["BussinessLicenseExpDate"] = self.bussinessLicenseExpDate!
        }
        if self.certifyCode != nil {
            map["CertifyCode"] = self.certifyCode!
        }
        if self.companyName != nil {
            map["CompanyName"] = self.companyName!
        }
        if self.companyType != nil {
            map["CompanyType"] = self.companyType!
        }
        if self.legalPersonIDCardNo != nil {
            map["LegalPersonIDCardNo"] = self.legalPersonIDCardNo!
        }
        if self.legalPersonIDCardType != nil {
            map["LegalPersonIDCardType"] = self.legalPersonIDCardType!
        }
        if self.legalPersonIdCardBackSide != nil {
            map["LegalPersonIdCardBackSide"] = self.legalPersonIdCardBackSide!
        }
        if self.legalPersonIdCardEffTime != nil {
            map["LegalPersonIdCardEffTime"] = self.legalPersonIdCardEffTime!
        }
        if self.legalPersonIdCardFrontSide != nil {
            map["LegalPersonIdCardFrontSide"] = self.legalPersonIdCardFrontSide!
        }
        if self.legalPersonName != nil {
            map["LegalPersonName"] = self.legalPersonName!
        }
        if self.organizationCode != nil {
            map["OrganizationCode"] = self.organizationCode!
        }
        if self.otherFiles != nil {
            var tmp : [Any] = []
            for k in self.otherFiles! {
                tmp.append(k.toMap())
            }
            map["OtherFiles"] = tmp
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.qualificationName != nil {
            map["QualificationName"] = self.qualificationName!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.useBySelf != nil {
            map["UseBySelf"] = self.useBySelf!
        }
        if self.whetherShare != nil {
            map["WhetherShare"] = self.whetherShare!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdminIDCardExpDate"] as? String {
            self.adminIDCardExpDate = value
        }
        if let value = dict["AdminIDCardFrontFace"] as? String {
            self.adminIDCardFrontFace = value
        }
        if let value = dict["AdminIDCardNo"] as? String {
            self.adminIDCardNo = value
        }
        if let value = dict["AdminIDCardPic"] as? String {
            self.adminIDCardPic = value
        }
        if let value = dict["AdminIDCardType"] as? String {
            self.adminIDCardType = value
        }
        if let value = dict["AdminName"] as? String {
            self.adminName = value
        }
        if let value = dict["AdminPhoneNo"] as? String {
            self.adminPhoneNo = value
        }
        if let value = dict["BusinessLicensePics"] as? [Any?] {
            var tmp : [SubmitSmsQualificationRequest.BusinessLicensePics] = []
            for v in value {
                if v != nil {
                    var model = SubmitSmsQualificationRequest.BusinessLicensePics()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.businessLicensePics = tmp
        }
        if let value = dict["BussinessLicenseExpDate"] as? String {
            self.bussinessLicenseExpDate = value
        }
        if let value = dict["CertifyCode"] as? String {
            self.certifyCode = value
        }
        if let value = dict["CompanyName"] as? String {
            self.companyName = value
        }
        if let value = dict["CompanyType"] as? String {
            self.companyType = value
        }
        if let value = dict["LegalPersonIDCardNo"] as? String {
            self.legalPersonIDCardNo = value
        }
        if let value = dict["LegalPersonIDCardType"] as? String {
            self.legalPersonIDCardType = value
        }
        if let value = dict["LegalPersonIdCardBackSide"] as? String {
            self.legalPersonIdCardBackSide = value
        }
        if let value = dict["LegalPersonIdCardEffTime"] as? String {
            self.legalPersonIdCardEffTime = value
        }
        if let value = dict["LegalPersonIdCardFrontSide"] as? String {
            self.legalPersonIdCardFrontSide = value
        }
        if let value = dict["LegalPersonName"] as? String {
            self.legalPersonName = value
        }
        if let value = dict["OrganizationCode"] as? String {
            self.organizationCode = value
        }
        if let value = dict["OtherFiles"] as? [Any?] {
            var tmp : [SubmitSmsQualificationRequest.OtherFiles] = []
            for v in value {
                if v != nil {
                    var model = SubmitSmsQualificationRequest.OtherFiles()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.otherFiles = tmp
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["QualificationName"] as? String {
            self.qualificationName = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["UseBySelf"] as? Bool {
            self.useBySelf = value
        }
        if let value = dict["WhetherShare"] as? Bool {
            self.whetherShare = value
        }
    }
}

public class SubmitSmsQualificationShrinkRequest : Tea.TeaModel {
    public var adminIDCardExpDate: String?

    public var adminIDCardFrontFace: String?

    public var adminIDCardNo: String?

    public var adminIDCardPic: String?

    public var adminIDCardType: String?

    public var adminName: String?

    public var adminPhoneNo: String?

    public var businessLicensePicsShrink: String?

    public var bussinessLicenseExpDate: String?

    public var certifyCode: String?

    public var companyName: String?

    public var companyType: String?

    public var legalPersonIDCardNo: String?

    public var legalPersonIDCardType: String?

    public var legalPersonIdCardBackSide: String?

    public var legalPersonIdCardEffTime: String?

    public var legalPersonIdCardFrontSide: String?

    public var legalPersonName: String?

    public var organizationCode: String?

    public var otherFilesShrink: String?

    public var ownerId: Int64?

    public var qualificationName: String?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var useBySelf: Bool?

    public var whetherShare: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adminIDCardExpDate != nil {
            map["AdminIDCardExpDate"] = self.adminIDCardExpDate!
        }
        if self.adminIDCardFrontFace != nil {
            map["AdminIDCardFrontFace"] = self.adminIDCardFrontFace!
        }
        if self.adminIDCardNo != nil {
            map["AdminIDCardNo"] = self.adminIDCardNo!
        }
        if self.adminIDCardPic != nil {
            map["AdminIDCardPic"] = self.adminIDCardPic!
        }
        if self.adminIDCardType != nil {
            map["AdminIDCardType"] = self.adminIDCardType!
        }
        if self.adminName != nil {
            map["AdminName"] = self.adminName!
        }
        if self.adminPhoneNo != nil {
            map["AdminPhoneNo"] = self.adminPhoneNo!
        }
        if self.businessLicensePicsShrink != nil {
            map["BusinessLicensePics"] = self.businessLicensePicsShrink!
        }
        if self.bussinessLicenseExpDate != nil {
            map["BussinessLicenseExpDate"] = self.bussinessLicenseExpDate!
        }
        if self.certifyCode != nil {
            map["CertifyCode"] = self.certifyCode!
        }
        if self.companyName != nil {
            map["CompanyName"] = self.companyName!
        }
        if self.companyType != nil {
            map["CompanyType"] = self.companyType!
        }
        if self.legalPersonIDCardNo != nil {
            map["LegalPersonIDCardNo"] = self.legalPersonIDCardNo!
        }
        if self.legalPersonIDCardType != nil {
            map["LegalPersonIDCardType"] = self.legalPersonIDCardType!
        }
        if self.legalPersonIdCardBackSide != nil {
            map["LegalPersonIdCardBackSide"] = self.legalPersonIdCardBackSide!
        }
        if self.legalPersonIdCardEffTime != nil {
            map["LegalPersonIdCardEffTime"] = self.legalPersonIdCardEffTime!
        }
        if self.legalPersonIdCardFrontSide != nil {
            map["LegalPersonIdCardFrontSide"] = self.legalPersonIdCardFrontSide!
        }
        if self.legalPersonName != nil {
            map["LegalPersonName"] = self.legalPersonName!
        }
        if self.organizationCode != nil {
            map["OrganizationCode"] = self.organizationCode!
        }
        if self.otherFilesShrink != nil {
            map["OtherFiles"] = self.otherFilesShrink!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.qualificationName != nil {
            map["QualificationName"] = self.qualificationName!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.useBySelf != nil {
            map["UseBySelf"] = self.useBySelf!
        }
        if self.whetherShare != nil {
            map["WhetherShare"] = self.whetherShare!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdminIDCardExpDate"] as? String {
            self.adminIDCardExpDate = value
        }
        if let value = dict["AdminIDCardFrontFace"] as? String {
            self.adminIDCardFrontFace = value
        }
        if let value = dict["AdminIDCardNo"] as? String {
            self.adminIDCardNo = value
        }
        if let value = dict["AdminIDCardPic"] as? String {
            self.adminIDCardPic = value
        }
        if let value = dict["AdminIDCardType"] as? String {
            self.adminIDCardType = value
        }
        if let value = dict["AdminName"] as? String {
            self.adminName = value
        }
        if let value = dict["AdminPhoneNo"] as? String {
            self.adminPhoneNo = value
        }
        if let value = dict["BusinessLicensePics"] as? String {
            self.businessLicensePicsShrink = value
        }
        if let value = dict["BussinessLicenseExpDate"] as? String {
            self.bussinessLicenseExpDate = value
        }
        if let value = dict["CertifyCode"] as? String {
            self.certifyCode = value
        }
        if let value = dict["CompanyName"] as? String {
            self.companyName = value
        }
        if let value = dict["CompanyType"] as? String {
            self.companyType = value
        }
        if let value = dict["LegalPersonIDCardNo"] as? String {
            self.legalPersonIDCardNo = value
        }
        if let value = dict["LegalPersonIDCardType"] as? String {
            self.legalPersonIDCardType = value
        }
        if let value = dict["LegalPersonIdCardBackSide"] as? String {
            self.legalPersonIdCardBackSide = value
        }
        if let value = dict["LegalPersonIdCardEffTime"] as? String {
            self.legalPersonIdCardEffTime = value
        }
        if let value = dict["LegalPersonIdCardFrontSide"] as? String {
            self.legalPersonIdCardFrontSide = value
        }
        if let value = dict["LegalPersonName"] as? String {
            self.legalPersonName = value
        }
        if let value = dict["OrganizationCode"] as? String {
            self.organizationCode = value
        }
        if let value = dict["OtherFiles"] as? String {
            self.otherFilesShrink = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["QualificationName"] as? String {
            self.qualificationName = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["UseBySelf"] as? Bool {
            self.useBySelf = value
        }
        if let value = dict["WhetherShare"] as? Bool {
            self.whetherShare = value
        }
    }
}

public class SubmitSmsQualificationResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
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

public class SubmitSmsQualificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitSmsQualificationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SubmitSmsQualificationResponseBody()
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
    public var ownerId: Int64?

    public var prodCode: String?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ProdCode"] as? String {
            self.prodCode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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
    public var code: String?

    public var data: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
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

    public var ownerId: Int64?

    public var prodCode: String?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.prodCode != nil {
            map["ProdCode"] = self.prodCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ProdCode"] as? String {
            self.prodCode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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
    public var code: String?

    public var data: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if let value = dict["Data"] as? String {
            self.data = value
        }
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

public class UpdateExtCodeSignRequest : Tea.TeaModel {
    public var existExtCode: String?

    public var newExtCode: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var signName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.existExtCode != nil {
            map["ExistExtCode"] = self.existExtCode!
        }
        if self.newExtCode != nil {
            map["NewExtCode"] = self.newExtCode!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExistExtCode"] as? String {
            self.existExtCode = value
        }
        if let value = dict["NewExtCode"] as? String {
            self.newExtCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
    }
}

public class UpdateExtCodeSignResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
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

public class UpdateExtCodeSignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateExtCodeSignResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateExtCodeSignResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSmsQualificationRequest : Tea.TeaModel {
    public class BusinessLicensePics : Tea.TeaModel {
        public var licensePic: String?

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
            if self.licensePic != nil {
                map["LicensePic"] = self.licensePic!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LicensePic"] as? String {
                self.licensePic = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public class OtherFiles : Tea.TeaModel {
        public var licensePic: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.licensePic != nil {
                map["LicensePic"] = self.licensePic!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LicensePic"] as? String {
                self.licensePic = value
            }
        }
    }
    public var adminIDCardExpDate: String?

    public var adminIDCardFrontFace: String?

    public var adminIDCardNo: String?

    public var adminIDCardPic: String?

    public var adminIDCardType: String?

    public var adminName: String?

    public var adminPhoneNo: String?

    public var businessLicensePics: [UpdateSmsQualificationRequest.BusinessLicensePics]?

    public var bussinessLicenseExpDate: String?

    public var certifyCode: String?

    public var companyName: String?

    public var legalPersonIDCardNo: String?

    public var legalPersonIDCardType: String?

    public var legalPersonIdCardBackSide: String?

    public var legalPersonIdCardEffTime: String?

    public var legalPersonIdCardFrontSide: String?

    public var legalPersonName: String?

    public var orderId: Int64?

    public var otherFiles: [UpdateSmsQualificationRequest.OtherFiles]?

    public var ownerId: Int64?

    public var qualificationGroupId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adminIDCardExpDate != nil {
            map["AdminIDCardExpDate"] = self.adminIDCardExpDate!
        }
        if self.adminIDCardFrontFace != nil {
            map["AdminIDCardFrontFace"] = self.adminIDCardFrontFace!
        }
        if self.adminIDCardNo != nil {
            map["AdminIDCardNo"] = self.adminIDCardNo!
        }
        if self.adminIDCardPic != nil {
            map["AdminIDCardPic"] = self.adminIDCardPic!
        }
        if self.adminIDCardType != nil {
            map["AdminIDCardType"] = self.adminIDCardType!
        }
        if self.adminName != nil {
            map["AdminName"] = self.adminName!
        }
        if self.adminPhoneNo != nil {
            map["AdminPhoneNo"] = self.adminPhoneNo!
        }
        if self.businessLicensePics != nil {
            var tmp : [Any] = []
            for k in self.businessLicensePics! {
                tmp.append(k.toMap())
            }
            map["BusinessLicensePics"] = tmp
        }
        if self.bussinessLicenseExpDate != nil {
            map["BussinessLicenseExpDate"] = self.bussinessLicenseExpDate!
        }
        if self.certifyCode != nil {
            map["CertifyCode"] = self.certifyCode!
        }
        if self.companyName != nil {
            map["CompanyName"] = self.companyName!
        }
        if self.legalPersonIDCardNo != nil {
            map["LegalPersonIDCardNo"] = self.legalPersonIDCardNo!
        }
        if self.legalPersonIDCardType != nil {
            map["LegalPersonIDCardType"] = self.legalPersonIDCardType!
        }
        if self.legalPersonIdCardBackSide != nil {
            map["LegalPersonIdCardBackSide"] = self.legalPersonIdCardBackSide!
        }
        if self.legalPersonIdCardEffTime != nil {
            map["LegalPersonIdCardEffTime"] = self.legalPersonIdCardEffTime!
        }
        if self.legalPersonIdCardFrontSide != nil {
            map["LegalPersonIdCardFrontSide"] = self.legalPersonIdCardFrontSide!
        }
        if self.legalPersonName != nil {
            map["LegalPersonName"] = self.legalPersonName!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.otherFiles != nil {
            var tmp : [Any] = []
            for k in self.otherFiles! {
                tmp.append(k.toMap())
            }
            map["OtherFiles"] = tmp
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.qualificationGroupId != nil {
            map["QualificationGroupId"] = self.qualificationGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdminIDCardExpDate"] as? String {
            self.adminIDCardExpDate = value
        }
        if let value = dict["AdminIDCardFrontFace"] as? String {
            self.adminIDCardFrontFace = value
        }
        if let value = dict["AdminIDCardNo"] as? String {
            self.adminIDCardNo = value
        }
        if let value = dict["AdminIDCardPic"] as? String {
            self.adminIDCardPic = value
        }
        if let value = dict["AdminIDCardType"] as? String {
            self.adminIDCardType = value
        }
        if let value = dict["AdminName"] as? String {
            self.adminName = value
        }
        if let value = dict["AdminPhoneNo"] as? String {
            self.adminPhoneNo = value
        }
        if let value = dict["BusinessLicensePics"] as? [Any?] {
            var tmp : [UpdateSmsQualificationRequest.BusinessLicensePics] = []
            for v in value {
                if v != nil {
                    var model = UpdateSmsQualificationRequest.BusinessLicensePics()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.businessLicensePics = tmp
        }
        if let value = dict["BussinessLicenseExpDate"] as? String {
            self.bussinessLicenseExpDate = value
        }
        if let value = dict["CertifyCode"] as? String {
            self.certifyCode = value
        }
        if let value = dict["CompanyName"] as? String {
            self.companyName = value
        }
        if let value = dict["LegalPersonIDCardNo"] as? String {
            self.legalPersonIDCardNo = value
        }
        if let value = dict["LegalPersonIDCardType"] as? String {
            self.legalPersonIDCardType = value
        }
        if let value = dict["LegalPersonIdCardBackSide"] as? String {
            self.legalPersonIdCardBackSide = value
        }
        if let value = dict["LegalPersonIdCardEffTime"] as? String {
            self.legalPersonIdCardEffTime = value
        }
        if let value = dict["LegalPersonIdCardFrontSide"] as? String {
            self.legalPersonIdCardFrontSide = value
        }
        if let value = dict["LegalPersonName"] as? String {
            self.legalPersonName = value
        }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["OtherFiles"] as? [Any?] {
            var tmp : [UpdateSmsQualificationRequest.OtherFiles] = []
            for v in value {
                if v != nil {
                    var model = UpdateSmsQualificationRequest.OtherFiles()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.otherFiles = tmp
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["QualificationGroupId"] as? Int64 {
            self.qualificationGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class UpdateSmsQualificationShrinkRequest : Tea.TeaModel {
    public var adminIDCardExpDate: String?

    public var adminIDCardFrontFace: String?

    public var adminIDCardNo: String?

    public var adminIDCardPic: String?

    public var adminIDCardType: String?

    public var adminName: String?

    public var adminPhoneNo: String?

    public var businessLicensePicsShrink: String?

    public var bussinessLicenseExpDate: String?

    public var certifyCode: String?

    public var companyName: String?

    public var legalPersonIDCardNo: String?

    public var legalPersonIDCardType: String?

    public var legalPersonIdCardBackSide: String?

    public var legalPersonIdCardEffTime: String?

    public var legalPersonIdCardFrontSide: String?

    public var legalPersonName: String?

    public var orderId: Int64?

    public var otherFilesShrink: String?

    public var ownerId: Int64?

    public var qualificationGroupId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adminIDCardExpDate != nil {
            map["AdminIDCardExpDate"] = self.adminIDCardExpDate!
        }
        if self.adminIDCardFrontFace != nil {
            map["AdminIDCardFrontFace"] = self.adminIDCardFrontFace!
        }
        if self.adminIDCardNo != nil {
            map["AdminIDCardNo"] = self.adminIDCardNo!
        }
        if self.adminIDCardPic != nil {
            map["AdminIDCardPic"] = self.adminIDCardPic!
        }
        if self.adminIDCardType != nil {
            map["AdminIDCardType"] = self.adminIDCardType!
        }
        if self.adminName != nil {
            map["AdminName"] = self.adminName!
        }
        if self.adminPhoneNo != nil {
            map["AdminPhoneNo"] = self.adminPhoneNo!
        }
        if self.businessLicensePicsShrink != nil {
            map["BusinessLicensePics"] = self.businessLicensePicsShrink!
        }
        if self.bussinessLicenseExpDate != nil {
            map["BussinessLicenseExpDate"] = self.bussinessLicenseExpDate!
        }
        if self.certifyCode != nil {
            map["CertifyCode"] = self.certifyCode!
        }
        if self.companyName != nil {
            map["CompanyName"] = self.companyName!
        }
        if self.legalPersonIDCardNo != nil {
            map["LegalPersonIDCardNo"] = self.legalPersonIDCardNo!
        }
        if self.legalPersonIDCardType != nil {
            map["LegalPersonIDCardType"] = self.legalPersonIDCardType!
        }
        if self.legalPersonIdCardBackSide != nil {
            map["LegalPersonIdCardBackSide"] = self.legalPersonIdCardBackSide!
        }
        if self.legalPersonIdCardEffTime != nil {
            map["LegalPersonIdCardEffTime"] = self.legalPersonIdCardEffTime!
        }
        if self.legalPersonIdCardFrontSide != nil {
            map["LegalPersonIdCardFrontSide"] = self.legalPersonIdCardFrontSide!
        }
        if self.legalPersonName != nil {
            map["LegalPersonName"] = self.legalPersonName!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.otherFilesShrink != nil {
            map["OtherFiles"] = self.otherFilesShrink!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.qualificationGroupId != nil {
            map["QualificationGroupId"] = self.qualificationGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdminIDCardExpDate"] as? String {
            self.adminIDCardExpDate = value
        }
        if let value = dict["AdminIDCardFrontFace"] as? String {
            self.adminIDCardFrontFace = value
        }
        if let value = dict["AdminIDCardNo"] as? String {
            self.adminIDCardNo = value
        }
        if let value = dict["AdminIDCardPic"] as? String {
            self.adminIDCardPic = value
        }
        if let value = dict["AdminIDCardType"] as? String {
            self.adminIDCardType = value
        }
        if let value = dict["AdminName"] as? String {
            self.adminName = value
        }
        if let value = dict["AdminPhoneNo"] as? String {
            self.adminPhoneNo = value
        }
        if let value = dict["BusinessLicensePics"] as? String {
            self.businessLicensePicsShrink = value
        }
        if let value = dict["BussinessLicenseExpDate"] as? String {
            self.bussinessLicenseExpDate = value
        }
        if let value = dict["CertifyCode"] as? String {
            self.certifyCode = value
        }
        if let value = dict["CompanyName"] as? String {
            self.companyName = value
        }
        if let value = dict["LegalPersonIDCardNo"] as? String {
            self.legalPersonIDCardNo = value
        }
        if let value = dict["LegalPersonIDCardType"] as? String {
            self.legalPersonIDCardType = value
        }
        if let value = dict["LegalPersonIdCardBackSide"] as? String {
            self.legalPersonIdCardBackSide = value
        }
        if let value = dict["LegalPersonIdCardEffTime"] as? String {
            self.legalPersonIdCardEffTime = value
        }
        if let value = dict["LegalPersonIdCardFrontSide"] as? String {
            self.legalPersonIdCardFrontSide = value
        }
        if let value = dict["LegalPersonName"] as? String {
            self.legalPersonName = value
        }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["OtherFiles"] as? String {
            self.otherFilesShrink = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["QualificationGroupId"] as? Int64 {
            self.qualificationGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class UpdateSmsQualificationResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
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

public class UpdateSmsQualificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSmsQualificationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateSmsQualificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSmsSignRequest : Tea.TeaModel {
    public var appIcpRecordId: Int64?

    public var applySceneContent: String?

    public var authorizationLetterId: Int64?

    public var moreData: [String]?

    public var ownerId: Int64?

    public var qualificationId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var signName: String?

    public var signSource: Int32?

    public var signType: Int32?

    public var thirdParty: Bool?

    public var trademarkId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appIcpRecordId != nil {
            map["AppIcpRecordId"] = self.appIcpRecordId!
        }
        if self.applySceneContent != nil {
            map["ApplySceneContent"] = self.applySceneContent!
        }
        if self.authorizationLetterId != nil {
            map["AuthorizationLetterId"] = self.authorizationLetterId!
        }
        if self.moreData != nil {
            map["MoreData"] = self.moreData!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.qualificationId != nil {
            map["QualificationId"] = self.qualificationId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        if self.signSource != nil {
            map["SignSource"] = self.signSource!
        }
        if self.signType != nil {
            map["SignType"] = self.signType!
        }
        if self.thirdParty != nil {
            map["ThirdParty"] = self.thirdParty!
        }
        if self.trademarkId != nil {
            map["TrademarkId"] = self.trademarkId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppIcpRecordId"] as? Int64 {
            self.appIcpRecordId = value
        }
        if let value = dict["ApplySceneContent"] as? String {
            self.applySceneContent = value
        }
        if let value = dict["AuthorizationLetterId"] as? Int64 {
            self.authorizationLetterId = value
        }
        if let value = dict["MoreData"] as? [String] {
            self.moreData = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["QualificationId"] as? Int64 {
            self.qualificationId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
        if let value = dict["SignSource"] as? Int32 {
            self.signSource = value
        }
        if let value = dict["SignType"] as? Int32 {
            self.signType = value
        }
        if let value = dict["ThirdParty"] as? Bool {
            self.thirdParty = value
        }
        if let value = dict["TrademarkId"] as? Int64 {
            self.trademarkId = value
        }
    }
}

public class UpdateSmsSignShrinkRequest : Tea.TeaModel {
    public var appIcpRecordId: Int64?

    public var applySceneContent: String?

    public var authorizationLetterId: Int64?

    public var moreDataShrink: String?

    public var ownerId: Int64?

    public var qualificationId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var signName: String?

    public var signSource: Int32?

    public var signType: Int32?

    public var thirdParty: Bool?

    public var trademarkId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appIcpRecordId != nil {
            map["AppIcpRecordId"] = self.appIcpRecordId!
        }
        if self.applySceneContent != nil {
            map["ApplySceneContent"] = self.applySceneContent!
        }
        if self.authorizationLetterId != nil {
            map["AuthorizationLetterId"] = self.authorizationLetterId!
        }
        if self.moreDataShrink != nil {
            map["MoreData"] = self.moreDataShrink!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.qualificationId != nil {
            map["QualificationId"] = self.qualificationId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        if self.signSource != nil {
            map["SignSource"] = self.signSource!
        }
        if self.signType != nil {
            map["SignType"] = self.signType!
        }
        if self.thirdParty != nil {
            map["ThirdParty"] = self.thirdParty!
        }
        if self.trademarkId != nil {
            map["TrademarkId"] = self.trademarkId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppIcpRecordId"] as? Int64 {
            self.appIcpRecordId = value
        }
        if let value = dict["ApplySceneContent"] as? String {
            self.applySceneContent = value
        }
        if let value = dict["AuthorizationLetterId"] as? Int64 {
            self.authorizationLetterId = value
        }
        if let value = dict["MoreData"] as? String {
            self.moreDataShrink = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["QualificationId"] as? Int64 {
            self.qualificationId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
        if let value = dict["SignSource"] as? Int32 {
            self.signSource = value
        }
        if let value = dict["SignType"] as? Int32 {
            self.signType = value
        }
        if let value = dict["ThirdParty"] as? Bool {
            self.thirdParty = value
        }
        if let value = dict["TrademarkId"] as? Int64 {
            self.trademarkId = value
        }
    }
}

public class UpdateSmsSignResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var orderId: String?

    public var requestId: String?

    public var signName: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SignName"] as? String {
            self.signName = value
        }
    }
}

public class UpdateSmsSignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSmsSignResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateSmsSignResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSmsTemplateRequest : Tea.TeaModel {
    public var applySceneContent: String?

    public var intlType: Int32?

    public var moreData: [String]?

    public var ownerId: Int64?

    public var relatedSignName: String?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var templateCode: String?

    public var templateContent: String?

    public var templateName: String?

    public var templateRule: String?

    public var templateType: Int32?

    public var trafficDriving: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applySceneContent != nil {
            map["ApplySceneContent"] = self.applySceneContent!
        }
        if self.intlType != nil {
            map["IntlType"] = self.intlType!
        }
        if self.moreData != nil {
            map["MoreData"] = self.moreData!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.relatedSignName != nil {
            map["RelatedSignName"] = self.relatedSignName!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateContent != nil {
            map["TemplateContent"] = self.templateContent!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateRule != nil {
            map["TemplateRule"] = self.templateRule!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        if self.trafficDriving != nil {
            map["TrafficDriving"] = self.trafficDriving!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplySceneContent"] as? String {
            self.applySceneContent = value
        }
        if let value = dict["IntlType"] as? Int32 {
            self.intlType = value
        }
        if let value = dict["MoreData"] as? [String] {
            self.moreData = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RelatedSignName"] as? String {
            self.relatedSignName = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateContent"] as? String {
            self.templateContent = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateRule"] as? String {
            self.templateRule = value
        }
        if let value = dict["TemplateType"] as? Int32 {
            self.templateType = value
        }
        if let value = dict["TrafficDriving"] as? String {
            self.trafficDriving = value
        }
    }
}

public class UpdateSmsTemplateShrinkRequest : Tea.TeaModel {
    public var applySceneContent: String?

    public var intlType: Int32?

    public var moreDataShrink: String?

    public var ownerId: Int64?

    public var relatedSignName: String?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var templateCode: String?

    public var templateContent: String?

    public var templateName: String?

    public var templateRule: String?

    public var templateType: Int32?

    public var trafficDriving: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applySceneContent != nil {
            map["ApplySceneContent"] = self.applySceneContent!
        }
        if self.intlType != nil {
            map["IntlType"] = self.intlType!
        }
        if self.moreDataShrink != nil {
            map["MoreData"] = self.moreDataShrink!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.relatedSignName != nil {
            map["RelatedSignName"] = self.relatedSignName!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateContent != nil {
            map["TemplateContent"] = self.templateContent!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateRule != nil {
            map["TemplateRule"] = self.templateRule!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        if self.trafficDriving != nil {
            map["TrafficDriving"] = self.trafficDriving!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplySceneContent"] as? String {
            self.applySceneContent = value
        }
        if let value = dict["IntlType"] as? Int32 {
            self.intlType = value
        }
        if let value = dict["MoreData"] as? String {
            self.moreDataShrink = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RelatedSignName"] as? String {
            self.relatedSignName = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateContent"] as? String {
            self.templateContent = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateRule"] as? String {
            self.templateRule = value
        }
        if let value = dict["TemplateType"] as? Int32 {
            self.templateType = value
        }
        if let value = dict["TrafficDriving"] as? String {
            self.trafficDriving = value
        }
    }
}

public class UpdateSmsTemplateResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var orderId: String?

    public var requestId: String?

    public var templateCode: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
    }
}

public class UpdateSmsTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSmsTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateSmsTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ValidPhoneCodeRequest : Tea.TeaModel {
    public var certifyCode: String?

    public var ownerId: Int64?

    public var phoneNo: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certifyCode != nil {
            map["CertifyCode"] = self.certifyCode!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNo != nil {
            map["PhoneNo"] = self.phoneNo!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertifyCode"] as? String {
            self.certifyCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNo"] as? String {
            self.phoneNo = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ValidPhoneCodeResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
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

public class ValidPhoneCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ValidPhoneCodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ValidPhoneCodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class VerifyLogisticsSmsMailNoRequest : Tea.TeaModel {
    public var expressCompanyCode: String?

    public var mailNo: String?

    public var ownerId: Int64?

    public var platformCompanyCode: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expressCompanyCode != nil {
            map["ExpressCompanyCode"] = self.expressCompanyCode!
        }
        if self.mailNo != nil {
            map["MailNo"] = self.mailNo!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.platformCompanyCode != nil {
            map["PlatformCompanyCode"] = self.platformCompanyCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExpressCompanyCode"] as? String {
            self.expressCompanyCode = value
        }
        if let value = dict["MailNo"] as? String {
            self.mailNo = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PlatformCompanyCode"] as? String {
            self.platformCompanyCode = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class VerifyLogisticsSmsMailNoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var expressCompanyCode: String?

        public var mobileSuffix: String?

        public var verifyResult: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expressCompanyCode != nil {
                map["ExpressCompanyCode"] = self.expressCompanyCode!
            }
            if self.mobileSuffix != nil {
                map["MobileSuffix"] = self.mobileSuffix!
            }
            if self.verifyResult != nil {
                map["VerifyResult"] = self.verifyResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExpressCompanyCode"] as? String {
                self.expressCompanyCode = value
            }
            if let value = dict["MobileSuffix"] as? String {
                self.mobileSuffix = value
            }
            if let value = dict["VerifyResult"] as? Bool {
                self.verifyResult = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: VerifyLogisticsSmsMailNoResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = VerifyLogisticsSmsMailNoResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class VerifyLogisticsSmsMailNoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyLogisticsSmsMailNoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = VerifyLogisticsSmsMailNoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
