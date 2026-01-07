import Foundation
import Tea
import TeaUtils
import DarabonbaXML
import AlibabaCloudCredentials
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

public class CreateAntCloudAuthSceneRequest : Tea.TeaModel {
    public var bindMiniProgram: String?

    public var checkFileBody: String?

    public var checkFileName: String?

    public var miniProgramName: String?

    public var platform: String?

    public var returnPicCount: Int64?

    public var returnVideoLength: Int64?

    public var sceneName: String?

    public var storeImage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bindMiniProgram != nil {
            map["BindMiniProgram"] = self.bindMiniProgram!
        }
        if self.checkFileBody != nil {
            map["CheckFileBody"] = self.checkFileBody!
        }
        if self.checkFileName != nil {
            map["CheckFileName"] = self.checkFileName!
        }
        if self.miniProgramName != nil {
            map["MiniProgramName"] = self.miniProgramName!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.returnPicCount != nil {
            map["ReturnPicCount"] = self.returnPicCount!
        }
        if self.returnVideoLength != nil {
            map["ReturnVideoLength"] = self.returnVideoLength!
        }
        if self.sceneName != nil {
            map["SceneName"] = self.sceneName!
        }
        if self.storeImage != nil {
            map["StoreImage"] = self.storeImage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BindMiniProgram"] as? String {
            self.bindMiniProgram = value
        }
        if let value = dict["CheckFileBody"] as? String {
            self.checkFileBody = value
        }
        if let value = dict["CheckFileName"] as? String {
            self.checkFileName = value
        }
        if let value = dict["MiniProgramName"] as? String {
            self.miniProgramName = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["ReturnPicCount"] as? Int64 {
            self.returnPicCount = value
        }
        if let value = dict["ReturnVideoLength"] as? Int64 {
            self.returnVideoLength = value
        }
        if let value = dict["SceneName"] as? String {
            self.sceneName = value
        }
        if let value = dict["StoreImage"] as? String {
            self.storeImage = value
        }
    }
}

public class CreateAntCloudAuthSceneResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SceneId"] as? Int64 {
            self.sceneId = value
        }
    }
}

public class CreateAntCloudAuthSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAntCloudAuthSceneResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateAntCloudAuthSceneResponseBody()
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

public class CreateCloudauthstSceneRequest : Tea.TeaModel {
    public var productCode: String?

    public var sceneName: String?

    public var storeImage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.sceneName != nil {
            map["SceneName"] = self.sceneName!
        }
        if self.storeImage != nil {
            map["StoreImage"] = self.storeImage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["SceneName"] as? String {
            self.sceneName = value
        }
        if let value = dict["StoreImage"] as? String {
            self.storeImage = value
        }
    }
}

public class CreateCloudauthstSceneResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resultObject: Bool?

    public override init() {
        super.init()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? Bool {
            self.resultObject = value
        }
    }
}

public class CreateCloudauthstSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCloudauthstSceneResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateCloudauthstSceneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSceneConfigRequest : Tea.TeaModel {
    public var config: String?

    public var sceneId: Int64?

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
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.sceneId != nil {
            map["sceneId"] = self.sceneId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["config"] as? String {
            self.config = value
        }
        if let value = dict["sceneId"] as? Int64 {
            self.sceneId = value
        }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class CreateSceneConfigResponseBody : Tea.TeaModel {
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

public class CreateSceneConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSceneConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateSceneConfigResponseBody()
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

public class CreateWhitelistSettingRequest : Tea.TeaModel {
    public var certNo: String?

    public var certifyId: String?

    public var lang: String?

    public var remark: String?

    public var sceneId: Int64?

    public var serviceCode: String?

    public var sourceIp: String?

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
        if self.lang != nil {
            map["Lang"] = self.lang!
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
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
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
        if let value = dict["Lang"] as? String {
            self.lang = value
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
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["ValidDay"] as? Int32 {
            self.validDay = value
        }
    }
}

public class CreateWhitelistSettingResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resultObject: Bool?

    public override init() {
        super.init()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? Bool {
            self.resultObject = value
        }
    }
}

public class CreateWhitelistSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWhitelistSettingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateWhitelistSettingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CredentialProductVerifyV2Request : Tea.TeaModel {
    public var credName: String?

    public var credType: String?

    public var imageFile: String?

    public var imageUrl: String?

    public var merchantId: String?

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
        if self.credName != nil {
            map["CredName"] = self.credName!
        }
        if self.credType != nil {
            map["CredType"] = self.credType!
        }
        if self.imageFile != nil {
            map["ImageFile"] = self.imageFile!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.merchantId != nil {
            map["MerchantId"] = self.merchantId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredName"] as? String {
            self.credName = value
        }
        if let value = dict["CredType"] as? String {
            self.credType = value
        }
        if let value = dict["ImageFile"] as? String {
            self.imageFile = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["MerchantId"] as? String {
            self.merchantId = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
    }
}

public class CredentialProductVerifyV2AdvanceRequest : Tea.TeaModel {
    public var credName: String?

    public var credType: String?

    public var imageFileObject: InputStream?

    public var imageUrl: String?

    public var merchantId: String?

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
        if self.credName != nil {
            map["CredName"] = self.credName!
        }
        if self.credType != nil {
            map["CredType"] = self.credType!
        }
        if self.imageFileObject != nil {
            map["ImageFile"] = self.imageFileObject!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.merchantId != nil {
            map["MerchantId"] = self.merchantId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredName"] as? String {
            self.credName = value
        }
        if let value = dict["CredType"] as? String {
            self.credType = value
        }
        if let value = dict["ImageFile"] as? InputStream {
            self.imageFileObject = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["MerchantId"] as? String {
            self.merchantId = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
    }
}

public class CredentialProductVerifyV2ResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var materialInfo: String?

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
            if self.materialInfo != nil {
                map["MaterialInfo"] = self.materialInfo!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MaterialInfo"] as? String {
                self.materialInfo = value
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
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: CredentialProductVerifyV2ResponseBody.ResultObject?

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
            var model = CredentialProductVerifyV2ResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class CredentialProductVerifyV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CredentialProductVerifyV2ResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CredentialProductVerifyV2ResponseBody()
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

    public var imageContext: String?

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
        if self.imageContext != nil {
            map["ImageContext"] = self.imageContext!
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
        if let value = dict["ImageContext"] as? String {
            self.imageContext = value
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

    public var imageContext: String?

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
        if self.imageContext != nil {
            map["ImageContext"] = self.imageContext!
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
        if let value = dict["ImageContext"] as? String {
            self.imageContext = value
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

    public var imageContext: String?

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
        if self.imageContext != nil {
            map["ImageContext"] = self.imageContext!
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
        if let value = dict["ImageContext"] as? String {
            self.imageContext = value
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

public class DeleteAllCustomizeFlowStrategyRequest : Tea.TeaModel {
    public var regionId: String?

    public var userId: Int64?

    public override init() {
        super.init()
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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
    }
}

public class DeleteAllCustomizeFlowStrategyResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Int32 {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class DeleteAllCustomizeFlowStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAllCustomizeFlowStrategyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteAllCustomizeFlowStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAntCloudAuthSceneRequest : Tea.TeaModel {
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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SceneId"] as? Int64 {
            self.sceneId = value
        }
    }
}

public class DeleteAntCloudAuthSceneResponseBody : Tea.TeaModel {
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

public class DeleteAntCloudAuthSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAntCloudAuthSceneResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteAntCloudAuthSceneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteBlackListStrategyRequest : Tea.TeaModel {
    public var id: Int64?

    public var productName: String?

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
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["ProductName"] as? String {
            self.productName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteBlackListStrategyResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int32?

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
        if let value = dict["Data"] as? Int32 {
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

public class DeleteBlackListStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBlackListStrategyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteBlackListStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCloudauthstSceneRequest : Tea.TeaModel {
    public var sceneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
    }
}

public class DeleteCloudauthstSceneResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resultObject: Bool?

    public override init() {
        super.init()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? Bool {
            self.resultObject = value
        }
    }
}

public class DeleteCloudauthstSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCloudauthstSceneResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteCloudauthstSceneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteControlStrategyRequest : Tea.TeaModel {
    public var apiName: String?

    public var id: Int64?

    public var productType: String?

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
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiName"] as? String {
            self.apiName = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteControlStrategyResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int32?

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
        if let value = dict["Data"] as? Int32 {
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

public class DeleteControlStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteControlStrategyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteControlStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCustomizeFlowStrategyRequest : Tea.TeaModel {
    public var apiName: String?

    public var id: Int64?

    public var productType: String?

    public var regionId: String?

    public var userId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiName != nil {
            map["ApiName"] = self.apiName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiName"] as? String {
            self.apiName = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
    }
}

public class DeleteCustomizeFlowStrategyResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Int32 {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class DeleteCustomizeFlowStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomizeFlowStrategyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteCustomizeFlowStrategyResponseBody()
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

public class DeleteSceneConfigRequest : Tea.TeaModel {
    public var sceneConfigId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sceneConfigId != nil {
            map["sceneConfigId"] = self.sceneConfigId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sceneConfigId"] as? Int64 {
            self.sceneConfigId = value
        }
    }
}

public class DeleteSceneConfigResponseBody : Tea.TeaModel {
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

public class DeleteSceneConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSceneConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteSceneConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteWhitelistSettingRequest : Tea.TeaModel {
    public var ids: String?

    public var lang: String?

    public var serviceCode: String?

    public var sourceIp: String?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ids"] as? String {
            self.ids = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
    }
}

public class DeleteWhitelistSettingResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resultObject: Bool?

    public override init() {
        super.init()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? Bool {
            self.resultObject = value
        }
    }
}

public class DeleteWhitelistSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWhitelistSettingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteWhitelistSettingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAntAndCloudAuthUserStatusResponseBody : Tea.TeaModel {
    public var antcloudauthEnabled: Bool?

    public var cloudauthEnabled: Bool?

    public var cloudauthstEnabled: Bool?

    public var inforverifyEnabled: Bool?

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
        if self.antcloudauthEnabled != nil {
            map["AntcloudauthEnabled"] = self.antcloudauthEnabled!
        }
        if self.cloudauthEnabled != nil {
            map["CloudauthEnabled"] = self.cloudauthEnabled!
        }
        if self.cloudauthstEnabled != nil {
            map["CloudauthstEnabled"] = self.cloudauthstEnabled!
        }
        if self.inforverifyEnabled != nil {
            map["InforverifyEnabled"] = self.inforverifyEnabled!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AntcloudauthEnabled"] as? Bool {
            self.antcloudauthEnabled = value
        }
        if let value = dict["CloudauthEnabled"] as? Bool {
            self.cloudauthEnabled = value
        }
        if let value = dict["CloudauthstEnabled"] as? Bool {
            self.cloudauthstEnabled = value
        }
        if let value = dict["InforverifyEnabled"] as? Bool {
            self.inforverifyEnabled = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeAntAndCloudAuthUserStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAntAndCloudAuthUserStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAntAndCloudAuthUserStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAuthVerifyRequest : Tea.TeaModel {
    public var certifyId: String?

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
        if let value = dict["SceneId"] as? Int64 {
            self.sceneId = value
        }
    }
}

public class DescribeAuthVerifyResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var materialInfo: String?

        public var spoofBackInfo: String?

        public var spoofInfo: String?

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
            if self.materialInfo != nil {
                map["MaterialInfo"] = self.materialInfo!
            }
            if self.spoofBackInfo != nil {
                map["SpoofBackInfo"] = self.spoofBackInfo!
            }
            if self.spoofInfo != nil {
                map["SpoofInfo"] = self.spoofInfo!
            }
            if self.subCode != nil {
                map["SubCode"] = self.subCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MaterialInfo"] as? String {
                self.materialInfo = value
            }
            if let value = dict["SpoofBackInfo"] as? String {
                self.spoofBackInfo = value
            }
            if let value = dict["SpoofInfo"] as? String {
                self.spoofInfo = value
            }
            if let value = dict["SubCode"] as? String {
                self.subCode = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: DescribeAuthVerifyResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
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
        if self.result != nil {
            map["Result"] = self.result?.toMap()
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
        if let value = dict["Result"] as? [String: Any?] {
            var model = DescribeAuthVerifyResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class DescribeAuthVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAuthVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAuthVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCardVerifyRequest : Tea.TeaModel {
    public var certifyId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertifyId"] as? String {
            self.certifyId = value
        }
    }
}

public class DescribeCardVerifyResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var bizCode: String?

        public var cardInfo: String?

        public var faceDetail: String?

        public var ocrCardInfo: String?

        public var pictureInfo: String?

        public override init() {
            super.init()
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
            if self.faceDetail != nil {
                map["FaceDetail"] = self.faceDetail!
            }
            if self.ocrCardInfo != nil {
                map["OcrCardInfo"] = self.ocrCardInfo!
            }
            if self.pictureInfo != nil {
                map["PictureInfo"] = self.pictureInfo!
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
            if let value = dict["FaceDetail"] as? String {
                self.faceDetail = value
            }
            if let value = dict["OcrCardInfo"] as? String {
                self.ocrCardInfo = value
            }
            if let value = dict["PictureInfo"] as? String {
                self.pictureInfo = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: DescribeCardVerifyResponseBody.ResultObject?

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
            var model = DescribeCardVerifyResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class DescribeCardVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCardVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeCardVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCloudauthstSceneListRequest : Tea.TeaModel {
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
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
    }
}

public class DescribeCloudauthstSceneListResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var gmtCreate: String?

        public var gmtModified: String?

        public var productCode: String?

        public var productName: String?

        public var sceneId: String?

        public var sceneName: String?

        public var storeImage: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            if self.sceneName != nil {
                map["SceneName"] = self.sceneName!
            }
            if self.storeImage != nil {
                map["StoreImage"] = self.storeImage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductName"] as? String {
                self.productName = value
            }
            if let value = dict["SceneId"] as? String {
                self.sceneId = value
            }
            if let value = dict["SceneName"] as? String {
                self.sceneName = value
            }
            if let value = dict["StoreImage"] as? String {
                self.storeImage = value
            }
        }
    }
    public var items: [DescribeCloudauthstSceneListResponseBody.Items]?

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
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeCloudauthstSceneListResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeCloudauthstSceneListResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeCloudauthstSceneListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCloudauthstSceneListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeCloudauthstSceneListResponseBody()
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

        public var guardRiskScore: Double?

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
            if self.guardRiskScore != nil {
                map["GuardRiskScore"] = self.guardRiskScore!
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
            if let value = dict["GuardRiskScore"] as? Double {
                self.guardRiskScore = value
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

public class DescribeInfoCheckExportRecordRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var endDate: String?

    public var pageSize: Int32?

    public var productType: String?

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
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class DescribeInfoCheckExportRecordResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var downloadDate: String?

        public var downloadTaskId: String?

        public var errorCode: String?

        public var fileName: String?

        public var fileType: String?

        public var productType: String?

        public var status: Int32?

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
            if self.downloadDate != nil {
                map["DownloadDate"] = self.downloadDate!
            }
            if self.downloadTaskId != nil {
                map["DownloadTaskId"] = self.downloadTaskId!
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.fileType != nil {
                map["FileType"] = self.fileType!
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DownloadDate"] as? String {
                self.downloadDate = value
            }
            if let value = dict["DownloadTaskId"] as? String {
                self.downloadTaskId = value
            }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["FileType"] as? String {
                self.fileType = value
            }
            if let value = dict["ProductType"] as? String {
                self.productType = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var code: String?

    public var currentPage: Int32?

    public var items: [DescribeInfoCheckExportRecordResponseBody.Items]?

    public var message: String?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

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
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeInfoCheckExportRecordResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeInfoCheckExportRecordResponseBody.Items()
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
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["TotalPage"] as? Int32 {
            self.totalPage = value
        }
    }
}

public class DescribeInfoCheckExportRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInfoCheckExportRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeInfoCheckExportRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeListAntCloudAuthScenesRequest : Tea.TeaModel {
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
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SceneId"] as? Int64 {
            self.sceneId = value
        }
    }
}

public class DescribeListAntCloudAuthScenesResponseBody : Tea.TeaModel {
    public class Scenes : Tea.TeaModel {
        public var appId: Int64?

        public var bindMiniProgram: String?

        public var createTime: String?

        public var creator: String?

        public var domain: String?

        public var miniProgramName: String?

        public var modifier: String?

        public var platform: String?

        public var returnPicCount: Int64?

        public var returnVideoLength: Int64?

        public var sceneId: Int64?

        public var sceneName: String?

        public var status: Int32?

        public var storeImage: String?

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
            if self.bindMiniProgram != nil {
                map["BindMiniProgram"] = self.bindMiniProgram!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.creator != nil {
                map["Creator"] = self.creator!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.miniProgramName != nil {
                map["MiniProgramName"] = self.miniProgramName!
            }
            if self.modifier != nil {
                map["Modifier"] = self.modifier!
            }
            if self.platform != nil {
                map["Platform"] = self.platform!
            }
            if self.returnPicCount != nil {
                map["ReturnPicCount"] = self.returnPicCount!
            }
            if self.returnVideoLength != nil {
                map["ReturnVideoLength"] = self.returnVideoLength!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            if self.sceneName != nil {
                map["SceneName"] = self.sceneName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.storeImage != nil {
                map["StoreImage"] = self.storeImage!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppId"] as? Int64 {
                self.appId = value
            }
            if let value = dict["BindMiniProgram"] as? String {
                self.bindMiniProgram = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Creator"] as? String {
                self.creator = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["MiniProgramName"] as? String {
                self.miniProgramName = value
            }
            if let value = dict["Modifier"] as? String {
                self.modifier = value
            }
            if let value = dict["Platform"] as? String {
                self.platform = value
            }
            if let value = dict["ReturnPicCount"] as? Int64 {
                self.returnPicCount = value
            }
            if let value = dict["ReturnVideoLength"] as? Int64 {
                self.returnVideoLength = value
            }
            if let value = dict["SceneId"] as? Int64 {
                self.sceneId = value
            }
            if let value = dict["SceneName"] as? String {
                self.sceneName = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["StoreImage"] as? String {
                self.storeImage = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var requestId: String?

    public var scenes: [DescribeListAntCloudAuthScenesResponseBody.Scenes]?

    public override init() {
        super.init()
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
        if self.scenes != nil {
            var tmp : [Any] = []
            for k in self.scenes! {
                tmp.append(k.toMap())
            }
            map["Scenes"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Scenes"] as? [Any?] {
            var tmp : [DescribeListAntCloudAuthScenesResponseBody.Scenes] = []
            for v in value {
                if v != nil {
                    var model = DescribeListAntCloudAuthScenesResponseBody.Scenes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.scenes = tmp
        }
    }
}

public class DescribeListAntCloudAuthScenesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeListAntCloudAuthScenesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeListAntCloudAuthScenesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeListFaceVerifyDataRequest : Tea.TeaModel {
    public var gmtEnd: Int64?

    public var gmtStart: Int64?

    public var name: String?

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
        if self.gmtEnd != nil {
            map["GmtEnd"] = self.gmtEnd!
        }
        if self.gmtStart != nil {
            map["GmtStart"] = self.gmtStart!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GmtEnd"] as? Int64 {
            self.gmtEnd = value
        }
        if let value = dict["GmtStart"] as? Int64 {
            self.gmtStart = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["SceneId"] as? Int64 {
            self.sceneId = value
        }
    }
}

public class DescribeListFaceVerifyDataResponseBody : Tea.TeaModel {
    public class MonitorData : Tea.TeaModel {
        public class FaceVerifyData : Tea.TeaModel {
            public var conDate: String?

            public var failCnt: String?

            public var name: String?

            public var sceneId: String?

            public var succCnt: String?

            public var totalCnt: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.conDate != nil {
                    map["ConDate"] = self.conDate!
                }
                if self.failCnt != nil {
                    map["FailCnt"] = self.failCnt!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.sceneId != nil {
                    map["SceneId"] = self.sceneId!
                }
                if self.succCnt != nil {
                    map["SuccCnt"] = self.succCnt!
                }
                if self.totalCnt != nil {
                    map["TotalCnt"] = self.totalCnt!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConDate"] as? String {
                    self.conDate = value
                }
                if let value = dict["FailCnt"] as? String {
                    self.failCnt = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["SceneId"] as? String {
                    self.sceneId = value
                }
                if let value = dict["SuccCnt"] as? String {
                    self.succCnt = value
                }
                if let value = dict["TotalCnt"] as? String {
                    self.totalCnt = value
                }
            }
        }
        public var faceVerifyData: [DescribeListFaceVerifyDataResponseBody.MonitorData.FaceVerifyData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.faceVerifyData != nil {
                var tmp : [Any] = []
                for k in self.faceVerifyData! {
                    tmp.append(k.toMap())
                }
                map["FaceVerifyData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FaceVerifyData"] as? [Any?] {
                var tmp : [DescribeListFaceVerifyDataResponseBody.MonitorData.FaceVerifyData] = []
                for v in value {
                    if v != nil {
                        var model = DescribeListFaceVerifyDataResponseBody.MonitorData.FaceVerifyData()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.faceVerifyData = tmp
            }
        }
    }
    public var monitorData: DescribeListFaceVerifyDataResponseBody.MonitorData?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.monitorData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.monitorData != nil {
            map["MonitorData"] = self.monitorData?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MonitorData"] as? [String: Any?] {
            var model = DescribeListFaceVerifyDataResponseBody.MonitorData()
            model.fromMap(value)
            self.monitorData = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeListFaceVerifyDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeListFaceVerifyDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeListFaceVerifyDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeListFaceVerifyInfosRequest : Tea.TeaModel {
    public var certifyId: String?

    public var gmtEnd: Int64?

    public var gmtStart: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sceneId: Int64?

    public var status: Int32?

    public override init() {
        super.init()
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
        if self.gmtEnd != nil {
            map["GmtEnd"] = self.gmtEnd!
        }
        if self.gmtStart != nil {
            map["GmtStart"] = self.gmtStart!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertifyId"] as? String {
            self.certifyId = value
        }
        if let value = dict["GmtEnd"] as? Int64 {
            self.gmtEnd = value
        }
        if let value = dict["GmtStart"] as? Int64 {
            self.gmtStart = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SceneId"] as? Int64 {
            self.sceneId = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class DescribeListFaceVerifyInfosResponseBody : Tea.TeaModel {
    public class FaceVerifyInfos : Tea.TeaModel {
        public var bizCode: String?

        public var certName: String?

        public var certNo: String?

        public var certifyId: String?

        public var createTime: String?

        public var sceneId: Int64?

        public var status: Int32?

        public override init() {
            super.init()
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
            if self.certName != nil {
                map["CertName"] = self.certName!
            }
            if self.certNo != nil {
                map["CertNo"] = self.certNo!
            }
            if self.certifyId != nil {
                map["CertifyId"] = self.certifyId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["CertName"] as? String {
                self.certName = value
            }
            if let value = dict["CertNo"] as? String {
                self.certNo = value
            }
            if let value = dict["CertifyId"] as? String {
                self.certifyId = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["SceneId"] as? Int64 {
                self.sceneId = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
        }
    }
    public var faceVerifyInfos: [DescribeListFaceVerifyInfosResponseBody.FaceVerifyInfos]?

    public var itemsPerPage: Int32?

    public var pageNumber: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var totalPages: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.faceVerifyInfos != nil {
            var tmp : [Any] = []
            for k in self.faceVerifyInfos! {
                tmp.append(k.toMap())
            }
            map["FaceVerifyInfos"] = tmp
        }
        if self.itemsPerPage != nil {
            map["ItemsPerPage"] = self.itemsPerPage!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.totalPages != nil {
            map["TotalPages"] = self.totalPages!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FaceVerifyInfos"] as? [Any?] {
            var tmp : [DescribeListFaceVerifyInfosResponseBody.FaceVerifyInfos] = []
            for v in value {
                if v != nil {
                    var model = DescribeListFaceVerifyInfosResponseBody.FaceVerifyInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.faceVerifyInfos = tmp
        }
        if let value = dict["ItemsPerPage"] as? Int32 {
            self.itemsPerPage = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["TotalPages"] as? Int32 {
            self.totalPages = value
        }
    }
}

public class DescribeListFaceVerifyInfosResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeListFaceVerifyInfosResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeListFaceVerifyInfosResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeMetaSearchPageListRequest : Tea.TeaModel {
    public var api: String?

    public var bankCard: String?

    public var bizCode: String?

    public var currentPage: Int32?

    public var endDate: Int64?

    public var identifyNum: String?

    public var ispName: String?

    public var mobile: String?

    public var pageSize: Int32?

    public var reqId: String?

    public var startDate: Int64?

    public var subCode: String?

    public var userName: String?

    public var vehicleNum: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.api != nil {
            map["Api"] = self.api!
        }
        if self.bankCard != nil {
            map["BankCard"] = self.bankCard!
        }
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.identifyNum != nil {
            map["IdentifyNum"] = self.identifyNum!
        }
        if self.ispName != nil {
            map["IspName"] = self.ispName!
        }
        if self.mobile != nil {
            map["Mobile"] = self.mobile!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.reqId != nil {
            map["ReqId"] = self.reqId!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.subCode != nil {
            map["SubCode"] = self.subCode!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.vehicleNum != nil {
            map["VehicleNum"] = self.vehicleNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Api"] as? String {
            self.api = value
        }
        if let value = dict["BankCard"] as? String {
            self.bankCard = value
        }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndDate"] as? Int64 {
            self.endDate = value
        }
        if let value = dict["IdentifyNum"] as? String {
            self.identifyNum = value
        }
        if let value = dict["IspName"] as? String {
            self.ispName = value
        }
        if let value = dict["Mobile"] as? String {
            self.mobile = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ReqId"] as? String {
            self.reqId = value
        }
        if let value = dict["StartDate"] as? Int64 {
            self.startDate = value
        }
        if let value = dict["SubCode"] as? String {
            self.subCode = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
        if let value = dict["VehicleNum"] as? String {
            self.vehicleNum = value
        }
    }
}

public class DescribeMetaSearchPageListResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Request : Tea.TeaModel {
            public var vehicleNum: String?

            public var vehicleType: String?

            public var vehicleTypeName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.vehicleNum != nil {
                    map["VehicleNum"] = self.vehicleNum!
                }
                if self.vehicleType != nil {
                    map["VehicleType"] = self.vehicleType!
                }
                if self.vehicleTypeName != nil {
                    map["VehicleTypeName"] = self.vehicleTypeName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["VehicleNum"] as? String {
                    self.vehicleNum = value
                }
                if let value = dict["VehicleType"] as? String {
                    self.vehicleType = value
                }
                if let value = dict["VehicleTypeName"] as? String {
                    self.vehicleTypeName = value
                }
            }
        }
        public class Response : Tea.TeaModel {
            public class Data : Tea.TeaModel {
                public var approvedCount: String?

                public var approvedLoad: String?

                public var axleCount: String?

                public var backWheelDistance: String?

                public var bankCard: String?

                public var bizCode: String?

                public var brand: String?

                public var color: String?

                public var displacement: String?

                public var engineNum: String?

                public var engineType: String?

                public var frontWheelDistance: String?

                public var fuelType: String?

                public var inspectionDate: String?

                public var modelNum: String?

                public var power: String?

                public var registrationDate: String?

                public var releaseDate: String?

                public var retirementDate: String?

                public var totalMass: String?

                public var type: String?

                public var unladenMass: String?

                public var useProperty: String?

                public var vehicleState: String?

                public var vin: String?

                public var wheelBase: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.approvedCount != nil {
                        map["ApprovedCount"] = self.approvedCount!
                    }
                    if self.approvedLoad != nil {
                        map["ApprovedLoad"] = self.approvedLoad!
                    }
                    if self.axleCount != nil {
                        map["AxleCount"] = self.axleCount!
                    }
                    if self.backWheelDistance != nil {
                        map["BackWheelDistance"] = self.backWheelDistance!
                    }
                    if self.bankCard != nil {
                        map["BankCard"] = self.bankCard!
                    }
                    if self.bizCode != nil {
                        map["BizCode"] = self.bizCode!
                    }
                    if self.brand != nil {
                        map["Brand"] = self.brand!
                    }
                    if self.color != nil {
                        map["Color"] = self.color!
                    }
                    if self.displacement != nil {
                        map["Displacement"] = self.displacement!
                    }
                    if self.engineNum != nil {
                        map["EngineNum"] = self.engineNum!
                    }
                    if self.engineType != nil {
                        map["EngineType"] = self.engineType!
                    }
                    if self.frontWheelDistance != nil {
                        map["FrontWheelDistance"] = self.frontWheelDistance!
                    }
                    if self.fuelType != nil {
                        map["FuelType"] = self.fuelType!
                    }
                    if self.inspectionDate != nil {
                        map["InspectionDate"] = self.inspectionDate!
                    }
                    if self.modelNum != nil {
                        map["ModelNum"] = self.modelNum!
                    }
                    if self.power != nil {
                        map["Power"] = self.power!
                    }
                    if self.registrationDate != nil {
                        map["RegistrationDate"] = self.registrationDate!
                    }
                    if self.releaseDate != nil {
                        map["ReleaseDate"] = self.releaseDate!
                    }
                    if self.retirementDate != nil {
                        map["RetirementDate"] = self.retirementDate!
                    }
                    if self.totalMass != nil {
                        map["TotalMass"] = self.totalMass!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.unladenMass != nil {
                        map["UnladenMass"] = self.unladenMass!
                    }
                    if self.useProperty != nil {
                        map["UseProperty"] = self.useProperty!
                    }
                    if self.vehicleState != nil {
                        map["VehicleState"] = self.vehicleState!
                    }
                    if self.vin != nil {
                        map["Vin"] = self.vin!
                    }
                    if self.wheelBase != nil {
                        map["WheelBase"] = self.wheelBase!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ApprovedCount"] as? String {
                        self.approvedCount = value
                    }
                    if let value = dict["ApprovedLoad"] as? String {
                        self.approvedLoad = value
                    }
                    if let value = dict["AxleCount"] as? String {
                        self.axleCount = value
                    }
                    if let value = dict["BackWheelDistance"] as? String {
                        self.backWheelDistance = value
                    }
                    if let value = dict["BankCard"] as? String {
                        self.bankCard = value
                    }
                    if let value = dict["BizCode"] as? String {
                        self.bizCode = value
                    }
                    if let value = dict["Brand"] as? String {
                        self.brand = value
                    }
                    if let value = dict["Color"] as? String {
                        self.color = value
                    }
                    if let value = dict["Displacement"] as? String {
                        self.displacement = value
                    }
                    if let value = dict["EngineNum"] as? String {
                        self.engineNum = value
                    }
                    if let value = dict["EngineType"] as? String {
                        self.engineType = value
                    }
                    if let value = dict["FrontWheelDistance"] as? String {
                        self.frontWheelDistance = value
                    }
                    if let value = dict["FuelType"] as? String {
                        self.fuelType = value
                    }
                    if let value = dict["InspectionDate"] as? String {
                        self.inspectionDate = value
                    }
                    if let value = dict["ModelNum"] as? String {
                        self.modelNum = value
                    }
                    if let value = dict["Power"] as? String {
                        self.power = value
                    }
                    if let value = dict["RegistrationDate"] as? String {
                        self.registrationDate = value
                    }
                    if let value = dict["ReleaseDate"] as? String {
                        self.releaseDate = value
                    }
                    if let value = dict["RetirementDate"] as? String {
                        self.retirementDate = value
                    }
                    if let value = dict["TotalMass"] as? String {
                        self.totalMass = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["UnladenMass"] as? String {
                        self.unladenMass = value
                    }
                    if let value = dict["UseProperty"] as? String {
                        self.useProperty = value
                    }
                    if let value = dict["VehicleState"] as? String {
                        self.vehicleState = value
                    }
                    if let value = dict["Vin"] as? String {
                        self.vin = value
                    }
                    if let value = dict["WheelBase"] as? String {
                        self.wheelBase = value
                    }
                }
            }
            public var code: String?

            public var data: DescribeMetaSearchPageListResponseBody.Items.Response.Data?

            public var message: String?

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
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["Data"] as? [String: Any?] {
                    var model = DescribeMetaSearchPageListResponseBody.Items.Response.Data()
                    model.fromMap(value)
                    self.data = model
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
            }
        }
        public var api: String?

        public var apiName: String?

        public var bankCard: String?

        public var bizCode: String?

        public var date: String?

        public var identifyNum: String?

        public var ispName: String?

        public var mobile: String?

        public var request: DescribeMetaSearchPageListResponseBody.Items.Request?

        public var requestId: String?

        public var requestJson: String?

        public var response: DescribeMetaSearchPageListResponseBody.Items.Response?

        public var responseJson: String?

        public var subCode: String?

        public var userName: String?

        public var vehicleNum: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.request?.validate()
            try self.response?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.api != nil {
                map["Api"] = self.api!
            }
            if self.apiName != nil {
                map["ApiName"] = self.apiName!
            }
            if self.bankCard != nil {
                map["BankCard"] = self.bankCard!
            }
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            if self.date != nil {
                map["Date"] = self.date!
            }
            if self.identifyNum != nil {
                map["IdentifyNum"] = self.identifyNum!
            }
            if self.ispName != nil {
                map["IspName"] = self.ispName!
            }
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.request != nil {
                map["Request"] = self.request?.toMap()
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.requestJson != nil {
                map["RequestJson"] = self.requestJson!
            }
            if self.response != nil {
                map["Response"] = self.response?.toMap()
            }
            if self.responseJson != nil {
                map["ResponseJson"] = self.responseJson!
            }
            if self.subCode != nil {
                map["SubCode"] = self.subCode!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            if self.vehicleNum != nil {
                map["VehicleNum"] = self.vehicleNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Api"] as? String {
                self.api = value
            }
            if let value = dict["ApiName"] as? String {
                self.apiName = value
            }
            if let value = dict["BankCard"] as? String {
                self.bankCard = value
            }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["Date"] as? String {
                self.date = value
            }
            if let value = dict["IdentifyNum"] as? String {
                self.identifyNum = value
            }
            if let value = dict["IspName"] as? String {
                self.ispName = value
            }
            if let value = dict["Mobile"] as? String {
                self.mobile = value
            }
            if let value = dict["Request"] as? [String: Any?] {
                var model = DescribeMetaSearchPageListResponseBody.Items.Request()
                model.fromMap(value)
                self.request = model
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["RequestJson"] as? String {
                self.requestJson = value
            }
            if let value = dict["Response"] as? [String: Any?] {
                var model = DescribeMetaSearchPageListResponseBody.Items.Response()
                model.fromMap(value)
                self.response = model
            }
            if let value = dict["ResponseJson"] as? String {
                self.responseJson = value
            }
            if let value = dict["SubCode"] as? String {
                self.subCode = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
            if let value = dict["VehicleNum"] as? String {
                self.vehicleNum = value
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribeMetaSearchPageListResponseBody.Items]?

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
            var tmp : [DescribeMetaSearchPageListResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeMetaSearchPageListResponseBody.Items()
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

public class DescribeMetaSearchPageListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMetaSearchPageListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeMetaSearchPageListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeMetaStatisticsListRequest : Tea.TeaModel {
    public var api: String?

    public var endDate: Int64?

    public var startDate: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.api != nil {
            map["Api"] = self.api!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Api"] as? String {
            self.api = value
        }
        if let value = dict["EndDate"] as? Int64 {
            self.endDate = value
        }
        if let value = dict["StartDate"] as? Int64 {
            self.startDate = value
        }
    }
}

public class DescribeMetaStatisticsListResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var api: String?

        public var apiName: String?

        public var billCount: Int64?

        public var billRate: String?

        public var chargeCount: Int64?

        public var date: String?

        public var ispName: String?

        public var noRecordCount: Int64?

        public var passedCount: Int64?

        public var passedRate: String?

        public var successCount: Int64?

        public var successRate: String?

        public var totalCount: Int64?

        public var unpassedCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.api != nil {
                map["Api"] = self.api!
            }
            if self.apiName != nil {
                map["ApiName"] = self.apiName!
            }
            if self.billCount != nil {
                map["BillCount"] = self.billCount!
            }
            if self.billRate != nil {
                map["BillRate"] = self.billRate!
            }
            if self.chargeCount != nil {
                map["ChargeCount"] = self.chargeCount!
            }
            if self.date != nil {
                map["Date"] = self.date!
            }
            if self.ispName != nil {
                map["IspName"] = self.ispName!
            }
            if self.noRecordCount != nil {
                map["NoRecordCount"] = self.noRecordCount!
            }
            if self.passedCount != nil {
                map["PassedCount"] = self.passedCount!
            }
            if self.passedRate != nil {
                map["PassedRate"] = self.passedRate!
            }
            if self.successCount != nil {
                map["SuccessCount"] = self.successCount!
            }
            if self.successRate != nil {
                map["SuccessRate"] = self.successRate!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.unpassedCount != nil {
                map["UnpassedCount"] = self.unpassedCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Api"] as? String {
                self.api = value
            }
            if let value = dict["ApiName"] as? String {
                self.apiName = value
            }
            if let value = dict["BillCount"] as? Int64 {
                self.billCount = value
            }
            if let value = dict["BillRate"] as? String {
                self.billRate = value
            }
            if let value = dict["ChargeCount"] as? Int64 {
                self.chargeCount = value
            }
            if let value = dict["Date"] as? String {
                self.date = value
            }
            if let value = dict["IspName"] as? String {
                self.ispName = value
            }
            if let value = dict["NoRecordCount"] as? Int64 {
                self.noRecordCount = value
            }
            if let value = dict["PassedCount"] as? Int64 {
                self.passedCount = value
            }
            if let value = dict["PassedRate"] as? String {
                self.passedRate = value
            }
            if let value = dict["SuccessCount"] as? Int64 {
                self.successCount = value
            }
            if let value = dict["SuccessRate"] as? String {
                self.successRate = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["UnpassedCount"] as? Int64 {
                self.unpassedCount = value
            }
        }
    }
    public var items: [DescribeMetaStatisticsListResponseBody.Items]?

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
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeMetaStatisticsListResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeMetaStatisticsListResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeMetaStatisticsListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMetaStatisticsListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeMetaStatisticsListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeMetaStatisticsPageListRequest : Tea.TeaModel {
    public var api: String?

    public var currentPage: Int32?

    public var endDate: Int64?

    public var pageSize: Int32?

    public var startDate: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.api != nil {
            map["Api"] = self.api!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Api"] as? String {
            self.api = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["EndDate"] as? Int64 {
            self.endDate = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StartDate"] as? Int64 {
            self.startDate = value
        }
    }
}

public class DescribeMetaStatisticsPageListResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var api: String?

        public var apiName: String?

        public var billCount: Int64?

        public var billRate: String?

        public var chargeCount: Int64?

        public var date: String?

        public var ispName: String?

        public var noRecordCount: Int64?

        public var passedCount: Int64?

        public var passedRate: String?

        public var successCount: Int64?

        public var successRate: String?

        public var totalCount: Int64?

        public var unpassedCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.api != nil {
                map["Api"] = self.api!
            }
            if self.apiName != nil {
                map["ApiName"] = self.apiName!
            }
            if self.billCount != nil {
                map["BillCount"] = self.billCount!
            }
            if self.billRate != nil {
                map["BillRate"] = self.billRate!
            }
            if self.chargeCount != nil {
                map["ChargeCount"] = self.chargeCount!
            }
            if self.date != nil {
                map["Date"] = self.date!
            }
            if self.ispName != nil {
                map["IspName"] = self.ispName!
            }
            if self.noRecordCount != nil {
                map["NoRecordCount"] = self.noRecordCount!
            }
            if self.passedCount != nil {
                map["PassedCount"] = self.passedCount!
            }
            if self.passedRate != nil {
                map["PassedRate"] = self.passedRate!
            }
            if self.successCount != nil {
                map["SuccessCount"] = self.successCount!
            }
            if self.successRate != nil {
                map["SuccessRate"] = self.successRate!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.unpassedCount != nil {
                map["UnpassedCount"] = self.unpassedCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Api"] as? String {
                self.api = value
            }
            if let value = dict["ApiName"] as? String {
                self.apiName = value
            }
            if let value = dict["BillCount"] as? Int64 {
                self.billCount = value
            }
            if let value = dict["BillRate"] as? String {
                self.billRate = value
            }
            if let value = dict["ChargeCount"] as? Int64 {
                self.chargeCount = value
            }
            if let value = dict["Date"] as? String {
                self.date = value
            }
            if let value = dict["IspName"] as? String {
                self.ispName = value
            }
            if let value = dict["NoRecordCount"] as? Int64 {
                self.noRecordCount = value
            }
            if let value = dict["PassedCount"] as? Int64 {
                self.passedCount = value
            }
            if let value = dict["PassedRate"] as? String {
                self.passedRate = value
            }
            if let value = dict["SuccessCount"] as? Int64 {
                self.successCount = value
            }
            if let value = dict["SuccessRate"] as? String {
                self.successRate = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["UnpassedCount"] as? Int64 {
                self.unpassedCount = value
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribeMetaStatisticsPageListResponseBody.Items]?

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
            var tmp : [DescribeMetaStatisticsPageListResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeMetaStatisticsPageListResponseBody.Items()
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

public class DescribeMetaStatisticsPageListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMetaStatisticsPageListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeMetaStatisticsPageListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeOssStatusRequest : Tea.TeaModel {
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
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
    }
}

public class DescribeOssStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bucketName: String?

        public var userStatus: String?

        public override init() {
            super.init()
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
            if self.userStatus != nil {
                map["UserStatus"] = self.userStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BucketName"] as? String {
                self.bucketName = value
            }
            if let value = dict["UserStatus"] as? String {
                self.userStatus = value
            }
        }
    }
    public var data: DescribeOssStatusResponseBody.Data?

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
            var model = DescribeOssStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeOssStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOssStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeOssStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeOssStatusV2Request : Tea.TeaModel {
    public var serviceCode: String?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
    }
}

public class DescribeOssStatusV2ResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var bucketName: String?

        public var region: String?

        public var userStatus: String?

        public override init() {
            super.init()
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
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.userStatus != nil {
                map["UserStatus"] = self.userStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BucketName"] as? String {
                self.bucketName = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["UserStatus"] as? String {
                self.userStatus = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int64?

    public var message: String?

    public var requestId: String?

    public var resultObject: DescribeOssStatusV2ResponseBody.ResultObject?

    public var success: Bool?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = DescribeOssStatusV2ResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeOssStatusV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOssStatusV2ResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeOssStatusV2ResponseBody()
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

public class DescribePageSettingResponseBody : Tea.TeaModel {
    public var failReasons: [String: Any]?

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
        if self.failReasons != nil {
            map["FailReasons"] = self.failReasons!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FailReasons"] as? [String: Any] {
            self.failReasons = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribePageSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePageSettingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePageSettingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeProductCodeResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var productCode: String?

        public var productName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductName"] as? String {
                self.productName = value
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribeProductCodeResponseBody.Items]?

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
            var tmp : [DescribeProductCodeResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeProductCodeResponseBody.Items()
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

public class DescribeProductCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProductCodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeProductCodeResponseBody()
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

public class DescribeVerifyDeviceRiskStatisticsRequest : Tea.TeaModel {
    public var endDate: Int64?

    public var productCode: String?

    public var sceneId: String?

    public var serviceCode: String?

    public var startDate: Int64?

    public override init() {
        super.init()
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
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
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
        if let value = dict["EndDate"] as? Int64 {
            self.endDate = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["StartDate"] as? Int64 {
            self.startDate = value
        }
    }
}

public class DescribeVerifyDeviceRiskStatisticsResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var dailyCallCount: Int64?

            public var date: String?

            public var deviceRiskRate: String?

            public var identityRiskRate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dailyCallCount != nil {
                    map["DailyCallCount"] = self.dailyCallCount!
                }
                if self.date != nil {
                    map["Date"] = self.date!
                }
                if self.deviceRiskRate != nil {
                    map["DeviceRiskRate"] = self.deviceRiskRate!
                }
                if self.identityRiskRate != nil {
                    map["IdentityRiskRate"] = self.identityRiskRate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DailyCallCount"] as? Int64 {
                    self.dailyCallCount = value
                }
                if let value = dict["Date"] as? String {
                    self.date = value
                }
                if let value = dict["DeviceRiskRate"] as? String {
                    self.deviceRiskRate = value
                }
                if let value = dict["IdentityRiskRate"] as? String {
                    self.identityRiskRate = value
                }
            }
        }
        public var faceAttackRate: String?

        public var idFakeRate: String?

        public var items: [DescribeVerifyDeviceRiskStatisticsResponseBody.ResultObject.Items]?

        public var riskCount: Int64?

        public var rootRate: String?

        public var simulatorRate: String?

        public var virtualVideoRate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.faceAttackRate != nil {
                map["FaceAttackRate"] = self.faceAttackRate!
            }
            if self.idFakeRate != nil {
                map["IdFakeRate"] = self.idFakeRate!
            }
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.riskCount != nil {
                map["RiskCount"] = self.riskCount!
            }
            if self.rootRate != nil {
                map["RootRate"] = self.rootRate!
            }
            if self.simulatorRate != nil {
                map["SimulatorRate"] = self.simulatorRate!
            }
            if self.virtualVideoRate != nil {
                map["VirtualVideoRate"] = self.virtualVideoRate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FaceAttackRate"] as? String {
                self.faceAttackRate = value
            }
            if let value = dict["IdFakeRate"] as? String {
                self.idFakeRate = value
            }
            if let value = dict["Items"] as? [Any?] {
                var tmp : [DescribeVerifyDeviceRiskStatisticsResponseBody.ResultObject.Items] = []
                for v in value {
                    if v != nil {
                        var model = DescribeVerifyDeviceRiskStatisticsResponseBody.ResultObject.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["RiskCount"] as? Int64 {
                self.riskCount = value
            }
            if let value = dict["RootRate"] as? String {
                self.rootRate = value
            }
            if let value = dict["SimulatorRate"] as? String {
                self.simulatorRate = value
            }
            if let value = dict["VirtualVideoRate"] as? String {
                self.virtualVideoRate = value
            }
        }
    }
    public var requestId: String?

    public var resultObject: DescribeVerifyDeviceRiskStatisticsResponseBody.ResultObject?

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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = DescribeVerifyDeviceRiskStatisticsResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class DescribeVerifyDeviceRiskStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVerifyDeviceRiskStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeVerifyDeviceRiskStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVerifyFailStatisticsRequest : Tea.TeaModel {
    public var ageGt: String?

    public var api: String?

    public var deviceType: String?

    public var endDate: Int64?

    public var productCode: String?

    public var serviceCode: String?

    public var startDate: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ageGt != nil {
            map["AgeGt"] = self.ageGt!
        }
        if self.api != nil {
            map["Api"] = self.api!
        }
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
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
        if let value = dict["AgeGt"] as? String {
            self.ageGt = value
        }
        if let value = dict["Api"] as? String {
            self.api = value
        }
        if let value = dict["DeviceType"] as? String {
            self.deviceType = value
        }
        if let value = dict["EndDate"] as? Int64 {
            self.endDate = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["StartDate"] as? Int64 {
            self.startDate = value
        }
    }
}

public class DescribeVerifyFailStatisticsResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public class Column : Tea.TeaModel {
            public class Items : Tea.TeaModel {
                public var code: String?

                public var count: Int64?

                public var rate: String?

                public override init() {
                    super.init()
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
                    if self.count != nil {
                        map["Count"] = self.count!
                    }
                    if self.rate != nil {
                        map["Rate"] = self.rate!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Code"] as? String {
                        self.code = value
                    }
                    if let value = dict["Count"] as? Int64 {
                        self.count = value
                    }
                    if let value = dict["Rate"] as? String {
                        self.rate = value
                    }
                }
            }
            public var items: [DescribeVerifyFailStatisticsResponseBody.ResultObject.Column.Items]?

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
                if self.items != nil {
                    var tmp : [Any] = []
                    for k in self.items! {
                        tmp.append(k.toMap())
                    }
                    map["Items"] = tmp
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Items"] as? [Any?] {
                    var tmp : [DescribeVerifyFailStatisticsResponseBody.ResultObject.Column.Items] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeVerifyFailStatisticsResponseBody.ResultObject.Column.Items()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.items = tmp
                }
                if let value = dict["TotalCount"] as? Int64 {
                    self.totalCount = value
                }
            }
        }
        public class Line : Tea.TeaModel {
            public class Items : Tea.TeaModel {
                public class Data : Tea.TeaModel {
                    public var code: String?

                    public var count: Int64?

                    public var date: String?

                    public override init() {
                        super.init()
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
                        if self.count != nil {
                            map["Count"] = self.count!
                        }
                        if self.date != nil {
                            map["Date"] = self.date!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Code"] as? String {
                            self.code = value
                        }
                        if let value = dict["Count"] as? Int64 {
                            self.count = value
                        }
                        if let value = dict["Date"] as? String {
                            self.date = value
                        }
                    }
                }
                public var code: String?

                public var data: [DescribeVerifyFailStatisticsResponseBody.ResultObject.Line.Items.Data]?

                public override init() {
                    super.init()
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
                        var tmp : [Any] = []
                        for k in self.data! {
                            tmp.append(k.toMap())
                        }
                        map["Data"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Code"] as? String {
                        self.code = value
                    }
                    if let value = dict["Data"] as? [Any?] {
                        var tmp : [DescribeVerifyFailStatisticsResponseBody.ResultObject.Line.Items.Data] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeVerifyFailStatisticsResponseBody.ResultObject.Line.Items.Data()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.data = tmp
                    }
                }
            }
            public var items: [DescribeVerifyFailStatisticsResponseBody.ResultObject.Line.Items]?

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
                if self.items != nil {
                    var tmp : [Any] = []
                    for k in self.items! {
                        tmp.append(k.toMap())
                    }
                    map["Items"] = tmp
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Items"] as? [Any?] {
                    var tmp : [DescribeVerifyFailStatisticsResponseBody.ResultObject.Line.Items] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeVerifyFailStatisticsResponseBody.ResultObject.Line.Items()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.items = tmp
                }
                if let value = dict["TotalCount"] as? Int64 {
                    self.totalCount = value
                }
            }
        }
        public var column: DescribeVerifyFailStatisticsResponseBody.ResultObject.Column?

        public var line: DescribeVerifyFailStatisticsResponseBody.ResultObject.Line?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.column?.validate()
            try self.line?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.column != nil {
                map["Column"] = self.column?.toMap()
            }
            if self.line != nil {
                map["Line"] = self.line?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Column"] as? [String: Any?] {
                var model = DescribeVerifyFailStatisticsResponseBody.ResultObject.Column()
                model.fromMap(value)
                self.column = model
            }
            if let value = dict["Line"] as? [String: Any?] {
                var model = DescribeVerifyFailStatisticsResponseBody.ResultObject.Line()
                model.fromMap(value)
                self.line = model
            }
        }
    }
    public var requestId: String?

    public var resultObject: DescribeVerifyFailStatisticsResponseBody.ResultObject?

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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = DescribeVerifyFailStatisticsResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class DescribeVerifyFailStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVerifyFailStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeVerifyFailStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVerifyPersonasDeviceModelStatisticsRequest : Tea.TeaModel {
    public var productCode: String?

    public var sceneId: Int64?

    public var serviceCode: String?

    public var timeRange: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.timeRange != nil {
            map["TimeRange"] = self.timeRange!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["SceneId"] as? Int64 {
            self.sceneId = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["TimeRange"] as? String {
            self.timeRange = value
        }
    }
}

public class DescribeVerifyPersonasDeviceModelStatisticsResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var deviceCnt: Int64?

            public var deviceModel: String?

            public var deviceRate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.deviceCnt != nil {
                    map["DeviceCnt"] = self.deviceCnt!
                }
                if self.deviceModel != nil {
                    map["DeviceModel"] = self.deviceModel!
                }
                if self.deviceRate != nil {
                    map["DeviceRate"] = self.deviceRate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DeviceCnt"] as? Int64 {
                    self.deviceCnt = value
                }
                if let value = dict["DeviceModel"] as? String {
                    self.deviceModel = value
                }
                if let value = dict["DeviceRate"] as? String {
                    self.deviceRate = value
                }
            }
        }
        public var allDeviceCnt: Int64?

        public var items: [DescribeVerifyPersonasDeviceModelStatisticsResponseBody.ResultObject.Items]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allDeviceCnt != nil {
                map["AllDeviceCnt"] = self.allDeviceCnt!
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
            if let value = dict["AllDeviceCnt"] as? Int64 {
                self.allDeviceCnt = value
            }
            if let value = dict["Items"] as? [Any?] {
                var tmp : [DescribeVerifyPersonasDeviceModelStatisticsResponseBody.ResultObject.Items] = []
                for v in value {
                    if v != nil {
                        var model = DescribeVerifyPersonasDeviceModelStatisticsResponseBody.ResultObject.Items()
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
    public var requestId: String?

    public var resultObject: DescribeVerifyPersonasDeviceModelStatisticsResponseBody.ResultObject?

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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = DescribeVerifyPersonasDeviceModelStatisticsResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class DescribeVerifyPersonasDeviceModelStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVerifyPersonasDeviceModelStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeVerifyPersonasDeviceModelStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVerifyPersonasOsStatisticsRequest : Tea.TeaModel {
    public var productCode: String?

    public var sceneId: Int64?

    public var serviceCode: String?

    public var timeRange: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.timeRange != nil {
            map["TimeRange"] = self.timeRange!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["SceneId"] as? Int64 {
            self.sceneId = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["TimeRange"] as? String {
            self.timeRange = value
        }
    }
}

public class DescribeVerifyPersonasOsStatisticsResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var allDeviceCnt: Int64?

        public var deviceAndroidCnt: Int64?

        public var deviceAndroidRate: String?

        public var deviceIosCnt: Int64?

        public var deviceIosRate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allDeviceCnt != nil {
                map["AllDeviceCnt"] = self.allDeviceCnt!
            }
            if self.deviceAndroidCnt != nil {
                map["DeviceAndroidCnt"] = self.deviceAndroidCnt!
            }
            if self.deviceAndroidRate != nil {
                map["DeviceAndroidRate"] = self.deviceAndroidRate!
            }
            if self.deviceIosCnt != nil {
                map["DeviceIosCnt"] = self.deviceIosCnt!
            }
            if self.deviceIosRate != nil {
                map["DeviceIosRate"] = self.deviceIosRate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllDeviceCnt"] as? Int64 {
                self.allDeviceCnt = value
            }
            if let value = dict["DeviceAndroidCnt"] as? Int64 {
                self.deviceAndroidCnt = value
            }
            if let value = dict["DeviceAndroidRate"] as? String {
                self.deviceAndroidRate = value
            }
            if let value = dict["DeviceIosCnt"] as? Int64 {
                self.deviceIosCnt = value
            }
            if let value = dict["DeviceIosRate"] as? String {
                self.deviceIosRate = value
            }
        }
    }
    public var requestId: String?

    public var resultObject: DescribeVerifyPersonasOsStatisticsResponseBody.ResultObject?

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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = DescribeVerifyPersonasOsStatisticsResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class DescribeVerifyPersonasOsStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVerifyPersonasOsStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeVerifyPersonasOsStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVerifyPersonasProvinceStatisticsRequest : Tea.TeaModel {
    public var productCode: String?

    public var sceneId: Int64?

    public var serviceCode: String?

    public var timeRange: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.timeRange != nil {
            map["TimeRange"] = self.timeRange!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["SceneId"] as? Int64 {
            self.sceneId = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["TimeRange"] as? String {
            self.timeRange = value
        }
    }
}

public class DescribeVerifyPersonasProvinceStatisticsResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var provinceCnt: Int64?

            public var provinceName: String?

            public var provinceRate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.provinceCnt != nil {
                    map["ProvinceCnt"] = self.provinceCnt!
                }
                if self.provinceName != nil {
                    map["ProvinceName"] = self.provinceName!
                }
                if self.provinceRate != nil {
                    map["ProvinceRate"] = self.provinceRate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ProvinceCnt"] as? Int64 {
                    self.provinceCnt = value
                }
                if let value = dict["ProvinceName"] as? String {
                    self.provinceName = value
                }
                if let value = dict["ProvinceRate"] as? String {
                    self.provinceRate = value
                }
            }
        }
        public var allUserCnt: Int64?

        public var items: [DescribeVerifyPersonasProvinceStatisticsResponseBody.ResultObject.Items]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allUserCnt != nil {
                map["AllUserCnt"] = self.allUserCnt!
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
            if let value = dict["AllUserCnt"] as? Int64 {
                self.allUserCnt = value
            }
            if let value = dict["Items"] as? [Any?] {
                var tmp : [DescribeVerifyPersonasProvinceStatisticsResponseBody.ResultObject.Items] = []
                for v in value {
                    if v != nil {
                        var model = DescribeVerifyPersonasProvinceStatisticsResponseBody.ResultObject.Items()
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
    public var requestId: String?

    public var resultObject: DescribeVerifyPersonasProvinceStatisticsResponseBody.ResultObject?

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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = DescribeVerifyPersonasProvinceStatisticsResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class DescribeVerifyPersonasProvinceStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVerifyPersonasProvinceStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeVerifyPersonasProvinceStatisticsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVerifyPersonasSexStatisticsRequest : Tea.TeaModel {
    public var productCode: String?

    public var sceneId: Int64?

    public var serviceCode: String?

    public var timeRange: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.timeRange != nil {
            map["TimeRange"] = self.timeRange!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["SceneId"] as? Int64 {
            self.sceneId = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["TimeRange"] as? String {
            self.timeRange = value
        }
    }
}

public class DescribeVerifyPersonasSexStatisticsResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var age0To14Cnt: Int64?

        public var age0To14Rate: String?

        public var age14To18Cnt: Int64?

        public var age14To18Rate: String?

        public var age18To35Cnt: Int64?

        public var age18To35Rate: String?

        public var age35To50Cnt: Int64?

        public var age35To50Rate: String?

        public var age50To999Cnt: Int64?

        public var age50To999Rate: String?

        public var allUserCnt: Int64?

        public var femaleCnt: Int64?

        public var femaleRate: String?

        public var maleCnt: Int64?

        public var maleRate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.age0To14Cnt != nil {
                map["Age0To14Cnt"] = self.age0To14Cnt!
            }
            if self.age0To14Rate != nil {
                map["Age0To14Rate"] = self.age0To14Rate!
            }
            if self.age14To18Cnt != nil {
                map["Age14To18Cnt"] = self.age14To18Cnt!
            }
            if self.age14To18Rate != nil {
                map["Age14To18Rate"] = self.age14To18Rate!
            }
            if self.age18To35Cnt != nil {
                map["Age18To35Cnt"] = self.age18To35Cnt!
            }
            if self.age18To35Rate != nil {
                map["Age18To35Rate"] = self.age18To35Rate!
            }
            if self.age35To50Cnt != nil {
                map["Age35To50Cnt"] = self.age35To50Cnt!
            }
            if self.age35To50Rate != nil {
                map["Age35To50Rate"] = self.age35To50Rate!
            }
            if self.age50To999Cnt != nil {
                map["Age50To999Cnt"] = self.age50To999Cnt!
            }
            if self.age50To999Rate != nil {
                map["Age50To999Rate"] = self.age50To999Rate!
            }
            if self.allUserCnt != nil {
                map["AllUserCnt"] = self.allUserCnt!
            }
            if self.femaleCnt != nil {
                map["FemaleCnt"] = self.femaleCnt!
            }
            if self.femaleRate != nil {
                map["FemaleRate"] = self.femaleRate!
            }
            if self.maleCnt != nil {
                map["MaleCnt"] = self.maleCnt!
            }
            if self.maleRate != nil {
                map["MaleRate"] = self.maleRate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Age0To14Cnt"] as? Int64 {
                self.age0To14Cnt = value
            }
            if let value = dict["Age0To14Rate"] as? String {
                self.age0To14Rate = value
            }
            if let value = dict["Age14To18Cnt"] as? Int64 {
                self.age14To18Cnt = value
            }
            if let value = dict["Age14To18Rate"] as? String {
                self.age14To18Rate = value
            }
            if let value = dict["Age18To35Cnt"] as? Int64 {
                self.age18To35Cnt = value
            }
            if let value = dict["Age18To35Rate"] as? String {
                self.age18To35Rate = value
            }
            if let value = dict["Age35To50Cnt"] as? Int64 {
                self.age35To50Cnt = value
            }
            if let value = dict["Age35To50Rate"] as? String {
                self.age35To50Rate = value
            }
            if let value = dict["Age50To999Cnt"] as? Int64 {
                self.age50To999Cnt = value
            }
            if let value = dict["Age50To999Rate"] as? String {
                self.age50To999Rate = value
            }
            if let value = dict["AllUserCnt"] as? Int64 {
                self.allUserCnt = value
            }
            if let value = dict["FemaleCnt"] as? Int64 {
                self.femaleCnt = value
            }
            if let value = dict["FemaleRate"] as? String {
                self.femaleRate = value
            }
            if let value = dict["MaleCnt"] as? Int64 {
                self.maleCnt = value
            }
            if let value = dict["MaleRate"] as? String {
                self.maleRate = value
            }
        }
    }
    public var requestId: String?

    public var resultObject: DescribeVerifyPersonasSexStatisticsResponseBody.ResultObject?

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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = DescribeVerifyPersonasSexStatisticsResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class DescribeVerifyPersonasSexStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVerifyPersonasSexStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeVerifyPersonasSexStatisticsResponseBody()
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

public class DescribeVerifySearchPageListRequest : Tea.TeaModel {
    public var certNo: String?

    public var certifyId: String?

    public var currentPage: String?

    public var endDate: String?

    public var hasDeviceRisk: Bool?

    public var model: String?

    public var outerOrderNo: String?

    public var pageSize: String?

    public var passed: String?

    public var productCode: String?

    public var root: Int32?

    public var sceneId: String?

    public var simulator: Int32?

    public var startDate: String?

    public var subCode: String?

    public var subCodes: String?

    public var virtualVideo: Int32?

    public override init() {
        super.init()
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
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.hasDeviceRisk != nil {
            map["HasDeviceRisk"] = self.hasDeviceRisk!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.outerOrderNo != nil {
            map["OuterOrderNo"] = self.outerOrderNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.passed != nil {
            map["Passed"] = self.passed!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.root != nil {
            map["Root"] = self.root!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.simulator != nil {
            map["Simulator"] = self.simulator!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.subCode != nil {
            map["SubCode"] = self.subCode!
        }
        if self.subCodes != nil {
            map["SubCodes"] = self.subCodes!
        }
        if self.virtualVideo != nil {
            map["VirtualVideo"] = self.virtualVideo!
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
        if let value = dict["CurrentPage"] as? String {
            self.currentPage = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["HasDeviceRisk"] as? Bool {
            self.hasDeviceRisk = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["OuterOrderNo"] as? String {
            self.outerOrderNo = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["Passed"] as? String {
            self.passed = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["Root"] as? Int32 {
            self.root = value
        }
        if let value = dict["SceneId"] as? String {
            self.sceneId = value
        }
        if let value = dict["Simulator"] as? Int32 {
            self.simulator = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["SubCode"] as? String {
            self.subCode = value
        }
        if let value = dict["SubCodes"] as? String {
            self.subCodes = value
        }
        if let value = dict["VirtualVideo"] as? Int32 {
            self.virtualVideo = value
        }
    }
}

public class DescribeVerifySearchPageListResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class ExtInfo : Tea.TeaModel {
            public var certName: String?

            public var deviceRisk: String?

            public var faceAttack: String?

            public var faceAttackScore: Double?

            public var faceOcclusion: String?

            public var idCardVerifyScore: Double?

            public var ossBucketName: String?

            public var ossIdFaceObjectName: String?

            public var ossIdNationalEmblemObjectName: String?

            public var ossObjectName: String?

            public var qualityScore: Double?

            public var verifyScore: Double?

            public var asrTexts: [String]?

            public var screenVideoObjectNames: [String]?

            public var voiceObjectNames: [String]?

            public override init() {
                super.init()
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
                if self.deviceRisk != nil {
                    map["DeviceRisk"] = self.deviceRisk!
                }
                if self.faceAttack != nil {
                    map["FaceAttack"] = self.faceAttack!
                }
                if self.faceAttackScore != nil {
                    map["FaceAttackScore"] = self.faceAttackScore!
                }
                if self.faceOcclusion != nil {
                    map["FaceOcclusion"] = self.faceOcclusion!
                }
                if self.idCardVerifyScore != nil {
                    map["IdCardVerifyScore"] = self.idCardVerifyScore!
                }
                if self.ossBucketName != nil {
                    map["OssBucketName"] = self.ossBucketName!
                }
                if self.ossIdFaceObjectName != nil {
                    map["OssIdFaceObjectName"] = self.ossIdFaceObjectName!
                }
                if self.ossIdNationalEmblemObjectName != nil {
                    map["OssIdNationalEmblemObjectName"] = self.ossIdNationalEmblemObjectName!
                }
                if self.ossObjectName != nil {
                    map["OssObjectName"] = self.ossObjectName!
                }
                if self.qualityScore != nil {
                    map["QualityScore"] = self.qualityScore!
                }
                if self.verifyScore != nil {
                    map["VerifyScore"] = self.verifyScore!
                }
                if self.asrTexts != nil {
                    map["asrTexts"] = self.asrTexts!
                }
                if self.screenVideoObjectNames != nil {
                    map["screenVideoObjectNames"] = self.screenVideoObjectNames!
                }
                if self.voiceObjectNames != nil {
                    map["voiceObjectNames"] = self.voiceObjectNames!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CertName"] as? String {
                    self.certName = value
                }
                if let value = dict["DeviceRisk"] as? String {
                    self.deviceRisk = value
                }
                if let value = dict["FaceAttack"] as? String {
                    self.faceAttack = value
                }
                if let value = dict["FaceAttackScore"] as? Double {
                    self.faceAttackScore = value
                }
                if let value = dict["FaceOcclusion"] as? String {
                    self.faceOcclusion = value
                }
                if let value = dict["IdCardVerifyScore"] as? Double {
                    self.idCardVerifyScore = value
                }
                if let value = dict["OssBucketName"] as? String {
                    self.ossBucketName = value
                }
                if let value = dict["OssIdFaceObjectName"] as? String {
                    self.ossIdFaceObjectName = value
                }
                if let value = dict["OssIdNationalEmblemObjectName"] as? String {
                    self.ossIdNationalEmblemObjectName = value
                }
                if let value = dict["OssObjectName"] as? String {
                    self.ossObjectName = value
                }
                if let value = dict["QualityScore"] as? Double {
                    self.qualityScore = value
                }
                if let value = dict["VerifyScore"] as? Double {
                    self.verifyScore = value
                }
                if let value = dict["asrTexts"] as? [String] {
                    self.asrTexts = value
                }
                if let value = dict["screenVideoObjectNames"] as? [String] {
                    self.screenVideoObjectNames = value
                }
                if let value = dict["voiceObjectNames"] as? [String] {
                    self.voiceObjectNames = value
                }
            }
        }
        public var certNo: String?

        public var certifyId: String?

        public var extInfo: DescribeVerifySearchPageListResponseBody.Items.ExtInfo?

        public var gmtVerify: String?

        public var model: String?

        public var outerOrderNo: String?

        public var passed: String?

        public var productCode: String?

        public var root: Int32?

        public var sceneId: Int64?

        public var simulator: Int32?

        public var subCode: String?

        public var userId: String?

        public var virtualVideo: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.extInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certNo != nil {
                map["CertNo"] = self.certNo!
            }
            if self.certifyId != nil {
                map["CertifyId"] = self.certifyId!
            }
            if self.extInfo != nil {
                map["ExtInfo"] = self.extInfo?.toMap()
            }
            if self.gmtVerify != nil {
                map["GmtVerify"] = self.gmtVerify!
            }
            if self.model != nil {
                map["Model"] = self.model!
            }
            if self.outerOrderNo != nil {
                map["OuterOrderNo"] = self.outerOrderNo!
            }
            if self.passed != nil {
                map["Passed"] = self.passed!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.root != nil {
                map["Root"] = self.root!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            if self.simulator != nil {
                map["Simulator"] = self.simulator!
            }
            if self.subCode != nil {
                map["SubCode"] = self.subCode!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.virtualVideo != nil {
                map["VirtualVideo"] = self.virtualVideo!
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
            if let value = dict["ExtInfo"] as? [String: Any?] {
                var model = DescribeVerifySearchPageListResponseBody.Items.ExtInfo()
                model.fromMap(value)
                self.extInfo = model
            }
            if let value = dict["GmtVerify"] as? String {
                self.gmtVerify = value
            }
            if let value = dict["Model"] as? String {
                self.model = value
            }
            if let value = dict["OuterOrderNo"] as? String {
                self.outerOrderNo = value
            }
            if let value = dict["Passed"] as? String {
                self.passed = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["Root"] as? Int32 {
                self.root = value
            }
            if let value = dict["SceneId"] as? Int64 {
                self.sceneId = value
            }
            if let value = dict["Simulator"] as? Int32 {
                self.simulator = value
            }
            if let value = dict["SubCode"] as? String {
                self.subCode = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["VirtualVideo"] as? Int32 {
                self.virtualVideo = value
            }
        }
    }
    public var currentPage: Int32?

    public var items: [DescribeVerifySearchPageListResponseBody.Items]?

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
            var tmp : [DescribeVerifySearchPageListResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeVerifySearchPageListResponseBody.Items()
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

public class DescribeVerifySearchPageListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVerifySearchPageListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeVerifySearchPageListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVerifyStatisticsRequest : Tea.TeaModel {
    public var ageGt: String?

    public var endDate: Int64?

    public var productCode: String?

    public var serviceCode: String?

    public var startDate: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ageGt != nil {
            map["AgeGt"] = self.ageGt!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
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
        if let value = dict["AgeGt"] as? String {
            self.ageGt = value
        }
        if let value = dict["EndDate"] as? Int64 {
            self.endDate = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ServiceCode"] as? String {
            self.serviceCode = value
        }
        if let value = dict["StartDate"] as? Int64 {
            self.startDate = value
        }
    }
}

public class DescribeVerifyStatisticsResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var date: String?

            public var initDevicePassRate: String?

            public var initService: Int64?

            public var initServiceConversionRate: String?

            public var initServicePassRate: String?

            public var passRate: String?

            public override init() {
                super.init()
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
                if self.initDevicePassRate != nil {
                    map["InitDevicePassRate"] = self.initDevicePassRate!
                }
                if self.initService != nil {
                    map["InitService"] = self.initService!
                }
                if self.initServiceConversionRate != nil {
                    map["InitServiceConversionRate"] = self.initServiceConversionRate!
                }
                if self.initServicePassRate != nil {
                    map["InitServicePassRate"] = self.initServicePassRate!
                }
                if self.passRate != nil {
                    map["PassRate"] = self.passRate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Date"] as? String {
                    self.date = value
                }
                if let value = dict["InitDevicePassRate"] as? String {
                    self.initDevicePassRate = value
                }
                if let value = dict["InitService"] as? Int64 {
                    self.initService = value
                }
                if let value = dict["InitServiceConversionRate"] as? String {
                    self.initServiceConversionRate = value
                }
                if let value = dict["InitServicePassRate"] as? String {
                    self.initServicePassRate = value
                }
                if let value = dict["PassRate"] as? String {
                    self.passRate = value
                }
            }
        }
        public var initDevice: Int64?

        public var initDeviceId: Int64?

        public var initDeviceIdSuccess: Int64?

        public var initDeviceSuccess: Int64?

        public var initService: Int64?

        public var initServiceId: Int64?

        public var initServiceIdSuccess: Int64?

        public var initServiceSuccess: Int64?

        public var items: [DescribeVerifyStatisticsResponseBody.ResultObject.Items]?

        public var verifyDevice: Int64?

        public var verifyDeviceId: Int64?

        public var verifyDeviceIdSuccess: Int64?

        public var verifyDeviceIdSuccessPassed: Int64?

        public var verifyDeviceSuccess: Int64?

        public var verifyDeviceSuccessPassed: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.initDevice != nil {
                map["InitDevice"] = self.initDevice!
            }
            if self.initDeviceId != nil {
                map["InitDeviceId"] = self.initDeviceId!
            }
            if self.initDeviceIdSuccess != nil {
                map["InitDeviceIdSuccess"] = self.initDeviceIdSuccess!
            }
            if self.initDeviceSuccess != nil {
                map["InitDeviceSuccess"] = self.initDeviceSuccess!
            }
            if self.initService != nil {
                map["InitService"] = self.initService!
            }
            if self.initServiceId != nil {
                map["InitServiceId"] = self.initServiceId!
            }
            if self.initServiceIdSuccess != nil {
                map["InitServiceIdSuccess"] = self.initServiceIdSuccess!
            }
            if self.initServiceSuccess != nil {
                map["InitServiceSuccess"] = self.initServiceSuccess!
            }
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.verifyDevice != nil {
                map["VerifyDevice"] = self.verifyDevice!
            }
            if self.verifyDeviceId != nil {
                map["VerifyDeviceId"] = self.verifyDeviceId!
            }
            if self.verifyDeviceIdSuccess != nil {
                map["VerifyDeviceIdSuccess"] = self.verifyDeviceIdSuccess!
            }
            if self.verifyDeviceIdSuccessPassed != nil {
                map["VerifyDeviceIdSuccessPassed"] = self.verifyDeviceIdSuccessPassed!
            }
            if self.verifyDeviceSuccess != nil {
                map["VerifyDeviceSuccess"] = self.verifyDeviceSuccess!
            }
            if self.verifyDeviceSuccessPassed != nil {
                map["VerifyDeviceSuccessPassed"] = self.verifyDeviceSuccessPassed!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InitDevice"] as? Int64 {
                self.initDevice = value
            }
            if let value = dict["InitDeviceId"] as? Int64 {
                self.initDeviceId = value
            }
            if let value = dict["InitDeviceIdSuccess"] as? Int64 {
                self.initDeviceIdSuccess = value
            }
            if let value = dict["InitDeviceSuccess"] as? Int64 {
                self.initDeviceSuccess = value
            }
            if let value = dict["InitService"] as? Int64 {
                self.initService = value
            }
            if let value = dict["InitServiceId"] as? Int64 {
                self.initServiceId = value
            }
            if let value = dict["InitServiceIdSuccess"] as? Int64 {
                self.initServiceIdSuccess = value
            }
            if let value = dict["InitServiceSuccess"] as? Int64 {
                self.initServiceSuccess = value
            }
            if let value = dict["Items"] as? [Any?] {
                var tmp : [DescribeVerifyStatisticsResponseBody.ResultObject.Items] = []
                for v in value {
                    if v != nil {
                        var model = DescribeVerifyStatisticsResponseBody.ResultObject.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["VerifyDevice"] as? Int64 {
                self.verifyDevice = value
            }
            if let value = dict["VerifyDeviceId"] as? Int64 {
                self.verifyDeviceId = value
            }
            if let value = dict["VerifyDeviceIdSuccess"] as? Int64 {
                self.verifyDeviceIdSuccess = value
            }
            if let value = dict["VerifyDeviceIdSuccessPassed"] as? Int64 {
                self.verifyDeviceIdSuccessPassed = value
            }
            if let value = dict["VerifyDeviceSuccess"] as? Int64 {
                self.verifyDeviceSuccess = value
            }
            if let value = dict["VerifyDeviceSuccessPassed"] as? Int64 {
                self.verifyDeviceSuccessPassed = value
            }
        }
    }
    public var requestId: String?

    public var resultObject: DescribeVerifyStatisticsResponseBody.ResultObject?

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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? [String: Any?] {
            var model = DescribeVerifyStatisticsResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class DescribeVerifyStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVerifyStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeVerifyStatisticsResponseBody()
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

public class DescribeWhitelistSettingRequest : Tea.TeaModel {
    public var certNo: String?

    public var certifyId: String?

    public var currentPage: Int32?

    public var lang: String?

    public var pageSize: Int32?

    public var sceneId: Int64?

    public var serviceCode: String?

    public var sourceIp: String?

    public var status: String?

    public var validEndDate: Int64?

    public var validStartDate: Int64?

    public override init() {
        super.init()
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
        if self.lang != nil {
            map["Lang"] = self.lang!
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
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
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
        if let value = dict["Lang"] as? String {
            self.lang = value
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
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["ValidEndDate"] as? Int64 {
            self.validEndDate = value
        }
        if let value = dict["ValidStartDate"] as? Int64 {
            self.validStartDate = value
        }
    }
}

public class DescribeWhitelistSettingResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var certNo: String?

        public var certifyId: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var remark: String?

        public var sceneId: Int64?

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
    public var currentPage: Int32?

    public var items: [DescribeWhitelistSettingResponseBody.Items]?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeWhitelistSettingResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeWhitelistSettingResponseBody.Items()
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
    }
}

public class DescribeWhitelistSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWhitelistSettingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeWhitelistSettingResponseBody()
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

public class DownloadVerifyRecordsRequest : Tea.TeaModel {
    public var bizParam: String?

    public var productType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizParam != nil {
            map["BizParam"] = self.bizParam!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizParam"] as? String {
            self.bizParam = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
    }
}

public class DownloadVerifyRecordsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resultObject: String?

    public override init() {
        super.init()
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
        if self.resultObject != nil {
            map["ResultObject"] = self.resultObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? String {
            self.resultObject = value
        }
    }
}

public class DownloadVerifyRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DownloadVerifyRecordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DownloadVerifyRecordsResponseBody()
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

public class Id3MetaVerifyRequest : Tea.TeaModel {
    public var crop: String?

    public var faceFile: String?

    public var faceUrl: String?

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
        if self.crop != nil {
            map["Crop"] = self.crop!
        }
        if self.faceFile != nil {
            map["FaceFile"] = self.faceFile!
        }
        if self.faceUrl != nil {
            map["FaceUrl"] = self.faceUrl!
        }
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
        if let value = dict["Crop"] as? String {
            self.crop = value
        }
        if let value = dict["FaceFile"] as? String {
            self.faceFile = value
        }
        if let value = dict["FaceUrl"] as? String {
            self.faceUrl = value
        }
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

public class Id3MetaVerifyAdvanceRequest : Tea.TeaModel {
    public var crop: String?

    public var faceFileObject: InputStream?

    public var faceUrl: String?

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
        if self.crop != nil {
            map["Crop"] = self.crop!
        }
        if self.faceFileObject != nil {
            map["FaceFile"] = self.faceFileObject!
        }
        if self.faceUrl != nil {
            map["FaceUrl"] = self.faceUrl!
        }
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
        if let value = dict["Crop"] as? String {
            self.crop = value
        }
        if let value = dict["FaceFile"] as? InputStream {
            self.faceFileObject = value
        }
        if let value = dict["FaceUrl"] as? String {
            self.faceUrl = value
        }
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

public class Id3MetaVerifyResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var bizCode: String?

        public var faceDetail: String?

        public override init() {
            super.init()
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
            if self.faceDetail != nil {
                map["FaceDetail"] = self.faceDetail!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["FaceDetail"] as? String {
                self.faceDetail = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: Id3MetaVerifyResponseBody.ResultObject?

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
            var model = Id3MetaVerifyResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class Id3MetaVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Id3MetaVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Id3MetaVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class Id3MetaVerifyWithOCRRequest : Tea.TeaModel {
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

public class Id3MetaVerifyWithOCRAdvanceRequest : Tea.TeaModel {
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

public class Id3MetaVerifyWithOCRResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var bizCode: String?

        public var cardInfo: String?

        public var faceDetail: String?

        public override init() {
            super.init()
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
            if self.faceDetail != nil {
                map["FaceDetail"] = self.faceDetail!
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
            if let value = dict["FaceDetail"] as? String {
                self.faceDetail = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: Id3MetaVerifyWithOCRResponseBody.ResultObject?

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
            var model = Id3MetaVerifyWithOCRResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class Id3MetaVerifyWithOCRResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Id3MetaVerifyWithOCRResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Id3MetaVerifyWithOCRResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InitAuthVerifyRequest : Tea.TeaModel {
    public var callbackToken: String?

    public var callbackUrl: String?

    public var cardPageNumber: String?

    public var cardType: String?

    public var docScanMode: String?

    public var idSpoof: String?

    public var metaInfo: String?

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
        if self.callbackToken != nil {
            map["CallbackToken"] = self.callbackToken!
        }
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.cardPageNumber != nil {
            map["CardPageNumber"] = self.cardPageNumber!
        }
        if self.cardType != nil {
            map["CardType"] = self.cardType!
        }
        if self.docScanMode != nil {
            map["DocScanMode"] = self.docScanMode!
        }
        if self.idSpoof != nil {
            map["IdSpoof"] = self.idSpoof!
        }
        if self.metaInfo != nil {
            map["MetaInfo"] = self.metaInfo!
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
        if let value = dict["CallbackToken"] as? String {
            self.callbackToken = value
        }
        if let value = dict["CallbackUrl"] as? String {
            self.callbackUrl = value
        }
        if let value = dict["CardPageNumber"] as? String {
            self.cardPageNumber = value
        }
        if let value = dict["CardType"] as? String {
            self.cardType = value
        }
        if let value = dict["DocScanMode"] as? String {
            self.docScanMode = value
        }
        if let value = dict["IdSpoof"] as? String {
            self.idSpoof = value
        }
        if let value = dict["MetaInfo"] as? String {
            self.metaInfo = value
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

public class InitAuthVerifyResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var certifyId: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertifyId"] as? String {
                self.certifyId = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: InitAuthVerifyResponseBody.Result?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
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
        if self.result != nil {
            map["Result"] = self.result?.toMap()
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
        if let value = dict["Result"] as? [String: Any?] {
            var model = InitAuthVerifyResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class InitAuthVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InitAuthVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = InitAuthVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InitCardVerifyRequest : Tea.TeaModel {
    public var callbackToken: String?

    public var callbackUrl: String?

    public var cardPageNumber: String?

    public var cardType: String?

    public var docScanMode: String?

    public var merchantBizId: String?

    public var metaInfo: String?

    public var model: String?

    public var pictureSave: String?

    public var verifyMeta: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callbackToken != nil {
            map["CallbackToken"] = self.callbackToken!
        }
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.cardPageNumber != nil {
            map["CardPageNumber"] = self.cardPageNumber!
        }
        if self.cardType != nil {
            map["CardType"] = self.cardType!
        }
        if self.docScanMode != nil {
            map["DocScanMode"] = self.docScanMode!
        }
        if self.merchantBizId != nil {
            map["MerchantBizId"] = self.merchantBizId!
        }
        if self.metaInfo != nil {
            map["MetaInfo"] = self.metaInfo!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.pictureSave != nil {
            map["PictureSave"] = self.pictureSave!
        }
        if self.verifyMeta != nil {
            map["VerifyMeta"] = self.verifyMeta!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallbackToken"] as? String {
            self.callbackToken = value
        }
        if let value = dict["CallbackUrl"] as? String {
            self.callbackUrl = value
        }
        if let value = dict["CardPageNumber"] as? String {
            self.cardPageNumber = value
        }
        if let value = dict["CardType"] as? String {
            self.cardType = value
        }
        if let value = dict["DocScanMode"] as? String {
            self.docScanMode = value
        }
        if let value = dict["MerchantBizId"] as? String {
            self.merchantBizId = value
        }
        if let value = dict["MetaInfo"] as? String {
            self.metaInfo = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["PictureSave"] as? String {
            self.pictureSave = value
        }
        if let value = dict["VerifyMeta"] as? String {
            self.verifyMeta = value
        }
    }
}

public class InitCardVerifyResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var certifyId: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertifyId"] as? String {
                self.certifyId = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: InitCardVerifyResponseBody.ResultObject?

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
            var model = InitCardVerifyResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class InitCardVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InitCardVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = InitCardVerifyResponseBody()
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

    public var h5DegradeConfirmBtn: String?

    public var ip: String?

    public var metaInfo: String?

    public var mobile: String?

    public var mode: String?

    public var model: String?

    public var needMultiFaceCheck: String?

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
        if self.h5DegradeConfirmBtn != nil {
            map["H5DegradeConfirmBtn"] = self.h5DegradeConfirmBtn!
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
        if self.needMultiFaceCheck != nil {
            map["NeedMultiFaceCheck"] = self.needMultiFaceCheck!
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
        if let value = dict["H5DegradeConfirmBtn"] as? String {
            self.h5DegradeConfirmBtn = value
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
        if let value = dict["NeedMultiFaceCheck"] as? String {
            self.needMultiFaceCheck = value
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

public class ModifyBlackListStrategyRequest : Tea.TeaModel {
    public class BlackListStrategy : Tea.TeaModel {
        public var bizContent: String?

        public var bizKey: String?

        public var id: Int64?

        public var productName: String?

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
            if self.bizContent != nil {
                map["BizContent"] = self.bizContent!
            }
            if self.bizKey != nil {
                map["BizKey"] = self.bizKey!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizContent"] as? String {
                self.bizContent = value
            }
            if let value = dict["BizKey"] as? String {
                self.bizKey = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["ProductName"] as? String {
                self.productName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var blackListStrategy: ModifyBlackListStrategyRequest.BlackListStrategy?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.blackListStrategy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.blackListStrategy != nil {
            map["BlackListStrategy"] = self.blackListStrategy?.toMap()
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BlackListStrategy"] as? [String: Any?] {
            var model = ModifyBlackListStrategyRequest.BlackListStrategy()
            model.fromMap(value)
            self.blackListStrategy = model
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyBlackListStrategyShrinkRequest : Tea.TeaModel {
    public var blackListStrategyShrink: String?

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
        if self.blackListStrategyShrink != nil {
            map["BlackListStrategy"] = self.blackListStrategyShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BlackListStrategy"] as? String {
            self.blackListStrategyShrink = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyBlackListStrategyResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int32?

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
        if let value = dict["Data"] as? Int32 {
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

public class ModifyBlackListStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyBlackListStrategyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyBlackListStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyControlStrategyRequest : Tea.TeaModel {
    public class ControlStrategyList : Tea.TeaModel {
        public var apiName: String?

        public var bizType: String?

        public var id: Int64?

        public var status: String?

        public var threshold: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiName != nil {
                map["ApiName"] = self.apiName!
            }
            if self.bizType != nil {
                map["BizType"] = self.bizType!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.threshold != nil {
                map["Threshold"] = self.threshold!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApiName"] as? String {
                self.apiName = value
            }
            if let value = dict["BizType"] as? String {
                self.bizType = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Threshold"] as? Double {
                self.threshold = value
            }
        }
    }
    public var controlStrategyList: [ModifyControlStrategyRequest.ControlStrategyList]?

    public var productType: String?

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
        if self.controlStrategyList != nil {
            var tmp : [Any] = []
            for k in self.controlStrategyList! {
                tmp.append(k.toMap())
            }
            map["ControlStrategyList"] = tmp
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ControlStrategyList"] as? [Any?] {
            var tmp : [ModifyControlStrategyRequest.ControlStrategyList] = []
            for v in value {
                if v != nil {
                    var model = ModifyControlStrategyRequest.ControlStrategyList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.controlStrategyList = tmp
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyControlStrategyShrinkRequest : Tea.TeaModel {
    public var controlStrategyListShrink: String?

    public var productType: String?

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
        if self.controlStrategyListShrink != nil {
            map["ControlStrategyList"] = self.controlStrategyListShrink!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ControlStrategyList"] as? String {
            self.controlStrategyListShrink = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyControlStrategyResponseBody : Tea.TeaModel {
    public var code: String?

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
        if let value = dict["Code"] as? String {
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

public class ModifyControlStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyControlStrategyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyControlStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyCustomizeFlowStrategyListRequest : Tea.TeaModel {
    public class StrategyObject : Tea.TeaModel {
        public var accumulateKey: String?

        public var accumulateWindow: Int64?

        public var apiName: String?

        public var flowType: String?

        public var id: Int64?

        public var operation: String?

        public var status: String?

        public var threshold: Int32?

        public var userId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accumulateKey != nil {
                map["AccumulateKey"] = self.accumulateKey!
            }
            if self.accumulateWindow != nil {
                map["AccumulateWindow"] = self.accumulateWindow!
            }
            if self.apiName != nil {
                map["ApiName"] = self.apiName!
            }
            if self.flowType != nil {
                map["FlowType"] = self.flowType!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.operation != nil {
                map["Operation"] = self.operation!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.threshold != nil {
                map["Threshold"] = self.threshold!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccumulateKey"] as? String {
                self.accumulateKey = value
            }
            if let value = dict["AccumulateWindow"] as? Int64 {
                self.accumulateWindow = value
            }
            if let value = dict["ApiName"] as? String {
                self.apiName = value
            }
            if let value = dict["FlowType"] as? String {
                self.flowType = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Operation"] as? String {
                self.operation = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Threshold"] as? Int32 {
                self.threshold = value
            }
            if let value = dict["UserId"] as? Int64 {
                self.userId = value
            }
        }
    }
    public var productType: String?

    public var strategyObject: [ModifyCustomizeFlowStrategyListRequest.StrategyObject]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.strategyObject != nil {
            var tmp : [Any] = []
            for k in self.strategyObject! {
                tmp.append(k.toMap())
            }
            map["StrategyObject"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["StrategyObject"] as? [Any?] {
            var tmp : [ModifyCustomizeFlowStrategyListRequest.StrategyObject] = []
            for v in value {
                if v != nil {
                    var model = ModifyCustomizeFlowStrategyListRequest.StrategyObject()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.strategyObject = tmp
        }
    }
}

public class ModifyCustomizeFlowStrategyListShrinkRequest : Tea.TeaModel {
    public var productType: String?

    public var strategyObjectShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.strategyObjectShrink != nil {
            map["StrategyObject"] = self.strategyObjectShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["StrategyObject"] as? String {
            self.strategyObjectShrink = value
        }
    }
}

public class ModifyCustomizeFlowStrategyListResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int32?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Int32 {
            self.data = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
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

public class ModifyCustomizeFlowStrategyListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyCustomizeFlowStrategyListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyCustomizeFlowStrategyListResponseBody()
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

public class QueryBlackListStrategyRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class QueryBlackListStrategyResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var bizContent: String?

        public var bizKey: String?

        public var gmtModified: Int64?

        public var id: Int64?

        public var productName: String?

        public var status: String?

        public var userId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizContent != nil {
                map["BizContent"] = self.bizContent!
            }
            if self.bizKey != nil {
                map["BizKey"] = self.bizKey!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizContent"] as? String {
                self.bizContent = value
            }
            if let value = dict["BizKey"] as? String {
                self.bizKey = value
            }
            if let value = dict["GmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["ProductName"] as? String {
                self.productName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UserId"] as? Int64 {
                self.userId = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: [QueryBlackListStrategyResponseBody.ResultObject]?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.resultObject! {
                tmp.append(k.toMap())
            }
            map["ResultObject"] = tmp
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
        if let value = dict["ResultObject"] as? [Any?] {
            var tmp : [QueryBlackListStrategyResponseBody.ResultObject] = []
            for v in value {
                if v != nil {
                    var model = QueryBlackListStrategyResponseBody.ResultObject()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resultObject = tmp
        }
    }
}

public class QueryBlackListStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryBlackListStrategyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryBlackListStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryControlStrategyRequest : Tea.TeaModel {
    public var productType: String?

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
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class QueryControlStrategyResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var apiName: String?

        public var bizType: String?

        public var id: Int64?

        public var status: String?

        public var threshold: Double?

        public var userId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiName != nil {
                map["ApiName"] = self.apiName!
            }
            if self.bizType != nil {
                map["BizType"] = self.bizType!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.threshold != nil {
                map["Threshold"] = self.threshold!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApiName"] as? String {
                self.apiName = value
            }
            if let value = dict["BizType"] as? String {
                self.bizType = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Threshold"] as? Double {
                self.threshold = value
            }
            if let value = dict["UserId"] as? Int64 {
                self.userId = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: [QueryControlStrategyResponseBody.ResultObject]?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.resultObject! {
                tmp.append(k.toMap())
            }
            map["ResultObject"] = tmp
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
        if let value = dict["ResultObject"] as? [Any?] {
            var tmp : [QueryControlStrategyResponseBody.ResultObject] = []
            for v in value {
                if v != nil {
                    var model = QueryControlStrategyResponseBody.ResultObject()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resultObject = tmp
        }
    }
}

public class QueryControlStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryControlStrategyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryControlStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryCustomizeFlowStrategyRequest : Tea.TeaModel {
    public var productType: String?

    public var regionId: String?

    public var userId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
    }
}

public class QueryCustomizeFlowStrategyResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var accumulateKey: String?

        public var accumulateWindow: String?

        public var apiName: String?

        public var flowType: String?

        public var id: String?

        public var operation: String?

        public var status: String?

        public var threshold: String?

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
            if self.accumulateKey != nil {
                map["AccumulateKey"] = self.accumulateKey!
            }
            if self.accumulateWindow != nil {
                map["AccumulateWindow"] = self.accumulateWindow!
            }
            if self.apiName != nil {
                map["ApiName"] = self.apiName!
            }
            if self.flowType != nil {
                map["FlowType"] = self.flowType!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.operation != nil {
                map["Operation"] = self.operation!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.threshold != nil {
                map["Threshold"] = self.threshold!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccumulateKey"] as? String {
                self.accumulateKey = value
            }
            if let value = dict["AccumulateWindow"] as? String {
                self.accumulateWindow = value
            }
            if let value = dict["ApiName"] as? String {
                self.apiName = value
            }
            if let value = dict["FlowType"] as? String {
                self.flowType = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Operation"] as? String {
                self.operation = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Threshold"] as? String {
                self.threshold = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int32?

    public var message: String?

    public var requestId: String?

    public var resultObject: [QueryCustomizeFlowStrategyResponseBody.ResultObject]?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResultObject"] as? [Any?] {
            var tmp : [QueryCustomizeFlowStrategyResponseBody.ResultObject] = []
            for v in value {
                if v != nil {
                    var model = QueryCustomizeFlowStrategyResponseBody.ResultObject()
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
    }
}

public class QueryCustomizeFlowStrategyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCustomizeFlowStrategyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryCustomizeFlowStrategyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySceneConfigsRequest : Tea.TeaModel {
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
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["type"] as? String {
            self.type = value
        }
    }
}

public class QuerySceneConfigsResponseBody : Tea.TeaModel {
    public class SceneConfigs : Tea.TeaModel {
        public var config: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var sceneId: Int64?

        public var type: String?

        public var version: Int64?

        public override init() {
            super.init()
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
                map["config"] = self.config!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.sceneId != nil {
                map["sceneId"] = self.sceneId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["config"] as? String {
                self.config = value
            }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["sceneId"] as? Int64 {
                self.sceneId = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["version"] as? Int64 {
                self.version = value
            }
        }
    }
    public var requestId: String?

    public var sceneConfigs: [QuerySceneConfigsResponseBody.SceneConfigs]?

    public override init() {
        super.init()
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
        if self.sceneConfigs != nil {
            var tmp : [Any] = []
            for k in self.sceneConfigs! {
                tmp.append(k.toMap())
            }
            map["sceneConfigs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sceneConfigs"] as? [Any?] {
            var tmp : [QuerySceneConfigsResponseBody.SceneConfigs] = []
            for v in value {
                if v != nil {
                    var model = QuerySceneConfigsResponseBody.SceneConfigs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sceneConfigs = tmp
        }
    }
}

public class QuerySceneConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySceneConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QuerySceneConfigsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryVerifyDownloadTaskRequest : Tea.TeaModel {
    public var downloadTaskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.downloadTaskId != nil {
            map["DownloadTaskId"] = self.downloadTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DownloadTaskId"] as? String {
            self.downloadTaskId = value
        }
    }
}

public class QueryVerifyDownloadTaskResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var finish: Bool?

    public var requestId: String?

    public var status: Int32?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.finish != nil {
            map["Finish"] = self.finish!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["Finish"] as? Bool {
            self.finish = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
        }
    }
}

public class QueryVerifyDownloadTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryVerifyDownloadTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryVerifyDownloadTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryVerifyFlowPackageRequest : Tea.TeaModel {
    public var productType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
    }
}

public class QueryVerifyFlowPackageResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class FlowDetails : Tea.TeaModel {
            public var capacity: Double?

            public var commodityName: String?

            public var currCapacity: Double?

            public var currProportion: String?

            public var expireDate: String?

            public var instanceName: String?

            public var status: String?

            public var takeEffectDate: String?

            public override init() {
                super.init()
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
                if self.commodityName != nil {
                    map["CommodityName"] = self.commodityName!
                }
                if self.currCapacity != nil {
                    map["CurrCapacity"] = self.currCapacity!
                }
                if self.currProportion != nil {
                    map["CurrProportion"] = self.currProportion!
                }
                if self.expireDate != nil {
                    map["ExpireDate"] = self.expireDate!
                }
                if self.instanceName != nil {
                    map["InstanceName"] = self.instanceName!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.takeEffectDate != nil {
                    map["TakeEffectDate"] = self.takeEffectDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Capacity"] as? Double {
                    self.capacity = value
                }
                if let value = dict["CommodityName"] as? String {
                    self.commodityName = value
                }
                if let value = dict["CurrCapacity"] as? Double {
                    self.currCapacity = value
                }
                if let value = dict["CurrProportion"] as? String {
                    self.currProportion = value
                }
                if let value = dict["ExpireDate"] as? String {
                    self.expireDate = value
                }
                if let value = dict["InstanceName"] as? String {
                    self.instanceName = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TakeEffectDate"] as? String {
                    self.takeEffectDate = value
                }
            }
        }
        public var commodityName: String?

        public var currCapacity: Double?

        public var currProportion: String?

        public var flowDetails: [QueryVerifyFlowPackageResponseBody.Items.FlowDetails]?

        public var totalCapacity: Double?

        public var usedCapacity: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commodityName != nil {
                map["CommodityName"] = self.commodityName!
            }
            if self.currCapacity != nil {
                map["CurrCapacity"] = self.currCapacity!
            }
            if self.currProportion != nil {
                map["CurrProportion"] = self.currProportion!
            }
            if self.flowDetails != nil {
                var tmp : [Any] = []
                for k in self.flowDetails! {
                    tmp.append(k.toMap())
                }
                map["FlowDetails"] = tmp
            }
            if self.totalCapacity != nil {
                map["TotalCapacity"] = self.totalCapacity!
            }
            if self.usedCapacity != nil {
                map["UsedCapacity"] = self.usedCapacity!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CommodityName"] as? String {
                self.commodityName = value
            }
            if let value = dict["CurrCapacity"] as? Double {
                self.currCapacity = value
            }
            if let value = dict["CurrProportion"] as? String {
                self.currProportion = value
            }
            if let value = dict["FlowDetails"] as? [Any?] {
                var tmp : [QueryVerifyFlowPackageResponseBody.Items.FlowDetails] = []
                for v in value {
                    if v != nil {
                        var model = QueryVerifyFlowPackageResponseBody.Items.FlowDetails()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.flowDetails = tmp
            }
            if let value = dict["TotalCapacity"] as? Double {
                self.totalCapacity = value
            }
            if let value = dict["UsedCapacity"] as? Double {
                self.usedCapacity = value
            }
        }
    }
    public var code: String?

    public var httpStatusCode: Int64?

    public var items: [QueryVerifyFlowPackageResponseBody.Items]?

    public var requestId: String?

    public var success: Bool?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int64 {
            self.httpStatusCode = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [QueryVerifyFlowPackageResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = QueryVerifyFlowPackageResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class QueryVerifyFlowPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryVerifyFlowPackageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryVerifyFlowPackageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryVerifyInvokeSatisticRequest : Tea.TeaModel {
    public var currentPage: Int64?

    public var endDate: Int64?

    public var pageSize: Int64?

    public var productProgramList: String?

    public var productType: String?

    public var sceneIdList: String?

    public var startDate: Int64?

    public var statisticsType: String?

    public override init() {
        super.init()
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
        if self.productProgramList != nil {
            map["ProductProgramList"] = self.productProgramList!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.sceneIdList != nil {
            map["SceneIdList"] = self.sceneIdList!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.statisticsType != nil {
            map["StatisticsType"] = self.statisticsType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["EndDate"] as? Int64 {
            self.endDate = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ProductProgramList"] as? String {
            self.productProgramList = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
        if let value = dict["SceneIdList"] as? String {
            self.sceneIdList = value
        }
        if let value = dict["StartDate"] as? Int64 {
            self.startDate = value
        }
        if let value = dict["StatisticsType"] as? String {
            self.statisticsType = value
        }
    }
}

public class QueryVerifyInvokeSatisticResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var statisticsCount: String?

            public var statisticsType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.statisticsCount != nil {
                    map["StatisticsCount"] = self.statisticsCount!
                }
                if self.statisticsType != nil {
                    map["StatisticsType"] = self.statisticsType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["StatisticsCount"] as? String {
                    self.statisticsCount = value
                }
                if let value = dict["StatisticsType"] as? String {
                    self.statisticsType = value
                }
            }
        }
        public var data: [QueryVerifyInvokeSatisticResponseBody.Items.Data]?

        public var statisticsDate: String?

        public override init() {
            super.init()
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
            if self.statisticsDate != nil {
                map["StatisticsDate"] = self.statisticsDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [QueryVerifyInvokeSatisticResponseBody.Items.Data] = []
                for v in value {
                    if v != nil {
                        var model = QueryVerifyInvokeSatisticResponseBody.Items.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["StatisticsDate"] as? String {
                self.statisticsDate = value
            }
        }
    }
    public var code: String?

    public var currentPage: Int64?

    public var items: [QueryVerifyInvokeSatisticResponseBody.Items]?

    public var pageSize: Int64?

    public var requestId: String?

    public var success: Bool?

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
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [QueryVerifyInvokeSatisticResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = QueryVerifyInvokeSatisticResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["TotalPage"] as? Int64 {
            self.totalPage = value
        }
    }
}

public class QueryVerifyInvokeSatisticResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryVerifyInvokeSatisticResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryVerifyInvokeSatisticResponseBody()
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

public class UpdateAntCloudAuthSceneRequest : Tea.TeaModel {
    public var bindMiniProgram: String?

    public var checkFileBody: String?

    public var checkFileName: String?

    public var miniProgramName: String?

    public var platform: String?

    public var returnPicCount: Int64?

    public var returnVideoLength: Int64?

    public var sceneId: Int64?

    public var sceneName: String?

    public var status: Int32?

    public var storeImage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bindMiniProgram != nil {
            map["BindMiniProgram"] = self.bindMiniProgram!
        }
        if self.checkFileBody != nil {
            map["CheckFileBody"] = self.checkFileBody!
        }
        if self.checkFileName != nil {
            map["CheckFileName"] = self.checkFileName!
        }
        if self.miniProgramName != nil {
            map["MiniProgramName"] = self.miniProgramName!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.returnPicCount != nil {
            map["ReturnPicCount"] = self.returnPicCount!
        }
        if self.returnVideoLength != nil {
            map["ReturnVideoLength"] = self.returnVideoLength!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.sceneName != nil {
            map["SceneName"] = self.sceneName!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.storeImage != nil {
            map["StoreImage"] = self.storeImage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BindMiniProgram"] as? String {
            self.bindMiniProgram = value
        }
        if let value = dict["CheckFileBody"] as? String {
            self.checkFileBody = value
        }
        if let value = dict["CheckFileName"] as? String {
            self.checkFileName = value
        }
        if let value = dict["MiniProgramName"] as? String {
            self.miniProgramName = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["ReturnPicCount"] as? Int64 {
            self.returnPicCount = value
        }
        if let value = dict["ReturnVideoLength"] as? Int64 {
            self.returnVideoLength = value
        }
        if let value = dict["SceneId"] as? Int64 {
            self.sceneId = value
        }
        if let value = dict["SceneName"] as? String {
            self.sceneName = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["StoreImage"] as? String {
            self.storeImage = value
        }
    }
}

public class UpdateAntCloudAuthSceneResponseBody : Tea.TeaModel {
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

public class UpdateAntCloudAuthSceneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAntCloudAuthSceneResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateAntCloudAuthSceneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSceneConfigRequest : Tea.TeaModel {
    public var config: String?

    public var id: Int64?

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
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.sceneId != nil {
            map["sceneId"] = self.sceneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["config"] as? String {
            self.config = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["sceneId"] as? Int64 {
            self.sceneId = value
        }
    }
}

public class UpdateSceneConfigResponseBody : Tea.TeaModel {
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

public class UpdateSceneConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSceneConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateSceneConfigResponseBody()
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
