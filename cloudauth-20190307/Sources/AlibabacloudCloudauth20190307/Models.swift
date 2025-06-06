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

public class AIGCFaceVerifyRequest : Tea.TeaModel {
    public var faceContrastPicture: String?

    public var faceContrastPictureUrl: String?

    public var ossBucketName: String?

    public var ossObjectName: String?

    public var outerOrderNo: String?

    public var productCode: String?

    public var sceneId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.faceContrastPicture != nil {
            map["FaceContrastPicture"] = self.faceContrastPicture!
        }
        if self.faceContrastPictureUrl != nil {
            map["FaceContrastPictureUrl"] = self.faceContrastPictureUrl!
        }
        if self.ossBucketName != nil {
            map["OssBucketName"] = self.ossBucketName!
        }
        if self.ossObjectName != nil {
            map["OssObjectName"] = self.ossObjectName!
        }
        if self.outerOrderNo != nil {
            map["OuterOrderNo"] = self.outerOrderNo!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FaceContrastPicture"] as? String {
            self.faceContrastPicture = value
        }
        if let value = dict["FaceContrastPictureUrl"] as? String {
            self.faceContrastPictureUrl = value
        }
        if let value = dict["OssBucketName"] as? String {
            self.ossBucketName = value
        }
        if let value = dict["OssObjectName"] as? String {
            self.ossObjectName = value
        }
        if let value = dict["OuterOrderNo"] as? String {
            self.outerOrderNo = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["SceneId"] as? Int64 {
            self.sceneId = value
        }
    }
}

public class AIGCFaceVerifyResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var certifyId: String?

        public var result: String?

        public var score: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certifyId != nil {
                map["CertifyId"] = self.certifyId!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertifyId"] as? String {
                self.certifyId = value
            }
            if let value = dict["Result"] as? String {
                self.result = value
            }
            if let value = dict["Score"] as? String {
                self.score = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: AIGCFaceVerifyResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = AIGCFaceVerifyResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class AIGCFaceVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AIGCFaceVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AIGCFaceVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BankMetaVerifyRequest : Tea.TeaModel {
    public var bankCard: String?

    public var identifyNum: String?

    public var identityType: String?

    public var mobile: String?

    public var paramType: String?

    public var productType: String?

    public var userName: String?

    public var verifyMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bankCard != nil {
            map["BankCard"] = self.bankCard!
        }
        if self.identifyNum != nil {
            map["IdentifyNum"] = self.identifyNum!
        }
        if self.identityType != nil {
            map["IdentityType"] = self.identityType!
        }
        if self.mobile != nil {
            map["Mobile"] = self.mobile!
        }
        if self.paramType != nil {
            map["ParamType"] = self.paramType!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.verifyMode != nil {
            map["VerifyMode"] = self.verifyMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BankCard"] as? String {
            self.bankCard = value
        }
        if let value = dict["IdentifyNum"] as? String {
            self.identifyNum = value
        }
        if let value = dict["IdentityType"] as? String {
            self.identityType = value
        }
        if let value = dict["Mobile"] as? String {
            self.mobile = value
        }
        if let value = dict["ParamType"] as? String {
            self.paramType = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
        if let value = dict["VerifyMode"] as? String {
            self.verifyMode = value
        }
    }
}

public class BankMetaVerifyResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var bizCode: String?

        public var subCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            if self.subCode != nil {
                map["SubCode"] = self.subCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["SubCode"] as? String {
                self.subCode = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: BankMetaVerifyResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = BankMetaVerifyResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class BankMetaVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BankMetaVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BankMetaVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CompareFaceVerifyRequest : Tea.TeaModel {
    public var crop: String?

    public var outerOrderNo: String?

    public var productCode: String?

    public var sceneId: Int64?

    public var sourceCertifyId: String?

    public var sourceFaceContrastPicture: String?

    public var sourceFaceContrastPictureUrl: String?

    public var sourceOssBucketName: String?

    public var sourceOssObjectName: String?

    public var targetCertifyId: String?

    public var targetFaceContrastPicture: String?

    public var targetFaceContrastPictureUrl: String?

    public var targetOssBucketName: String?

    public var targetOssObjectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.crop != nil {
            map["Crop"] = self.crop!
        }
        if self.outerOrderNo != nil {
            map["OuterOrderNo"] = self.outerOrderNo!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.sourceCertifyId != nil {
            map["SourceCertifyId"] = self.sourceCertifyId!
        }
        if self.sourceFaceContrastPicture != nil {
            map["SourceFaceContrastPicture"] = self.sourceFaceContrastPicture!
        }
        if self.sourceFaceContrastPictureUrl != nil {
            map["SourceFaceContrastPictureUrl"] = self.sourceFaceContrastPictureUrl!
        }
        if self.sourceOssBucketName != nil {
            map["SourceOssBucketName"] = self.sourceOssBucketName!
        }
        if self.sourceOssObjectName != nil {
            map["SourceOssObjectName"] = self.sourceOssObjectName!
        }
        if self.targetCertifyId != nil {
            map["TargetCertifyId"] = self.targetCertifyId!
        }
        if self.targetFaceContrastPicture != nil {
            map["TargetFaceContrastPicture"] = self.targetFaceContrastPicture!
        }
        if self.targetFaceContrastPictureUrl != nil {
            map["TargetFaceContrastPictureUrl"] = self.targetFaceContrastPictureUrl!
        }
        if self.targetOssBucketName != nil {
            map["TargetOssBucketName"] = self.targetOssBucketName!
        }
        if self.targetOssObjectName != nil {
            map["TargetOssObjectName"] = self.targetOssObjectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Crop"] as? String {
            self.crop = value
        }
        if let value = dict["OuterOrderNo"] as? String {
            self.outerOrderNo = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["SceneId"] as? Int64 {
            self.sceneId = value
        }
        if let value = dict["SourceCertifyId"] as? String {
            self.sourceCertifyId = value
        }
        if let value = dict["SourceFaceContrastPicture"] as? String {
            self.sourceFaceContrastPicture = value
        }
        if let value = dict["SourceFaceContrastPictureUrl"] as? String {
            self.sourceFaceContrastPictureUrl = value
        }
        if let value = dict["SourceOssBucketName"] as? String {
            self.sourceOssBucketName = value
        }
        if let value = dict["SourceOssObjectName"] as? String {
            self.sourceOssObjectName = value
        }
        if let value = dict["TargetCertifyId"] as? String {
            self.targetCertifyId = value
        }
        if let value = dict["TargetFaceContrastPicture"] as? String {
            self.targetFaceContrastPicture = value
        }
        if let value = dict["TargetFaceContrastPictureUrl"] as? String {
            self.targetFaceContrastPictureUrl = value
        }
        if let value = dict["TargetOssBucketName"] as? String {
            self.targetOssBucketName = value
        }
        if let value = dict["TargetOssObjectName"] as? String {
            self.targetOssObjectName = value
        }
    }
}

public class CompareFaceVerifyResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var certifyId: String?

        public var passed: String?

        public var verifyScore: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certifyId != nil {
                map["CertifyId"] = self.certifyId!
            }
            if self.passed != nil {
                map["Passed"] = self.passed!
            }
            if self.verifyScore != nil {
                map["VerifyScore"] = self.verifyScore!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertifyId"] as? String {
                self.certifyId = value
            }
            if let value = dict["Passed"] as? String {
                self.passed = value
            }
            if let value = dict["VerifyScore"] as? Double {
                self.verifyScore = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: CompareFaceVerifyResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = CompareFaceVerifyResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class CompareFaceVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CompareFaceVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CompareFaceVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CompareFacesRequest : Tea.TeaModel {
    public var sourceImageType: String?

    public var sourceImageValue: String?

    public var targetImageType: String?

    public var targetImageValue: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sourceImageType != nil {
            map["SourceImageType"] = self.sourceImageType!
        }
        if self.sourceImageValue != nil {
            map["SourceImageValue"] = self.sourceImageValue!
        }
        if self.targetImageType != nil {
            map["TargetImageType"] = self.targetImageType!
        }
        if self.targetImageValue != nil {
            map["TargetImageValue"] = self.targetImageValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SourceImageType"] as? String {
            self.sourceImageType = value
        }
        if let value = dict["SourceImageValue"] as? String {
            self.sourceImageValue = value
        }
        if let value = dict["TargetImageType"] as? String {
            self.targetImageType = value
        }
        if let value = dict["TargetImageValue"] as? String {
            self.targetImageValue = value
        }
    }
}

public class CompareFacesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var confidenceThresholds: String?

        public var similarityScore: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.confidenceThresholds != nil {
                map["ConfidenceThresholds"] = self.confidenceThresholds!
            }
            if self.similarityScore != nil {
                map["SimilarityScore"] = self.similarityScore!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConfidenceThresholds"] as? String {
                self.confidenceThresholds = value
            }
            if let value = dict["SimilarityScore"] as? Double {
                self.similarityScore = value
            }
        }
    }
    public var code: String?

    public var data: CompareFacesResponseBody.Data?

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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CompareFacesResponseBody.Data()
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

public class CompareFacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CompareFacesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CompareFacesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ContrastFaceVerifyRequest : Tea.TeaModel {
    public var certName: String?

    public var certNo: String?

    public var certType: String?

    public var certifyId: String?

    public var crop: String?

    public var deviceToken: String?

    public var encryptType: String?

    public var faceContrastFile: String?

    public var faceContrastPicture: String?

    public var faceContrastPictureUrl: String?

    public var ip: String?

    public var mobile: String?

    public var model: String?

    public var ossBucketName: String?

    public var ossObjectName: String?

    public var outerOrderNo: String?

    public var productCode: String?

    public var sceneId: Int64?

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
        if self.certName != nil {
            map["CertName"] = self.certName!
        }
        if self.certNo != nil {
            map["CertNo"] = self.certNo!
        }
        if self.certType != nil {
            map["CertType"] = self.certType!
        }
        if self.certifyId != nil {
            map["CertifyId"] = self.certifyId!
        }
        if self.crop != nil {
            map["Crop"] = self.crop!
        }
        if self.deviceToken != nil {
            map["DeviceToken"] = self.deviceToken!
        }
        if self.encryptType != nil {
            map["EncryptType"] = self.encryptType!
        }
        if self.faceContrastFile != nil {
            map["FaceContrastFile"] = self.faceContrastFile!
        }
        if self.faceContrastPicture != nil {
            map["FaceContrastPicture"] = self.faceContrastPicture!
        }
        if self.faceContrastPictureUrl != nil {
            map["FaceContrastPictureUrl"] = self.faceContrastPictureUrl!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.mobile != nil {
            map["Mobile"] = self.mobile!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.ossBucketName != nil {
            map["OssBucketName"] = self.ossBucketName!
        }
        if self.ossObjectName != nil {
            map["OssObjectName"] = self.ossObjectName!
        }
        if self.outerOrderNo != nil {
            map["OuterOrderNo"] = self.outerOrderNo!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertName"] as? String {
            self.certName = value
        }
        if let value = dict["CertNo"] as? String {
            self.certNo = value
        }
        if let value = dict["CertType"] as? String {
            self.certType = value
        }
        if let value = dict["CertifyId"] as? String {
            self.certifyId = value
        }
        if let value = dict["Crop"] as? String {
            self.crop = value
        }
        if let value = dict["DeviceToken"] as? String {
            self.deviceToken = value
        }
        if let value = dict["EncryptType"] as? String {
            self.encryptType = value
        }
        if let value = dict["FaceContrastFile"] as? String {
            self.faceContrastFile = value
        }
        if let value = dict["FaceContrastPicture"] as? String {
            self.faceContrastPicture = value
        }
        if let value = dict["FaceContrastPictureUrl"] as? String {
            self.faceContrastPictureUrl = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["Mobile"] as? String {
            self.mobile = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["OssBucketName"] as? String {
            self.ossBucketName = value
        }
        if let value = dict["OssObjectName"] as? String {
            self.ossObjectName = value
        }
        if let value = dict["OuterOrderNo"] as? String {
            self.outerOrderNo = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["SceneId"] as? Int64 {
            self.sceneId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class ContrastFaceVerifyAdvanceRequest : Tea.TeaModel {
    public var certName: String?

    public var certNo: String?

    public var certType: String?

    public var certifyId: String?

    public var crop: String?

    public var deviceToken: String?

    public var encryptType: String?

    public var faceContrastFileObject: InputStream?

    public var faceContrastPicture: String?

    public var faceContrastPictureUrl: String?

    public var ip: String?

    public var mobile: String?

    public var model: String?

    public var ossBucketName: String?

    public var ossObjectName: String?

    public var outerOrderNo: String?

    public var productCode: String?

    public var sceneId: Int64?

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
        if self.certName != nil {
            map["CertName"] = self.certName!
        }
        if self.certNo != nil {
            map["CertNo"] = self.certNo!
        }
        if self.certType != nil {
            map["CertType"] = self.certType!
        }
        if self.certifyId != nil {
            map["CertifyId"] = self.certifyId!
        }
        if self.crop != nil {
            map["Crop"] = self.crop!
        }
        if self.deviceToken != nil {
            map["DeviceToken"] = self.deviceToken!
        }
        if self.encryptType != nil {
            map["EncryptType"] = self.encryptType!
        }
        if self.faceContrastFileObject != nil {
            map["FaceContrastFile"] = self.faceContrastFileObject!
        }
        if self.faceContrastPicture != nil {
            map["FaceContrastPicture"] = self.faceContrastPicture!
        }
        if self.faceContrastPictureUrl != nil {
            map["FaceContrastPictureUrl"] = self.faceContrastPictureUrl!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.mobile != nil {
            map["Mobile"] = self.mobile!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.ossBucketName != nil {
            map["OssBucketName"] = self.ossBucketName!
        }
        if self.ossObjectName != nil {
            map["OssObjectName"] = self.ossObjectName!
        }
        if self.outerOrderNo != nil {
            map["OuterOrderNo"] = self.outerOrderNo!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertName"] as? String {
            self.certName = value
        }
        if let value = dict["CertNo"] as? String {
            self.certNo = value
        }
        if let value = dict["CertType"] as? String {
            self.certType = value
        }
        if let value = dict["CertifyId"] as? String {
            self.certifyId = value
        }
        if let value = dict["Crop"] as? String {
            self.crop = value
        }
        if let value = dict["DeviceToken"] as? String {
            self.deviceToken = value
        }
        if let value = dict["EncryptType"] as? String {
            self.encryptType = value
        }
        if let value = dict["FaceContrastFile"] as? InputStream {
            self.faceContrastFileObject = value
        }
        if let value = dict["FaceContrastPicture"] as? String {
            self.faceContrastPicture = value
        }
        if let value = dict["FaceContrastPictureUrl"] as? String {
            self.faceContrastPictureUrl = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["Mobile"] as? String {
            self.mobile = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["OssBucketName"] as? String {
            self.ossBucketName = value
        }
        if let value = dict["OssObjectName"] as? String {
            self.ossObjectName = value
        }
        if let value = dict["OuterOrderNo"] as? String {
            self.outerOrderNo = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["SceneId"] as? Int64 {
            self.sceneId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class ContrastFaceVerifyResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var certifyId: String?

        public var identityInfo: String?

        public var materialInfo: String?

        public var passed: String?

        public var subCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certifyId != nil {
                map["CertifyId"] = self.certifyId!
            }
            if self.identityInfo != nil {
                map["IdentityInfo"] = self.identityInfo!
            }
            if self.materialInfo != nil {
                map["MaterialInfo"] = self.materialInfo!
            }
            if self.passed != nil {
                map["Passed"] = self.passed!
            }
            if self.subCode != nil {
                map["SubCode"] = self.subCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertifyId"] as? String {
                self.certifyId = value
            }
            if let value = dict["IdentityInfo"] as? String {
                self.identityInfo = value
            }
            if let value = dict["MaterialInfo"] as? String {
                self.materialInfo = value
            }
            if let value = dict["Passed"] as? String {
                self.passed = value
            }
            if let value = dict["SubCode"] as? String {
                self.subCode = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: ContrastFaceVerifyResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = ContrastFaceVerifyResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class ContrastFaceVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ContrastFaceVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ContrastFaceVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAuthKeyRequest : Tea.TeaModel {
    public var authYears: Int32?

    public var bizType: String?

    public var test: Bool?

    public var userDeviceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authYears != nil {
            map["AuthYears"] = self.authYears!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.test != nil {
            map["Test"] = self.test!
        }
        if self.userDeviceId != nil {
            map["UserDeviceId"] = self.userDeviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthYears"] as? Int32 {
            self.authYears = value
        }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["Test"] as? Bool {
            self.test = value
        }
        if let value = dict["UserDeviceId"] as? String {
            self.userDeviceId = value
        }
    }
}

public class CreateAuthKeyResponseBody : Tea.TeaModel {
    public var authKey: String?

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
        if self.authKey != nil {
            map["AuthKey"] = self.authKey!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthKey"] as? String {
            self.authKey = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAuthKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAuthKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAuthKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVerifySettingRequest : Tea.TeaModel {
    public var bizName: String?

    public var bizType: String?

    public var guideStep: Bool?

    public var privacyStep: Bool?

    public var resultStep: Bool?

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
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.guideStep != nil {
            map["GuideStep"] = self.guideStep!
        }
        if self.privacyStep != nil {
            map["PrivacyStep"] = self.privacyStep!
        }
        if self.resultStep != nil {
            map["ResultStep"] = self.resultStep!
        }
        if self.solution != nil {
            map["Solution"] = self.solution!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["GuideStep"] as? Bool {
            self.guideStep = value
        }
        if let value = dict["PrivacyStep"] as? Bool {
            self.privacyStep = value
        }
        if let value = dict["ResultStep"] as? Bool {
            self.resultStep = value
        }
        if let value = dict["Solution"] as? String {
            self.solution = value
        }
    }
}

public class CreateVerifySettingResponseBody : Tea.TeaModel {
    public var bizName: String?

    public var bizType: String?

    public var requestId: String?

    public var solution: String?

    public var stepList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.solution != nil {
            map["Solution"] = self.solution!
        }
        if self.stepList != nil {
            map["StepList"] = self.stepList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Solution"] as? String {
            self.solution = value
        }
        if let value = dict["StepList"] as? [String] {
            self.stepList = value
        }
    }
}

public class CreateVerifySettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVerifySettingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateVerifySettingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CredentialVerifyRequest : Tea.TeaModel {
    public class MerchantDetail : Tea.TeaModel {
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
    public var certNum: String?

    public var credName: String?

    public var credType: String?

    public var identifyNum: String?

    public var imageContext: String?

    public var imageUrl: String?

    public var isCheck: String?

    public var isOCR: String?

    public var merchantDetail: [CredentialVerifyRequest.MerchantDetail]?

    public var merchantId: String?

    public var productCode: String?

    public var prompt: String?

    public var promptModel: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certNum != nil {
            map["CertNum"] = self.certNum!
        }
        if self.credName != nil {
            map["CredName"] = self.credName!
        }
        if self.credType != nil {
            map["CredType"] = self.credType!
        }
        if self.identifyNum != nil {
            map["IdentifyNum"] = self.identifyNum!
        }
        if self.imageContext != nil {
            map["ImageContext"] = self.imageContext!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.isCheck != nil {
            map["IsCheck"] = self.isCheck!
        }
        if self.isOCR != nil {
            map["IsOCR"] = self.isOCR!
        }
        if self.merchantDetail != nil {
            var tmp : [Any] = []
            for k in self.merchantDetail! {
                tmp.append(k.toMap())
            }
            map["MerchantDetail"] = tmp
        }
        if self.merchantId != nil {
            map["MerchantId"] = self.merchantId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.promptModel != nil {
            map["PromptModel"] = self.promptModel!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertNum"] as? String {
            self.certNum = value
        }
        if let value = dict["CredName"] as? String {
            self.credName = value
        }
        if let value = dict["CredType"] as? String {
            self.credType = value
        }
        if let value = dict["IdentifyNum"] as? String {
            self.identifyNum = value
        }
        if let value = dict["ImageContext"] as? String {
            self.imageContext = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["IsCheck"] as? String {
            self.isCheck = value
        }
        if let value = dict["IsOCR"] as? String {
            self.isOCR = value
        }
        if let value = dict["MerchantDetail"] as? [Any?] {
            var tmp : [CredentialVerifyRequest.MerchantDetail] = []
            for v in value {
                if v != nil {
                    var model = CredentialVerifyRequest.MerchantDetail()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.merchantDetail = tmp
        }
        if let value = dict["MerchantId"] as? String {
            self.merchantId = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["Prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["PromptModel"] as? String {
            self.promptModel = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class CredentialVerifyShrinkRequest : Tea.TeaModel {
    public var certNum: String?

    public var credName: String?

    public var credType: String?

    public var identifyNum: String?

    public var imageContext: String?

    public var imageUrl: String?

    public var isCheck: String?

    public var isOCR: String?

    public var merchantDetailShrink: String?

    public var merchantId: String?

    public var productCode: String?

    public var prompt: String?

    public var promptModel: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certNum != nil {
            map["CertNum"] = self.certNum!
        }
        if self.credName != nil {
            map["CredName"] = self.credName!
        }
        if self.credType != nil {
            map["CredType"] = self.credType!
        }
        if self.identifyNum != nil {
            map["IdentifyNum"] = self.identifyNum!
        }
        if self.imageContext != nil {
            map["ImageContext"] = self.imageContext!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.isCheck != nil {
            map["IsCheck"] = self.isCheck!
        }
        if self.isOCR != nil {
            map["IsOCR"] = self.isOCR!
        }
        if self.merchantDetailShrink != nil {
            map["MerchantDetail"] = self.merchantDetailShrink!
        }
        if self.merchantId != nil {
            map["MerchantId"] = self.merchantId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.promptModel != nil {
            map["PromptModel"] = self.promptModel!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertNum"] as? String {
            self.certNum = value
        }
        if let value = dict["CredName"] as? String {
            self.credName = value
        }
        if let value = dict["CredType"] as? String {
            self.credType = value
        }
        if let value = dict["IdentifyNum"] as? String {
            self.identifyNum = value
        }
        if let value = dict["ImageContext"] as? String {
            self.imageContext = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["IsCheck"] as? String {
            self.isCheck = value
        }
        if let value = dict["IsOCR"] as? String {
            self.isOCR = value
        }
        if let value = dict["MerchantDetail"] as? String {
            self.merchantDetailShrink = value
        }
        if let value = dict["MerchantId"] as? String {
            self.merchantId = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["Prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["PromptModel"] as? String {
            self.promptModel = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class CredentialVerifyResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public class VlResult : Tea.TeaModel {
            public var success: Bool?

            public var vlContent: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.success != nil {
                    map["Success"] = self.success!
                }
                if self.vlContent != nil {
                    map["VlContent"] = self.vlContent!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Success"] as? Bool {
                    self.success = value
                }
                if let value = dict["VlContent"] as? String {
                    self.vlContent = value
                }
            }
        }
        public var materialInfo: String?

        public var ocrInfo: String?

        public var result: String?

        public var riskScore: [String: String]?

        public var riskTag: String?

        public var verifyDetail: String?

        public var verifyResult: String?

        public var vlResult: CredentialVerifyResponseBody.ResultObject.VlResult?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.vlResult?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.materialInfo != nil {
                map["MaterialInfo"] = self.materialInfo!
            }
            if self.ocrInfo != nil {
                map["OcrInfo"] = self.ocrInfo!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.riskScore != nil {
                map["RiskScore"] = self.riskScore!
            }
            if self.riskTag != nil {
                map["RiskTag"] = self.riskTag!
            }
            if self.verifyDetail != nil {
                map["VerifyDetail"] = self.verifyDetail!
            }
            if self.verifyResult != nil {
                map["VerifyResult"] = self.verifyResult!
            }
            if self.vlResult != nil {
                map["VlResult"] = self.vlResult?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MaterialInfo"] as? String {
                self.materialInfo = value
            }
            if let value = dict["OcrInfo"] as? String {
                self.ocrInfo = value
            }
            if let value = dict["Result"] as? String {
                self.result = value
            }
            if let value = dict["RiskScore"] as? [String: String] {
                self.riskScore = value
            }
            if let value = dict["RiskTag"] as? String {
                self.riskTag = value
            }
            if let value = dict["VerifyDetail"] as? String {
                self.verifyDetail = value
            }
            if let value = dict["VerifyResult"] as? String {
                self.verifyResult = value
            }
            if let value = dict["VlResult"] as? [String: Any?] {
                var model = CredentialVerifyResponseBody.ResultObject.VlResult()
                model.fromMap(value)
                self.vlResult = model
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: CredentialVerifyResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = CredentialVerifyResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class CredentialVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CredentialVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CredentialVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CredentialVerifyV2Request : Tea.TeaModel {
    public class MerchantDetail : Tea.TeaModel {
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
    public var certNum: String?

    public var credName: String?

    public var credType: String?

    public var identifyNum: String?

    public var imageFile: String?

    public var imageUrl: String?

    public var isCheck: String?

    public var isOcr: String?

    public var merchantDetail: [CredentialVerifyV2Request.MerchantDetail]?

    public var merchantId: String?

    public var productCode: String?

    public var prompt: String?

    public var promptModel: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certNum != nil {
            map["CertNum"] = self.certNum!
        }
        if self.credName != nil {
            map["CredName"] = self.credName!
        }
        if self.credType != nil {
            map["CredType"] = self.credType!
        }
        if self.identifyNum != nil {
            map["IdentifyNum"] = self.identifyNum!
        }
        if self.imageFile != nil {
            map["ImageFile"] = self.imageFile!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.isCheck != nil {
            map["IsCheck"] = self.isCheck!
        }
        if self.isOcr != nil {
            map["IsOcr"] = self.isOcr!
        }
        if self.merchantDetail != nil {
            var tmp : [Any] = []
            for k in self.merchantDetail! {
                tmp.append(k.toMap())
            }
            map["MerchantDetail"] = tmp
        }
        if self.merchantId != nil {
            map["MerchantId"] = self.merchantId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.promptModel != nil {
            map["PromptModel"] = self.promptModel!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertNum"] as? String {
            self.certNum = value
        }
        if let value = dict["CredName"] as? String {
            self.credName = value
        }
        if let value = dict["CredType"] as? String {
            self.credType = value
        }
        if let value = dict["IdentifyNum"] as? String {
            self.identifyNum = value
        }
        if let value = dict["ImageFile"] as? String {
            self.imageFile = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["IsCheck"] as? String {
            self.isCheck = value
        }
        if let value = dict["IsOcr"] as? String {
            self.isOcr = value
        }
        if let value = dict["MerchantDetail"] as? [Any?] {
            var tmp : [CredentialVerifyV2Request.MerchantDetail] = []
            for v in value {
                if v != nil {
                    var model = CredentialVerifyV2Request.MerchantDetail()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.merchantDetail = tmp
        }
        if let value = dict["MerchantId"] as? String {
            self.merchantId = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["Prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["PromptModel"] as? String {
            self.promptModel = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class CredentialVerifyV2AdvanceRequest : Tea.TeaModel {
    public class MerchantDetail : Tea.TeaModel {
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
    public var certNum: String?

    public var credName: String?

    public var credType: String?

    public var identifyNum: String?

    public var imageFileObject: InputStream?

    public var imageUrl: String?

    public var isCheck: String?

    public var isOcr: String?

    public var merchantDetail: [CredentialVerifyV2AdvanceRequest.MerchantDetail]?

    public var merchantId: String?

    public var productCode: String?

    public var prompt: String?

    public var promptModel: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certNum != nil {
            map["CertNum"] = self.certNum!
        }
        if self.credName != nil {
            map["CredName"] = self.credName!
        }
        if self.credType != nil {
            map["CredType"] = self.credType!
        }
        if self.identifyNum != nil {
            map["IdentifyNum"] = self.identifyNum!
        }
        if self.imageFileObject != nil {
            map["ImageFile"] = self.imageFileObject!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.isCheck != nil {
            map["IsCheck"] = self.isCheck!
        }
        if self.isOcr != nil {
            map["IsOcr"] = self.isOcr!
        }
        if self.merchantDetail != nil {
            var tmp : [Any] = []
            for k in self.merchantDetail! {
                tmp.append(k.toMap())
            }
            map["MerchantDetail"] = tmp
        }
        if self.merchantId != nil {
            map["MerchantId"] = self.merchantId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.promptModel != nil {
            map["PromptModel"] = self.promptModel!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertNum"] as? String {
            self.certNum = value
        }
        if let value = dict["CredName"] as? String {
            self.credName = value
        }
        if let value = dict["CredType"] as? String {
            self.credType = value
        }
        if let value = dict["IdentifyNum"] as? String {
            self.identifyNum = value
        }
        if let value = dict["ImageFile"] as? InputStream {
            self.imageFileObject = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["IsCheck"] as? String {
            self.isCheck = value
        }
        if let value = dict["IsOcr"] as? String {
            self.isOcr = value
        }
        if let value = dict["MerchantDetail"] as? [Any?] {
            var tmp : [CredentialVerifyV2AdvanceRequest.MerchantDetail] = []
            for v in value {
                if v != nil {
                    var model = CredentialVerifyV2AdvanceRequest.MerchantDetail()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.merchantDetail = tmp
        }
        if let value = dict["MerchantId"] as? String {
            self.merchantId = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["Prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["PromptModel"] as? String {
            self.promptModel = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class CredentialVerifyV2ShrinkRequest : Tea.TeaModel {
    public var certNum: String?

    public var credName: String?

    public var credType: String?

    public var identifyNum: String?

    public var imageFile: String?

    public var imageUrl: String?

    public var isCheck: String?

    public var isOcr: String?

    public var merchantDetailShrink: String?

    public var merchantId: String?

    public var productCode: String?

    public var prompt: String?

    public var promptModel: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certNum != nil {
            map["CertNum"] = self.certNum!
        }
        if self.credName != nil {
            map["CredName"] = self.credName!
        }
        if self.credType != nil {
            map["CredType"] = self.credType!
        }
        if self.identifyNum != nil {
            map["IdentifyNum"] = self.identifyNum!
        }
        if self.imageFile != nil {
            map["ImageFile"] = self.imageFile!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.isCheck != nil {
            map["IsCheck"] = self.isCheck!
        }
        if self.isOcr != nil {
            map["IsOcr"] = self.isOcr!
        }
        if self.merchantDetailShrink != nil {
            map["MerchantDetail"] = self.merchantDetailShrink!
        }
        if self.merchantId != nil {
            map["MerchantId"] = self.merchantId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.promptModel != nil {
            map["PromptModel"] = self.promptModel!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertNum"] as? String {
            self.certNum = value
        }
        if let value = dict["CredName"] as? String {
            self.credName = value
        }
        if let value = dict["CredType"] as? String {
            self.credType = value
        }
        if let value = dict["IdentifyNum"] as? String {
            self.identifyNum = value
        }
        if let value = dict["ImageFile"] as? String {
            self.imageFile = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["IsCheck"] as? String {
            self.isCheck = value
        }
        if let value = dict["IsOcr"] as? String {
            self.isOcr = value
        }
        if let value = dict["MerchantDetail"] as? String {
            self.merchantDetailShrink = value
        }
        if let value = dict["MerchantId"] as? String {
            self.merchantId = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["Prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["PromptModel"] as? String {
            self.promptModel = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class CredentialVerifyV2ResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public class VlResult : Tea.TeaModel {
            public var success: Bool?

            public var vlContent: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.success != nil {
                    map["Success"] = self.success!
                }
                if self.vlContent != nil {
                    map["VlContent"] = self.vlContent!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Success"] as? Bool {
                    self.success = value
                }
                if let value = dict["VlContent"] as? String {
                    self.vlContent = value
                }
            }
        }
        public var materialInfo: String?

        public var ocrInfo: String?

        public var result: String?

        public var riskScore: [String: String]?

        public var riskTag: String?

        public var verifyDetail: String?

        public var verifyResult: String?

        public var vlResult: CredentialVerifyV2ResponseBody.ResultObject.VlResult?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.vlResult?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.materialInfo != nil {
                map["MaterialInfo"] = self.materialInfo!
            }
            if self.ocrInfo != nil {
                map["OcrInfo"] = self.ocrInfo!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.riskScore != nil {
                map["RiskScore"] = self.riskScore!
            }
            if self.riskTag != nil {
                map["RiskTag"] = self.riskTag!
            }
            if self.verifyDetail != nil {
                map["VerifyDetail"] = self.verifyDetail!
            }
            if self.verifyResult != nil {
                map["VerifyResult"] = self.verifyResult!
            }
            if self.vlResult != nil {
                map["VlResult"] = self.vlResult?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MaterialInfo"] as? String {
                self.materialInfo = value
            }
            if let value = dict["OcrInfo"] as? String {
                self.ocrInfo = value
            }
            if let value = dict["Result"] as? String {
                self.result = value
            }
            if let value = dict["RiskScore"] as? [String: String] {
                self.riskScore = value
            }
            if let value = dict["RiskTag"] as? String {
                self.riskTag = value
            }
            if let value = dict["VerifyDetail"] as? String {
                self.verifyDetail = value
            }
            if let value = dict["VerifyResult"] as? String {
                self.verifyResult = value
            }
            if let value = dict["VlResult"] as? [String: Any?] {
                var model = CredentialVerifyV2ResponseBody.ResultObject.VlResult()
                model.fromMap(value)
                self.vlResult = model
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: CredentialVerifyV2ResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = CredentialVerifyV2ResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class CredentialVerifyV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CredentialVerifyV2ResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CredentialVerifyV2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeepfakeDetectRequest : Tea.TeaModel {
    public var faceBase64: String?

    public var faceInputType: String?

    public var faceUrl: String?

    public var outerOrderNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.faceBase64 != nil {
            map["FaceBase64"] = self.faceBase64!
        }
        if self.faceInputType != nil {
            map["FaceInputType"] = self.faceInputType!
        }
        if self.faceUrl != nil {
            map["FaceUrl"] = self.faceUrl!
        }
        if self.outerOrderNo != nil {
            map["OuterOrderNo"] = self.outerOrderNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FaceBase64"] as? String {
            self.faceBase64 = value
        }
        if let value = dict["FaceInputType"] as? String {
            self.faceInputType = value
        }
        if let value = dict["FaceUrl"] as? String {
            self.faceUrl = value
        }
        if let value = dict["OuterOrderNo"] as? String {
            self.outerOrderNo = value
        }
    }
}

public class DeepfakeDetectResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var result: String?

        public var riskScore: [String: String]?

        public var riskTag: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.riskScore != nil {
                map["RiskScore"] = self.riskScore!
            }
            if self.riskTag != nil {
                map["RiskTag"] = self.riskTag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Result"] as? String {
                self.result = value
            }
            if let value = dict["RiskScore"] as? [String: String] {
                self.riskScore = value
            }
            if let value = dict["RiskTag"] as? String {
                self.riskTag = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: DeepfakeDetectResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = DeepfakeDetectResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class DeepfakeDetectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeepfakeDetectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeepfakeDetectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFaceVerifyResultRequest : Tea.TeaModel {
    public var certifyId: String?

    public var deleteAfterQuery: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certifyId != nil {
            map["CertifyId"] = self.certifyId!
        }
        if self.deleteAfterQuery != nil {
            map["DeleteAfterQuery"] = self.deleteAfterQuery!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertifyId"] as? String {
            self.certifyId = value
        }
        if let value = dict["DeleteAfterQuery"] as? String {
            self.deleteAfterQuery = value
        }
    }
}

public class DeleteFaceVerifyResultResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var certifyId: String?

        public var deleteResult: String?

        public var failReason: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certifyId != nil {
                map["CertifyId"] = self.certifyId!
            }
            if self.deleteResult != nil {
                map["DeleteResult"] = self.deleteResult!
            }
            if self.failReason != nil {
                map["FailReason"] = self.failReason!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertifyId"] as? String {
                self.certifyId = value
            }
            if let value = dict["DeleteResult"] as? String {
                self.deleteResult = value
            }
            if let value = dict["FailReason"] as? String {
                self.failReason = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: DeleteFaceVerifyResultResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = DeleteFaceVerifyResultResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class DeleteFaceVerifyResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFaceVerifyResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteFaceVerifyResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDeviceInfoRequest : Tea.TeaModel {
    public var bizType: String?

    public var currentPage: Int32?

    public var deviceId: String?

    public var expiredEndDay: String?

    public var expiredStartDay: String?

    public var pageSize: Int32?

    public var userDeviceId: String?

    public override init() {
        super.init()
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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.expiredEndDay != nil {
            map["ExpiredEndDay"] = self.expiredEndDay!
        }
        if self.expiredStartDay != nil {
            map["ExpiredStartDay"] = self.expiredStartDay!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.userDeviceId != nil {
            map["UserDeviceId"] = self.userDeviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["ExpiredEndDay"] as? String {
            self.expiredEndDay = value
        }
        if let value = dict["ExpiredStartDay"] as? String {
            self.expiredStartDay = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["UserDeviceId"] as? String {
            self.userDeviceId = value
        }
    }
}

public class DescribeDeviceInfoResponseBody : Tea.TeaModel {
    public class DeviceInfoList : Tea.TeaModel {
        public class DeviceInfo : Tea.TeaModel {
            public var beginDay: String?

            public var bizType: String?

            public var deviceId: String?

            public var expiredDay: String?

            public var userDeviceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.beginDay != nil {
                    map["BeginDay"] = self.beginDay!
                }
                if self.bizType != nil {
                    map["BizType"] = self.bizType!
                }
                if self.deviceId != nil {
                    map["DeviceId"] = self.deviceId!
                }
                if self.expiredDay != nil {
                    map["ExpiredDay"] = self.expiredDay!
                }
                if self.userDeviceId != nil {
                    map["UserDeviceId"] = self.userDeviceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BeginDay"] as? String {
                    self.beginDay = value
                }
                if let value = dict["BizType"] as? String {
                    self.bizType = value
                }
                if let value = dict["DeviceId"] as? String {
                    self.deviceId = value
                }
                if let value = dict["ExpiredDay"] as? String {
                    self.expiredDay = value
                }
                if let value = dict["UserDeviceId"] as? String {
                    self.userDeviceId = value
                }
            }
        }
        public var deviceInfo: [DescribeDeviceInfoResponseBody.DeviceInfoList.DeviceInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceInfo != nil {
                var tmp : [Any] = []
                for k in self.deviceInfo! {
                    tmp.append(k.toMap())
                }
                map["DeviceInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceInfo"] as? [Any?] {
                var tmp : [DescribeDeviceInfoResponseBody.DeviceInfoList.DeviceInfo] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDeviceInfoResponseBody.DeviceInfoList.DeviceInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.deviceInfo = tmp
            }
        }
    }
    public var currentPage: Int32?

    public var deviceInfoList: DescribeDeviceInfoResponseBody.DeviceInfoList?

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
        try self.deviceInfoList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.deviceInfoList != nil {
            map["DeviceInfoList"] = self.deviceInfoList?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DeviceInfoList"] as? [String: Any?] {
            var model = DescribeDeviceInfoResponseBody.DeviceInfoList()
            model.fromMap(value)
            self.deviceInfoList = model
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeDeviceInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDeviceInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDeviceInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeFaceGuardRiskRequest : Tea.TeaModel {
    public var bizId: String?

    public var deviceToken: String?

    public var outerOrderNo: String?

    public var productCode: String?

    public override init() {
        super.init()
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
        if self.deviceToken != nil {
            map["DeviceToken"] = self.deviceToken!
        }
        if self.outerOrderNo != nil {
            map["OuterOrderNo"] = self.outerOrderNo!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["DeviceToken"] as? String {
            self.deviceToken = value
        }
        if let value = dict["OuterOrderNo"] as? String {
            self.outerOrderNo = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
    }
}

public class DescribeFaceGuardRiskResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var certifyId: String?

        public var riskExtends: String?

        public var riskTags: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certifyId != nil {
                map["CertifyId"] = self.certifyId!
            }
            if self.riskExtends != nil {
                map["RiskExtends"] = self.riskExtends!
            }
            if self.riskTags != nil {
                map["RiskTags"] = self.riskTags!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertifyId"] as? String {
                self.certifyId = value
            }
            if let value = dict["RiskExtends"] as? String {
                self.riskExtends = value
            }
            if let value = dict["RiskTags"] as? String {
                self.riskTags = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: DescribeFaceGuardRiskResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = DescribeFaceGuardRiskResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class DescribeFaceGuardRiskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFaceGuardRiskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeFaceGuardRiskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeFaceVerifyRequest : Tea.TeaModel {
    public var certifyId: String?

    public var pictureReturnType: String?

    public var sceneId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certifyId != nil {
            map["CertifyId"] = self.certifyId!
        }
        if self.pictureReturnType != nil {
            map["PictureReturnType"] = self.pictureReturnType!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertifyId"] as? String {
            self.certifyId = value
        }
        if let value = dict["PictureReturnType"] as? String {
            self.pictureReturnType = value
        }
        if let value = dict["SceneId"] as? Int64 {
            self.sceneId = value
        }
    }
}

public class DescribeFaceVerifyResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var deviceRisk: String?

        public var deviceToken: String?

        public var identityInfo: String?

        public var materialInfo: String?

        public var passed: String?

        public var subCode: String?

        public var success: String?

        public var userInfo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deviceRisk != nil {
                map["DeviceRisk"] = self.deviceRisk!
            }
            if self.deviceToken != nil {
                map["DeviceToken"] = self.deviceToken!
            }
            if self.identityInfo != nil {
                map["IdentityInfo"] = self.identityInfo!
            }
            if self.materialInfo != nil {
                map["MaterialInfo"] = self.materialInfo!
            }
            if self.passed != nil {
                map["Passed"] = self.passed!
            }
            if self.subCode != nil {
                map["SubCode"] = self.subCode!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            if self.userInfo != nil {
                map["UserInfo"] = self.userInfo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceRisk"] as? String {
                self.deviceRisk = value
            }
            if let value = dict["DeviceToken"] as? String {
                self.deviceToken = value
            }
            if let value = dict["IdentityInfo"] as? String {
                self.identityInfo = value
            }
            if let value = dict["MaterialInfo"] as? String {
                self.materialInfo = value
            }
            if let value = dict["Passed"] as? String {
                self.passed = value
            }
            if let value = dict["SubCode"] as? String {
                self.subCode = value
            }
            if let value = dict["Success"] as? String {
                self.success = value
            }
            if let value = dict["UserInfo"] as? String {
                self.userInfo = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: DescribeFaceVerifyResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = DescribeFaceVerifyResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class DescribeFaceVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeFaceVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeFaceVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeOssUploadTokenResponseBody : Tea.TeaModel {
    public class OssUploadToken : Tea.TeaModel {
        public var bucket: String?

        public var endPoint: String?

        public var expired: Int64?

        public var key: String?

        public var path: String?

        public var secret: String?

        public var token: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bucket != nil {
                map["Bucket"] = self.bucket!
            }
            if self.endPoint != nil {
                map["EndPoint"] = self.endPoint!
            }
            if self.expired != nil {
                map["Expired"] = self.expired!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.secret != nil {
                map["Secret"] = self.secret!
            }
            if self.token != nil {
                map["Token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Bucket"] as? String {
                self.bucket = value
            }
            if let value = dict["EndPoint"] as? String {
                self.endPoint = value
            }
            if let value = dict["Expired"] as? Int64 {
                self.expired = value
            }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Path"] as? String {
                self.path = value
            }
            if let value = dict["Secret"] as? String {
                self.secret = value
            }
            if let value = dict["Token"] as? String {
                self.token = value
            }
        }
    }
    public var ossUploadToken: DescribeOssUploadTokenResponseBody.OssUploadToken?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ossUploadToken?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ossUploadToken != nil {
            map["OssUploadToken"] = self.ossUploadToken?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OssUploadToken"] as? [String: Any?] {
            var model = DescribeOssUploadTokenResponseBody.OssUploadToken()
            model.fromMap(value)
            self.ossUploadToken = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeOssUploadTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOssUploadTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeOssUploadTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePageFaceVerifyDataRequest : Tea.TeaModel {
    public var currentPage: Int64?

    public var endDate: String?

    public var pageSize: Int64?

    public var productCode: String?

    public var sceneId: Int64?

    public var startDate: String?

    public override init() {
        super.init()
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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["SceneId"] as? Int64 {
            self.sceneId = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class DescribePageFaceVerifyDataResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var date: String?

        public var productCode: String?

        public var sceneId: String?

        public var sceneName: String?

        public var successCount: String?

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
            if self.date != nil {
                map["Date"] = self.date!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            if self.sceneName != nil {
                map["SceneName"] = self.sceneName!
            }
            if self.successCount != nil {
                map["SuccessCount"] = self.successCount!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Date"] as? String {
                self.date = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["SceneId"] as? String {
                self.sceneId = value
            }
            if let value = dict["SceneName"] as? String {
                self.sceneName = value
            }
            if let value = dict["SuccessCount"] as? String {
                self.successCount = value
            }
            if let value = dict["TotalCount"] as? String {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var currentPage: String?

    public var items: [DescribePageFaceVerifyDataResponseBody.Items]?

    public var message: String?

    public var pageSize: String?

    public var requestId: String?

    public var success: String?

    public var totalCount: String?

    public var totalPage: String?

    public override init() {
        super.init()
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
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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
        if self.success != nil {
            map["Success"] = self.success!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribePageFaceVerifyDataResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribePageFaceVerifyDataResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
        if let value = dict["TotalPage"] as? String {
            self.totalPage = value
        }
    }
}

public class DescribePageFaceVerifyDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePageFaceVerifyDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribePageFaceVerifyDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSmartStatisticsPageListRequest : Tea.TeaModel {
    public var currentPage: String?

    public var endDate: String?

    public var pageSize: String?

    public var sceneId: String?

    public var serviceCode: String?

    public var startDate: String?

    public override init() {
        super.init()
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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class DescribeSmartStatisticsPageListResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var date: String?

        public var passRate: String?

        public var productCode: String?

        public var sceneId: Int64?

        public var sceneName: String?

        public var successCount: Int32?

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
            if self.date != nil {
                map["Date"] = self.date!
            }
            if self.passRate != nil {
                map["PassRate"] = self.passRate!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            if self.sceneName != nil {
                map["SceneName"] = self.sceneName!
            }
            if self.successCount != nil {
                map["SuccessCount"] = self.successCount!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Date"] as? String {
                self.date = value
            }
            if let value = dict["PassRate"] as? String {
                self.passRate = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["SceneId"] as? Int64 {
                self.sceneId = value
            }
            if let value = dict["SceneName"] as? String {
                self.sceneName = value
            }
            if let value = dict["SuccessCount"] as? Int32 {
                self.successCount = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribeSmartStatisticsPageListResponseBody.Items]?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var totalPage: Int32?

    public override init() {
        super.init()
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
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeSmartStatisticsPageListResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeSmartStatisticsPageListResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["TotalPage"] as? Int32 {
            self.totalPage = value
        }
    }
}

public class DescribeSmartStatisticsPageListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSmartStatisticsPageListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSmartStatisticsPageListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVerifyResultRequest : Tea.TeaModel {
    public var bizId: String?

    public var bizType: String?

    public override init() {
        super.init()
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
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
    }
}

public class DescribeVerifyResultResponseBody : Tea.TeaModel {
    public class Material : Tea.TeaModel {
        public class IdCardInfo : Tea.TeaModel {
            public var address: String?

            public var authority: String?

            public var backImageUrl: String?

            public var birth: String?

            public var endDate: String?

            public var frontImageUrl: String?

            public var name: String?

            public var nationality: String?

            public var number: String?

            public var startDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.address != nil {
                    map["Address"] = self.address!
                }
                if self.authority != nil {
                    map["Authority"] = self.authority!
                }
                if self.backImageUrl != nil {
                    map["BackImageUrl"] = self.backImageUrl!
                }
                if self.birth != nil {
                    map["Birth"] = self.birth!
                }
                if self.endDate != nil {
                    map["EndDate"] = self.endDate!
                }
                if self.frontImageUrl != nil {
                    map["FrontImageUrl"] = self.frontImageUrl!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nationality != nil {
                    map["Nationality"] = self.nationality!
                }
                if self.number != nil {
                    map["Number"] = self.number!
                }
                if self.startDate != nil {
                    map["StartDate"] = self.startDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Address"] as? String {
                    self.address = value
                }
                if let value = dict["Authority"] as? String {
                    self.authority = value
                }
                if let value = dict["BackImageUrl"] as? String {
                    self.backImageUrl = value
                }
                if let value = dict["Birth"] as? String {
                    self.birth = value
                }
                if let value = dict["EndDate"] as? String {
                    self.endDate = value
                }
                if let value = dict["FrontImageUrl"] as? String {
                    self.frontImageUrl = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Nationality"] as? String {
                    self.nationality = value
                }
                if let value = dict["Number"] as? String {
                    self.number = value
                }
                if let value = dict["StartDate"] as? String {
                    self.startDate = value
                }
            }
        }
        public var faceGlobalUrl: String?

        public var faceImageUrl: String?

        public var faceMask: Bool?

        public var faceQuality: String?

        public var idCardInfo: DescribeVerifyResultResponseBody.Material.IdCardInfo?

        public var idCardName: String?

        public var idCardNumber: String?

        public var videoUrls: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.idCardInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.faceGlobalUrl != nil {
                map["FaceGlobalUrl"] = self.faceGlobalUrl!
            }
            if self.faceImageUrl != nil {
                map["FaceImageUrl"] = self.faceImageUrl!
            }
            if self.faceMask != nil {
                map["FaceMask"] = self.faceMask!
            }
            if self.faceQuality != nil {
                map["FaceQuality"] = self.faceQuality!
            }
            if self.idCardInfo != nil {
                map["IdCardInfo"] = self.idCardInfo?.toMap()
            }
            if self.idCardName != nil {
                map["IdCardName"] = self.idCardName!
            }
            if self.idCardNumber != nil {
                map["IdCardNumber"] = self.idCardNumber!
            }
            if self.videoUrls != nil {
                map["VideoUrls"] = self.videoUrls!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FaceGlobalUrl"] as? String {
                self.faceGlobalUrl = value
            }
            if let value = dict["FaceImageUrl"] as? String {
                self.faceImageUrl = value
            }
            if let value = dict["FaceMask"] as? Bool {
                self.faceMask = value
            }
            if let value = dict["FaceQuality"] as? String {
                self.faceQuality = value
            }
            if let value = dict["IdCardInfo"] as? [String: Any?] {
                var model = DescribeVerifyResultResponseBody.Material.IdCardInfo()
                model.fromMap(value)
                self.idCardInfo = model
            }
            if let value = dict["IdCardName"] as? String {
                self.idCardName = value
            }
            if let value = dict["IdCardNumber"] as? String {
                self.idCardNumber = value
            }
            if let value = dict["VideoUrls"] as? [String] {
                self.videoUrls = value
            }
        }
    }
    public var authorityComparisionScore: Double?

    public var faceComparisonScore: Double?

    public var idCardFaceComparisonScore: Double?

    public var material: DescribeVerifyResultResponseBody.Material?

    public var requestId: String?

    public var verifyStatus: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.material?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorityComparisionScore != nil {
            map["AuthorityComparisionScore"] = self.authorityComparisionScore!
        }
        if self.faceComparisonScore != nil {
            map["FaceComparisonScore"] = self.faceComparisonScore!
        }
        if self.idCardFaceComparisonScore != nil {
            map["IdCardFaceComparisonScore"] = self.idCardFaceComparisonScore!
        }
        if self.material != nil {
            map["Material"] = self.material?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.verifyStatus != nil {
            map["VerifyStatus"] = self.verifyStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthorityComparisionScore"] as? Double {
            self.authorityComparisionScore = value
        }
        if let value = dict["FaceComparisonScore"] as? Double {
            self.faceComparisonScore = value
        }
        if let value = dict["IdCardFaceComparisonScore"] as? Double {
            self.idCardFaceComparisonScore = value
        }
        if let value = dict["Material"] as? [String: Any?] {
            var model = DescribeVerifyResultResponseBody.Material()
            model.fromMap(value)
            self.material = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VerifyStatus"] as? Int32 {
            self.verifyStatus = value
        }
    }
}

public class DescribeVerifyResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVerifyResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeVerifyResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVerifySDKRequest : Tea.TeaModel {
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class DescribeVerifySDKResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var sdkUrl: String?

    public override init() {
        super.init()
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
        if self.sdkUrl != nil {
            map["SdkUrl"] = self.sdkUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SdkUrl"] as? String {
            self.sdkUrl = value
        }
    }
}

public class DescribeVerifySDKResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVerifySDKResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeVerifySDKResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVerifyTokenRequest : Tea.TeaModel {
    public var bizId: String?

    public var bizType: String?

    public var callbackSeed: String?

    public var callbackUrl: String?

    public var faceRetainedImageUrl: String?

    public var failedRedirectUrl: String?

    public var idCardBackImageUrl: String?

    public var idCardFrontImageUrl: String?

    public var idCardNumber: String?

    public var name: String?

    public var passedRedirectUrl: String?

    public var userId: String?

    public var userIp: String?

    public var userPhoneNumber: String?

    public var userRegistTime: Int64?

    public override init() {
        super.init()
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
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.callbackSeed != nil {
            map["CallbackSeed"] = self.callbackSeed!
        }
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.faceRetainedImageUrl != nil {
            map["FaceRetainedImageUrl"] = self.faceRetainedImageUrl!
        }
        if self.failedRedirectUrl != nil {
            map["FailedRedirectUrl"] = self.failedRedirectUrl!
        }
        if self.idCardBackImageUrl != nil {
            map["IdCardBackImageUrl"] = self.idCardBackImageUrl!
        }
        if self.idCardFrontImageUrl != nil {
            map["IdCardFrontImageUrl"] = self.idCardFrontImageUrl!
        }
        if self.idCardNumber != nil {
            map["IdCardNumber"] = self.idCardNumber!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.passedRedirectUrl != nil {
            map["PassedRedirectUrl"] = self.passedRedirectUrl!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userIp != nil {
            map["UserIp"] = self.userIp!
        }
        if self.userPhoneNumber != nil {
            map["UserPhoneNumber"] = self.userPhoneNumber!
        }
        if self.userRegistTime != nil {
            map["UserRegistTime"] = self.userRegistTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["CallbackSeed"] as? String {
            self.callbackSeed = value
        }
        if let value = dict["CallbackUrl"] as? String {
            self.callbackUrl = value
        }
        if let value = dict["FaceRetainedImageUrl"] as? String {
            self.faceRetainedImageUrl = value
        }
        if let value = dict["FailedRedirectUrl"] as? String {
            self.failedRedirectUrl = value
        }
        if let value = dict["IdCardBackImageUrl"] as? String {
            self.idCardBackImageUrl = value
        }
        if let value = dict["IdCardFrontImageUrl"] as? String {
            self.idCardFrontImageUrl = value
        }
        if let value = dict["IdCardNumber"] as? String {
            self.idCardNumber = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PassedRedirectUrl"] as? String {
            self.passedRedirectUrl = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserIp"] as? String {
            self.userIp = value
        }
        if let value = dict["UserPhoneNumber"] as? String {
            self.userPhoneNumber = value
        }
        if let value = dict["UserRegistTime"] as? Int64 {
            self.userRegistTime = value
        }
    }
}

public class DescribeVerifyTokenResponseBody : Tea.TeaModel {
    public class OssUploadToken : Tea.TeaModel {
        public var bucket: String?

        public var endPoint: String?

        public var expired: Int64?

        public var key: String?

        public var path: String?

        public var secret: String?

        public var token: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bucket != nil {
                map["Bucket"] = self.bucket!
            }
            if self.endPoint != nil {
                map["EndPoint"] = self.endPoint!
            }
            if self.expired != nil {
                map["Expired"] = self.expired!
            }
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.path != nil {
                map["Path"] = self.path!
            }
            if self.secret != nil {
                map["Secret"] = self.secret!
            }
            if self.token != nil {
                map["Token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Bucket"] as? String {
                self.bucket = value
            }
            if let value = dict["EndPoint"] as? String {
                self.endPoint = value
            }
            if let value = dict["Expired"] as? Int64 {
                self.expired = value
            }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Path"] as? String {
                self.path = value
            }
            if let value = dict["Secret"] as? String {
                self.secret = value
            }
            if let value = dict["Token"] as? String {
                self.token = value
            }
        }
    }
    public var ossUploadToken: DescribeVerifyTokenResponseBody.OssUploadToken?

    public var requestId: String?

    public var verifyPageUrl: String?

    public var verifyToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ossUploadToken?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ossUploadToken != nil {
            map["OssUploadToken"] = self.ossUploadToken?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.verifyPageUrl != nil {
            map["VerifyPageUrl"] = self.verifyPageUrl!
        }
        if self.verifyToken != nil {
            map["VerifyToken"] = self.verifyToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OssUploadToken"] as? [String: Any?] {
            var model = DescribeVerifyTokenResponseBody.OssUploadToken()
            model.fromMap(value)
            self.ossUploadToken = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VerifyPageUrl"] as? String {
            self.verifyPageUrl = value
        }
        if let value = dict["VerifyToken"] as? String {
            self.verifyToken = value
        }
    }
}

public class DescribeVerifyTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVerifyTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeVerifyTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectFaceAttributesRequest : Tea.TeaModel {
    public var bizType: String?

    public var materialValue: String?

    public override init() {
        super.init()
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
        if self.materialValue != nil {
            map["MaterialValue"] = self.materialValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["MaterialValue"] as? String {
            self.materialValue = value
        }
    }
}

public class DetectFaceAttributesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FaceInfos : Tea.TeaModel {
            public class FaceAttributesDetectInfo : Tea.TeaModel {
                public class FaceAttributes : Tea.TeaModel {
                    public class Headpose : Tea.TeaModel {
                        public var pitchAngle: Double?

                        public var rollAngle: Double?

                        public var yawAngle: Double?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.pitchAngle != nil {
                                map["PitchAngle"] = self.pitchAngle!
                            }
                            if self.rollAngle != nil {
                                map["RollAngle"] = self.rollAngle!
                            }
                            if self.yawAngle != nil {
                                map["YawAngle"] = self.yawAngle!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["PitchAngle"] as? Double {
                                self.pitchAngle = value
                            }
                            if let value = dict["RollAngle"] as? Double {
                                self.rollAngle = value
                            }
                            if let value = dict["YawAngle"] as? Double {
                                self.yawAngle = value
                            }
                        }
                    }
                    public class Smiling : Tea.TeaModel {
                        public var threshold: Double?

                        public var value: Double?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.threshold != nil {
                                map["Threshold"] = self.threshold!
                            }
                            if self.value != nil {
                                map["Value"] = self.value!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Threshold"] as? Double {
                                self.threshold = value
                            }
                            if let value = dict["Value"] as? Double {
                                self.value = value
                            }
                        }
                    }
                    public var blur: Double?

                    public var facequal: Double?

                    public var facetype: String?

                    public var glasses: String?

                    public var headpose: DetectFaceAttributesResponseBody.Data.FaceInfos.FaceAttributesDetectInfo.FaceAttributes.Headpose?

                    public var integrity: Int32?

                    public var respirator: String?

                    public var smiling: DetectFaceAttributesResponseBody.Data.FaceInfos.FaceAttributesDetectInfo.FaceAttributes.Smiling?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.headpose?.validate()
                        try self.smiling?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.blur != nil {
                            map["Blur"] = self.blur!
                        }
                        if self.facequal != nil {
                            map["Facequal"] = self.facequal!
                        }
                        if self.facetype != nil {
                            map["Facetype"] = self.facetype!
                        }
                        if self.glasses != nil {
                            map["Glasses"] = self.glasses!
                        }
                        if self.headpose != nil {
                            map["Headpose"] = self.headpose?.toMap()
                        }
                        if self.integrity != nil {
                            map["Integrity"] = self.integrity!
                        }
                        if self.respirator != nil {
                            map["Respirator"] = self.respirator!
                        }
                        if self.smiling != nil {
                            map["Smiling"] = self.smiling?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Blur"] as? Double {
                            self.blur = value
                        }
                        if let value = dict["Facequal"] as? Double {
                            self.facequal = value
                        }
                        if let value = dict["Facetype"] as? String {
                            self.facetype = value
                        }
                        if let value = dict["Glasses"] as? String {
                            self.glasses = value
                        }
                        if let value = dict["Headpose"] as? [String: Any?] {
                            var model = DetectFaceAttributesResponseBody.Data.FaceInfos.FaceAttributesDetectInfo.FaceAttributes.Headpose()
                            model.fromMap(value)
                            self.headpose = model
                        }
                        if let value = dict["Integrity"] as? Int32 {
                            self.integrity = value
                        }
                        if let value = dict["Respirator"] as? String {
                            self.respirator = value
                        }
                        if let value = dict["Smiling"] as? [String: Any?] {
                            var model = DetectFaceAttributesResponseBody.Data.FaceInfos.FaceAttributesDetectInfo.FaceAttributes.Smiling()
                            model.fromMap(value)
                            self.smiling = model
                        }
                    }
                }
                public class FaceRect : Tea.TeaModel {
                    public var height: Int32?

                    public var left_: Int32?

                    public var top: Int32?

                    public var width: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.height != nil {
                            map["Height"] = self.height!
                        }
                        if self.left_ != nil {
                            map["Left"] = self.left_!
                        }
                        if self.top != nil {
                            map["Top"] = self.top!
                        }
                        if self.width != nil {
                            map["Width"] = self.width!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Height"] as? Int32 {
                            self.height = value
                        }
                        if let value = dict["Left"] as? Int32 {
                            self.left_ = value
                        }
                        if let value = dict["Top"] as? Int32 {
                            self.top = value
                        }
                        if let value = dict["Width"] as? Int32 {
                            self.width = value
                        }
                    }
                }
                public var faceAttributes: DetectFaceAttributesResponseBody.Data.FaceInfos.FaceAttributesDetectInfo.FaceAttributes?

                public var faceRect: DetectFaceAttributesResponseBody.Data.FaceInfos.FaceAttributesDetectInfo.FaceRect?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.faceAttributes?.validate()
                    try self.faceRect?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.faceAttributes != nil {
                        map["FaceAttributes"] = self.faceAttributes?.toMap()
                    }
                    if self.faceRect != nil {
                        map["FaceRect"] = self.faceRect?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["FaceAttributes"] as? [String: Any?] {
                        var model = DetectFaceAttributesResponseBody.Data.FaceInfos.FaceAttributesDetectInfo.FaceAttributes()
                        model.fromMap(value)
                        self.faceAttributes = model
                    }
                    if let value = dict["FaceRect"] as? [String: Any?] {
                        var model = DetectFaceAttributesResponseBody.Data.FaceInfos.FaceAttributesDetectInfo.FaceRect()
                        model.fromMap(value)
                        self.faceRect = model
                    }
                }
            }
            public var faceAttributesDetectInfo: [DetectFaceAttributesResponseBody.Data.FaceInfos.FaceAttributesDetectInfo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.faceAttributesDetectInfo != nil {
                    var tmp : [Any] = []
                    for k in self.faceAttributesDetectInfo! {
                        tmp.append(k.toMap())
                    }
                    map["FaceAttributesDetectInfo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FaceAttributesDetectInfo"] as? [Any?] {
                    var tmp : [DetectFaceAttributesResponseBody.Data.FaceInfos.FaceAttributesDetectInfo] = []
                    for v in value {
                        if v != nil {
                            var model = DetectFaceAttributesResponseBody.Data.FaceInfos.FaceAttributesDetectInfo()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.faceAttributesDetectInfo = tmp
                }
            }
        }
        public var faceInfos: DetectFaceAttributesResponseBody.Data.FaceInfos?

        public var imgHeight: Int32?

        public var imgWidth: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.faceInfos?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.faceInfos != nil {
                map["FaceInfos"] = self.faceInfos?.toMap()
            }
            if self.imgHeight != nil {
                map["ImgHeight"] = self.imgHeight!
            }
            if self.imgWidth != nil {
                map["ImgWidth"] = self.imgWidth!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FaceInfos"] as? [String: Any?] {
                var model = DetectFaceAttributesResponseBody.Data.FaceInfos()
                model.fromMap(value)
                self.faceInfos = model
            }
            if let value = dict["ImgHeight"] as? Int32 {
                self.imgHeight = value
            }
            if let value = dict["ImgWidth"] as? Int32 {
                self.imgWidth = value
            }
        }
    }
    public var code: String?

    public var data: DetectFaceAttributesResponseBody.Data?

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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DetectFaceAttributesResponseBody.Data()
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

public class DetectFaceAttributesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectFaceAttributesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetectFaceAttributesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class Id2MetaPeriodVerifyRequest : Tea.TeaModel {
    public var identifyNum: String?

    public var paramType: String?

    public var userName: String?

    public var validityEndDate: String?

    public var validityStartDate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identifyNum != nil {
            map["IdentifyNum"] = self.identifyNum!
        }
        if self.paramType != nil {
            map["ParamType"] = self.paramType!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.validityEndDate != nil {
            map["ValidityEndDate"] = self.validityEndDate!
        }
        if self.validityStartDate != nil {
            map["ValidityStartDate"] = self.validityStartDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdentifyNum"] as? String {
            self.identifyNum = value
        }
        if let value = dict["ParamType"] as? String {
            self.paramType = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
        if let value = dict["ValidityEndDate"] as? String {
            self.validityEndDate = value
        }
        if let value = dict["ValidityStartDate"] as? String {
            self.validityStartDate = value
        }
    }
}

public class Id2MetaPeriodVerifyResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var bizCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: Id2MetaPeriodVerifyResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = Id2MetaPeriodVerifyResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class Id2MetaPeriodVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Id2MetaPeriodVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Id2MetaPeriodVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class Id2MetaStandardVerifyRequest : Tea.TeaModel {
    public var identifyNum: String?

    public var paramType: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identifyNum != nil {
            map["IdentifyNum"] = self.identifyNum!
        }
        if self.paramType != nil {
            map["ParamType"] = self.paramType!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdentifyNum"] as? String {
            self.identifyNum = value
        }
        if let value = dict["ParamType"] as? String {
            self.paramType = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class Id2MetaStandardVerifyResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var bizCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: Id2MetaStandardVerifyResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = Id2MetaStandardVerifyResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class Id2MetaStandardVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Id2MetaStandardVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Id2MetaStandardVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class Id2MetaVerifyRequest : Tea.TeaModel {
    public var identifyNum: String?

    public var paramType: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identifyNum != nil {
            map["IdentifyNum"] = self.identifyNum!
        }
        if self.paramType != nil {
            map["ParamType"] = self.paramType!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdentifyNum"] as? String {
            self.identifyNum = value
        }
        if let value = dict["ParamType"] as? String {
            self.paramType = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class Id2MetaVerifyResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var bizCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: Id2MetaVerifyResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = Id2MetaVerifyResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class Id2MetaVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Id2MetaVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Id2MetaVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class Id2MetaVerifyWithOCRRequest : Tea.TeaModel {
    public var certFile: String?

    public var certNationalFile: String?

    public var certNationalUrl: String?

    public var certUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certFile != nil {
            map["CertFile"] = self.certFile!
        }
        if self.certNationalFile != nil {
            map["CertNationalFile"] = self.certNationalFile!
        }
        if self.certNationalUrl != nil {
            map["CertNationalUrl"] = self.certNationalUrl!
        }
        if self.certUrl != nil {
            map["CertUrl"] = self.certUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertFile"] as? String {
            self.certFile = value
        }
        if let value = dict["CertNationalFile"] as? String {
            self.certNationalFile = value
        }
        if let value = dict["CertNationalUrl"] as? String {
            self.certNationalUrl = value
        }
        if let value = dict["CertUrl"] as? String {
            self.certUrl = value
        }
    }
}

public class Id2MetaVerifyWithOCRAdvanceRequest : Tea.TeaModel {
    public var certFileObject: InputStream?

    public var certNationalFileObject: InputStream?

    public var certNationalUrl: String?

    public var certUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certFileObject != nil {
            map["CertFile"] = self.certFileObject!
        }
        if self.certNationalFileObject != nil {
            map["CertNationalFile"] = self.certNationalFileObject!
        }
        if self.certNationalUrl != nil {
            map["CertNationalUrl"] = self.certNationalUrl!
        }
        if self.certUrl != nil {
            map["CertUrl"] = self.certUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertFile"] as? InputStream {
            self.certFileObject = value
        }
        if let value = dict["CertNationalFile"] as? InputStream {
            self.certNationalFileObject = value
        }
        if let value = dict["CertNationalUrl"] as? String {
            self.certNationalUrl = value
        }
        if let value = dict["CertUrl"] as? String {
            self.certUrl = value
        }
    }
}

public class Id2MetaVerifyWithOCRResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var bizCode: String?

        public var cardInfo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            if self.cardInfo != nil {
                map["CardInfo"] = self.cardInfo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["CardInfo"] as? String {
                self.cardInfo = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: Id2MetaVerifyWithOCRResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = Id2MetaVerifyWithOCRResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class Id2MetaVerifyWithOCRResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Id2MetaVerifyWithOCRResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Id2MetaVerifyWithOCRResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InitFaceVerifyRequest : Tea.TeaModel {
    public var appQualityCheck: String?

    public var authId: String?

    public var birthday: String?

    public var callbackToken: String?

    public var callbackUrl: String?

    public var cameraSelection: String?

    public var certName: String?

    public var certNo: String?

    public var certType: String?

    public var certifyId: String?

    public var certifyUrlStyle: String?

    public var certifyUrlType: String?

    public var crop: String?

    public var encryptType: String?

    public var faceContrastPicture: String?

    public var faceContrastPictureUrl: String?

    public var faceGuardOutput: String?

    public var ip: String?

    public var metaInfo: String?

    public var mobile: String?

    public var mode: String?

    public var model: String?

    public var ossBucketName: String?

    public var ossObjectName: String?

    public var outerOrderNo: String?

    public var procedurePriority: String?

    public var productCode: String?

    public var rarelyCharacters: String?

    public var readImg: String?

    public var returnUrl: String?

    public var sceneId: Int64?

    public var suitableType: String?

    public var uiCustomUrl: String?

    public var userId: String?

    public var validityDate: String?

    public var videoEvidence: String?

    public var voluntaryCustomizedContent: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appQualityCheck != nil {
            map["AppQualityCheck"] = self.appQualityCheck!
        }
        if self.authId != nil {
            map["AuthId"] = self.authId!
        }
        if self.birthday != nil {
            map["Birthday"] = self.birthday!
        }
        if self.callbackToken != nil {
            map["CallbackToken"] = self.callbackToken!
        }
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.cameraSelection != nil {
            map["CameraSelection"] = self.cameraSelection!
        }
        if self.certName != nil {
            map["CertName"] = self.certName!
        }
        if self.certNo != nil {
            map["CertNo"] = self.certNo!
        }
        if self.certType != nil {
            map["CertType"] = self.certType!
        }
        if self.certifyId != nil {
            map["CertifyId"] = self.certifyId!
        }
        if self.certifyUrlStyle != nil {
            map["CertifyUrlStyle"] = self.certifyUrlStyle!
        }
        if self.certifyUrlType != nil {
            map["CertifyUrlType"] = self.certifyUrlType!
        }
        if self.crop != nil {
            map["Crop"] = self.crop!
        }
        if self.encryptType != nil {
            map["EncryptType"] = self.encryptType!
        }
        if self.faceContrastPicture != nil {
            map["FaceContrastPicture"] = self.faceContrastPicture!
        }
        if self.faceContrastPictureUrl != nil {
            map["FaceContrastPictureUrl"] = self.faceContrastPictureUrl!
        }
        if self.faceGuardOutput != nil {
            map["FaceGuardOutput"] = self.faceGuardOutput!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.metaInfo != nil {
            map["MetaInfo"] = self.metaInfo!
        }
        if self.mobile != nil {
            map["Mobile"] = self.mobile!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.ossBucketName != nil {
            map["OssBucketName"] = self.ossBucketName!
        }
        if self.ossObjectName != nil {
            map["OssObjectName"] = self.ossObjectName!
        }
        if self.outerOrderNo != nil {
            map["OuterOrderNo"] = self.outerOrderNo!
        }
        if self.procedurePriority != nil {
            map["ProcedurePriority"] = self.procedurePriority!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.rarelyCharacters != nil {
            map["RarelyCharacters"] = self.rarelyCharacters!
        }
        if self.readImg != nil {
            map["ReadImg"] = self.readImg!
        }
        if self.returnUrl != nil {
            map["ReturnUrl"] = self.returnUrl!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.suitableType != nil {
            map["SuitableType"] = self.suitableType!
        }
        if self.uiCustomUrl != nil {
            map["UiCustomUrl"] = self.uiCustomUrl!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.validityDate != nil {
            map["ValidityDate"] = self.validityDate!
        }
        if self.videoEvidence != nil {
            map["VideoEvidence"] = self.videoEvidence!
        }
        if self.voluntaryCustomizedContent != nil {
            map["VoluntaryCustomizedContent"] = self.voluntaryCustomizedContent!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppQualityCheck"] as? String {
            self.appQualityCheck = value
        }
        if let value = dict["AuthId"] as? String {
            self.authId = value
        }
        if let value = dict["Birthday"] as? String {
            self.birthday = value
        }
        if let value = dict["CallbackToken"] as? String {
            self.callbackToken = value
        }
        if let value = dict["CallbackUrl"] as? String {
            self.callbackUrl = value
        }
        if let value = dict["CameraSelection"] as? String {
            self.cameraSelection = value
        }
        if let value = dict["CertName"] as? String {
            self.certName = value
        }
        if let value = dict["CertNo"] as? String {
            self.certNo = value
        }
        if let value = dict["CertType"] as? String {
            self.certType = value
        }
        if let value = dict["CertifyId"] as? String {
            self.certifyId = value
        }
        if let value = dict["CertifyUrlStyle"] as? String {
            self.certifyUrlStyle = value
        }
        if let value = dict["CertifyUrlType"] as? String {
            self.certifyUrlType = value
        }
        if let value = dict["Crop"] as? String {
            self.crop = value
        }
        if let value = dict["EncryptType"] as? String {
            self.encryptType = value
        }
        if let value = dict["FaceContrastPicture"] as? String {
            self.faceContrastPicture = value
        }
        if let value = dict["FaceContrastPictureUrl"] as? String {
            self.faceContrastPictureUrl = value
        }
        if let value = dict["FaceGuardOutput"] as? String {
            self.faceGuardOutput = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["MetaInfo"] as? String {
            self.metaInfo = value
        }
        if let value = dict["Mobile"] as? String {
            self.mobile = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["OssBucketName"] as? String {
            self.ossBucketName = value
        }
        if let value = dict["OssObjectName"] as? String {
            self.ossObjectName = value
        }
        if let value = dict["OuterOrderNo"] as? String {
            self.outerOrderNo = value
        }
        if let value = dict["ProcedurePriority"] as? String {
            self.procedurePriority = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["RarelyCharacters"] as? String {
            self.rarelyCharacters = value
        }
        if let value = dict["ReadImg"] as? String {
            self.readImg = value
        }
        if let value = dict["ReturnUrl"] as? String {
            self.returnUrl = value
        }
        if let value = dict["SceneId"] as? Int64 {
            self.sceneId = value
        }
        if let value = dict["SuitableType"] as? String {
            self.suitableType = value
        }
        if let value = dict["UiCustomUrl"] as? String {
            self.uiCustomUrl = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["ValidityDate"] as? String {
            self.validityDate = value
        }
        if let value = dict["VideoEvidence"] as? String {
            self.videoEvidence = value
        }
        if let value = dict["VoluntaryCustomizedContent"] as? String {
            self.voluntaryCustomizedContent = value
        }
    }
}

public class InitFaceVerifyResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var certifyId: String?

        public var certifyUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certifyId != nil {
                map["CertifyId"] = self.certifyId!
            }
            if self.certifyUrl != nil {
                map["CertifyUrl"] = self.certifyUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertifyId"] as? String {
                self.certifyId = value
            }
            if let value = dict["CertifyUrl"] as? String {
                self.certifyUrl = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: InitFaceVerifyResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = InitFaceVerifyResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class InitFaceVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InitFaceVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = InitFaceVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InsertWhiteListSettingRequest : Tea.TeaModel {
    public var certNo: String?

    public var certifyId: String?

    public var remark: String?

    public var sceneId: Int64?

    public var serviceCode: String?

    public var validDay: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certNo != nil {
            map["CertNo"] = self.certNo!
        }
        if self.certifyId != nil {
            map["CertifyId"] = self.certifyId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.validDay != nil {
            map["ValidDay"] = self.validDay!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertNo"] as? String {
            self.certNo = value
        }
        if let value = dict["CertifyId"] as? String {
            self.certifyId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["SceneId"] as? Int64 {
            self.sceneId = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["ValidDay"] as? Int32 {
            self.validDay = value
        }
    }
}

public class InsertWhiteListSettingResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: Bool?

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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject!
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? Bool {
            self.resultObject = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class InsertWhiteListSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InsertWhiteListSettingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = InsertWhiteListSettingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class LivenessFaceVerifyRequest : Tea.TeaModel {
    public var certifyId: String?

    public var crop: String?

    public var deviceToken: String?

    public var faceContrastPicture: String?

    public var faceContrastPictureUrl: String?

    public var ip: String?

    public var mobile: String?

    public var model: String?

    public var ossBucketName: String?

    public var ossObjectName: String?

    public var outerOrderNo: String?

    public var productCode: String?

    public var sceneId: Int64?

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
        if self.certifyId != nil {
            map["CertifyId"] = self.certifyId!
        }
        if self.crop != nil {
            map["Crop"] = self.crop!
        }
        if self.deviceToken != nil {
            map["DeviceToken"] = self.deviceToken!
        }
        if self.faceContrastPicture != nil {
            map["FaceContrastPicture"] = self.faceContrastPicture!
        }
        if self.faceContrastPictureUrl != nil {
            map["FaceContrastPictureUrl"] = self.faceContrastPictureUrl!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.mobile != nil {
            map["Mobile"] = self.mobile!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.ossBucketName != nil {
            map["OssBucketName"] = self.ossBucketName!
        }
        if self.ossObjectName != nil {
            map["OssObjectName"] = self.ossObjectName!
        }
        if self.outerOrderNo != nil {
            map["OuterOrderNo"] = self.outerOrderNo!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertifyId"] as? String {
            self.certifyId = value
        }
        if let value = dict["Crop"] as? String {
            self.crop = value
        }
        if let value = dict["DeviceToken"] as? String {
            self.deviceToken = value
        }
        if let value = dict["FaceContrastPicture"] as? String {
            self.faceContrastPicture = value
        }
        if let value = dict["FaceContrastPictureUrl"] as? String {
            self.faceContrastPictureUrl = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["Mobile"] as? String {
            self.mobile = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["OssBucketName"] as? String {
            self.ossBucketName = value
        }
        if let value = dict["OssObjectName"] as? String {
            self.ossObjectName = value
        }
        if let value = dict["OuterOrderNo"] as? String {
            self.outerOrderNo = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["SceneId"] as? Int64 {
            self.sceneId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class LivenessFaceVerifyResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var certifyId: String?

        public var materialInfo: String?

        public var passed: String?

        public var subCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certifyId != nil {
                map["CertifyId"] = self.certifyId!
            }
            if self.materialInfo != nil {
                map["MaterialInfo"] = self.materialInfo!
            }
            if self.passed != nil {
                map["Passed"] = self.passed!
            }
            if self.subCode != nil {
                map["SubCode"] = self.subCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertifyId"] as? String {
                self.certifyId = value
            }
            if let value = dict["MaterialInfo"] as? String {
                self.materialInfo = value
            }
            if let value = dict["Passed"] as? String {
                self.passed = value
            }
            if let value = dict["SubCode"] as? String {
                self.subCode = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: LivenessFaceVerifyResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = LivenessFaceVerifyResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class LivenessFaceVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LivenessFaceVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = LivenessFaceVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class Mobile2MetaVerifyRequest : Tea.TeaModel {
    public var mobile: String?

    public var paramType: String?

    public var userName: String?

    public override init() {
        super.init()
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
        if self.paramType != nil {
            map["ParamType"] = self.paramType!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Mobile"] as? String {
            self.mobile = value
        }
        if let value = dict["ParamType"] as? String {
            self.paramType = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class Mobile2MetaVerifyResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var bizCode: String?

        public var ispName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            if self.ispName != nil {
                map["IspName"] = self.ispName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["IspName"] as? String {
                self.ispName = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: Mobile2MetaVerifyResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = Mobile2MetaVerifyResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class Mobile2MetaVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Mobile2MetaVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Mobile2MetaVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class Mobile3MetaDetailStandardVerifyRequest : Tea.TeaModel {
    public var identifyNum: String?

    public var mobile: String?

    public var paramType: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identifyNum != nil {
            map["IdentifyNum"] = self.identifyNum!
        }
        if self.mobile != nil {
            map["Mobile"] = self.mobile!
        }
        if self.paramType != nil {
            map["ParamType"] = self.paramType!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdentifyNum"] as? String {
            self.identifyNum = value
        }
        if let value = dict["Mobile"] as? String {
            self.mobile = value
        }
        if let value = dict["ParamType"] as? String {
            self.paramType = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class Mobile3MetaDetailStandardVerifyResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var bizCode: String?

        public var ispName: String?

        public var subCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            if self.ispName != nil {
                map["IspName"] = self.ispName!
            }
            if self.subCode != nil {
                map["SubCode"] = self.subCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["IspName"] as? String {
                self.ispName = value
            }
            if let value = dict["SubCode"] as? String {
                self.subCode = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: Mobile3MetaDetailStandardVerifyResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = Mobile3MetaDetailStandardVerifyResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class Mobile3MetaDetailStandardVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Mobile3MetaDetailStandardVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Mobile3MetaDetailStandardVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class Mobile3MetaDetailVerifyRequest : Tea.TeaModel {
    public var identifyNum: String?

    public var mobile: String?

    public var paramType: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identifyNum != nil {
            map["IdentifyNum"] = self.identifyNum!
        }
        if self.mobile != nil {
            map["Mobile"] = self.mobile!
        }
        if self.paramType != nil {
            map["ParamType"] = self.paramType!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdentifyNum"] as? String {
            self.identifyNum = value
        }
        if let value = dict["Mobile"] as? String {
            self.mobile = value
        }
        if let value = dict["ParamType"] as? String {
            self.paramType = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class Mobile3MetaDetailVerifyResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var bizCode: String?

        public var ispName: String?

        public var subCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            if self.ispName != nil {
                map["IspName"] = self.ispName!
            }
            if self.subCode != nil {
                map["SubCode"] = self.subCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["IspName"] as? String {
                self.ispName = value
            }
            if let value = dict["SubCode"] as? String {
                self.subCode = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: Mobile3MetaDetailVerifyResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = Mobile3MetaDetailVerifyResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class Mobile3MetaDetailVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Mobile3MetaDetailVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Mobile3MetaDetailVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class Mobile3MetaSimpleStandardVerifyRequest : Tea.TeaModel {
    public var identifyNum: String?

    public var mobile: String?

    public var paramType: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identifyNum != nil {
            map["IdentifyNum"] = self.identifyNum!
        }
        if self.mobile != nil {
            map["Mobile"] = self.mobile!
        }
        if self.paramType != nil {
            map["ParamType"] = self.paramType!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdentifyNum"] as? String {
            self.identifyNum = value
        }
        if let value = dict["Mobile"] as? String {
            self.mobile = value
        }
        if let value = dict["ParamType"] as? String {
            self.paramType = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class Mobile3MetaSimpleStandardVerifyResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var bizCode: String?

        public var ispName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            if self.ispName != nil {
                map["IspName"] = self.ispName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["IspName"] as? String {
                self.ispName = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: Mobile3MetaSimpleStandardVerifyResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = Mobile3MetaSimpleStandardVerifyResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class Mobile3MetaSimpleStandardVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Mobile3MetaSimpleStandardVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Mobile3MetaSimpleStandardVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class Mobile3MetaSimpleVerifyRequest : Tea.TeaModel {
    public var identifyNum: String?

    public var mobile: String?

    public var paramType: String?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identifyNum != nil {
            map["IdentifyNum"] = self.identifyNum!
        }
        if self.mobile != nil {
            map["Mobile"] = self.mobile!
        }
        if self.paramType != nil {
            map["ParamType"] = self.paramType!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdentifyNum"] as? String {
            self.identifyNum = value
        }
        if let value = dict["Mobile"] as? String {
            self.mobile = value
        }
        if let value = dict["ParamType"] as? String {
            self.paramType = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class Mobile3MetaSimpleVerifyResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var bizCode: String?

        public var ispName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            if self.ispName != nil {
                map["IspName"] = self.ispName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["IspName"] as? String {
                self.ispName = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: Mobile3MetaSimpleVerifyResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = Mobile3MetaSimpleVerifyResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class Mobile3MetaSimpleVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Mobile3MetaSimpleVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Mobile3MetaSimpleVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MobileDetectRequest : Tea.TeaModel {
    public var mobiles: String?

    public var paramType: String?

    public override init() {
        super.init()
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
        if self.paramType != nil {
            map["ParamType"] = self.paramType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Mobiles"] as? String {
            self.mobiles = value
        }
        if let value = dict["ParamType"] as? String {
            self.paramType = value
        }
    }
}

public class MobileDetectResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var area: String?

            public var bizCode: String?

            public var ispName: String?

            public var mobile: String?

            public var subCode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.area != nil {
                    map["Area"] = self.area!
                }
                if self.bizCode != nil {
                    map["BizCode"] = self.bizCode!
                }
                if self.ispName != nil {
                    map["IspName"] = self.ispName!
                }
                if self.mobile != nil {
                    map["Mobile"] = self.mobile!
                }
                if self.subCode != nil {
                    map["SubCode"] = self.subCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Area"] as? String {
                    self.area = value
                }
                if let value = dict["BizCode"] as? String {
                    self.bizCode = value
                }
                if let value = dict["IspName"] as? String {
                    self.ispName = value
                }
                if let value = dict["Mobile"] as? String {
                    self.mobile = value
                }
                if let value = dict["SubCode"] as? String {
                    self.subCode = value
                }
            }
        }
        public var chargeCount: String?

        public var items: [MobileDetectResponseBody.ResultObject.Items]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chargeCount != nil {
                map["ChargeCount"] = self.chargeCount!
            }
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChargeCount"] as? String {
                self.chargeCount = value
            }
            if let value = dict["Items"] as? [Any?] {
                var tmp : [MobileDetectResponseBody.ResultObject.Items] = []
                for v in value {
                    if v != nil {
                        var model = MobileDetectResponseBody.ResultObject.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: MobileDetectResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = MobileDetectResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class MobileDetectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MobileDetectResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = MobileDetectResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MobileOnlineStatusRequest : Tea.TeaModel {
    public var mobile: String?

    public var paramType: String?

    public override init() {
        super.init()
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
        if self.paramType != nil {
            map["ParamType"] = self.paramType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Mobile"] as? String {
            self.mobile = value
        }
        if let value = dict["ParamType"] as? String {
            self.paramType = value
        }
    }
}

public class MobileOnlineStatusResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var bizCode: String?

        public var ispName: String?

        public var subCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            if self.ispName != nil {
                map["IspName"] = self.ispName!
            }
            if self.subCode != nil {
                map["SubCode"] = self.subCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["IspName"] as? String {
                self.ispName = value
            }
            if let value = dict["SubCode"] as? String {
                self.subCode = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: MobileOnlineStatusResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = MobileOnlineStatusResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class MobileOnlineStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MobileOnlineStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = MobileOnlineStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MobileOnlineTimeRequest : Tea.TeaModel {
    public var mobile: String?

    public var paramType: String?

    public override init() {
        super.init()
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
        if self.paramType != nil {
            map["ParamType"] = self.paramType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Mobile"] as? String {
            self.mobile = value
        }
        if let value = dict["ParamType"] as? String {
            self.paramType = value
        }
    }
}

public class MobileOnlineTimeResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var bizCode: String?

        public var ispName: String?

        public var timeCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            if self.ispName != nil {
                map["IspName"] = self.ispName!
            }
            if self.timeCode != nil {
                map["TimeCode"] = self.timeCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["IspName"] as? String {
                self.ispName = value
            }
            if let value = dict["TimeCode"] as? String {
                self.timeCode = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: MobileOnlineTimeResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = MobileOnlineTimeResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class MobileOnlineTimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MobileOnlineTimeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = MobileOnlineTimeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDeviceInfoRequest : Tea.TeaModel {
    public var bizType: String?

    public var deviceId: String?

    public var duration: String?

    public var expiredDay: String?

    public var userDeviceId: String?

    public override init() {
        super.init()
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
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.expiredDay != nil {
            map["ExpiredDay"] = self.expiredDay!
        }
        if self.userDeviceId != nil {
            map["UserDeviceId"] = self.userDeviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["Duration"] as? String {
            self.duration = value
        }
        if let value = dict["ExpiredDay"] as? String {
            self.expiredDay = value
        }
        if let value = dict["UserDeviceId"] as? String {
            self.userDeviceId = value
        }
    }
}

public class ModifyDeviceInfoResponseBody : Tea.TeaModel {
    public var beginDay: String?

    public var bizType: String?

    public var deviceId: String?

    public var expiredDay: String?

    public var requestId: String?

    public var userDeviceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginDay != nil {
            map["BeginDay"] = self.beginDay!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.expiredDay != nil {
            map["ExpiredDay"] = self.expiredDay!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userDeviceId != nil {
            map["UserDeviceId"] = self.userDeviceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginDay"] as? String {
            self.beginDay = value
        }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["DeviceId"] as? String {
            self.deviceId = value
        }
        if let value = dict["ExpiredDay"] as? String {
            self.expiredDay = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserDeviceId"] as? String {
            self.userDeviceId = value
        }
    }
}

public class ModifyDeviceInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDeviceInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDeviceInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PageQueryWhiteListSettingRequest : Tea.TeaModel {
    public var certNo: String?

    public var certifyId: String?

    public var currentPage: Int32?

    public var pageSize: Int32?

    public var sceneId: Int64?

    public var serviceCode: String?

    public var status: String?

    public var validEndDate: String?

    public var validStartDate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certNo != nil {
            map["CertNo"] = self.certNo!
        }
        if self.certifyId != nil {
            map["CertifyId"] = self.certifyId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.validEndDate != nil {
            map["ValidEndDate"] = self.validEndDate!
        }
        if self.validStartDate != nil {
            map["ValidStartDate"] = self.validStartDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertNo"] as? String {
            self.certNo = value
        }
        if let value = dict["CertifyId"] as? String {
            self.certifyId = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SceneId"] as? Int64 {
            self.sceneId = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["ValidEndDate"] as? String {
            self.validEndDate = value
        }
        if let value = dict["ValidStartDate"] as? String {
            self.validStartDate = value
        }
    }
}

public class PageQueryWhiteListSettingResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var certNo: String?

        public var certifyId: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var remark: String?

        public var sceneId: Int64?

        public var serviceCode: String?

        public var status: String?

        public var validEndDate: String?

        public var validStartDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certNo != nil {
                map["CertNo"] = self.certNo!
            }
            if self.certifyId != nil {
                map["CertifyId"] = self.certifyId!
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
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            if self.serviceCode != nil {
                map["ServiceCode"] = self.serviceCode!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.validEndDate != nil {
                map["ValidEndDate"] = self.validEndDate!
            }
            if self.validStartDate != nil {
                map["ValidStartDate"] = self.validStartDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertNo"] as? String {
                self.certNo = value
            }
            if let value = dict["CertifyId"] as? String {
                self.certifyId = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["SceneId"] as? Int64 {
                self.sceneId = value
            }
            if let value = dict["ServiceCode"] as? String {
                self.serviceCode = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["ValidEndDate"] as? String {
                self.validEndDate = value
            }
            if let value = dict["ValidStartDate"] as? String {
                self.validStartDate = value
            }
        }
    }
    public var code: String?

    public var currentPage: Int32?

    public var message: String?

    public var pageSize: Int32?

    public var requestId: String?

    public var resultObject: [PageQueryWhiteListSettingResponseBody.ResultObject]?

    public var success: Bool?

    public var totalItem: Int32?

    public var totalPage: Int32?

    public override init() {
        super.init()
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
        if self.resultObject != nil {
            var tmp : [Any] = []
            for k in self.resultObject! {
                tmp.append(k.toMap())
            }
            map["ResultObject"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalItem != nil {
            map["TotalItem"] = self.totalItem!
        }
        if self.totalPage != nil {
            map["TotalPage"] = self.totalPage!
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
        if let value = dict["ResultObject"] as? [Any?] {
            var tmp : [PageQueryWhiteListSettingResponseBody.ResultObject] = []
            for v in value {
                if v != nil {
                    var model = PageQueryWhiteListSettingResponseBody.ResultObject()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resultObject = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalItem"] as? Int32 {
            self.totalItem = value
        }
        if let value = dict["TotalPage"] as? Int32 {
            self.totalPage = value
        }
    }
}

public class PageQueryWhiteListSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PageQueryWhiteListSettingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PageQueryWhiteListSettingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveWhiteListSettingRequest : Tea.TeaModel {
    public var ids: [Int64]?

    public var serviceCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ids"] as? [Int64] {
            self.ids = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
    }
}

public class RemoveWhiteListSettingShrinkRequest : Tea.TeaModel {
    public var idsShrink: String?

    public var serviceCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.idsShrink != nil {
            map["Ids"] = self.idsShrink!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ids"] as? String {
            self.idsShrink = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
    }
}

public class RemoveWhiteListSettingResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: Bool?

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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject!
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? Bool {
            self.resultObject = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class RemoveWhiteListSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveWhiteListSettingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveWhiteListSettingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class Vehicle5ItemQueryRequest : Tea.TeaModel {
    public var paramType: String?

    public var vehicleNum: String?

    public var vehicleType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.paramType != nil {
            map["ParamType"] = self.paramType!
        }
        if self.vehicleNum != nil {
            map["VehicleNum"] = self.vehicleNum!
        }
        if self.vehicleType != nil {
            map["VehicleType"] = self.vehicleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ParamType"] as? String {
            self.paramType = value
        }
        if let value = dict["VehicleNum"] as? String {
            self.vehicleNum = value
        }
        if let value = dict["VehicleType"] as? String {
            self.vehicleType = value
        }
    }
}

public class Vehicle5ItemQueryResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var bizCode: String?

        public var vehicleInfo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            if self.vehicleInfo != nil {
                map["VehicleInfo"] = self.vehicleInfo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["VehicleInfo"] as? String {
                self.vehicleInfo = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: Vehicle5ItemQueryResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = Vehicle5ItemQueryResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class Vehicle5ItemQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Vehicle5ItemQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Vehicle5ItemQueryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class VehicleInsureQueryRequest : Tea.TeaModel {
    public var paramType: String?

    public var vehicleNum: String?

    public var vehicleType: String?

    public var vin: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.paramType != nil {
            map["ParamType"] = self.paramType!
        }
        if self.vehicleNum != nil {
            map["VehicleNum"] = self.vehicleNum!
        }
        if self.vehicleType != nil {
            map["VehicleType"] = self.vehicleType!
        }
        if self.vin != nil {
            map["Vin"] = self.vin!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ParamType"] as? String {
            self.paramType = value
        }
        if let value = dict["VehicleNum"] as? String {
            self.vehicleNum = value
        }
        if let value = dict["VehicleType"] as? String {
            self.vehicleType = value
        }
        if let value = dict["Vin"] as? String {
            self.vin = value
        }
    }
}

public class VehicleInsureQueryResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var bizCode: String?

        public var vehicleInfo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            if self.vehicleInfo != nil {
                map["VehicleInfo"] = self.vehicleInfo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["VehicleInfo"] as? String {
                self.vehicleInfo = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: VehicleInsureQueryResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = VehicleInsureQueryResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class VehicleInsureQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VehicleInsureQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = VehicleInsureQueryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class VehicleMetaVerifyRequest : Tea.TeaModel {
    public var identifyNum: String?

    public var paramType: String?

    public var userName: String?

    public var vehicleNum: String?

    public var vehicleType: String?

    public var verifyMetaType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identifyNum != nil {
            map["IdentifyNum"] = self.identifyNum!
        }
        if self.paramType != nil {
            map["ParamType"] = self.paramType!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.vehicleNum != nil {
            map["VehicleNum"] = self.vehicleNum!
        }
        if self.vehicleType != nil {
            map["VehicleType"] = self.vehicleType!
        }
        if self.verifyMetaType != nil {
            map["VerifyMetaType"] = self.verifyMetaType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdentifyNum"] as? String {
            self.identifyNum = value
        }
        if let value = dict["ParamType"] as? String {
            self.paramType = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
        if let value = dict["VehicleNum"] as? String {
            self.vehicleNum = value
        }
        if let value = dict["VehicleType"] as? String {
            self.vehicleType = value
        }
        if let value = dict["VerifyMetaType"] as? String {
            self.verifyMetaType = value
        }
    }
}

public class VehicleMetaVerifyResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var bizCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: VehicleMetaVerifyResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = VehicleMetaVerifyResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class VehicleMetaVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VehicleMetaVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = VehicleMetaVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class VehicleMetaVerifyV2Request : Tea.TeaModel {
    public var identifyNum: String?

    public var paramType: String?

    public var userName: String?

    public var vehicleNum: String?

    public var vehicleType: String?

    public var verifyMetaType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identifyNum != nil {
            map["IdentifyNum"] = self.identifyNum!
        }
        if self.paramType != nil {
            map["ParamType"] = self.paramType!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.vehicleNum != nil {
            map["VehicleNum"] = self.vehicleNum!
        }
        if self.vehicleType != nil {
            map["VehicleType"] = self.vehicleType!
        }
        if self.verifyMetaType != nil {
            map["VerifyMetaType"] = self.verifyMetaType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdentifyNum"] as? String {
            self.identifyNum = value
        }
        if let value = dict["ParamType"] as? String {
            self.paramType = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
        if let value = dict["VehicleNum"] as? String {
            self.vehicleNum = value
        }
        if let value = dict["VehicleType"] as? String {
            self.vehicleType = value
        }
        if let value = dict["VerifyMetaType"] as? String {
            self.verifyMetaType = value
        }
    }
}

public class VehicleMetaVerifyV2ResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var bizCode: String?

        public var vehicleInfo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            if self.vehicleInfo != nil {
                map["VehicleInfo"] = self.vehicleInfo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["VehicleInfo"] as? String {
                self.vehicleInfo = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: VehicleMetaVerifyV2ResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = VehicleMetaVerifyV2ResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class VehicleMetaVerifyV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VehicleMetaVerifyV2ResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = VehicleMetaVerifyV2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class VehicleQueryRequest : Tea.TeaModel {
    public var paramType: String?

    public var vehicleNum: String?

    public var vehicleType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.paramType != nil {
            map["ParamType"] = self.paramType!
        }
        if self.vehicleNum != nil {
            map["VehicleNum"] = self.vehicleNum!
        }
        if self.vehicleType != nil {
            map["VehicleType"] = self.vehicleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ParamType"] as? String {
            self.paramType = value
        }
        if let value = dict["VehicleNum"] as? String {
            self.vehicleNum = value
        }
        if let value = dict["VehicleType"] as? String {
            self.vehicleType = value
        }
    }
}

public class VehicleQueryResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var bizCode: String?

        public var vehicleInfo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            if self.vehicleInfo != nil {
                map["VehicleInfo"] = self.vehicleInfo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["VehicleInfo"] as? String {
                self.vehicleInfo = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: VehicleQueryResponseBody.ResultObject?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resultObject?.validate()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject?.toMap()
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
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = VehicleQueryResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class VehicleQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VehicleQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = VehicleQueryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class VerifyMaterialRequest : Tea.TeaModel {
    public var bizId: String?

    public var bizType: String?

    public var faceImageUrl: String?

    public var idCardBackImageUrl: String?

    public var idCardFrontImageUrl: String?

    public var idCardNumber: String?

    public var name: String?

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
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.faceImageUrl != nil {
            map["FaceImageUrl"] = self.faceImageUrl!
        }
        if self.idCardBackImageUrl != nil {
            map["IdCardBackImageUrl"] = self.idCardBackImageUrl!
        }
        if self.idCardFrontImageUrl != nil {
            map["IdCardFrontImageUrl"] = self.idCardFrontImageUrl!
        }
        if self.idCardNumber != nil {
            map["IdCardNumber"] = self.idCardNumber!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["FaceImageUrl"] as? String {
            self.faceImageUrl = value
        }
        if let value = dict["IdCardBackImageUrl"] as? String {
            self.idCardBackImageUrl = value
        }
        if let value = dict["IdCardFrontImageUrl"] as? String {
            self.idCardFrontImageUrl = value
        }
        if let value = dict["IdCardNumber"] as? String {
            self.idCardNumber = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class VerifyMaterialResponseBody : Tea.TeaModel {
    public class Material : Tea.TeaModel {
        public class IdCardInfo : Tea.TeaModel {
            public var address: String?

            public var authority: String?

            public var backImageUrl: String?

            public var birth: String?

            public var endDate: String?

            public var frontImageUrl: String?

            public var name: String?

            public var nationality: String?

            public var number: String?

            public var startDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.address != nil {
                    map["Address"] = self.address!
                }
                if self.authority != nil {
                    map["Authority"] = self.authority!
                }
                if self.backImageUrl != nil {
                    map["BackImageUrl"] = self.backImageUrl!
                }
                if self.birth != nil {
                    map["Birth"] = self.birth!
                }
                if self.endDate != nil {
                    map["EndDate"] = self.endDate!
                }
                if self.frontImageUrl != nil {
                    map["FrontImageUrl"] = self.frontImageUrl!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nationality != nil {
                    map["Nationality"] = self.nationality!
                }
                if self.number != nil {
                    map["Number"] = self.number!
                }
                if self.startDate != nil {
                    map["StartDate"] = self.startDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Address"] as? String {
                    self.address = value
                }
                if let value = dict["Authority"] as? String {
                    self.authority = value
                }
                if let value = dict["BackImageUrl"] as? String {
                    self.backImageUrl = value
                }
                if let value = dict["Birth"] as? String {
                    self.birth = value
                }
                if let value = dict["EndDate"] as? String {
                    self.endDate = value
                }
                if let value = dict["FrontImageUrl"] as? String {
                    self.frontImageUrl = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Nationality"] as? String {
                    self.nationality = value
                }
                if let value = dict["Number"] as? String {
                    self.number = value
                }
                if let value = dict["StartDate"] as? String {
                    self.startDate = value
                }
            }
        }
        public var faceGlobalUrl: String?

        public var faceImageUrl: String?

        public var faceMask: String?

        public var faceQuality: String?

        public var idCardInfo: VerifyMaterialResponseBody.Material.IdCardInfo?

        public var idCardName: String?

        public var idCardNumber: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.idCardInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.faceGlobalUrl != nil {
                map["FaceGlobalUrl"] = self.faceGlobalUrl!
            }
            if self.faceImageUrl != nil {
                map["FaceImageUrl"] = self.faceImageUrl!
            }
            if self.faceMask != nil {
                map["FaceMask"] = self.faceMask!
            }
            if self.faceQuality != nil {
                map["FaceQuality"] = self.faceQuality!
            }
            if self.idCardInfo != nil {
                map["IdCardInfo"] = self.idCardInfo?.toMap()
            }
            if self.idCardName != nil {
                map["IdCardName"] = self.idCardName!
            }
            if self.idCardNumber != nil {
                map["IdCardNumber"] = self.idCardNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FaceGlobalUrl"] as? String {
                self.faceGlobalUrl = value
            }
            if let value = dict["FaceImageUrl"] as? String {
                self.faceImageUrl = value
            }
            if let value = dict["FaceMask"] as? String {
                self.faceMask = value
            }
            if let value = dict["FaceQuality"] as? String {
                self.faceQuality = value
            }
            if let value = dict["IdCardInfo"] as? [String: Any?] {
                var model = VerifyMaterialResponseBody.Material.IdCardInfo()
                model.fromMap(value)
                self.idCardInfo = model
            }
            if let value = dict["IdCardName"] as? String {
                self.idCardName = value
            }
            if let value = dict["IdCardNumber"] as? String {
                self.idCardNumber = value
            }
        }
    }
    public var authorityComparisionScore: Double?

    public var idCardFaceComparisonScore: Double?

    public var material: VerifyMaterialResponseBody.Material?

    public var requestId: String?

    public var verifyStatus: Int32?

    public var verifyToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.material?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorityComparisionScore != nil {
            map["AuthorityComparisionScore"] = self.authorityComparisionScore!
        }
        if self.idCardFaceComparisonScore != nil {
            map["IdCardFaceComparisonScore"] = self.idCardFaceComparisonScore!
        }
        if self.material != nil {
            map["Material"] = self.material?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.verifyStatus != nil {
            map["VerifyStatus"] = self.verifyStatus!
        }
        if self.verifyToken != nil {
            map["VerifyToken"] = self.verifyToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthorityComparisionScore"] as? Double {
            self.authorityComparisionScore = value
        }
        if let value = dict["IdCardFaceComparisonScore"] as? Double {
            self.idCardFaceComparisonScore = value
        }
        if let value = dict["Material"] as? [String: Any?] {
            var model = VerifyMaterialResponseBody.Material()
            model.fromMap(value)
            self.material = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VerifyStatus"] as? Int32 {
            self.verifyStatus = value
        }
        if let value = dict["VerifyToken"] as? String {
            self.verifyToken = value
        }
    }
}

public class VerifyMaterialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyMaterialResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = VerifyMaterialResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
