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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FaceContrastPicture") {
            self.faceContrastPicture = dict["FaceContrastPicture"] as! String
        }
        if dict.keys.contains("FaceContrastPictureUrl") {
            self.faceContrastPictureUrl = dict["FaceContrastPictureUrl"] as! String
        }
        if dict.keys.contains("OssBucketName") {
            self.ossBucketName = dict["OssBucketName"] as! String
        }
        if dict.keys.contains("OssObjectName") {
            self.ossObjectName = dict["OssObjectName"] as! String
        }
        if dict.keys.contains("OuterOrderNo") {
            self.outerOrderNo = dict["OuterOrderNo"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertifyId") {
                self.certifyId = dict["CertifyId"] as! String
            }
            if dict.keys.contains("Result") {
                self.result = dict["Result"] as! String
            }
            if dict.keys.contains("Score") {
                self.score = dict["Score"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = AIGCFaceVerifyResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AIGCFaceVerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BankCard") {
            self.bankCard = dict["BankCard"] as! String
        }
        if dict.keys.contains("IdentifyNum") {
            self.identifyNum = dict["IdentifyNum"] as! String
        }
        if dict.keys.contains("IdentityType") {
            self.identityType = dict["IdentityType"] as! String
        }
        if dict.keys.contains("Mobile") {
            self.mobile = dict["Mobile"] as! String
        }
        if dict.keys.contains("ParamType") {
            self.paramType = dict["ParamType"] as! String
        }
        if dict.keys.contains("ProductType") {
            self.productType = dict["ProductType"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("VerifyMode") {
            self.verifyMode = dict["VerifyMode"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizCode") {
                self.bizCode = dict["BizCode"] as! String
            }
            if dict.keys.contains("SubCode") {
                self.subCode = dict["SubCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = BankMetaVerifyResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BankMetaVerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Crop") {
            self.crop = dict["Crop"] as! String
        }
        if dict.keys.contains("OuterOrderNo") {
            self.outerOrderNo = dict["OuterOrderNo"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! Int64
        }
        if dict.keys.contains("SourceCertifyId") {
            self.sourceCertifyId = dict["SourceCertifyId"] as! String
        }
        if dict.keys.contains("SourceFaceContrastPicture") {
            self.sourceFaceContrastPicture = dict["SourceFaceContrastPicture"] as! String
        }
        if dict.keys.contains("SourceFaceContrastPictureUrl") {
            self.sourceFaceContrastPictureUrl = dict["SourceFaceContrastPictureUrl"] as! String
        }
        if dict.keys.contains("SourceOssBucketName") {
            self.sourceOssBucketName = dict["SourceOssBucketName"] as! String
        }
        if dict.keys.contains("SourceOssObjectName") {
            self.sourceOssObjectName = dict["SourceOssObjectName"] as! String
        }
        if dict.keys.contains("TargetCertifyId") {
            self.targetCertifyId = dict["TargetCertifyId"] as! String
        }
        if dict.keys.contains("TargetFaceContrastPicture") {
            self.targetFaceContrastPicture = dict["TargetFaceContrastPicture"] as! String
        }
        if dict.keys.contains("TargetFaceContrastPictureUrl") {
            self.targetFaceContrastPictureUrl = dict["TargetFaceContrastPictureUrl"] as! String
        }
        if dict.keys.contains("TargetOssBucketName") {
            self.targetOssBucketName = dict["TargetOssBucketName"] as! String
        }
        if dict.keys.contains("TargetOssObjectName") {
            self.targetOssObjectName = dict["TargetOssObjectName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertifyId") {
                self.certifyId = dict["CertifyId"] as! String
            }
            if dict.keys.contains("Passed") {
                self.passed = dict["Passed"] as! String
            }
            if dict.keys.contains("VerifyScore") {
                self.verifyScore = dict["VerifyScore"] as! Double
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = CompareFaceVerifyResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CompareFaceVerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SourceImageType") {
            self.sourceImageType = dict["SourceImageType"] as! String
        }
        if dict.keys.contains("SourceImageValue") {
            self.sourceImageValue = dict["SourceImageValue"] as! String
        }
        if dict.keys.contains("TargetImageType") {
            self.targetImageType = dict["TargetImageType"] as! String
        }
        if dict.keys.contains("TargetImageValue") {
            self.targetImageValue = dict["TargetImageValue"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfidenceThresholds") {
                self.confidenceThresholds = dict["ConfidenceThresholds"] as! String
            }
            if dict.keys.contains("SimilarityScore") {
                self.similarityScore = dict["SimilarityScore"] as! Double
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = CompareFacesResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CompareFacesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertName") {
            self.certName = dict["CertName"] as! String
        }
        if dict.keys.contains("CertNo") {
            self.certNo = dict["CertNo"] as! String
        }
        if dict.keys.contains("CertType") {
            self.certType = dict["CertType"] as! String
        }
        if dict.keys.contains("CertifyId") {
            self.certifyId = dict["CertifyId"] as! String
        }
        if dict.keys.contains("Crop") {
            self.crop = dict["Crop"] as! String
        }
        if dict.keys.contains("DeviceToken") {
            self.deviceToken = dict["DeviceToken"] as! String
        }
        if dict.keys.contains("EncryptType") {
            self.encryptType = dict["EncryptType"] as! String
        }
        if dict.keys.contains("FaceContrastFile") {
            self.faceContrastFile = dict["FaceContrastFile"] as! String
        }
        if dict.keys.contains("FaceContrastPicture") {
            self.faceContrastPicture = dict["FaceContrastPicture"] as! String
        }
        if dict.keys.contains("FaceContrastPictureUrl") {
            self.faceContrastPictureUrl = dict["FaceContrastPictureUrl"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("Mobile") {
            self.mobile = dict["Mobile"] as! String
        }
        if dict.keys.contains("Model") {
            self.model = dict["Model"] as! String
        }
        if dict.keys.contains("OssBucketName") {
            self.ossBucketName = dict["OssBucketName"] as! String
        }
        if dict.keys.contains("OssObjectName") {
            self.ossObjectName = dict["OssObjectName"] as! String
        }
        if dict.keys.contains("OuterOrderNo") {
            self.outerOrderNo = dict["OuterOrderNo"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! Int64
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertName") {
            self.certName = dict["CertName"] as! String
        }
        if dict.keys.contains("CertNo") {
            self.certNo = dict["CertNo"] as! String
        }
        if dict.keys.contains("CertType") {
            self.certType = dict["CertType"] as! String
        }
        if dict.keys.contains("CertifyId") {
            self.certifyId = dict["CertifyId"] as! String
        }
        if dict.keys.contains("Crop") {
            self.crop = dict["Crop"] as! String
        }
        if dict.keys.contains("DeviceToken") {
            self.deviceToken = dict["DeviceToken"] as! String
        }
        if dict.keys.contains("EncryptType") {
            self.encryptType = dict["EncryptType"] as! String
        }
        if dict.keys.contains("FaceContrastFile") {
            self.faceContrastFileObject = dict["FaceContrastFile"] as! InputStream
        }
        if dict.keys.contains("FaceContrastPicture") {
            self.faceContrastPicture = dict["FaceContrastPicture"] as! String
        }
        if dict.keys.contains("FaceContrastPictureUrl") {
            self.faceContrastPictureUrl = dict["FaceContrastPictureUrl"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("Mobile") {
            self.mobile = dict["Mobile"] as! String
        }
        if dict.keys.contains("Model") {
            self.model = dict["Model"] as! String
        }
        if dict.keys.contains("OssBucketName") {
            self.ossBucketName = dict["OssBucketName"] as! String
        }
        if dict.keys.contains("OssObjectName") {
            self.ossObjectName = dict["OssObjectName"] as! String
        }
        if dict.keys.contains("OuterOrderNo") {
            self.outerOrderNo = dict["OuterOrderNo"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! Int64
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertifyId") {
                self.certifyId = dict["CertifyId"] as! String
            }
            if dict.keys.contains("IdentityInfo") {
                self.identityInfo = dict["IdentityInfo"] as! String
            }
            if dict.keys.contains("MaterialInfo") {
                self.materialInfo = dict["MaterialInfo"] as! String
            }
            if dict.keys.contains("Passed") {
                self.passed = dict["Passed"] as! String
            }
            if dict.keys.contains("SubCode") {
                self.subCode = dict["SubCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = ContrastFaceVerifyResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ContrastFaceVerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthYears") {
            self.authYears = dict["AuthYears"] as! Int32
        }
        if dict.keys.contains("BizType") {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("Test") {
            self.test = dict["Test"] as! Bool
        }
        if dict.keys.contains("UserDeviceId") {
            self.userDeviceId = dict["UserDeviceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthKey") {
            self.authKey = dict["AuthKey"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAuthKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizName") {
            self.bizName = dict["BizName"] as! String
        }
        if dict.keys.contains("BizType") {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("GuideStep") {
            self.guideStep = dict["GuideStep"] as! Bool
        }
        if dict.keys.contains("PrivacyStep") {
            self.privacyStep = dict["PrivacyStep"] as! Bool
        }
        if dict.keys.contains("ResultStep") {
            self.resultStep = dict["ResultStep"] as! Bool
        }
        if dict.keys.contains("Solution") {
            self.solution = dict["Solution"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizName") {
            self.bizName = dict["BizName"] as! String
        }
        if dict.keys.contains("BizType") {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Solution") {
            self.solution = dict["Solution"] as! String
        }
        if dict.keys.contains("StepList") {
            self.stepList = dict["StepList"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateVerifySettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertNum") {
            self.certNum = dict["CertNum"] as! String
        }
        if dict.keys.contains("CredName") {
            self.credName = dict["CredName"] as! String
        }
        if dict.keys.contains("CredType") {
            self.credType = dict["CredType"] as! String
        }
        if dict.keys.contains("IdentifyNum") {
            self.identifyNum = dict["IdentifyNum"] as! String
        }
        if dict.keys.contains("ImageContext") {
            self.imageContext = dict["ImageContext"] as! String
        }
        if dict.keys.contains("ImageUrl") {
            self.imageUrl = dict["ImageUrl"] as! String
        }
        if dict.keys.contains("IsCheck") {
            self.isCheck = dict["IsCheck"] as! String
        }
        if dict.keys.contains("IsOCR") {
            self.isOCR = dict["IsOCR"] as! String
        }
        if dict.keys.contains("MerchantDetail") {
            var tmp : [CredentialVerifyRequest.MerchantDetail] = []
            for v in dict["MerchantDetail"] as! [Any] {
                var model = CredentialVerifyRequest.MerchantDetail()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.merchantDetail = tmp
        }
        if dict.keys.contains("MerchantId") {
            self.merchantId = dict["MerchantId"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("Prompt") {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("PromptModel") {
            self.promptModel = dict["PromptModel"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertNum") {
            self.certNum = dict["CertNum"] as! String
        }
        if dict.keys.contains("CredName") {
            self.credName = dict["CredName"] as! String
        }
        if dict.keys.contains("CredType") {
            self.credType = dict["CredType"] as! String
        }
        if dict.keys.contains("IdentifyNum") {
            self.identifyNum = dict["IdentifyNum"] as! String
        }
        if dict.keys.contains("ImageContext") {
            self.imageContext = dict["ImageContext"] as! String
        }
        if dict.keys.contains("ImageUrl") {
            self.imageUrl = dict["ImageUrl"] as! String
        }
        if dict.keys.contains("IsCheck") {
            self.isCheck = dict["IsCheck"] as! String
        }
        if dict.keys.contains("IsOCR") {
            self.isOCR = dict["IsOCR"] as! String
        }
        if dict.keys.contains("MerchantDetail") {
            self.merchantDetailShrink = dict["MerchantDetail"] as! String
        }
        if dict.keys.contains("MerchantId") {
            self.merchantId = dict["MerchantId"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("Prompt") {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("PromptModel") {
            self.promptModel = dict["PromptModel"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Success") {
                    self.success = dict["Success"] as! Bool
                }
                if dict.keys.contains("VlContent") {
                    self.vlContent = dict["VlContent"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MaterialInfo") {
                self.materialInfo = dict["MaterialInfo"] as! String
            }
            if dict.keys.contains("OcrInfo") {
                self.ocrInfo = dict["OcrInfo"] as! String
            }
            if dict.keys.contains("Result") {
                self.result = dict["Result"] as! String
            }
            if dict.keys.contains("RiskScore") {
                self.riskScore = dict["RiskScore"] as! [String: String]
            }
            if dict.keys.contains("RiskTag") {
                self.riskTag = dict["RiskTag"] as! String
            }
            if dict.keys.contains("VerifyDetail") {
                self.verifyDetail = dict["VerifyDetail"] as! String
            }
            if dict.keys.contains("VerifyResult") {
                self.verifyResult = dict["VerifyResult"] as! String
            }
            if dict.keys.contains("VlResult") {
                var model = CredentialVerifyResponseBody.ResultObject.VlResult()
                model.fromMap(dict["VlResult"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = CredentialVerifyResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CredentialVerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertNum") {
            self.certNum = dict["CertNum"] as! String
        }
        if dict.keys.contains("CredName") {
            self.credName = dict["CredName"] as! String
        }
        if dict.keys.contains("CredType") {
            self.credType = dict["CredType"] as! String
        }
        if dict.keys.contains("IdentifyNum") {
            self.identifyNum = dict["IdentifyNum"] as! String
        }
        if dict.keys.contains("ImageFile") {
            self.imageFile = dict["ImageFile"] as! String
        }
        if dict.keys.contains("ImageUrl") {
            self.imageUrl = dict["ImageUrl"] as! String
        }
        if dict.keys.contains("IsCheck") {
            self.isCheck = dict["IsCheck"] as! String
        }
        if dict.keys.contains("IsOcr") {
            self.isOcr = dict["IsOcr"] as! String
        }
        if dict.keys.contains("MerchantDetail") {
            var tmp : [CredentialVerifyV2Request.MerchantDetail] = []
            for v in dict["MerchantDetail"] as! [Any] {
                var model = CredentialVerifyV2Request.MerchantDetail()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.merchantDetail = tmp
        }
        if dict.keys.contains("MerchantId") {
            self.merchantId = dict["MerchantId"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("Prompt") {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("PromptModel") {
            self.promptModel = dict["PromptModel"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertNum") {
            self.certNum = dict["CertNum"] as! String
        }
        if dict.keys.contains("CredName") {
            self.credName = dict["CredName"] as! String
        }
        if dict.keys.contains("CredType") {
            self.credType = dict["CredType"] as! String
        }
        if dict.keys.contains("IdentifyNum") {
            self.identifyNum = dict["IdentifyNum"] as! String
        }
        if dict.keys.contains("ImageFile") {
            self.imageFileObject = dict["ImageFile"] as! InputStream
        }
        if dict.keys.contains("ImageUrl") {
            self.imageUrl = dict["ImageUrl"] as! String
        }
        if dict.keys.contains("IsCheck") {
            self.isCheck = dict["IsCheck"] as! String
        }
        if dict.keys.contains("IsOcr") {
            self.isOcr = dict["IsOcr"] as! String
        }
        if dict.keys.contains("MerchantDetail") {
            var tmp : [CredentialVerifyV2AdvanceRequest.MerchantDetail] = []
            for v in dict["MerchantDetail"] as! [Any] {
                var model = CredentialVerifyV2AdvanceRequest.MerchantDetail()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.merchantDetail = tmp
        }
        if dict.keys.contains("MerchantId") {
            self.merchantId = dict["MerchantId"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("Prompt") {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("PromptModel") {
            self.promptModel = dict["PromptModel"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertNum") {
            self.certNum = dict["CertNum"] as! String
        }
        if dict.keys.contains("CredName") {
            self.credName = dict["CredName"] as! String
        }
        if dict.keys.contains("CredType") {
            self.credType = dict["CredType"] as! String
        }
        if dict.keys.contains("IdentifyNum") {
            self.identifyNum = dict["IdentifyNum"] as! String
        }
        if dict.keys.contains("ImageFile") {
            self.imageFile = dict["ImageFile"] as! String
        }
        if dict.keys.contains("ImageUrl") {
            self.imageUrl = dict["ImageUrl"] as! String
        }
        if dict.keys.contains("IsCheck") {
            self.isCheck = dict["IsCheck"] as! String
        }
        if dict.keys.contains("IsOcr") {
            self.isOcr = dict["IsOcr"] as! String
        }
        if dict.keys.contains("MerchantDetail") {
            self.merchantDetailShrink = dict["MerchantDetail"] as! String
        }
        if dict.keys.contains("MerchantId") {
            self.merchantId = dict["MerchantId"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("Prompt") {
            self.prompt = dict["Prompt"] as! String
        }
        if dict.keys.contains("PromptModel") {
            self.promptModel = dict["PromptModel"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Success") {
                    self.success = dict["Success"] as! Bool
                }
                if dict.keys.contains("VlContent") {
                    self.vlContent = dict["VlContent"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MaterialInfo") {
                self.materialInfo = dict["MaterialInfo"] as! String
            }
            if dict.keys.contains("OcrInfo") {
                self.ocrInfo = dict["OcrInfo"] as! String
            }
            if dict.keys.contains("Result") {
                self.result = dict["Result"] as! String
            }
            if dict.keys.contains("RiskScore") {
                self.riskScore = dict["RiskScore"] as! [String: String]
            }
            if dict.keys.contains("RiskTag") {
                self.riskTag = dict["RiskTag"] as! String
            }
            if dict.keys.contains("VerifyDetail") {
                self.verifyDetail = dict["VerifyDetail"] as! String
            }
            if dict.keys.contains("VerifyResult") {
                self.verifyResult = dict["VerifyResult"] as! String
            }
            if dict.keys.contains("VlResult") {
                var model = CredentialVerifyV2ResponseBody.ResultObject.VlResult()
                model.fromMap(dict["VlResult"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = CredentialVerifyV2ResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CredentialVerifyV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FaceBase64") {
            self.faceBase64 = dict["FaceBase64"] as! String
        }
        if dict.keys.contains("FaceInputType") {
            self.faceInputType = dict["FaceInputType"] as! String
        }
        if dict.keys.contains("FaceUrl") {
            self.faceUrl = dict["FaceUrl"] as! String
        }
        if dict.keys.contains("OuterOrderNo") {
            self.outerOrderNo = dict["OuterOrderNo"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Result") {
                self.result = dict["Result"] as! String
            }
            if dict.keys.contains("RiskScore") {
                self.riskScore = dict["RiskScore"] as! [String: String]
            }
            if dict.keys.contains("RiskTag") {
                self.riskTag = dict["RiskTag"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = DeepfakeDetectResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeepfakeDetectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertifyId") {
            self.certifyId = dict["CertifyId"] as! String
        }
        if dict.keys.contains("DeleteAfterQuery") {
            self.deleteAfterQuery = dict["DeleteAfterQuery"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertifyId") {
                self.certifyId = dict["CertifyId"] as! String
            }
            if dict.keys.contains("DeleteResult") {
                self.deleteResult = dict["DeleteResult"] as! String
            }
            if dict.keys.contains("FailReason") {
                self.failReason = dict["FailReason"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = DeleteFaceVerifyResultResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteFaceVerifyResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizType") {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("ExpiredEndDay") {
            self.expiredEndDay = dict["ExpiredEndDay"] as! String
        }
        if dict.keys.contains("ExpiredStartDay") {
            self.expiredStartDay = dict["ExpiredStartDay"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("UserDeviceId") {
            self.userDeviceId = dict["UserDeviceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BeginDay") {
                    self.beginDay = dict["BeginDay"] as! String
                }
                if dict.keys.contains("BizType") {
                    self.bizType = dict["BizType"] as! String
                }
                if dict.keys.contains("DeviceId") {
                    self.deviceId = dict["DeviceId"] as! String
                }
                if dict.keys.contains("ExpiredDay") {
                    self.expiredDay = dict["ExpiredDay"] as! String
                }
                if dict.keys.contains("UserDeviceId") {
                    self.userDeviceId = dict["UserDeviceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceInfo") {
                var tmp : [DescribeDeviceInfoResponseBody.DeviceInfoList.DeviceInfo] = []
                for v in dict["DeviceInfo"] as! [Any] {
                    var model = DescribeDeviceInfoResponseBody.DeviceInfoList.DeviceInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DeviceInfoList") {
            var model = DescribeDeviceInfoResponseBody.DeviceInfoList()
            model.fromMap(dict["DeviceInfoList"] as! [String: Any])
            self.deviceInfoList = model
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDeviceInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("DeviceToken") {
            self.deviceToken = dict["DeviceToken"] as! String
        }
        if dict.keys.contains("OuterOrderNo") {
            self.outerOrderNo = dict["OuterOrderNo"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertifyId") {
                self.certifyId = dict["CertifyId"] as! String
            }
            if dict.keys.contains("RiskExtends") {
                self.riskExtends = dict["RiskExtends"] as! String
            }
            if dict.keys.contains("RiskTags") {
                self.riskTags = dict["RiskTags"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = DescribeFaceGuardRiskResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFaceGuardRiskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertifyId") {
            self.certifyId = dict["CertifyId"] as! String
        }
        if dict.keys.contains("PictureReturnType") {
            self.pictureReturnType = dict["PictureReturnType"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceRisk") {
                self.deviceRisk = dict["DeviceRisk"] as! String
            }
            if dict.keys.contains("DeviceToken") {
                self.deviceToken = dict["DeviceToken"] as! String
            }
            if dict.keys.contains("IdentityInfo") {
                self.identityInfo = dict["IdentityInfo"] as! String
            }
            if dict.keys.contains("MaterialInfo") {
                self.materialInfo = dict["MaterialInfo"] as! String
            }
            if dict.keys.contains("Passed") {
                self.passed = dict["Passed"] as! String
            }
            if dict.keys.contains("SubCode") {
                self.subCode = dict["SubCode"] as! String
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! String
            }
            if dict.keys.contains("UserInfo") {
                self.userInfo = dict["UserInfo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = DescribeFaceVerifyResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeFaceVerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bucket") {
                self.bucket = dict["Bucket"] as! String
            }
            if dict.keys.contains("EndPoint") {
                self.endPoint = dict["EndPoint"] as! String
            }
            if dict.keys.contains("Expired") {
                self.expired = dict["Expired"] as! Int64
            }
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("Secret") {
                self.secret = dict["Secret"] as! String
            }
            if dict.keys.contains("Token") {
                self.token = dict["Token"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OssUploadToken") {
            var model = DescribeOssUploadTokenResponseBody.OssUploadToken()
            model.fromMap(dict["OssUploadToken"] as! [String: Any])
            self.ossUploadToken = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeOssUploadTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! Int64
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Date") {
                self.date = dict["Date"] as! String
            }
            if dict.keys.contains("ProductCode") {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("SceneId") {
                self.sceneId = dict["SceneId"] as! String
            }
            if dict.keys.contains("SceneName") {
                self.sceneName = dict["SceneName"] as! String
            }
            if dict.keys.contains("SuccessCount") {
                self.successCount = dict["SuccessCount"] as! String
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("Items") {
            var tmp : [DescribePageFaceVerifyDataResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribePageFaceVerifyDataResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
        }
        if dict.keys.contains("TotalPage") {
            self.totalPage = dict["TotalPage"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribePageFaceVerifyDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! String
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! String
        }
        if dict.keys.contains("ServiceCode") {
            self.serviceCode = dict["ServiceCode"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Date") {
                self.date = dict["Date"] as! String
            }
            if dict.keys.contains("PassRate") {
                self.passRate = dict["PassRate"] as! String
            }
            if dict.keys.contains("ProductCode") {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("SceneId") {
                self.sceneId = dict["SceneId"] as! Int64
            }
            if dict.keys.contains("SceneName") {
                self.sceneName = dict["SceneName"] as! String
            }
            if dict.keys.contains("SuccessCount") {
                self.successCount = dict["SuccessCount"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Items") {
            var tmp : [DescribeSmartStatisticsPageListResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeSmartStatisticsPageListResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TotalPage") {
            self.totalPage = dict["TotalPage"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeSmartStatisticsPageListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("BizType") {
            self.bizType = dict["BizType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Address") {
                    self.address = dict["Address"] as! String
                }
                if dict.keys.contains("Authority") {
                    self.authority = dict["Authority"] as! String
                }
                if dict.keys.contains("BackImageUrl") {
                    self.backImageUrl = dict["BackImageUrl"] as! String
                }
                if dict.keys.contains("Birth") {
                    self.birth = dict["Birth"] as! String
                }
                if dict.keys.contains("EndDate") {
                    self.endDate = dict["EndDate"] as! String
                }
                if dict.keys.contains("FrontImageUrl") {
                    self.frontImageUrl = dict["FrontImageUrl"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Nationality") {
                    self.nationality = dict["Nationality"] as! String
                }
                if dict.keys.contains("Number") {
                    self.number = dict["Number"] as! String
                }
                if dict.keys.contains("StartDate") {
                    self.startDate = dict["StartDate"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FaceGlobalUrl") {
                self.faceGlobalUrl = dict["FaceGlobalUrl"] as! String
            }
            if dict.keys.contains("FaceImageUrl") {
                self.faceImageUrl = dict["FaceImageUrl"] as! String
            }
            if dict.keys.contains("FaceMask") {
                self.faceMask = dict["FaceMask"] as! Bool
            }
            if dict.keys.contains("FaceQuality") {
                self.faceQuality = dict["FaceQuality"] as! String
            }
            if dict.keys.contains("IdCardInfo") {
                var model = DescribeVerifyResultResponseBody.Material.IdCardInfo()
                model.fromMap(dict["IdCardInfo"] as! [String: Any])
                self.idCardInfo = model
            }
            if dict.keys.contains("IdCardName") {
                self.idCardName = dict["IdCardName"] as! String
            }
            if dict.keys.contains("IdCardNumber") {
                self.idCardNumber = dict["IdCardNumber"] as! String
            }
            if dict.keys.contains("VideoUrls") {
                self.videoUrls = dict["VideoUrls"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorityComparisionScore") {
            self.authorityComparisionScore = dict["AuthorityComparisionScore"] as! Double
        }
        if dict.keys.contains("FaceComparisonScore") {
            self.faceComparisonScore = dict["FaceComparisonScore"] as! Double
        }
        if dict.keys.contains("IdCardFaceComparisonScore") {
            self.idCardFaceComparisonScore = dict["IdCardFaceComparisonScore"] as! Double
        }
        if dict.keys.contains("Material") {
            var model = DescribeVerifyResultResponseBody.Material()
            model.fromMap(dict["Material"] as! [String: Any])
            self.material = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VerifyStatus") {
            self.verifyStatus = dict["VerifyStatus"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVerifyResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SdkUrl") {
            self.sdkUrl = dict["SdkUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVerifySDKResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("BizType") {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("CallbackSeed") {
            self.callbackSeed = dict["CallbackSeed"] as! String
        }
        if dict.keys.contains("CallbackUrl") {
            self.callbackUrl = dict["CallbackUrl"] as! String
        }
        if dict.keys.contains("FaceRetainedImageUrl") {
            self.faceRetainedImageUrl = dict["FaceRetainedImageUrl"] as! String
        }
        if dict.keys.contains("FailedRedirectUrl") {
            self.failedRedirectUrl = dict["FailedRedirectUrl"] as! String
        }
        if dict.keys.contains("IdCardBackImageUrl") {
            self.idCardBackImageUrl = dict["IdCardBackImageUrl"] as! String
        }
        if dict.keys.contains("IdCardFrontImageUrl") {
            self.idCardFrontImageUrl = dict["IdCardFrontImageUrl"] as! String
        }
        if dict.keys.contains("IdCardNumber") {
            self.idCardNumber = dict["IdCardNumber"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PassedRedirectUrl") {
            self.passedRedirectUrl = dict["PassedRedirectUrl"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserIp") {
            self.userIp = dict["UserIp"] as! String
        }
        if dict.keys.contains("UserPhoneNumber") {
            self.userPhoneNumber = dict["UserPhoneNumber"] as! String
        }
        if dict.keys.contains("UserRegistTime") {
            self.userRegistTime = dict["UserRegistTime"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Bucket") {
                self.bucket = dict["Bucket"] as! String
            }
            if dict.keys.contains("EndPoint") {
                self.endPoint = dict["EndPoint"] as! String
            }
            if dict.keys.contains("Expired") {
                self.expired = dict["Expired"] as! Int64
            }
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Path") {
                self.path = dict["Path"] as! String
            }
            if dict.keys.contains("Secret") {
                self.secret = dict["Secret"] as! String
            }
            if dict.keys.contains("Token") {
                self.token = dict["Token"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OssUploadToken") {
            var model = DescribeVerifyTokenResponseBody.OssUploadToken()
            model.fromMap(dict["OssUploadToken"] as! [String: Any])
            self.ossUploadToken = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VerifyPageUrl") {
            self.verifyPageUrl = dict["VerifyPageUrl"] as! String
        }
        if dict.keys.contains("VerifyToken") {
            self.verifyToken = dict["VerifyToken"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVerifyTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizType") {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("MaterialValue") {
            self.materialValue = dict["MaterialValue"] as! String
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("PitchAngle") {
                                self.pitchAngle = dict["PitchAngle"] as! Double
                            }
                            if dict.keys.contains("RollAngle") {
                                self.rollAngle = dict["RollAngle"] as! Double
                            }
                            if dict.keys.contains("YawAngle") {
                                self.yawAngle = dict["YawAngle"] as! Double
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Threshold") {
                                self.threshold = dict["Threshold"] as! Double
                            }
                            if dict.keys.contains("Value") {
                                self.value = dict["Value"] as! Double
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Blur") {
                            self.blur = dict["Blur"] as! Double
                        }
                        if dict.keys.contains("Facequal") {
                            self.facequal = dict["Facequal"] as! Double
                        }
                        if dict.keys.contains("Facetype") {
                            self.facetype = dict["Facetype"] as! String
                        }
                        if dict.keys.contains("Glasses") {
                            self.glasses = dict["Glasses"] as! String
                        }
                        if dict.keys.contains("Headpose") {
                            var model = DetectFaceAttributesResponseBody.Data.FaceInfos.FaceAttributesDetectInfo.FaceAttributes.Headpose()
                            model.fromMap(dict["Headpose"] as! [String: Any])
                            self.headpose = model
                        }
                        if dict.keys.contains("Integrity") {
                            self.integrity = dict["Integrity"] as! Int32
                        }
                        if dict.keys.contains("Respirator") {
                            self.respirator = dict["Respirator"] as! String
                        }
                        if dict.keys.contains("Smiling") {
                            var model = DetectFaceAttributesResponseBody.Data.FaceInfos.FaceAttributesDetectInfo.FaceAttributes.Smiling()
                            model.fromMap(dict["Smiling"] as! [String: Any])
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Height") {
                            self.height = dict["Height"] as! Int32
                        }
                        if dict.keys.contains("Left") {
                            self.left_ = dict["Left"] as! Int32
                        }
                        if dict.keys.contains("Top") {
                            self.top = dict["Top"] as! Int32
                        }
                        if dict.keys.contains("Width") {
                            self.width = dict["Width"] as! Int32
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FaceAttributes") {
                        var model = DetectFaceAttributesResponseBody.Data.FaceInfos.FaceAttributesDetectInfo.FaceAttributes()
                        model.fromMap(dict["FaceAttributes"] as! [String: Any])
                        self.faceAttributes = model
                    }
                    if dict.keys.contains("FaceRect") {
                        var model = DetectFaceAttributesResponseBody.Data.FaceInfos.FaceAttributesDetectInfo.FaceRect()
                        model.fromMap(dict["FaceRect"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FaceAttributesDetectInfo") {
                    var tmp : [DetectFaceAttributesResponseBody.Data.FaceInfos.FaceAttributesDetectInfo] = []
                    for v in dict["FaceAttributesDetectInfo"] as! [Any] {
                        var model = DetectFaceAttributesResponseBody.Data.FaceInfos.FaceAttributesDetectInfo()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FaceInfos") {
                var model = DetectFaceAttributesResponseBody.Data.FaceInfos()
                model.fromMap(dict["FaceInfos"] as! [String: Any])
                self.faceInfos = model
            }
            if dict.keys.contains("ImgHeight") {
                self.imgHeight = dict["ImgHeight"] as! Int32
            }
            if dict.keys.contains("ImgWidth") {
                self.imgWidth = dict["ImgWidth"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = DetectFaceAttributesResponseBody.Data()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DetectFaceAttributesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IdentifyNum") {
            self.identifyNum = dict["IdentifyNum"] as! String
        }
        if dict.keys.contains("ParamType") {
            self.paramType = dict["ParamType"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("ValidityEndDate") {
            self.validityEndDate = dict["ValidityEndDate"] as! String
        }
        if dict.keys.contains("ValidityStartDate") {
            self.validityStartDate = dict["ValidityStartDate"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizCode") {
                self.bizCode = dict["BizCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = Id2MetaPeriodVerifyResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Id2MetaPeriodVerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IdentifyNum") {
            self.identifyNum = dict["IdentifyNum"] as! String
        }
        if dict.keys.contains("ParamType") {
            self.paramType = dict["ParamType"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizCode") {
                self.bizCode = dict["BizCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = Id2MetaStandardVerifyResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Id2MetaStandardVerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IdentifyNum") {
            self.identifyNum = dict["IdentifyNum"] as! String
        }
        if dict.keys.contains("ParamType") {
            self.paramType = dict["ParamType"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizCode") {
                self.bizCode = dict["BizCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = Id2MetaVerifyResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Id2MetaVerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertFile") {
            self.certFile = dict["CertFile"] as! String
        }
        if dict.keys.contains("CertNationalFile") {
            self.certNationalFile = dict["CertNationalFile"] as! String
        }
        if dict.keys.contains("CertNationalUrl") {
            self.certNationalUrl = dict["CertNationalUrl"] as! String
        }
        if dict.keys.contains("CertUrl") {
            self.certUrl = dict["CertUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertFile") {
            self.certFileObject = dict["CertFile"] as! InputStream
        }
        if dict.keys.contains("CertNationalFile") {
            self.certNationalFileObject = dict["CertNationalFile"] as! InputStream
        }
        if dict.keys.contains("CertNationalUrl") {
            self.certNationalUrl = dict["CertNationalUrl"] as! String
        }
        if dict.keys.contains("CertUrl") {
            self.certUrl = dict["CertUrl"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizCode") {
                self.bizCode = dict["BizCode"] as! String
            }
            if dict.keys.contains("CardInfo") {
                self.cardInfo = dict["CardInfo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = Id2MetaVerifyWithOCRResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Id2MetaVerifyWithOCRResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppQualityCheck") {
            self.appQualityCheck = dict["AppQualityCheck"] as! String
        }
        if dict.keys.contains("AuthId") {
            self.authId = dict["AuthId"] as! String
        }
        if dict.keys.contains("Birthday") {
            self.birthday = dict["Birthday"] as! String
        }
        if dict.keys.contains("CallbackToken") {
            self.callbackToken = dict["CallbackToken"] as! String
        }
        if dict.keys.contains("CallbackUrl") {
            self.callbackUrl = dict["CallbackUrl"] as! String
        }
        if dict.keys.contains("CameraSelection") {
            self.cameraSelection = dict["CameraSelection"] as! String
        }
        if dict.keys.contains("CertName") {
            self.certName = dict["CertName"] as! String
        }
        if dict.keys.contains("CertNo") {
            self.certNo = dict["CertNo"] as! String
        }
        if dict.keys.contains("CertType") {
            self.certType = dict["CertType"] as! String
        }
        if dict.keys.contains("CertifyId") {
            self.certifyId = dict["CertifyId"] as! String
        }
        if dict.keys.contains("CertifyUrlStyle") {
            self.certifyUrlStyle = dict["CertifyUrlStyle"] as! String
        }
        if dict.keys.contains("CertifyUrlType") {
            self.certifyUrlType = dict["CertifyUrlType"] as! String
        }
        if dict.keys.contains("Crop") {
            self.crop = dict["Crop"] as! String
        }
        if dict.keys.contains("EncryptType") {
            self.encryptType = dict["EncryptType"] as! String
        }
        if dict.keys.contains("FaceContrastPicture") {
            self.faceContrastPicture = dict["FaceContrastPicture"] as! String
        }
        if dict.keys.contains("FaceContrastPictureUrl") {
            self.faceContrastPictureUrl = dict["FaceContrastPictureUrl"] as! String
        }
        if dict.keys.contains("FaceGuardOutput") {
            self.faceGuardOutput = dict["FaceGuardOutput"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("MetaInfo") {
            self.metaInfo = dict["MetaInfo"] as! String
        }
        if dict.keys.contains("Mobile") {
            self.mobile = dict["Mobile"] as! String
        }
        if dict.keys.contains("Mode") {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("Model") {
            self.model = dict["Model"] as! String
        }
        if dict.keys.contains("OssBucketName") {
            self.ossBucketName = dict["OssBucketName"] as! String
        }
        if dict.keys.contains("OssObjectName") {
            self.ossObjectName = dict["OssObjectName"] as! String
        }
        if dict.keys.contains("OuterOrderNo") {
            self.outerOrderNo = dict["OuterOrderNo"] as! String
        }
        if dict.keys.contains("ProcedurePriority") {
            self.procedurePriority = dict["ProcedurePriority"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("RarelyCharacters") {
            self.rarelyCharacters = dict["RarelyCharacters"] as! String
        }
        if dict.keys.contains("ReadImg") {
            self.readImg = dict["ReadImg"] as! String
        }
        if dict.keys.contains("ReturnUrl") {
            self.returnUrl = dict["ReturnUrl"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! Int64
        }
        if dict.keys.contains("SuitableType") {
            self.suitableType = dict["SuitableType"] as! String
        }
        if dict.keys.contains("UiCustomUrl") {
            self.uiCustomUrl = dict["UiCustomUrl"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("ValidityDate") {
            self.validityDate = dict["ValidityDate"] as! String
        }
        if dict.keys.contains("VideoEvidence") {
            self.videoEvidence = dict["VideoEvidence"] as! String
        }
        if dict.keys.contains("VoluntaryCustomizedContent") {
            self.voluntaryCustomizedContent = dict["VoluntaryCustomizedContent"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertifyId") {
                self.certifyId = dict["CertifyId"] as! String
            }
            if dict.keys.contains("CertifyUrl") {
                self.certifyUrl = dict["CertifyUrl"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = InitFaceVerifyResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = InitFaceVerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertNo") {
            self.certNo = dict["CertNo"] as! String
        }
        if dict.keys.contains("CertifyId") {
            self.certifyId = dict["CertifyId"] as! String
        }
        if dict.keys.contains("Remark") {
            self.remark = dict["Remark"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! Int64
        }
        if dict.keys.contains("ServiceCode") {
            self.serviceCode = dict["ServiceCode"] as! String
        }
        if dict.keys.contains("ValidDay") {
            self.validDay = dict["ValidDay"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            self.resultObject = dict["ResultObject"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = InsertWhiteListSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertifyId") {
            self.certifyId = dict["CertifyId"] as! String
        }
        if dict.keys.contains("Crop") {
            self.crop = dict["Crop"] as! String
        }
        if dict.keys.contains("DeviceToken") {
            self.deviceToken = dict["DeviceToken"] as! String
        }
        if dict.keys.contains("FaceContrastPicture") {
            self.faceContrastPicture = dict["FaceContrastPicture"] as! String
        }
        if dict.keys.contains("FaceContrastPictureUrl") {
            self.faceContrastPictureUrl = dict["FaceContrastPictureUrl"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("Mobile") {
            self.mobile = dict["Mobile"] as! String
        }
        if dict.keys.contains("Model") {
            self.model = dict["Model"] as! String
        }
        if dict.keys.contains("OssBucketName") {
            self.ossBucketName = dict["OssBucketName"] as! String
        }
        if dict.keys.contains("OssObjectName") {
            self.ossObjectName = dict["OssObjectName"] as! String
        }
        if dict.keys.contains("OuterOrderNo") {
            self.outerOrderNo = dict["OuterOrderNo"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! Int64
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertifyId") {
                self.certifyId = dict["CertifyId"] as! String
            }
            if dict.keys.contains("MaterialInfo") {
                self.materialInfo = dict["MaterialInfo"] as! String
            }
            if dict.keys.contains("Passed") {
                self.passed = dict["Passed"] as! String
            }
            if dict.keys.contains("SubCode") {
                self.subCode = dict["SubCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = LivenessFaceVerifyResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = LivenessFaceVerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IdentifyNum") {
            self.identifyNum = dict["IdentifyNum"] as! String
        }
        if dict.keys.contains("Mobile") {
            self.mobile = dict["Mobile"] as! String
        }
        if dict.keys.contains("ParamType") {
            self.paramType = dict["ParamType"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizCode") {
                self.bizCode = dict["BizCode"] as! String
            }
            if dict.keys.contains("IspName") {
                self.ispName = dict["IspName"] as! String
            }
            if dict.keys.contains("SubCode") {
                self.subCode = dict["SubCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = Mobile3MetaDetailStandardVerifyResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Mobile3MetaDetailStandardVerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IdentifyNum") {
            self.identifyNum = dict["IdentifyNum"] as! String
        }
        if dict.keys.contains("Mobile") {
            self.mobile = dict["Mobile"] as! String
        }
        if dict.keys.contains("ParamType") {
            self.paramType = dict["ParamType"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizCode") {
                self.bizCode = dict["BizCode"] as! String
            }
            if dict.keys.contains("IspName") {
                self.ispName = dict["IspName"] as! String
            }
            if dict.keys.contains("SubCode") {
                self.subCode = dict["SubCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = Mobile3MetaDetailVerifyResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Mobile3MetaDetailVerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IdentifyNum") {
            self.identifyNum = dict["IdentifyNum"] as! String
        }
        if dict.keys.contains("Mobile") {
            self.mobile = dict["Mobile"] as! String
        }
        if dict.keys.contains("ParamType") {
            self.paramType = dict["ParamType"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizCode") {
                self.bizCode = dict["BizCode"] as! String
            }
            if dict.keys.contains("IspName") {
                self.ispName = dict["IspName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = Mobile3MetaSimpleStandardVerifyResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Mobile3MetaSimpleStandardVerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IdentifyNum") {
            self.identifyNum = dict["IdentifyNum"] as! String
        }
        if dict.keys.contains("Mobile") {
            self.mobile = dict["Mobile"] as! String
        }
        if dict.keys.contains("ParamType") {
            self.paramType = dict["ParamType"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizCode") {
                self.bizCode = dict["BizCode"] as! String
            }
            if dict.keys.contains("IspName") {
                self.ispName = dict["IspName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = Mobile3MetaSimpleVerifyResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Mobile3MetaSimpleVerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Mobiles") {
            self.mobiles = dict["Mobiles"] as! String
        }
        if dict.keys.contains("ParamType") {
            self.paramType = dict["ParamType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Area") {
                    self.area = dict["Area"] as! String
                }
                if dict.keys.contains("BizCode") {
                    self.bizCode = dict["BizCode"] as! String
                }
                if dict.keys.contains("IspName") {
                    self.ispName = dict["IspName"] as! String
                }
                if dict.keys.contains("Mobile") {
                    self.mobile = dict["Mobile"] as! String
                }
                if dict.keys.contains("SubCode") {
                    self.subCode = dict["SubCode"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChargeCount") {
                self.chargeCount = dict["ChargeCount"] as! String
            }
            if dict.keys.contains("Items") {
                var tmp : [MobileDetectResponseBody.ResultObject.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = MobileDetectResponseBody.ResultObject.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = MobileDetectResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = MobileDetectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Mobile") {
            self.mobile = dict["Mobile"] as! String
        }
        if dict.keys.contains("ParamType") {
            self.paramType = dict["ParamType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizCode") {
                self.bizCode = dict["BizCode"] as! String
            }
            if dict.keys.contains("IspName") {
                self.ispName = dict["IspName"] as! String
            }
            if dict.keys.contains("SubCode") {
                self.subCode = dict["SubCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = MobileOnlineStatusResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = MobileOnlineStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Mobile") {
            self.mobile = dict["Mobile"] as! String
        }
        if dict.keys.contains("ParamType") {
            self.paramType = dict["ParamType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizCode") {
                self.bizCode = dict["BizCode"] as! String
            }
            if dict.keys.contains("IspName") {
                self.ispName = dict["IspName"] as! String
            }
            if dict.keys.contains("TimeCode") {
                self.timeCode = dict["TimeCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = MobileOnlineTimeResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = MobileOnlineTimeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizType") {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! String
        }
        if dict.keys.contains("ExpiredDay") {
            self.expiredDay = dict["ExpiredDay"] as! String
        }
        if dict.keys.contains("UserDeviceId") {
            self.userDeviceId = dict["UserDeviceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginDay") {
            self.beginDay = dict["BeginDay"] as! String
        }
        if dict.keys.contains("BizType") {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("DeviceId") {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("ExpiredDay") {
            self.expiredDay = dict["ExpiredDay"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserDeviceId") {
            self.userDeviceId = dict["UserDeviceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyDeviceInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertNo") {
            self.certNo = dict["CertNo"] as! String
        }
        if dict.keys.contains("CertifyId") {
            self.certifyId = dict["CertifyId"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SceneId") {
            self.sceneId = dict["SceneId"] as! Int64
        }
        if dict.keys.contains("ServiceCode") {
            self.serviceCode = dict["ServiceCode"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("ValidEndDate") {
            self.validEndDate = dict["ValidEndDate"] as! String
        }
        if dict.keys.contains("ValidStartDate") {
            self.validStartDate = dict["ValidStartDate"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertNo") {
                self.certNo = dict["CertNo"] as! String
            }
            if dict.keys.contains("CertifyId") {
                self.certifyId = dict["CertifyId"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Remark") {
                self.remark = dict["Remark"] as! String
            }
            if dict.keys.contains("SceneId") {
                self.sceneId = dict["SceneId"] as! Int64
            }
            if dict.keys.contains("ServiceCode") {
                self.serviceCode = dict["ServiceCode"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("ValidEndDate") {
                self.validEndDate = dict["ValidEndDate"] as! String
            }
            if dict.keys.contains("ValidStartDate") {
                self.validStartDate = dict["ValidStartDate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var tmp : [PageQueryWhiteListSettingResponseBody.ResultObject] = []
            for v in dict["ResultObject"] as! [Any] {
                var model = PageQueryWhiteListSettingResponseBody.ResultObject()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resultObject = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalItem") {
            self.totalItem = dict["TotalItem"] as! Int32
        }
        if dict.keys.contains("TotalPage") {
            self.totalPage = dict["TotalPage"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PageQueryWhiteListSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ids") {
            self.ids = dict["Ids"] as! [Int64]
        }
        if dict.keys.contains("ServiceCode") {
            self.serviceCode = dict["ServiceCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ids") {
            self.idsShrink = dict["Ids"] as! String
        }
        if dict.keys.contains("ServiceCode") {
            self.serviceCode = dict["ServiceCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            self.resultObject = dict["ResultObject"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RemoveWhiteListSettingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ParamType") {
            self.paramType = dict["ParamType"] as! String
        }
        if dict.keys.contains("VehicleNum") {
            self.vehicleNum = dict["VehicleNum"] as! String
        }
        if dict.keys.contains("VehicleType") {
            self.vehicleType = dict["VehicleType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizCode") {
                self.bizCode = dict["BizCode"] as! String
            }
            if dict.keys.contains("VehicleInfo") {
                self.vehicleInfo = dict["VehicleInfo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = Vehicle5ItemQueryResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Vehicle5ItemQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ParamType") {
            self.paramType = dict["ParamType"] as! String
        }
        if dict.keys.contains("VehicleNum") {
            self.vehicleNum = dict["VehicleNum"] as! String
        }
        if dict.keys.contains("VehicleType") {
            self.vehicleType = dict["VehicleType"] as! String
        }
        if dict.keys.contains("Vin") {
            self.vin = dict["Vin"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizCode") {
                self.bizCode = dict["BizCode"] as! String
            }
            if dict.keys.contains("VehicleInfo") {
                self.vehicleInfo = dict["VehicleInfo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = VehicleInsureQueryResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = VehicleInsureQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IdentifyNum") {
            self.identifyNum = dict["IdentifyNum"] as! String
        }
        if dict.keys.contains("ParamType") {
            self.paramType = dict["ParamType"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("VehicleNum") {
            self.vehicleNum = dict["VehicleNum"] as! String
        }
        if dict.keys.contains("VehicleType") {
            self.vehicleType = dict["VehicleType"] as! String
        }
        if dict.keys.contains("VerifyMetaType") {
            self.verifyMetaType = dict["VerifyMetaType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizCode") {
                self.bizCode = dict["BizCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = VehicleMetaVerifyResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = VehicleMetaVerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IdentifyNum") {
            self.identifyNum = dict["IdentifyNum"] as! String
        }
        if dict.keys.contains("ParamType") {
            self.paramType = dict["ParamType"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("VehicleNum") {
            self.vehicleNum = dict["VehicleNum"] as! String
        }
        if dict.keys.contains("VehicleType") {
            self.vehicleType = dict["VehicleType"] as! String
        }
        if dict.keys.contains("VerifyMetaType") {
            self.verifyMetaType = dict["VerifyMetaType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizCode") {
                self.bizCode = dict["BizCode"] as! String
            }
            if dict.keys.contains("VehicleInfo") {
                self.vehicleInfo = dict["VehicleInfo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = VehicleMetaVerifyV2ResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = VehicleMetaVerifyV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ParamType") {
            self.paramType = dict["ParamType"] as! String
        }
        if dict.keys.contains("VehicleNum") {
            self.vehicleNum = dict["VehicleNum"] as! String
        }
        if dict.keys.contains("VehicleType") {
            self.vehicleType = dict["VehicleType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizCode") {
                self.bizCode = dict["BizCode"] as! String
            }
            if dict.keys.contains("VehicleInfo") {
                self.vehicleInfo = dict["VehicleInfo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResultObject") {
            var model = VehicleQueryResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = VehicleQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("BizType") {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("FaceImageUrl") {
            self.faceImageUrl = dict["FaceImageUrl"] as! String
        }
        if dict.keys.contains("IdCardBackImageUrl") {
            self.idCardBackImageUrl = dict["IdCardBackImageUrl"] as! String
        }
        if dict.keys.contains("IdCardFrontImageUrl") {
            self.idCardFrontImageUrl = dict["IdCardFrontImageUrl"] as! String
        }
        if dict.keys.contains("IdCardNumber") {
            self.idCardNumber = dict["IdCardNumber"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Address") {
                    self.address = dict["Address"] as! String
                }
                if dict.keys.contains("Authority") {
                    self.authority = dict["Authority"] as! String
                }
                if dict.keys.contains("BackImageUrl") {
                    self.backImageUrl = dict["BackImageUrl"] as! String
                }
                if dict.keys.contains("Birth") {
                    self.birth = dict["Birth"] as! String
                }
                if dict.keys.contains("EndDate") {
                    self.endDate = dict["EndDate"] as! String
                }
                if dict.keys.contains("FrontImageUrl") {
                    self.frontImageUrl = dict["FrontImageUrl"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Nationality") {
                    self.nationality = dict["Nationality"] as! String
                }
                if dict.keys.contains("Number") {
                    self.number = dict["Number"] as! String
                }
                if dict.keys.contains("StartDate") {
                    self.startDate = dict["StartDate"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FaceGlobalUrl") {
                self.faceGlobalUrl = dict["FaceGlobalUrl"] as! String
            }
            if dict.keys.contains("FaceImageUrl") {
                self.faceImageUrl = dict["FaceImageUrl"] as! String
            }
            if dict.keys.contains("FaceMask") {
                self.faceMask = dict["FaceMask"] as! String
            }
            if dict.keys.contains("FaceQuality") {
                self.faceQuality = dict["FaceQuality"] as! String
            }
            if dict.keys.contains("IdCardInfo") {
                var model = VerifyMaterialResponseBody.Material.IdCardInfo()
                model.fromMap(dict["IdCardInfo"] as! [String: Any])
                self.idCardInfo = model
            }
            if dict.keys.contains("IdCardName") {
                self.idCardName = dict["IdCardName"] as! String
            }
            if dict.keys.contains("IdCardNumber") {
                self.idCardNumber = dict["IdCardNumber"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthorityComparisionScore") {
            self.authorityComparisionScore = dict["AuthorityComparisionScore"] as! Double
        }
        if dict.keys.contains("IdCardFaceComparisonScore") {
            self.idCardFaceComparisonScore = dict["IdCardFaceComparisonScore"] as! Double
        }
        if dict.keys.contains("Material") {
            var model = VerifyMaterialResponseBody.Material()
            model.fromMap(dict["Material"] as! [String: Any])
            self.material = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VerifyStatus") {
            self.verifyStatus = dict["VerifyStatus"] as! Int32
        }
        if dict.keys.contains("VerifyToken") {
            self.verifyToken = dict["VerifyToken"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = VerifyMaterialResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
