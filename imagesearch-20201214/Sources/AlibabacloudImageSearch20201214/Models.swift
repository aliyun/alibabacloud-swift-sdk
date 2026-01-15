import Foundation
import Tea
import TeaUtils
import DarabonbaXML
import AlibabaCloudCredentials
import TeaFileForm
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddImageRequest : Tea.TeaModel {
    public var categoryId: Int32?

    public var crop: Bool?

    public var customContent: String?

    public var instanceName: String?

    public var intAttr: Int32?

    public var intAttr2: Int32?

    public var intAttr3: Int32?

    public var intAttr4: Int32?

    public var picContent: String?

    public var picName: String?

    public var productId: String?

    public var region: String?

    public var strAttr: String?

    public var strAttr2: String?

    public var strAttr3: String?

    public var strAttr4: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.crop != nil {
            map["Crop"] = self.crop!
        }
        if self.customContent != nil {
            map["CustomContent"] = self.customContent!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.intAttr != nil {
            map["IntAttr"] = self.intAttr!
        }
        if self.intAttr2 != nil {
            map["IntAttr2"] = self.intAttr2!
        }
        if self.intAttr3 != nil {
            map["IntAttr3"] = self.intAttr3!
        }
        if self.intAttr4 != nil {
            map["IntAttr4"] = self.intAttr4!
        }
        if self.picContent != nil {
            map["PicContent"] = self.picContent!
        }
        if self.picName != nil {
            map["PicName"] = self.picName!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.strAttr != nil {
            map["StrAttr"] = self.strAttr!
        }
        if self.strAttr2 != nil {
            map["StrAttr2"] = self.strAttr2!
        }
        if self.strAttr3 != nil {
            map["StrAttr3"] = self.strAttr3!
        }
        if self.strAttr4 != nil {
            map["StrAttr4"] = self.strAttr4!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryId"] as? Int32 {
            self.categoryId = value
        }
        if let value = dict["Crop"] as? Bool {
            self.crop = value
        }
        if let value = dict["CustomContent"] as? String {
            self.customContent = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["IntAttr"] as? Int32 {
            self.intAttr = value
        }
        if let value = dict["IntAttr2"] as? Int32 {
            self.intAttr2 = value
        }
        if let value = dict["IntAttr3"] as? Int32 {
            self.intAttr3 = value
        }
        if let value = dict["IntAttr4"] as? Int32 {
            self.intAttr4 = value
        }
        if let value = dict["PicContent"] as? String {
            self.picContent = value
        }
        if let value = dict["PicName"] as? String {
            self.picName = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["StrAttr"] as? String {
            self.strAttr = value
        }
        if let value = dict["StrAttr2"] as? String {
            self.strAttr2 = value
        }
        if let value = dict["StrAttr3"] as? String {
            self.strAttr3 = value
        }
        if let value = dict["StrAttr4"] as? String {
            self.strAttr4 = value
        }
    }
}

public class AddImageAdvanceRequest : Tea.TeaModel {
    public var categoryId: Int32?

    public var crop: Bool?

    public var customContent: String?

    public var instanceName: String?

    public var intAttr: Int32?

    public var intAttr2: Int32?

    public var intAttr3: Int32?

    public var intAttr4: Int32?

    public var picContentObject: InputStream?

    public var picName: String?

    public var productId: String?

    public var region: String?

    public var strAttr: String?

    public var strAttr2: String?

    public var strAttr3: String?

    public var strAttr4: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.crop != nil {
            map["Crop"] = self.crop!
        }
        if self.customContent != nil {
            map["CustomContent"] = self.customContent!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.intAttr != nil {
            map["IntAttr"] = self.intAttr!
        }
        if self.intAttr2 != nil {
            map["IntAttr2"] = self.intAttr2!
        }
        if self.intAttr3 != nil {
            map["IntAttr3"] = self.intAttr3!
        }
        if self.intAttr4 != nil {
            map["IntAttr4"] = self.intAttr4!
        }
        if self.picContentObject != nil {
            map["PicContent"] = self.picContentObject!
        }
        if self.picName != nil {
            map["PicName"] = self.picName!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.strAttr != nil {
            map["StrAttr"] = self.strAttr!
        }
        if self.strAttr2 != nil {
            map["StrAttr2"] = self.strAttr2!
        }
        if self.strAttr3 != nil {
            map["StrAttr3"] = self.strAttr3!
        }
        if self.strAttr4 != nil {
            map["StrAttr4"] = self.strAttr4!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryId"] as? Int32 {
            self.categoryId = value
        }
        if let value = dict["Crop"] as? Bool {
            self.crop = value
        }
        if let value = dict["CustomContent"] as? String {
            self.customContent = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["IntAttr"] as? Int32 {
            self.intAttr = value
        }
        if let value = dict["IntAttr2"] as? Int32 {
            self.intAttr2 = value
        }
        if let value = dict["IntAttr3"] as? Int32 {
            self.intAttr3 = value
        }
        if let value = dict["IntAttr4"] as? Int32 {
            self.intAttr4 = value
        }
        if let value = dict["PicContent"] as? InputStream {
            self.picContentObject = value
        }
        if let value = dict["PicName"] as? String {
            self.picName = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["StrAttr"] as? String {
            self.strAttr = value
        }
        if let value = dict["StrAttr2"] as? String {
            self.strAttr2 = value
        }
        if let value = dict["StrAttr3"] as? String {
            self.strAttr3 = value
        }
        if let value = dict["StrAttr4"] as? String {
            self.strAttr4 = value
        }
    }
}

public class AddImageResponseBody : Tea.TeaModel {
    public class PicInfo : Tea.TeaModel {
        public var categoryId: Int32?

        public var region: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryId"] as? Int32 {
                self.categoryId = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
        }
    }
    public var code: Int32?

    public var message: String?

    public var picInfo: AddImageResponseBody.PicInfo?

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
        try self.picInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.picInfo != nil {
            map["PicInfo"] = self.picInfo?.toMap()
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PicInfo"] as? [String: Any?] {
            var model = AddImageResponseBody.PicInfo()
            model.fromMap(value)
            self.picInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddImageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CompareSimilarByImageRequest : Tea.TeaModel {
    public var instanceName: String?

    public var primaryPicContent: String?

    public var secondaryPicContent: String?

    public override init() {
        super.init()
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
        if self.primaryPicContent != nil {
            map["PrimaryPicContent"] = self.primaryPicContent!
        }
        if self.secondaryPicContent != nil {
            map["SecondaryPicContent"] = self.secondaryPicContent!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["PrimaryPicContent"] as? String {
            self.primaryPicContent = value
        }
        if let value = dict["SecondaryPicContent"] as? String {
            self.secondaryPicContent = value
        }
    }
}

public class CompareSimilarByImageAdvanceRequest : Tea.TeaModel {
    public var instanceName: String?

    public var primaryPicContentObject: InputStream?

    public var secondaryPicContentObject: InputStream?

    public override init() {
        super.init()
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
        if self.primaryPicContentObject != nil {
            map["PrimaryPicContent"] = self.primaryPicContentObject!
        }
        if self.secondaryPicContentObject != nil {
            map["SecondaryPicContent"] = self.secondaryPicContentObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["PrimaryPicContent"] as? InputStream {
            self.primaryPicContentObject = value
        }
        if let value = dict["SecondaryPicContent"] as? InputStream {
            self.secondaryPicContentObject = value
        }
    }
}

public class CompareSimilarByImageResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthAction"] as? String {
                self.authAction = value
            }
            if let value = dict["AuthPrincipalDisplayName"] as? String {
                self.authPrincipalDisplayName = value
            }
            if let value = dict["AuthPrincipalOwnerId"] as? String {
                self.authPrincipalOwnerId = value
            }
            if let value = dict["AuthPrincipalType"] as? String {
                self.authPrincipalType = value
            }
            if let value = dict["EncodedDiagnosticMessage"] as? String {
                self.encodedDiagnosticMessage = value
            }
            if let value = dict["NoPermissionType"] as? String {
                self.noPermissionType = value
            }
            if let value = dict["PolicyType"] as? String {
                self.policyType = value
            }
        }
    }
    public var accessDeniedDetail: CompareSimilarByImageResponseBody.AccessDeniedDetail?

    public var code: Int32?

    public var msg: String?

    public var requestId: String?

    public var score: Double?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.score != nil {
            map["Score"] = self.score!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? [String: Any?] {
            var model = CompareSimilarByImageResponseBody.AccessDeniedDetail()
            model.fromMap(value)
            self.accessDeniedDetail = model
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Score"] as? Double {
            self.score = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CompareSimilarByImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CompareSimilarByImageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CompareSimilarByImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteImageRequest : Tea.TeaModel {
    public var filter: String?

    public var instanceName: String?

    public var isDeleteByFilter: Bool?

    public var picName: String?

    public var productId: String?

    public override init() {
        super.init()
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
            map["Filter"] = self.filter!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.isDeleteByFilter != nil {
            map["IsDeleteByFilter"] = self.isDeleteByFilter!
        }
        if self.picName != nil {
            map["PicName"] = self.picName!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["IsDeleteByFilter"] as? Bool {
            self.isDeleteByFilter = value
        }
        if let value = dict["PicName"] as? String {
            self.picName = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
    }
}

public class DeleteImageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var picNames: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.picNames != nil {
                map["PicNames"] = self.picNames!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PicNames"] as? [String] {
                self.picNames = value
            }
        }
    }
    public var code: Int32?

    public var data: DeleteImageResponseBody.Data?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DeleteImageResponseBody.Data()
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

public class DeleteImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteImageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetailRequest : Tea.TeaModel {
    public var instanceName: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
    }
}

public class DetailResponseBody : Tea.TeaModel {
    public class Instance : Tea.TeaModel {
        public var capacity: Int32?

        public var name: String?

        public var qps: Int32?

        public var region: String?

        public var serviceType: Int32?

        public var totalCount: Int64?

        public var utcCreate: String?

        public var utcExpireTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.capacity != nil {
                map["Capacity"] = self.capacity!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.qps != nil {
                map["Qps"] = self.qps!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.serviceType != nil {
                map["ServiceType"] = self.serviceType!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.utcCreate != nil {
                map["UtcCreate"] = self.utcCreate!
            }
            if self.utcExpireTime != nil {
                map["UtcExpireTime"] = self.utcExpireTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Capacity"] as? Int32 {
                self.capacity = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Qps"] as? Int32 {
                self.qps = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["ServiceType"] as? Int32 {
                self.serviceType = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["UtcCreate"] as? String {
                self.utcCreate = value
            }
            if let value = dict["UtcExpireTime"] as? String {
                self.utcExpireTime = value
            }
        }
    }
    public var instance: DetailResponseBody.Instance?

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
        try self.instance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instance != nil {
            map["Instance"] = self.instance?.toMap()
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
        if let value = dict["Instance"] as? [String: Any?] {
            var model = DetailResponseBody.Instance()
            model.fromMap(value)
            self.instance = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DumpMetaRequest : Tea.TeaModel {
    public var instanceName: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
    }
}

public class DumpMetaResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var dumpMetaStatus: String?

        public var id: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dumpMetaStatus != nil {
                map["DumpMetaStatus"] = self.dumpMetaStatus!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DumpMetaStatus"] as? String {
                self.dumpMetaStatus = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
        }
    }
    public var data: DumpMetaResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = DumpMetaResponseBody.Data()
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

public class DumpMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DumpMetaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DumpMetaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DumpMetaListRequest : Tea.TeaModel {
    public var id: Int64?

    public var instanceName: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class DumpMetaListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DumpMetaList : Tea.TeaModel {
            public var code: String?

            public var id: Int64?

            public var metaUrl: String?

            public var msg: String?

            public var status: String?

            public var utcCreate: String?

            public var utcModified: Int64?

            public override init() {
                super.init()
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
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.metaUrl != nil {
                    map["MetaUrl"] = self.metaUrl!
                }
                if self.msg != nil {
                    map["Msg"] = self.msg!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.utcCreate != nil {
                    map["UtcCreate"] = self.utcCreate!
                }
                if self.utcModified != nil {
                    map["UtcModified"] = self.utcModified!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["MetaUrl"] as? String {
                    self.metaUrl = value
                }
                if let value = dict["Msg"] as? String {
                    self.msg = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["UtcCreate"] as? String {
                    self.utcCreate = value
                }
                if let value = dict["UtcModified"] as? Int64 {
                    self.utcModified = value
                }
            }
        }
        public var dumpMetaList: [DumpMetaListResponseBody.Data.DumpMetaList]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.dumpMetaList != nil {
                var tmp : [Any] = []
                for k in self.dumpMetaList! {
                    tmp.append(k.toMap())
                }
                map["DumpMetaList"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DumpMetaList"] as? [Any?] {
                var tmp : [DumpMetaListResponseBody.Data.DumpMetaList] = []
                for v in value {
                    if v != nil {
                        var model = DumpMetaListResponseBody.Data.DumpMetaList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dumpMetaList = tmp
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var data: DumpMetaListResponseBody.Data?

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
            var model = DumpMetaListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DumpMetaListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DumpMetaListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DumpMetaListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class IncreaseInstanceRequest : Tea.TeaModel {
    public var bucketName: String?

    public var callbackAddress: String?

    public var instanceName: String?

    public var path: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucketName != nil {
            map["BucketName"] = self.bucketName!
        }
        if self.callbackAddress != nil {
            map["CallbackAddress"] = self.callbackAddress!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BucketName"] as? String {
            self.bucketName = value
        }
        if let value = dict["CallbackAddress"] as? String {
            self.callbackAddress = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["Path"] as? String {
            self.path = value
        }
    }
}

public class IncreaseInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

        public var incrementStatus: String?

        public override init() {
            super.init()
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
            if self.incrementStatus != nil {
                map["IncrementStatus"] = self.incrementStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["IncrementStatus"] as? String {
                self.incrementStatus = value
            }
        }
    }
    public var data: IncreaseInstanceResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = IncreaseInstanceResponseBody.Data()
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

public class IncreaseInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IncreaseInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = IncreaseInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class IncreaseListRequest : Tea.TeaModel {
    public var bucketName: String?

    public var id: Int64?

    public var instanceName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var path: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bucketName != nil {
            map["BucketName"] = self.bucketName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BucketName"] as? String {
            self.bucketName = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Path"] as? String {
            self.path = value
        }
    }
}

public class IncreaseListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Increments : Tea.TeaModel {
            public class Instance : Tea.TeaModel {
                public var bucketName: String?

                public var callbackAddress: String?

                public var code: String?

                public var errorUrl: String?

                public var id: Int64?

                public var msg: String?

                public var path: String?

                public var status: String?

                public var utcCreate: String?

                public var utcModified: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bucketName != nil {
                        map["BucketName"] = self.bucketName!
                    }
                    if self.callbackAddress != nil {
                        map["CallbackAddress"] = self.callbackAddress!
                    }
                    if self.code != nil {
                        map["Code"] = self.code!
                    }
                    if self.errorUrl != nil {
                        map["ErrorUrl"] = self.errorUrl!
                    }
                    if self.id != nil {
                        map["Id"] = self.id!
                    }
                    if self.msg != nil {
                        map["Msg"] = self.msg!
                    }
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.utcCreate != nil {
                        map["UtcCreate"] = self.utcCreate!
                    }
                    if self.utcModified != nil {
                        map["UtcModified"] = self.utcModified!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BucketName"] as? String {
                        self.bucketName = value
                    }
                    if let value = dict["CallbackAddress"] as? String {
                        self.callbackAddress = value
                    }
                    if let value = dict["Code"] as? String {
                        self.code = value
                    }
                    if let value = dict["ErrorUrl"] as? String {
                        self.errorUrl = value
                    }
                    if let value = dict["Id"] as? Int64 {
                        self.id = value
                    }
                    if let value = dict["Msg"] as? String {
                        self.msg = value
                    }
                    if let value = dict["Path"] as? String {
                        self.path = value
                    }
                    if let value = dict["Status"] as? String {
                        self.status = value
                    }
                    if let value = dict["UtcCreate"] as? String {
                        self.utcCreate = value
                    }
                    if let value = dict["UtcModified"] as? Int64 {
                        self.utcModified = value
                    }
                }
            }
            public var instance: [IncreaseListResponseBody.Data.Increments.Instance]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.instance != nil {
                    var tmp : [Any] = []
                    for k in self.instance! {
                        tmp.append(k.toMap())
                    }
                    map["Instance"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Instance"] as? [Any?] {
                    var tmp : [IncreaseListResponseBody.Data.Increments.Instance] = []
                    for v in value {
                        if v != nil {
                            var model = IncreaseListResponseBody.Data.Increments.Instance()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.instance = tmp
                }
            }
        }
        public var increments: IncreaseListResponseBody.Data.Increments?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.increments?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.increments != nil {
                map["Increments"] = self.increments?.toMap()
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Increments"] as? [String: Any?] {
                var model = IncreaseListResponseBody.Data.Increments()
                model.fromMap(value)
                self.increments = model
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var data: IncreaseListResponseBody.Data?

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
            var model = IncreaseListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class IncreaseListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IncreaseListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = IncreaseListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SearchImageByNameRequest : Tea.TeaModel {
    public var categoryId: Int32?

    public var distinctProductId: Bool?

    public var filter: String?

    public var instanceName: String?

    public var num: Int32?

    public var picName: String?

    public var productId: String?

    public var scoreThreshold: String?

    public var start: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.distinctProductId != nil {
            map["DistinctProductId"] = self.distinctProductId!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.num != nil {
            map["Num"] = self.num!
        }
        if self.picName != nil {
            map["PicName"] = self.picName!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.scoreThreshold != nil {
            map["ScoreThreshold"] = self.scoreThreshold!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryId"] as? Int32 {
            self.categoryId = value
        }
        if let value = dict["DistinctProductId"] as? Bool {
            self.distinctProductId = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["Num"] as? Int32 {
            self.num = value
        }
        if let value = dict["PicName"] as? String {
            self.picName = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["ScoreThreshold"] as? String {
            self.scoreThreshold = value
        }
        if let value = dict["Start"] as? Int32 {
            self.start = value
        }
    }
}

public class SearchImageByNameResponseBody : Tea.TeaModel {
    public class Auctions : Tea.TeaModel {
        public var categoryId: Int32?

        public var customContent: String?

        public var intAttr: Int32?

        public var intAttr2: Int32?

        public var intAttr3: Int32?

        public var intAttr4: Int32?

        public var picName: String?

        public var productId: String?

        public var score: Double?

        public var sortExprValues: String?

        public var strAttr: String?

        public var strAttr2: String?

        public var strAttr3: String?

        public var strAttr4: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.customContent != nil {
                map["CustomContent"] = self.customContent!
            }
            if self.intAttr != nil {
                map["IntAttr"] = self.intAttr!
            }
            if self.intAttr2 != nil {
                map["IntAttr2"] = self.intAttr2!
            }
            if self.intAttr3 != nil {
                map["IntAttr3"] = self.intAttr3!
            }
            if self.intAttr4 != nil {
                map["IntAttr4"] = self.intAttr4!
            }
            if self.picName != nil {
                map["PicName"] = self.picName!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            if self.sortExprValues != nil {
                map["SortExprValues"] = self.sortExprValues!
            }
            if self.strAttr != nil {
                map["StrAttr"] = self.strAttr!
            }
            if self.strAttr2 != nil {
                map["StrAttr2"] = self.strAttr2!
            }
            if self.strAttr3 != nil {
                map["StrAttr3"] = self.strAttr3!
            }
            if self.strAttr4 != nil {
                map["StrAttr4"] = self.strAttr4!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryId"] as? Int32 {
                self.categoryId = value
            }
            if let value = dict["CustomContent"] as? String {
                self.customContent = value
            }
            if let value = dict["IntAttr"] as? Int32 {
                self.intAttr = value
            }
            if let value = dict["IntAttr2"] as? Int32 {
                self.intAttr2 = value
            }
            if let value = dict["IntAttr3"] as? Int32 {
                self.intAttr3 = value
            }
            if let value = dict["IntAttr4"] as? Int32 {
                self.intAttr4 = value
            }
            if let value = dict["PicName"] as? String {
                self.picName = value
            }
            if let value = dict["ProductId"] as? String {
                self.productId = value
            }
            if let value = dict["Score"] as? Double {
                self.score = value
            }
            if let value = dict["SortExprValues"] as? String {
                self.sortExprValues = value
            }
            if let value = dict["StrAttr"] as? String {
                self.strAttr = value
            }
            if let value = dict["StrAttr2"] as? String {
                self.strAttr2 = value
            }
            if let value = dict["StrAttr3"] as? String {
                self.strAttr3 = value
            }
            if let value = dict["StrAttr4"] as? String {
                self.strAttr4 = value
            }
        }
    }
    public class Head : Tea.TeaModel {
        public var docsFound: Int32?

        public var docsReturn: Int32?

        public var searchTime: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.docsFound != nil {
                map["DocsFound"] = self.docsFound!
            }
            if self.docsReturn != nil {
                map["DocsReturn"] = self.docsReturn!
            }
            if self.searchTime != nil {
                map["SearchTime"] = self.searchTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DocsFound"] as? Int32 {
                self.docsFound = value
            }
            if let value = dict["DocsReturn"] as? Int32 {
                self.docsReturn = value
            }
            if let value = dict["SearchTime"] as? Int32 {
                self.searchTime = value
            }
        }
    }
    public class PicInfo : Tea.TeaModel {
        public class AllCategories : Tea.TeaModel {
            public var id: Int32?

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
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Id"] as? Int32 {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public class MultiRegion : Tea.TeaModel {
            public var region: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.region != nil {
                    map["Region"] = self.region!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Region"] as? String {
                    self.region = value
                }
            }
        }
        public var allCategories: [SearchImageByNameResponseBody.PicInfo.AllCategories]?

        public var categoryId: Int32?

        public var multiRegion: [SearchImageByNameResponseBody.PicInfo.MultiRegion]?

        public var region: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allCategories != nil {
                var tmp : [Any] = []
                for k in self.allCategories! {
                    tmp.append(k.toMap())
                }
                map["AllCategories"] = tmp
            }
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.multiRegion != nil {
                var tmp : [Any] = []
                for k in self.multiRegion! {
                    tmp.append(k.toMap())
                }
                map["MultiRegion"] = tmp
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllCategories"] as? [Any?] {
                var tmp : [SearchImageByNameResponseBody.PicInfo.AllCategories] = []
                for v in value {
                    if v != nil {
                        var model = SearchImageByNameResponseBody.PicInfo.AllCategories()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.allCategories = tmp
            }
            if let value = dict["CategoryId"] as? Int32 {
                self.categoryId = value
            }
            if let value = dict["MultiRegion"] as? [Any?] {
                var tmp : [SearchImageByNameResponseBody.PicInfo.MultiRegion] = []
                for v in value {
                    if v != nil {
                        var model = SearchImageByNameResponseBody.PicInfo.MultiRegion()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.multiRegion = tmp
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
        }
    }
    public var auctions: [SearchImageByNameResponseBody.Auctions]?

    public var code: Int32?

    public var head: SearchImageByNameResponseBody.Head?

    public var msg: String?

    public var picInfo: SearchImageByNameResponseBody.PicInfo?

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
        try self.head?.validate()
        try self.picInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auctions != nil {
            var tmp : [Any] = []
            for k in self.auctions! {
                tmp.append(k.toMap())
            }
            map["Auctions"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.head != nil {
            map["Head"] = self.head?.toMap()
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.picInfo != nil {
            map["PicInfo"] = self.picInfo?.toMap()
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
        if let value = dict["Auctions"] as? [Any?] {
            var tmp : [SearchImageByNameResponseBody.Auctions] = []
            for v in value {
                if v != nil {
                    var model = SearchImageByNameResponseBody.Auctions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.auctions = tmp
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Head"] as? [String: Any?] {
            var model = SearchImageByNameResponseBody.Head()
            model.fromMap(value)
            self.head = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["PicInfo"] as? [String: Any?] {
            var model = SearchImageByNameResponseBody.PicInfo()
            model.fromMap(value)
            self.picInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SearchImageByNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchImageByNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SearchImageByNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SearchImageByPicRequest : Tea.TeaModel {
    public var categoryId: Int32?

    public var crop: Bool?

    public var distinctProductId: Bool?

    public var filter: String?

    public var instanceName: String?

    public var num: Int32?

    public var picContent: String?

    public var region: String?

    public var scoreThreshold: String?

    public var start: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.crop != nil {
            map["Crop"] = self.crop!
        }
        if self.distinctProductId != nil {
            map["DistinctProductId"] = self.distinctProductId!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.num != nil {
            map["Num"] = self.num!
        }
        if self.picContent != nil {
            map["PicContent"] = self.picContent!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.scoreThreshold != nil {
            map["ScoreThreshold"] = self.scoreThreshold!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryId"] as? Int32 {
            self.categoryId = value
        }
        if let value = dict["Crop"] as? Bool {
            self.crop = value
        }
        if let value = dict["DistinctProductId"] as? Bool {
            self.distinctProductId = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["Num"] as? Int32 {
            self.num = value
        }
        if let value = dict["PicContent"] as? String {
            self.picContent = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["ScoreThreshold"] as? String {
            self.scoreThreshold = value
        }
        if let value = dict["Start"] as? Int32 {
            self.start = value
        }
    }
}

public class SearchImageByPicAdvanceRequest : Tea.TeaModel {
    public var categoryId: Int32?

    public var crop: Bool?

    public var distinctProductId: Bool?

    public var filter: String?

    public var instanceName: String?

    public var num: Int32?

    public var picContentObject: InputStream?

    public var region: String?

    public var scoreThreshold: String?

    public var start: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryId != nil {
            map["CategoryId"] = self.categoryId!
        }
        if self.crop != nil {
            map["Crop"] = self.crop!
        }
        if self.distinctProductId != nil {
            map["DistinctProductId"] = self.distinctProductId!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.num != nil {
            map["Num"] = self.num!
        }
        if self.picContentObject != nil {
            map["PicContent"] = self.picContentObject!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.scoreThreshold != nil {
            map["ScoreThreshold"] = self.scoreThreshold!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CategoryId"] as? Int32 {
            self.categoryId = value
        }
        if let value = dict["Crop"] as? Bool {
            self.crop = value
        }
        if let value = dict["DistinctProductId"] as? Bool {
            self.distinctProductId = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["Num"] as? Int32 {
            self.num = value
        }
        if let value = dict["PicContent"] as? InputStream {
            self.picContentObject = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["ScoreThreshold"] as? String {
            self.scoreThreshold = value
        }
        if let value = dict["Start"] as? Int32 {
            self.start = value
        }
    }
}

public class SearchImageByPicResponseBody : Tea.TeaModel {
    public class Auctions : Tea.TeaModel {
        public var categoryId: Int32?

        public var customContent: String?

        public var intAttr: Int32?

        public var intAttr2: Int32?

        public var intAttr3: Int32?

        public var intAttr4: Int32?

        public var picName: String?

        public var productId: String?

        public var score: Double?

        public var sortExprValues: String?

        public var strAttr: String?

        public var strAttr2: String?

        public var strAttr3: String?

        public var strAttr4: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.customContent != nil {
                map["CustomContent"] = self.customContent!
            }
            if self.intAttr != nil {
                map["IntAttr"] = self.intAttr!
            }
            if self.intAttr2 != nil {
                map["IntAttr2"] = self.intAttr2!
            }
            if self.intAttr3 != nil {
                map["IntAttr3"] = self.intAttr3!
            }
            if self.intAttr4 != nil {
                map["IntAttr4"] = self.intAttr4!
            }
            if self.picName != nil {
                map["PicName"] = self.picName!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            if self.sortExprValues != nil {
                map["SortExprValues"] = self.sortExprValues!
            }
            if self.strAttr != nil {
                map["StrAttr"] = self.strAttr!
            }
            if self.strAttr2 != nil {
                map["StrAttr2"] = self.strAttr2!
            }
            if self.strAttr3 != nil {
                map["StrAttr3"] = self.strAttr3!
            }
            if self.strAttr4 != nil {
                map["StrAttr4"] = self.strAttr4!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryId"] as? Int32 {
                self.categoryId = value
            }
            if let value = dict["CustomContent"] as? String {
                self.customContent = value
            }
            if let value = dict["IntAttr"] as? Int32 {
                self.intAttr = value
            }
            if let value = dict["IntAttr2"] as? Int32 {
                self.intAttr2 = value
            }
            if let value = dict["IntAttr3"] as? Int32 {
                self.intAttr3 = value
            }
            if let value = dict["IntAttr4"] as? Int32 {
                self.intAttr4 = value
            }
            if let value = dict["PicName"] as? String {
                self.picName = value
            }
            if let value = dict["ProductId"] as? String {
                self.productId = value
            }
            if let value = dict["Score"] as? Double {
                self.score = value
            }
            if let value = dict["SortExprValues"] as? String {
                self.sortExprValues = value
            }
            if let value = dict["StrAttr"] as? String {
                self.strAttr = value
            }
            if let value = dict["StrAttr2"] as? String {
                self.strAttr2 = value
            }
            if let value = dict["StrAttr3"] as? String {
                self.strAttr3 = value
            }
            if let value = dict["StrAttr4"] as? String {
                self.strAttr4 = value
            }
        }
    }
    public class Head : Tea.TeaModel {
        public var docsFound: Int32?

        public var docsReturn: Int32?

        public var searchTime: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.docsFound != nil {
                map["DocsFound"] = self.docsFound!
            }
            if self.docsReturn != nil {
                map["DocsReturn"] = self.docsReturn!
            }
            if self.searchTime != nil {
                map["SearchTime"] = self.searchTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DocsFound"] as? Int32 {
                self.docsFound = value
            }
            if let value = dict["DocsReturn"] as? Int32 {
                self.docsReturn = value
            }
            if let value = dict["SearchTime"] as? Int32 {
                self.searchTime = value
            }
        }
    }
    public class PicInfo : Tea.TeaModel {
        public class AllCategories : Tea.TeaModel {
            public var id: Int32?

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
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Id"] as? Int32 {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public class MultiRegion : Tea.TeaModel {
            public var region: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.region != nil {
                    map["Region"] = self.region!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Region"] as? String {
                    self.region = value
                }
            }
        }
        public var allCategories: [SearchImageByPicResponseBody.PicInfo.AllCategories]?

        public var categoryId: Int32?

        public var multiRegion: [SearchImageByPicResponseBody.PicInfo.MultiRegion]?

        public var region: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allCategories != nil {
                var tmp : [Any] = []
                for k in self.allCategories! {
                    tmp.append(k.toMap())
                }
                map["AllCategories"] = tmp
            }
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.multiRegion != nil {
                var tmp : [Any] = []
                for k in self.multiRegion! {
                    tmp.append(k.toMap())
                }
                map["MultiRegion"] = tmp
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllCategories"] as? [Any?] {
                var tmp : [SearchImageByPicResponseBody.PicInfo.AllCategories] = []
                for v in value {
                    if v != nil {
                        var model = SearchImageByPicResponseBody.PicInfo.AllCategories()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.allCategories = tmp
            }
            if let value = dict["CategoryId"] as? Int32 {
                self.categoryId = value
            }
            if let value = dict["MultiRegion"] as? [Any?] {
                var tmp : [SearchImageByPicResponseBody.PicInfo.MultiRegion] = []
                for v in value {
                    if v != nil {
                        var model = SearchImageByPicResponseBody.PicInfo.MultiRegion()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.multiRegion = tmp
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
        }
    }
    public var auctions: [SearchImageByPicResponseBody.Auctions]?

    public var code: Int32?

    public var head: SearchImageByPicResponseBody.Head?

    public var msg: String?

    public var picInfo: SearchImageByPicResponseBody.PicInfo?

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
        try self.head?.validate()
        try self.picInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auctions != nil {
            var tmp : [Any] = []
            for k in self.auctions! {
                tmp.append(k.toMap())
            }
            map["Auctions"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.head != nil {
            map["Head"] = self.head?.toMap()
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.picInfo != nil {
            map["PicInfo"] = self.picInfo?.toMap()
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
        if let value = dict["Auctions"] as? [Any?] {
            var tmp : [SearchImageByPicResponseBody.Auctions] = []
            for v in value {
                if v != nil {
                    var model = SearchImageByPicResponseBody.Auctions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.auctions = tmp
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Head"] as? [String: Any?] {
            var model = SearchImageByPicResponseBody.Head()
            model.fromMap(value)
            self.head = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["PicInfo"] as? [String: Any?] {
            var model = SearchImageByPicResponseBody.PicInfo()
            model.fromMap(value)
            self.picInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SearchImageByPicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchImageByPicResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SearchImageByPicResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SearchImageByTextRequest : Tea.TeaModel {
    public var distinctProductId: Bool?

    public var filter: String?

    public var instanceName: String?

    public var num: Int32?

    public var scoreThreshold: String?

    public var start: Int32?

    public var text: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.distinctProductId != nil {
            map["DistinctProductId"] = self.distinctProductId!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.num != nil {
            map["Num"] = self.num!
        }
        if self.scoreThreshold != nil {
            map["ScoreThreshold"] = self.scoreThreshold!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DistinctProductId"] as? Bool {
            self.distinctProductId = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["Num"] as? Int32 {
            self.num = value
        }
        if let value = dict["ScoreThreshold"] as? String {
            self.scoreThreshold = value
        }
        if let value = dict["Start"] as? Int32 {
            self.start = value
        }
        if let value = dict["Text"] as? String {
            self.text = value
        }
    }
}

public class SearchImageByTextResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthAction"] as? String {
                self.authAction = value
            }
            if let value = dict["AuthPrincipalDisplayName"] as? String {
                self.authPrincipalDisplayName = value
            }
            if let value = dict["AuthPrincipalOwnerId"] as? String {
                self.authPrincipalOwnerId = value
            }
            if let value = dict["AuthPrincipalType"] as? String {
                self.authPrincipalType = value
            }
            if let value = dict["EncodedDiagnosticMessage"] as? String {
                self.encodedDiagnosticMessage = value
            }
            if let value = dict["NoPermissionType"] as? String {
                self.noPermissionType = value
            }
            if let value = dict["PolicyType"] as? String {
                self.policyType = value
            }
        }
    }
    public class Auctions : Tea.TeaModel {
        public var categoryId: Int32?

        public var customContent: String?

        public var intAttr: Int32?

        public var intAttr2: Int32?

        public var intAttr3: Int32?

        public var intAttr4: Int32?

        public var picName: String?

        public var productId: String?

        public var score: Double?

        public var strAttr: String?

        public var strAttr2: String?

        public var strAttr3: String?

        public var strAttr4: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categoryId != nil {
                map["CategoryId"] = self.categoryId!
            }
            if self.customContent != nil {
                map["CustomContent"] = self.customContent!
            }
            if self.intAttr != nil {
                map["IntAttr"] = self.intAttr!
            }
            if self.intAttr2 != nil {
                map["IntAttr2"] = self.intAttr2!
            }
            if self.intAttr3 != nil {
                map["IntAttr3"] = self.intAttr3!
            }
            if self.intAttr4 != nil {
                map["IntAttr4"] = self.intAttr4!
            }
            if self.picName != nil {
                map["PicName"] = self.picName!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            if self.strAttr != nil {
                map["StrAttr"] = self.strAttr!
            }
            if self.strAttr2 != nil {
                map["StrAttr2"] = self.strAttr2!
            }
            if self.strAttr3 != nil {
                map["StrAttr3"] = self.strAttr3!
            }
            if self.strAttr4 != nil {
                map["StrAttr4"] = self.strAttr4!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CategoryId"] as? Int32 {
                self.categoryId = value
            }
            if let value = dict["CustomContent"] as? String {
                self.customContent = value
            }
            if let value = dict["IntAttr"] as? Int32 {
                self.intAttr = value
            }
            if let value = dict["IntAttr2"] as? Int32 {
                self.intAttr2 = value
            }
            if let value = dict["IntAttr3"] as? Int32 {
                self.intAttr3 = value
            }
            if let value = dict["IntAttr4"] as? Int32 {
                self.intAttr4 = value
            }
            if let value = dict["PicName"] as? String {
                self.picName = value
            }
            if let value = dict["ProductId"] as? String {
                self.productId = value
            }
            if let value = dict["Score"] as? Double {
                self.score = value
            }
            if let value = dict["StrAttr"] as? String {
                self.strAttr = value
            }
            if let value = dict["StrAttr2"] as? String {
                self.strAttr2 = value
            }
            if let value = dict["StrAttr3"] as? String {
                self.strAttr3 = value
            }
            if let value = dict["StrAttr4"] as? String {
                self.strAttr4 = value
            }
        }
    }
    public class Head : Tea.TeaModel {
        public var docsFound: Int32?

        public var docsReturn: Int32?

        public var searchTime: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.docsFound != nil {
                map["DocsFound"] = self.docsFound!
            }
            if self.docsReturn != nil {
                map["DocsReturn"] = self.docsReturn!
            }
            if self.searchTime != nil {
                map["SearchTime"] = self.searchTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DocsFound"] as? Int32 {
                self.docsFound = value
            }
            if let value = dict["DocsReturn"] as? Int32 {
                self.docsReturn = value
            }
            if let value = dict["SearchTime"] as? Int32 {
                self.searchTime = value
            }
        }
    }
    public class PicInfo : Tea.TeaModel {
        public class AllCategories : Tea.TeaModel {
            public var id: Int32?

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
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Id"] as? Int32 {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var allCategories: [SearchImageByTextResponseBody.PicInfo.AllCategories]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allCategories != nil {
                var tmp : [Any] = []
                for k in self.allCategories! {
                    tmp.append(k.toMap())
                }
                map["AllCategories"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllCategories"] as? [Any?] {
                var tmp : [SearchImageByTextResponseBody.PicInfo.AllCategories] = []
                for v in value {
                    if v != nil {
                        var model = SearchImageByTextResponseBody.PicInfo.AllCategories()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.allCategories = tmp
            }
        }
    }
    public var accessDeniedDetail: SearchImageByTextResponseBody.AccessDeniedDetail?

    public var auctions: [SearchImageByTextResponseBody.Auctions]?

    public var code: Int32?

    public var head: SearchImageByTextResponseBody.Head?

    public var msg: String?

    public var picInfo: SearchImageByTextResponseBody.PicInfo?

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
        try self.accessDeniedDetail?.validate()
        try self.head?.validate()
        try self.picInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.auctions != nil {
            var tmp : [Any] = []
            for k in self.auctions! {
                tmp.append(k.toMap())
            }
            map["Auctions"] = tmp
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.head != nil {
            map["Head"] = self.head?.toMap()
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.picInfo != nil {
            map["PicInfo"] = self.picInfo?.toMap()
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
        if let value = dict["AccessDeniedDetail"] as? [String: Any?] {
            var model = SearchImageByTextResponseBody.AccessDeniedDetail()
            model.fromMap(value)
            self.accessDeniedDetail = model
        }
        if let value = dict["Auctions"] as? [Any?] {
            var tmp : [SearchImageByTextResponseBody.Auctions] = []
            for v in value {
                if v != nil {
                    var model = SearchImageByTextResponseBody.Auctions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.auctions = tmp
        }
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Head"] as? [String: Any?] {
            var model = SearchImageByTextResponseBody.Head()
            model.fromMap(value)
            self.head = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["PicInfo"] as? [String: Any?] {
            var model = SearchImageByTextResponseBody.PicInfo()
            model.fromMap(value)
            self.picInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SearchImageByTextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchImageByTextResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SearchImageByTextResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateImageRequest : Tea.TeaModel {
    public var customContent: String?

    public var instanceName: String?

    public var intAttr: Int32?

    public var intAttr2: Int32?

    public var intAttr3: Int32?

    public var intAttr4: Int32?

    public var picName: String?

    public var productId: String?

    public var strAttr: String?

    public var strAttr2: String?

    public var strAttr3: String?

    public var strAttr4: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customContent != nil {
            map["CustomContent"] = self.customContent!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.intAttr != nil {
            map["IntAttr"] = self.intAttr!
        }
        if self.intAttr2 != nil {
            map["IntAttr2"] = self.intAttr2!
        }
        if self.intAttr3 != nil {
            map["IntAttr3"] = self.intAttr3!
        }
        if self.intAttr4 != nil {
            map["IntAttr4"] = self.intAttr4!
        }
        if self.picName != nil {
            map["PicName"] = self.picName!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.strAttr != nil {
            map["StrAttr"] = self.strAttr!
        }
        if self.strAttr2 != nil {
            map["StrAttr2"] = self.strAttr2!
        }
        if self.strAttr3 != nil {
            map["StrAttr3"] = self.strAttr3!
        }
        if self.strAttr4 != nil {
            map["StrAttr4"] = self.strAttr4!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomContent"] as? String {
            self.customContent = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["IntAttr"] as? Int32 {
            self.intAttr = value
        }
        if let value = dict["IntAttr2"] as? Int32 {
            self.intAttr2 = value
        }
        if let value = dict["IntAttr3"] as? Int32 {
            self.intAttr3 = value
        }
        if let value = dict["IntAttr4"] as? Int32 {
            self.intAttr4 = value
        }
        if let value = dict["PicName"] as? String {
            self.picName = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["StrAttr"] as? String {
            self.strAttr = value
        }
        if let value = dict["StrAttr2"] as? String {
            self.strAttr2 = value
        }
        if let value = dict["StrAttr3"] as? String {
            self.strAttr3 = value
        }
        if let value = dict["StrAttr4"] as? String {
            self.strAttr4 = value
        }
    }
}

public class UpdateImageResponseBody : Tea.TeaModel {
    public var code: Int32?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
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

public class UpdateImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateImageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateImageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
