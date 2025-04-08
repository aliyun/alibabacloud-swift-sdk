import Foundation
import Tea
import TeaUtils
import AlibabaCloudOssSdk
import AlibabacloudOpenPlatform20191219
import AlibabaCloudOSSUtil
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CategoryId") {
            self.categoryId = dict["CategoryId"] as! Int32
        }
        if dict.keys.contains("Crop") {
            self.crop = dict["Crop"] as! Bool
        }
        if dict.keys.contains("CustomContent") {
            self.customContent = dict["CustomContent"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("IntAttr") {
            self.intAttr = dict["IntAttr"] as! Int32
        }
        if dict.keys.contains("IntAttr2") {
            self.intAttr2 = dict["IntAttr2"] as! Int32
        }
        if dict.keys.contains("IntAttr3") {
            self.intAttr3 = dict["IntAttr3"] as! Int32
        }
        if dict.keys.contains("IntAttr4") {
            self.intAttr4 = dict["IntAttr4"] as! Int32
        }
        if dict.keys.contains("PicContent") {
            self.picContent = dict["PicContent"] as! String
        }
        if dict.keys.contains("PicName") {
            self.picName = dict["PicName"] as! String
        }
        if dict.keys.contains("ProductId") {
            self.productId = dict["ProductId"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("StrAttr") {
            self.strAttr = dict["StrAttr"] as! String
        }
        if dict.keys.contains("StrAttr2") {
            self.strAttr2 = dict["StrAttr2"] as! String
        }
        if dict.keys.contains("StrAttr3") {
            self.strAttr3 = dict["StrAttr3"] as! String
        }
        if dict.keys.contains("StrAttr4") {
            self.strAttr4 = dict["StrAttr4"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CategoryId") {
            self.categoryId = dict["CategoryId"] as! Int32
        }
        if dict.keys.contains("Crop") {
            self.crop = dict["Crop"] as! Bool
        }
        if dict.keys.contains("CustomContent") {
            self.customContent = dict["CustomContent"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("IntAttr") {
            self.intAttr = dict["IntAttr"] as! Int32
        }
        if dict.keys.contains("IntAttr2") {
            self.intAttr2 = dict["IntAttr2"] as! Int32
        }
        if dict.keys.contains("IntAttr3") {
            self.intAttr3 = dict["IntAttr3"] as! Int32
        }
        if dict.keys.contains("IntAttr4") {
            self.intAttr4 = dict["IntAttr4"] as! Int32
        }
        if dict.keys.contains("PicContent") {
            self.picContentObject = dict["PicContent"] as! InputStream
        }
        if dict.keys.contains("PicName") {
            self.picName = dict["PicName"] as! String
        }
        if dict.keys.contains("ProductId") {
            self.productId = dict["ProductId"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("StrAttr") {
            self.strAttr = dict["StrAttr"] as! String
        }
        if dict.keys.contains("StrAttr2") {
            self.strAttr2 = dict["StrAttr2"] as! String
        }
        if dict.keys.contains("StrAttr3") {
            self.strAttr3 = dict["StrAttr3"] as! String
        }
        if dict.keys.contains("StrAttr4") {
            self.strAttr4 = dict["StrAttr4"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CategoryId") {
                self.categoryId = dict["CategoryId"] as! Int32
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PicInfo") {
            var model = AddImageResponseBody.PicInfo()
            model.fromMap(dict["PicInfo"] as! [String: Any])
            self.picInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("PrimaryPicContent") {
            self.primaryPicContent = dict["PrimaryPicContent"] as! String
        }
        if dict.keys.contains("SecondaryPicContent") {
            self.secondaryPicContent = dict["SecondaryPicContent"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("PrimaryPicContent") {
            self.primaryPicContentObject = dict["PrimaryPicContent"] as! InputStream
        }
        if dict.keys.contains("SecondaryPicContent") {
            self.secondaryPicContentObject = dict["SecondaryPicContent"] as! InputStream
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = CompareSimilarByImageResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Score") {
            self.score = dict["Score"] as! Double
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CompareSimilarByImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("IsDeleteByFilter") {
            self.isDeleteByFilter = dict["IsDeleteByFilter"] as! Bool
        }
        if dict.keys.contains("PicName") {
            self.picName = dict["PicName"] as! String
        }
        if dict.keys.contains("ProductId") {
            self.productId = dict["ProductId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PicNames") {
                self.picNames = dict["PicNames"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") {
            var model = DeleteImageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Capacity") {
                self.capacity = dict["Capacity"] as! Int32
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Qps") {
                self.qps = dict["Qps"] as! Int32
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("ServiceType") {
                self.serviceType = dict["ServiceType"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
            }
            if dict.keys.contains("UtcCreate") {
                self.utcCreate = dict["UtcCreate"] as! String
            }
            if dict.keys.contains("UtcExpireTime") {
                self.utcExpireTime = dict["UtcExpireTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Instance") {
            var model = DetailResponseBody.Instance()
            model.fromMap(dict["Instance"] as! [String: Any])
            self.instance = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DumpMetaStatus") {
                self.dumpMetaStatus = dict["DumpMetaStatus"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DumpMetaResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DumpMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("MetaUrl") {
                    self.metaUrl = dict["MetaUrl"] as! String
                }
                if dict.keys.contains("Msg") {
                    self.msg = dict["Msg"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("UtcCreate") {
                    self.utcCreate = dict["UtcCreate"] as! String
                }
                if dict.keys.contains("UtcModified") {
                    self.utcModified = dict["UtcModified"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DumpMetaList") {
                var tmp : [DumpMetaListResponseBody.Data.DumpMetaList] = []
                for v in dict["DumpMetaList"] as! [Any] {
                    var model = DumpMetaListResponseBody.Data.DumpMetaList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dumpMetaList = tmp
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DumpMetaListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DumpMetaListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketName") {
            self.bucketName = dict["BucketName"] as! String
        }
        if dict.keys.contains("CallbackAddress") {
            self.callbackAddress = dict["CallbackAddress"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("Path") {
            self.path = dict["Path"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("IncrementStatus") {
                self.incrementStatus = dict["IncrementStatus"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = IncreaseInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = IncreaseInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BucketName") {
            self.bucketName = dict["BucketName"] as! String
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Path") {
            self.path = dict["Path"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("BucketName") {
                        self.bucketName = dict["BucketName"] as! String
                    }
                    if dict.keys.contains("CallbackAddress") {
                        self.callbackAddress = dict["CallbackAddress"] as! String
                    }
                    if dict.keys.contains("Code") {
                        self.code = dict["Code"] as! String
                    }
                    if dict.keys.contains("ErrorUrl") {
                        self.errorUrl = dict["ErrorUrl"] as! String
                    }
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! Int64
                    }
                    if dict.keys.contains("Msg") {
                        self.msg = dict["Msg"] as! String
                    }
                    if dict.keys.contains("Path") {
                        self.path = dict["Path"] as! String
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! String
                    }
                    if dict.keys.contains("UtcCreate") {
                        self.utcCreate = dict["UtcCreate"] as! String
                    }
                    if dict.keys.contains("UtcModified") {
                        self.utcModified = dict["UtcModified"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Instance") {
                    var tmp : [IncreaseListResponseBody.Data.Increments.Instance] = []
                    for v in dict["Instance"] as! [Any] {
                        var model = IncreaseListResponseBody.Data.Increments.Instance()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Increments") {
                var model = IncreaseListResponseBody.Data.Increments()
                model.fromMap(dict["Increments"] as! [String: Any])
                self.increments = model
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = IncreaseListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = IncreaseListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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
        if self.start != nil {
            map["Start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CategoryId") {
            self.categoryId = dict["CategoryId"] as! Int32
        }
        if dict.keys.contains("DistinctProductId") {
            self.distinctProductId = dict["DistinctProductId"] as! Bool
        }
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("Num") {
            self.num = dict["Num"] as! Int32
        }
        if dict.keys.contains("PicName") {
            self.picName = dict["PicName"] as! String
        }
        if dict.keys.contains("ProductId") {
            self.productId = dict["ProductId"] as! String
        }
        if dict.keys.contains("Start") {
            self.start = dict["Start"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CategoryId") {
                self.categoryId = dict["CategoryId"] as! Int32
            }
            if dict.keys.contains("CustomContent") {
                self.customContent = dict["CustomContent"] as! String
            }
            if dict.keys.contains("IntAttr") {
                self.intAttr = dict["IntAttr"] as! Int32
            }
            if dict.keys.contains("IntAttr2") {
                self.intAttr2 = dict["IntAttr2"] as! Int32
            }
            if dict.keys.contains("IntAttr3") {
                self.intAttr3 = dict["IntAttr3"] as! Int32
            }
            if dict.keys.contains("IntAttr4") {
                self.intAttr4 = dict["IntAttr4"] as! Int32
            }
            if dict.keys.contains("PicName") {
                self.picName = dict["PicName"] as! String
            }
            if dict.keys.contains("ProductId") {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("Score") {
                self.score = dict["Score"] as! Double
            }
            if dict.keys.contains("SortExprValues") {
                self.sortExprValues = dict["SortExprValues"] as! String
            }
            if dict.keys.contains("StrAttr") {
                self.strAttr = dict["StrAttr"] as! String
            }
            if dict.keys.contains("StrAttr2") {
                self.strAttr2 = dict["StrAttr2"] as! String
            }
            if dict.keys.contains("StrAttr3") {
                self.strAttr3 = dict["StrAttr3"] as! String
            }
            if dict.keys.contains("StrAttr4") {
                self.strAttr4 = dict["StrAttr4"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DocsFound") {
                self.docsFound = dict["DocsFound"] as! Int32
            }
            if dict.keys.contains("DocsReturn") {
                self.docsReturn = dict["DocsReturn"] as! Int32
            }
            if dict.keys.contains("SearchTime") {
                self.searchTime = dict["SearchTime"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int32
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllCategories") {
                var tmp : [SearchImageByNameResponseBody.PicInfo.AllCategories] = []
                for v in dict["AllCategories"] as! [Any] {
                    var model = SearchImageByNameResponseBody.PicInfo.AllCategories()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.allCategories = tmp
            }
            if dict.keys.contains("CategoryId") {
                self.categoryId = dict["CategoryId"] as! Int32
            }
            if dict.keys.contains("MultiRegion") {
                var tmp : [SearchImageByNameResponseBody.PicInfo.MultiRegion] = []
                for v in dict["MultiRegion"] as! [Any] {
                    var model = SearchImageByNameResponseBody.PicInfo.MultiRegion()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.multiRegion = tmp
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Auctions") {
            var tmp : [SearchImageByNameResponseBody.Auctions] = []
            for v in dict["Auctions"] as! [Any] {
                var model = SearchImageByNameResponseBody.Auctions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.auctions = tmp
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Head") {
            var model = SearchImageByNameResponseBody.Head()
            model.fromMap(dict["Head"] as! [String: Any])
            self.head = model
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("PicInfo") {
            var model = SearchImageByNameResponseBody.PicInfo()
            model.fromMap(dict["PicInfo"] as! [String: Any])
            self.picInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SearchImageByNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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
        if self.start != nil {
            map["Start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CategoryId") {
            self.categoryId = dict["CategoryId"] as! Int32
        }
        if dict.keys.contains("Crop") {
            self.crop = dict["Crop"] as! Bool
        }
        if dict.keys.contains("DistinctProductId") {
            self.distinctProductId = dict["DistinctProductId"] as! Bool
        }
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("Num") {
            self.num = dict["Num"] as! Int32
        }
        if dict.keys.contains("PicContent") {
            self.picContent = dict["PicContent"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("Start") {
            self.start = dict["Start"] as! Int32
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
        if self.start != nil {
            map["Start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CategoryId") {
            self.categoryId = dict["CategoryId"] as! Int32
        }
        if dict.keys.contains("Crop") {
            self.crop = dict["Crop"] as! Bool
        }
        if dict.keys.contains("DistinctProductId") {
            self.distinctProductId = dict["DistinctProductId"] as! Bool
        }
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("Num") {
            self.num = dict["Num"] as! Int32
        }
        if dict.keys.contains("PicContent") {
            self.picContentObject = dict["PicContent"] as! InputStream
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("Start") {
            self.start = dict["Start"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CategoryId") {
                self.categoryId = dict["CategoryId"] as! Int32
            }
            if dict.keys.contains("CustomContent") {
                self.customContent = dict["CustomContent"] as! String
            }
            if dict.keys.contains("IntAttr") {
                self.intAttr = dict["IntAttr"] as! Int32
            }
            if dict.keys.contains("IntAttr2") {
                self.intAttr2 = dict["IntAttr2"] as! Int32
            }
            if dict.keys.contains("IntAttr3") {
                self.intAttr3 = dict["IntAttr3"] as! Int32
            }
            if dict.keys.contains("IntAttr4") {
                self.intAttr4 = dict["IntAttr4"] as! Int32
            }
            if dict.keys.contains("PicName") {
                self.picName = dict["PicName"] as! String
            }
            if dict.keys.contains("ProductId") {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("Score") {
                self.score = dict["Score"] as! Double
            }
            if dict.keys.contains("SortExprValues") {
                self.sortExprValues = dict["SortExprValues"] as! String
            }
            if dict.keys.contains("StrAttr") {
                self.strAttr = dict["StrAttr"] as! String
            }
            if dict.keys.contains("StrAttr2") {
                self.strAttr2 = dict["StrAttr2"] as! String
            }
            if dict.keys.contains("StrAttr3") {
                self.strAttr3 = dict["StrAttr3"] as! String
            }
            if dict.keys.contains("StrAttr4") {
                self.strAttr4 = dict["StrAttr4"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DocsFound") {
                self.docsFound = dict["DocsFound"] as! Int32
            }
            if dict.keys.contains("DocsReturn") {
                self.docsReturn = dict["DocsReturn"] as! Int32
            }
            if dict.keys.contains("SearchTime") {
                self.searchTime = dict["SearchTime"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int32
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllCategories") {
                var tmp : [SearchImageByPicResponseBody.PicInfo.AllCategories] = []
                for v in dict["AllCategories"] as! [Any] {
                    var model = SearchImageByPicResponseBody.PicInfo.AllCategories()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.allCategories = tmp
            }
            if dict.keys.contains("CategoryId") {
                self.categoryId = dict["CategoryId"] as! Int32
            }
            if dict.keys.contains("MultiRegion") {
                var tmp : [SearchImageByPicResponseBody.PicInfo.MultiRegion] = []
                for v in dict["MultiRegion"] as! [Any] {
                    var model = SearchImageByPicResponseBody.PicInfo.MultiRegion()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.multiRegion = tmp
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Auctions") {
            var tmp : [SearchImageByPicResponseBody.Auctions] = []
            for v in dict["Auctions"] as! [Any] {
                var model = SearchImageByPicResponseBody.Auctions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.auctions = tmp
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Head") {
            var model = SearchImageByPicResponseBody.Head()
            model.fromMap(dict["Head"] as! [String: Any])
            self.head = model
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("PicInfo") {
            var model = SearchImageByPicResponseBody.PicInfo()
            model.fromMap(dict["PicInfo"] as! [String: Any])
            self.picInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SearchImageByPicResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchImageByTextRequest : Tea.TeaModel {
    public var distinctProductId: Bool?

    public var filter: String?

    public var instanceName: String?

    public var num: Int32?

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
        if self.start != nil {
            map["Start"] = self.start!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DistinctProductId") {
            self.distinctProductId = dict["DistinctProductId"] as! Bool
        }
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("Num") {
            self.num = dict["Num"] as! Int32
        }
        if dict.keys.contains("Start") {
            self.start = dict["Start"] as! Int32
        }
        if dict.keys.contains("Text") {
            self.text = dict["Text"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthPrincipalDisplayName") {
                self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
            }
            if dict.keys.contains("AuthPrincipalOwnerId") {
                self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
            }
            if dict.keys.contains("AuthPrincipalType") {
                self.authPrincipalType = dict["AuthPrincipalType"] as! String
            }
            if dict.keys.contains("EncodedDiagnosticMessage") {
                self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
            }
            if dict.keys.contains("NoPermissionType") {
                self.noPermissionType = dict["NoPermissionType"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CategoryId") {
                self.categoryId = dict["CategoryId"] as! Int32
            }
            if dict.keys.contains("CustomContent") {
                self.customContent = dict["CustomContent"] as! String
            }
            if dict.keys.contains("IntAttr") {
                self.intAttr = dict["IntAttr"] as! Int32
            }
            if dict.keys.contains("IntAttr2") {
                self.intAttr2 = dict["IntAttr2"] as! Int32
            }
            if dict.keys.contains("IntAttr3") {
                self.intAttr3 = dict["IntAttr3"] as! Int32
            }
            if dict.keys.contains("IntAttr4") {
                self.intAttr4 = dict["IntAttr4"] as! Int32
            }
            if dict.keys.contains("PicName") {
                self.picName = dict["PicName"] as! String
            }
            if dict.keys.contains("ProductId") {
                self.productId = dict["ProductId"] as! String
            }
            if dict.keys.contains("Score") {
                self.score = dict["Score"] as! Double
            }
            if dict.keys.contains("StrAttr") {
                self.strAttr = dict["StrAttr"] as! String
            }
            if dict.keys.contains("StrAttr2") {
                self.strAttr2 = dict["StrAttr2"] as! String
            }
            if dict.keys.contains("StrAttr3") {
                self.strAttr3 = dict["StrAttr3"] as! String
            }
            if dict.keys.contains("StrAttr4") {
                self.strAttr4 = dict["StrAttr4"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DocsFound") {
                self.docsFound = dict["DocsFound"] as! Int32
            }
            if dict.keys.contains("DocsReturn") {
                self.docsReturn = dict["DocsReturn"] as! Int32
            }
            if dict.keys.contains("SearchTime") {
                self.searchTime = dict["SearchTime"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! Int32
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllCategories") {
                var tmp : [SearchImageByTextResponseBody.PicInfo.AllCategories] = []
                for v in dict["AllCategories"] as! [Any] {
                    var model = SearchImageByTextResponseBody.PicInfo.AllCategories()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") {
            var model = SearchImageByTextResponseBody.AccessDeniedDetail()
            model.fromMap(dict["AccessDeniedDetail"] as! [String: Any])
            self.accessDeniedDetail = model
        }
        if dict.keys.contains("Auctions") {
            var tmp : [SearchImageByTextResponseBody.Auctions] = []
            for v in dict["Auctions"] as! [Any] {
                var model = SearchImageByTextResponseBody.Auctions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.auctions = tmp
        }
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Head") {
            var model = SearchImageByTextResponseBody.Head()
            model.fromMap(dict["Head"] as! [String: Any])
            self.head = model
        }
        if dict.keys.contains("Msg") {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("PicInfo") {
            var model = SearchImageByTextResponseBody.PicInfo()
            model.fromMap(dict["PicInfo"] as! [String: Any])
            self.picInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SearchImageByTextResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomContent") {
            self.customContent = dict["CustomContent"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("IntAttr") {
            self.intAttr = dict["IntAttr"] as! Int32
        }
        if dict.keys.contains("IntAttr2") {
            self.intAttr2 = dict["IntAttr2"] as! Int32
        }
        if dict.keys.contains("IntAttr3") {
            self.intAttr3 = dict["IntAttr3"] as! Int32
        }
        if dict.keys.contains("IntAttr4") {
            self.intAttr4 = dict["IntAttr4"] as! Int32
        }
        if dict.keys.contains("PicName") {
            self.picName = dict["PicName"] as! String
        }
        if dict.keys.contains("ProductId") {
            self.productId = dict["ProductId"] as! String
        }
        if dict.keys.contains("StrAttr") {
            self.strAttr = dict["StrAttr"] as! String
        }
        if dict.keys.contains("StrAttr2") {
            self.strAttr2 = dict["StrAttr2"] as! String
        }
        if dict.keys.contains("StrAttr3") {
            self.strAttr3 = dict["StrAttr3"] as! String
        }
        if dict.keys.contains("StrAttr4") {
            self.strAttr4 = dict["StrAttr4"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
