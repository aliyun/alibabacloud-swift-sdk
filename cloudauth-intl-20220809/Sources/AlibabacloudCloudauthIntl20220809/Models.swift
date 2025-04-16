import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CardOcrRequest : Tea.TeaModel {
    public var docType: String?

    public var idFaceQuality: String?

    public var idOcrPictureBase64: String?

    public var idOcrPictureUrl: String?

    public var merchantBizId: String?

    public var merchantUserId: String?

    public var ocr: String?

    public var productCode: String?

    public var spoof: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.docType != nil {
            map["DocType"] = self.docType!
        }
        if self.idFaceQuality != nil {
            map["IdFaceQuality"] = self.idFaceQuality!
        }
        if self.idOcrPictureBase64 != nil {
            map["IdOcrPictureBase64"] = self.idOcrPictureBase64!
        }
        if self.idOcrPictureUrl != nil {
            map["IdOcrPictureUrl"] = self.idOcrPictureUrl!
        }
        if self.merchantBizId != nil {
            map["MerchantBizId"] = self.merchantBizId!
        }
        if self.merchantUserId != nil {
            map["MerchantUserId"] = self.merchantUserId!
        }
        if self.ocr != nil {
            map["Ocr"] = self.ocr!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.spoof != nil {
            map["Spoof"] = self.spoof!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DocType") {
            self.docType = dict["DocType"] as! String
        }
        if dict.keys.contains("IdFaceQuality") {
            self.idFaceQuality = dict["IdFaceQuality"] as! String
        }
        if dict.keys.contains("IdOcrPictureBase64") {
            self.idOcrPictureBase64 = dict["IdOcrPictureBase64"] as! String
        }
        if dict.keys.contains("IdOcrPictureUrl") {
            self.idOcrPictureUrl = dict["IdOcrPictureUrl"] as! String
        }
        if dict.keys.contains("MerchantBizId") {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("MerchantUserId") {
            self.merchantUserId = dict["MerchantUserId"] as! String
        }
        if dict.keys.contains("Ocr") {
            self.ocr = dict["Ocr"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("Spoof") {
            self.spoof = dict["Spoof"] as! String
        }
    }
}

public class CardOcrResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var extCardInfo: String?

        public var extIdInfo: String?

        public var passed: String?

        public var subCode: String?

        public var transactionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.extCardInfo != nil {
                map["ExtCardInfo"] = self.extCardInfo!
            }
            if self.extIdInfo != nil {
                map["ExtIdInfo"] = self.extIdInfo!
            }
            if self.passed != nil {
                map["Passed"] = self.passed!
            }
            if self.subCode != nil {
                map["SubCode"] = self.subCode!
            }
            if self.transactionId != nil {
                map["TransactionId"] = self.transactionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExtCardInfo") {
                self.extCardInfo = dict["ExtCardInfo"] as! String
            }
            if dict.keys.contains("ExtIdInfo") {
                self.extIdInfo = dict["ExtIdInfo"] as! String
            }
            if dict.keys.contains("Passed") {
                self.passed = dict["Passed"] as! String
            }
            if dict.keys.contains("SubCode") {
                self.subCode = dict["SubCode"] as! String
            }
            if dict.keys.contains("TransactionId") {
                self.transactionId = dict["TransactionId"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: CardOcrResponseBody.Result?

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
        if dict.keys.contains("Result") {
            var model = CardOcrResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class CardOcrResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CardOcrResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CardOcrResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckResultRequest : Tea.TeaModel {
    public var extraImageControlList: String?

    public var isReturnImage: String?

    public var merchantBizId: String?

    public var returnFiveCategorySpoofResult: String?

    public var transactionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extraImageControlList != nil {
            map["ExtraImageControlList"] = self.extraImageControlList!
        }
        if self.isReturnImage != nil {
            map["IsReturnImage"] = self.isReturnImage!
        }
        if self.merchantBizId != nil {
            map["MerchantBizId"] = self.merchantBizId!
        }
        if self.returnFiveCategorySpoofResult != nil {
            map["ReturnFiveCategorySpoofResult"] = self.returnFiveCategorySpoofResult!
        }
        if self.transactionId != nil {
            map["TransactionId"] = self.transactionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExtraImageControlList") {
            self.extraImageControlList = dict["ExtraImageControlList"] as! String
        }
        if dict.keys.contains("IsReturnImage") {
            self.isReturnImage = dict["IsReturnImage"] as! String
        }
        if dict.keys.contains("MerchantBizId") {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("ReturnFiveCategorySpoofResult") {
            self.returnFiveCategorySpoofResult = dict["ReturnFiveCategorySpoofResult"] as! String
        }
        if dict.keys.contains("TransactionId") {
            self.transactionId = dict["TransactionId"] as! String
        }
    }
}

public class CheckResultResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var ekycResult: String?

        public var extBasicInfo: String?

        public var extFaceInfo: String?

        public var extIdInfo: String?

        public var extInfo: String?

        public var extRiskInfo: String?

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
            if self.ekycResult != nil {
                map["EkycResult"] = self.ekycResult!
            }
            if self.extBasicInfo != nil {
                map["ExtBasicInfo"] = self.extBasicInfo!
            }
            if self.extFaceInfo != nil {
                map["ExtFaceInfo"] = self.extFaceInfo!
            }
            if self.extIdInfo != nil {
                map["ExtIdInfo"] = self.extIdInfo!
            }
            if self.extInfo != nil {
                map["ExtInfo"] = self.extInfo!
            }
            if self.extRiskInfo != nil {
                map["ExtRiskInfo"] = self.extRiskInfo!
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
            if dict.keys.contains("EkycResult") {
                self.ekycResult = dict["EkycResult"] as! String
            }
            if dict.keys.contains("ExtBasicInfo") {
                self.extBasicInfo = dict["ExtBasicInfo"] as! String
            }
            if dict.keys.contains("ExtFaceInfo") {
                self.extFaceInfo = dict["ExtFaceInfo"] as! String
            }
            if dict.keys.contains("ExtIdInfo") {
                self.extIdInfo = dict["ExtIdInfo"] as! String
            }
            if dict.keys.contains("ExtInfo") {
                self.extInfo = dict["ExtInfo"] as! String
            }
            if dict.keys.contains("ExtRiskInfo") {
                self.extRiskInfo = dict["ExtRiskInfo"] as! String
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

    public var result: CheckResultResponseBody.Result?

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
        if dict.keys.contains("Result") {
            var model = CheckResultResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class CheckResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckVerifyLogRequest : Tea.TeaModel {
    public var merchantBizId: String?

    public var transactionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.merchantBizId != nil {
            map["MerchantBizId"] = self.merchantBizId!
        }
        if self.transactionId != nil {
            map["TransactionId"] = self.transactionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MerchantBizId") {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("TransactionId") {
            self.transactionId = dict["TransactionId"] as! String
        }
    }
}

public class CheckVerifyLogResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var extInfo: String?

        public var interruptPage: String?

        public var logInfo: [String]?

        public var logStatisticsInfo: String?

        public var passed: String?

        public var subCode: String?

        public var verifyErrorCode: String?

        public var verifyStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.extInfo != nil {
                map["ExtInfo"] = self.extInfo!
            }
            if self.interruptPage != nil {
                map["InterruptPage"] = self.interruptPage!
            }
            if self.logInfo != nil {
                map["LogInfo"] = self.logInfo!
            }
            if self.logStatisticsInfo != nil {
                map["LogStatisticsInfo"] = self.logStatisticsInfo!
            }
            if self.passed != nil {
                map["Passed"] = self.passed!
            }
            if self.subCode != nil {
                map["SubCode"] = self.subCode!
            }
            if self.verifyErrorCode != nil {
                map["VerifyErrorCode"] = self.verifyErrorCode!
            }
            if self.verifyStatus != nil {
                map["VerifyStatus"] = self.verifyStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExtInfo") {
                self.extInfo = dict["ExtInfo"] as! String
            }
            if dict.keys.contains("InterruptPage") {
                self.interruptPage = dict["InterruptPage"] as! String
            }
            if dict.keys.contains("LogInfo") {
                self.logInfo = dict["LogInfo"] as! [String]
            }
            if dict.keys.contains("LogStatisticsInfo") {
                self.logStatisticsInfo = dict["LogStatisticsInfo"] as! String
            }
            if dict.keys.contains("Passed") {
                self.passed = dict["Passed"] as! String
            }
            if dict.keys.contains("SubCode") {
                self.subCode = dict["SubCode"] as! String
            }
            if dict.keys.contains("VerifyErrorCode") {
                self.verifyErrorCode = dict["VerifyErrorCode"] as! String
            }
            if dict.keys.contains("VerifyStatus") {
                self.verifyStatus = dict["VerifyStatus"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: CheckVerifyLogResponseBody.Result?

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
        if dict.keys.contains("Result") {
            var model = CheckVerifyLogResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class CheckVerifyLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckVerifyLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckVerifyLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeepfakeDetectIntlRequest : Tea.TeaModel {
    public var faceBase64: String?

    public var faceInputType: String?

    public var faceUrl: String?

    public var merchantBizId: String?

    public var productCode: String?

    public var sceneCode: String?

    public override init() {
        super.init()
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
        if self.merchantBizId != nil {
            map["MerchantBizId"] = self.merchantBizId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.sceneCode != nil {
            map["SceneCode"] = self.sceneCode!
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
        if dict.keys.contains("MerchantBizId") {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("SceneCode") {
            self.sceneCode = dict["SceneCode"] as! String
        }
    }
}

public class DeepfakeDetectIntlResponseBody : Tea.TeaModel {
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

    public var resultObject: DeepfakeDetectIntlResponseBody.ResultObject?

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
            var model = DeepfakeDetectIntlResponseBody.ResultObject()
            model.fromMap(dict["ResultObject"] as! [String: Any])
            self.resultObject = model
        }
    }
}

public class DeepfakeDetectIntlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeepfakeDetectIntlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeepfakeDetectIntlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVerifyResultRequest : Tea.TeaModel {
    public var deleteAfterQuery: String?

    public var deleteType: String?

    public var transactionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deleteAfterQuery != nil {
            map["DeleteAfterQuery"] = self.deleteAfterQuery!
        }
        if self.deleteType != nil {
            map["DeleteType"] = self.deleteType!
        }
        if self.transactionId != nil {
            map["TransactionId"] = self.transactionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeleteAfterQuery") {
            self.deleteAfterQuery = dict["DeleteAfterQuery"] as! String
        }
        if dict.keys.contains("DeleteType") {
            self.deleteType = dict["DeleteType"] as! String
        }
        if dict.keys.contains("TransactionId") {
            self.transactionId = dict["TransactionId"] as! String
        }
    }
}

public class DeleteVerifyResultResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var deleteResult: String?

        public var transactionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deleteResult != nil {
                map["DeleteResult"] = self.deleteResult!
            }
            if self.transactionId != nil {
                map["TransactionId"] = self.transactionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeleteResult") {
                self.deleteResult = dict["DeleteResult"] as! String
            }
            if dict.keys.contains("TransactionId") {
                self.transactionId = dict["TransactionId"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: DeleteVerifyResultResponseBody.Result?

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
        if dict.keys.contains("Result") {
            var model = DeleteVerifyResultResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DeleteVerifyResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVerifyResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteVerifyResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DocOcrRequest : Tea.TeaModel {
    public var cardSide: String?

    public var docType: String?

    public var idFaceQuality: String?

    public var idOcrPictureBase64: String?

    public var idOcrPictureUrl: String?

    public var idThreshold: String?

    public var merchantBizId: String?

    public var merchantUserId: String?

    public var ocr: String?

    public var productCode: String?

    public var spoof: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cardSide != nil {
            map["CardSide"] = self.cardSide!
        }
        if self.docType != nil {
            map["DocType"] = self.docType!
        }
        if self.idFaceQuality != nil {
            map["IdFaceQuality"] = self.idFaceQuality!
        }
        if self.idOcrPictureBase64 != nil {
            map["IdOcrPictureBase64"] = self.idOcrPictureBase64!
        }
        if self.idOcrPictureUrl != nil {
            map["IdOcrPictureUrl"] = self.idOcrPictureUrl!
        }
        if self.idThreshold != nil {
            map["IdThreshold"] = self.idThreshold!
        }
        if self.merchantBizId != nil {
            map["MerchantBizId"] = self.merchantBizId!
        }
        if self.merchantUserId != nil {
            map["MerchantUserId"] = self.merchantUserId!
        }
        if self.ocr != nil {
            map["Ocr"] = self.ocr!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.spoof != nil {
            map["Spoof"] = self.spoof!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CardSide") {
            self.cardSide = dict["CardSide"] as! String
        }
        if dict.keys.contains("DocType") {
            self.docType = dict["DocType"] as! String
        }
        if dict.keys.contains("IdFaceQuality") {
            self.idFaceQuality = dict["IdFaceQuality"] as! String
        }
        if dict.keys.contains("IdOcrPictureBase64") {
            self.idOcrPictureBase64 = dict["IdOcrPictureBase64"] as! String
        }
        if dict.keys.contains("IdOcrPictureUrl") {
            self.idOcrPictureUrl = dict["IdOcrPictureUrl"] as! String
        }
        if dict.keys.contains("IdThreshold") {
            self.idThreshold = dict["IdThreshold"] as! String
        }
        if dict.keys.contains("MerchantBizId") {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("MerchantUserId") {
            self.merchantUserId = dict["MerchantUserId"] as! String
        }
        if dict.keys.contains("Ocr") {
            self.ocr = dict["Ocr"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("Spoof") {
            self.spoof = dict["Spoof"] as! String
        }
    }
}

public class DocOcrResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var extIdInfo: String?

        public var passed: String?

        public var subCode: String?

        public var transactionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.extIdInfo != nil {
                map["ExtIdInfo"] = self.extIdInfo!
            }
            if self.passed != nil {
                map["Passed"] = self.passed!
            }
            if self.subCode != nil {
                map["SubCode"] = self.subCode!
            }
            if self.transactionId != nil {
                map["TransactionId"] = self.transactionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExtIdInfo") {
                self.extIdInfo = dict["ExtIdInfo"] as! String
            }
            if dict.keys.contains("Passed") {
                self.passed = dict["Passed"] as! String
            }
            if dict.keys.contains("SubCode") {
                self.subCode = dict["SubCode"] as! String
            }
            if dict.keys.contains("TransactionId") {
                self.transactionId = dict["TransactionId"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: DocOcrResponseBody.Result?

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
        if dict.keys.contains("Result") {
            var model = DocOcrResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DocOcrResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DocOcrResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DocOcrResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EkycVerifyRequest : Tea.TeaModel {
    public var authorize: String?

    public var crop: String?

    public var docName: String?

    public var docNo: String?

    public var docType: String?

    public var facePictureBase64: String?

    public var facePictureUrl: String?

    public var idOcrPictureBase64: String?

    public var idOcrPictureUrl: String?

    public var idThreshold: String?

    public var merchantBizId: String?

    public var merchantUserId: String?

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
        if self.authorize != nil {
            map["Authorize"] = self.authorize!
        }
        if self.crop != nil {
            map["Crop"] = self.crop!
        }
        if self.docName != nil {
            map["DocName"] = self.docName!
        }
        if self.docNo != nil {
            map["DocNo"] = self.docNo!
        }
        if self.docType != nil {
            map["DocType"] = self.docType!
        }
        if self.facePictureBase64 != nil {
            map["FacePictureBase64"] = self.facePictureBase64!
        }
        if self.facePictureUrl != nil {
            map["FacePictureUrl"] = self.facePictureUrl!
        }
        if self.idOcrPictureBase64 != nil {
            map["IdOcrPictureBase64"] = self.idOcrPictureBase64!
        }
        if self.idOcrPictureUrl != nil {
            map["IdOcrPictureUrl"] = self.idOcrPictureUrl!
        }
        if self.idThreshold != nil {
            map["IdThreshold"] = self.idThreshold!
        }
        if self.merchantBizId != nil {
            map["MerchantBizId"] = self.merchantBizId!
        }
        if self.merchantUserId != nil {
            map["MerchantUserId"] = self.merchantUserId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Authorize") {
            self.authorize = dict["Authorize"] as! String
        }
        if dict.keys.contains("Crop") {
            self.crop = dict["Crop"] as! String
        }
        if dict.keys.contains("DocName") {
            self.docName = dict["DocName"] as! String
        }
        if dict.keys.contains("DocNo") {
            self.docNo = dict["DocNo"] as! String
        }
        if dict.keys.contains("DocType") {
            self.docType = dict["DocType"] as! String
        }
        if dict.keys.contains("FacePictureBase64") {
            self.facePictureBase64 = dict["FacePictureBase64"] as! String
        }
        if dict.keys.contains("FacePictureUrl") {
            self.facePictureUrl = dict["FacePictureUrl"] as! String
        }
        if dict.keys.contains("IdOcrPictureBase64") {
            self.idOcrPictureBase64 = dict["IdOcrPictureBase64"] as! String
        }
        if dict.keys.contains("IdOcrPictureUrl") {
            self.idOcrPictureUrl = dict["IdOcrPictureUrl"] as! String
        }
        if dict.keys.contains("IdThreshold") {
            self.idThreshold = dict["IdThreshold"] as! String
        }
        if dict.keys.contains("MerchantBizId") {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("MerchantUserId") {
            self.merchantUserId = dict["MerchantUserId"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
    }
}

public class EkycVerifyResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var extFaceInfo: String?

        public var extIdInfo: String?

        public var passed: String?

        public var subCode: String?

        public var transactionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.extFaceInfo != nil {
                map["ExtFaceInfo"] = self.extFaceInfo!
            }
            if self.extIdInfo != nil {
                map["ExtIdInfo"] = self.extIdInfo!
            }
            if self.passed != nil {
                map["Passed"] = self.passed!
            }
            if self.subCode != nil {
                map["SubCode"] = self.subCode!
            }
            if self.transactionId != nil {
                map["TransactionId"] = self.transactionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExtFaceInfo") {
                self.extFaceInfo = dict["ExtFaceInfo"] as! String
            }
            if dict.keys.contains("ExtIdInfo") {
                self.extIdInfo = dict["ExtIdInfo"] as! String
            }
            if dict.keys.contains("Passed") {
                self.passed = dict["Passed"] as! String
            }
            if dict.keys.contains("SubCode") {
                self.subCode = dict["SubCode"] as! String
            }
            if dict.keys.contains("TransactionId") {
                self.transactionId = dict["TransactionId"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: EkycVerifyResponseBody.Result?

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
        if dict.keys.contains("Result") {
            var model = EkycVerifyResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class EkycVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EkycVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EkycVerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FaceCompareRequest : Tea.TeaModel {
    public var merchantBizId: String?

    public var sourceFacePicture: String?

    public var sourceFacePictureUrl: String?

    public var targetFacePicture: String?

    public var targetFacePictureUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.merchantBizId != nil {
            map["MerchantBizId"] = self.merchantBizId!
        }
        if self.sourceFacePicture != nil {
            map["SourceFacePicture"] = self.sourceFacePicture!
        }
        if self.sourceFacePictureUrl != nil {
            map["SourceFacePictureUrl"] = self.sourceFacePictureUrl!
        }
        if self.targetFacePicture != nil {
            map["TargetFacePicture"] = self.targetFacePicture!
        }
        if self.targetFacePictureUrl != nil {
            map["TargetFacePictureUrl"] = self.targetFacePictureUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MerchantBizId") {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("SourceFacePicture") {
            self.sourceFacePicture = dict["SourceFacePicture"] as! String
        }
        if dict.keys.contains("SourceFacePictureUrl") {
            self.sourceFacePictureUrl = dict["SourceFacePictureUrl"] as! String
        }
        if dict.keys.contains("TargetFacePicture") {
            self.targetFacePicture = dict["TargetFacePicture"] as! String
        }
        if dict.keys.contains("TargetFacePictureUrl") {
            self.targetFacePictureUrl = dict["TargetFacePictureUrl"] as! String
        }
    }
}

public class FaceCompareResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var faceComparisonScore: Double?

        public var passed: String?

        public var transactionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.faceComparisonScore != nil {
                map["FaceComparisonScore"] = self.faceComparisonScore!
            }
            if self.passed != nil {
                map["Passed"] = self.passed!
            }
            if self.transactionId != nil {
                map["TransactionId"] = self.transactionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FaceComparisonScore") {
                self.faceComparisonScore = dict["FaceComparisonScore"] as! Double
            }
            if dict.keys.contains("Passed") {
                self.passed = dict["Passed"] as! String
            }
            if dict.keys.contains("TransactionId") {
                self.transactionId = dict["TransactionId"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: FaceCompareResponseBody.Result?

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
        if dict.keys.contains("Result") {
            var model = FaceCompareResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class FaceCompareResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FaceCompareResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = FaceCompareResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FaceGuardRiskRequest : Tea.TeaModel {
    public var bizId: String?

    public var deviceToken: String?

    public var merchantBizId: String?

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
        if self.merchantBizId != nil {
            map["MerchantBizId"] = self.merchantBizId!
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
        if dict.keys.contains("MerchantBizId") {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
    }
}

public class FaceGuardRiskResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var guardRiskScore: Double?

        public var riskExtends: String?

        public var riskTags: String?

        public var transactionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.guardRiskScore != nil {
                map["GuardRiskScore"] = self.guardRiskScore!
            }
            if self.riskExtends != nil {
                map["RiskExtends"] = self.riskExtends!
            }
            if self.riskTags != nil {
                map["RiskTags"] = self.riskTags!
            }
            if self.transactionId != nil {
                map["TransactionId"] = self.transactionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GuardRiskScore") {
                self.guardRiskScore = dict["GuardRiskScore"] as! Double
            }
            if dict.keys.contains("RiskExtends") {
                self.riskExtends = dict["RiskExtends"] as! String
            }
            if dict.keys.contains("RiskTags") {
                self.riskTags = dict["RiskTags"] as! String
            }
            if dict.keys.contains("TransactionId") {
                self.transactionId = dict["TransactionId"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: FaceGuardRiskResponseBody.Result?

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
        if dict.keys.contains("Result") {
            var model = FaceGuardRiskResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class FaceGuardRiskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FaceGuardRiskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = FaceGuardRiskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FaceLivenessRequest : Tea.TeaModel {
    public var crop: String?

    public var facePictureBase64: String?

    public var facePictureUrl: String?

    public var faceQuality: String?

    public var merchantBizId: String?

    public var merchantUserId: String?

    public var occlusion: String?

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
        if self.crop != nil {
            map["Crop"] = self.crop!
        }
        if self.facePictureBase64 != nil {
            map["FacePictureBase64"] = self.facePictureBase64!
        }
        if self.facePictureUrl != nil {
            map["FacePictureUrl"] = self.facePictureUrl!
        }
        if self.faceQuality != nil {
            map["FaceQuality"] = self.faceQuality!
        }
        if self.merchantBizId != nil {
            map["MerchantBizId"] = self.merchantBizId!
        }
        if self.merchantUserId != nil {
            map["MerchantUserId"] = self.merchantUserId!
        }
        if self.occlusion != nil {
            map["Occlusion"] = self.occlusion!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Crop") {
            self.crop = dict["Crop"] as! String
        }
        if dict.keys.contains("FacePictureBase64") {
            self.facePictureBase64 = dict["FacePictureBase64"] as! String
        }
        if dict.keys.contains("FacePictureUrl") {
            self.facePictureUrl = dict["FacePictureUrl"] as! String
        }
        if dict.keys.contains("FaceQuality") {
            self.faceQuality = dict["FaceQuality"] as! String
        }
        if dict.keys.contains("MerchantBizId") {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("MerchantUserId") {
            self.merchantUserId = dict["MerchantUserId"] as! String
        }
        if dict.keys.contains("Occlusion") {
            self.occlusion = dict["Occlusion"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
    }
}

public class FaceLivenessResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class ExtFaceInfo : Tea.TeaModel {
            public var faceAge: Int32?

            public var faceAttack: String?

            public var faceGender: String?

            public var faceQualityScore: Double?

            public var occlusionResult: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.faceAge != nil {
                    map["FaceAge"] = self.faceAge!
                }
                if self.faceAttack != nil {
                    map["FaceAttack"] = self.faceAttack!
                }
                if self.faceGender != nil {
                    map["FaceGender"] = self.faceGender!
                }
                if self.faceQualityScore != nil {
                    map["FaceQualityScore"] = self.faceQualityScore!
                }
                if self.occlusionResult != nil {
                    map["OcclusionResult"] = self.occlusionResult!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FaceAge") {
                    self.faceAge = dict["FaceAge"] as! Int32
                }
                if dict.keys.contains("FaceAttack") {
                    self.faceAttack = dict["FaceAttack"] as! String
                }
                if dict.keys.contains("FaceGender") {
                    self.faceGender = dict["FaceGender"] as! String
                }
                if dict.keys.contains("FaceQualityScore") {
                    self.faceQualityScore = dict["FaceQualityScore"] as! Double
                }
                if dict.keys.contains("OcclusionResult") {
                    self.occlusionResult = dict["OcclusionResult"] as! String
                }
            }
        }
        public var extFaceInfo: FaceLivenessResponseBody.Result.ExtFaceInfo?

        public var passed: String?

        public var subCode: String?

        public var transactionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.extFaceInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.extFaceInfo != nil {
                map["ExtFaceInfo"] = self.extFaceInfo?.toMap()
            }
            if self.passed != nil {
                map["Passed"] = self.passed!
            }
            if self.subCode != nil {
                map["SubCode"] = self.subCode!
            }
            if self.transactionId != nil {
                map["TransactionId"] = self.transactionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExtFaceInfo") {
                var model = FaceLivenessResponseBody.Result.ExtFaceInfo()
                model.fromMap(dict["ExtFaceInfo"] as! [String: Any])
                self.extFaceInfo = model
            }
            if dict.keys.contains("Passed") {
                self.passed = dict["Passed"] as! String
            }
            if dict.keys.contains("SubCode") {
                self.subCode = dict["SubCode"] as! String
            }
            if dict.keys.contains("TransactionId") {
                self.transactionId = dict["TransactionId"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: FaceLivenessResponseBody.Result?

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
        if dict.keys.contains("Result") {
            var model = FaceLivenessResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class FaceLivenessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FaceLivenessResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = FaceLivenessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FraudResultCallBackRequest : Tea.TeaModel {
    public var certifyId: String?

    public var extParams: String?

    public var resultCode: String?

    public var verifyDeployEnv: String?

    public override init() {
        super.init()
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
        if self.extParams != nil {
            map["ExtParams"] = self.extParams!
        }
        if self.resultCode != nil {
            map["ResultCode"] = self.resultCode!
        }
        if self.verifyDeployEnv != nil {
            map["VerifyDeployEnv"] = self.verifyDeployEnv!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertifyId") {
            self.certifyId = dict["CertifyId"] as! String
        }
        if dict.keys.contains("ExtParams") {
            self.extParams = dict["ExtParams"] as! String
        }
        if dict.keys.contains("ResultCode") {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("VerifyDeployEnv") {
            self.verifyDeployEnv = dict["VerifyDeployEnv"] as! String
        }
    }
}

public class FraudResultCallBackResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class FraudResultCallBackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FraudResultCallBackResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = FraudResultCallBackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class Id2MetaPeriodVerifyIntlRequest : Tea.TeaModel {
    public var docName: String?

    public var docNo: String?

    public var docType: String?

    public var merchantBizId: String?

    public var merchantUserId: String?

    public var productCode: String?

    public var sceneCode: String?

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
        if self.docName != nil {
            map["DocName"] = self.docName!
        }
        if self.docNo != nil {
            map["DocNo"] = self.docNo!
        }
        if self.docType != nil {
            map["DocType"] = self.docType!
        }
        if self.merchantBizId != nil {
            map["MerchantBizId"] = self.merchantBizId!
        }
        if self.merchantUserId != nil {
            map["MerchantUserId"] = self.merchantUserId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.sceneCode != nil {
            map["SceneCode"] = self.sceneCode!
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
        if dict.keys.contains("DocName") {
            self.docName = dict["DocName"] as! String
        }
        if dict.keys.contains("DocNo") {
            self.docNo = dict["DocNo"] as! String
        }
        if dict.keys.contains("DocType") {
            self.docType = dict["DocType"] as! String
        }
        if dict.keys.contains("MerchantBizId") {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("MerchantUserId") {
            self.merchantUserId = dict["MerchantUserId"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("SceneCode") {
            self.sceneCode = dict["SceneCode"] as! String
        }
        if dict.keys.contains("ValidityEndDate") {
            self.validityEndDate = dict["ValidityEndDate"] as! String
        }
        if dict.keys.contains("ValidityStartDate") {
            self.validityStartDate = dict["ValidityStartDate"] as! String
        }
    }
}

public class Id2MetaPeriodVerifyIntlResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
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
            if self.passed != nil {
                map["Passed"] = self.passed!
            }
            if self.subCode != nil {
                map["SubCode"] = self.subCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
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

    public var result: Id2MetaPeriodVerifyIntlResponseBody.Result?

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
        if dict.keys.contains("Result") {
            var model = Id2MetaPeriodVerifyIntlResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class Id2MetaPeriodVerifyIntlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Id2MetaPeriodVerifyIntlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Id2MetaPeriodVerifyIntlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class Id2MetaVerifyIntlRequest : Tea.TeaModel {
    public var identifyNum: String?

    public var paramType: String?

    public var productCode: String?

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
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
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
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class Id2MetaVerifyIntlResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
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

    public var result: Id2MetaVerifyIntlResponseBody.Result?

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
        if dict.keys.contains("Result") {
            var model = Id2MetaVerifyIntlResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class Id2MetaVerifyIntlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Id2MetaVerifyIntlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Id2MetaVerifyIntlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InitializeRequest : Tea.TeaModel {
    public var appQualityCheck: String?

    public var authorize: String?

    public var callbackToken: String?

    public var callbackUrl: String?

    public var crop: String?

    public var docScanMode: String?

    public var docType: String?

    public var docVideo: String?

    public var experienceCode: String?

    public var facePictureBase64: String?

    public var facePictureUrl: String?

    public var idFaceQuality: String?

    public var idSpoof: String?

    public var idThreshold: String?

    public var languageConfig: String?

    public var merchantBizId: String?

    public var merchantUserId: String?

    public var metaInfo: String?

    public var model: String?

    public var ocr: String?

    public var procedurePriority: String?

    public var productCode: String?

    public var productFlow: String?

    public var returnUrl: String?

    public var sceneCode: String?

    public var securityLevel: String?

    public var showAlbumIcon: String?

    public var showGuidePage: String?

    public var showOcrResult: String?

    public var styleConfig: String?

    public override init() {
        super.init()
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
        if self.authorize != nil {
            map["Authorize"] = self.authorize!
        }
        if self.callbackToken != nil {
            map["CallbackToken"] = self.callbackToken!
        }
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.crop != nil {
            map["Crop"] = self.crop!
        }
        if self.docScanMode != nil {
            map["DocScanMode"] = self.docScanMode!
        }
        if self.docType != nil {
            map["DocType"] = self.docType!
        }
        if self.docVideo != nil {
            map["DocVideo"] = self.docVideo!
        }
        if self.experienceCode != nil {
            map["ExperienceCode"] = self.experienceCode!
        }
        if self.facePictureBase64 != nil {
            map["FacePictureBase64"] = self.facePictureBase64!
        }
        if self.facePictureUrl != nil {
            map["FacePictureUrl"] = self.facePictureUrl!
        }
        if self.idFaceQuality != nil {
            map["IdFaceQuality"] = self.idFaceQuality!
        }
        if self.idSpoof != nil {
            map["IdSpoof"] = self.idSpoof!
        }
        if self.idThreshold != nil {
            map["IdThreshold"] = self.idThreshold!
        }
        if self.languageConfig != nil {
            map["LanguageConfig"] = self.languageConfig!
        }
        if self.merchantBizId != nil {
            map["MerchantBizId"] = self.merchantBizId!
        }
        if self.merchantUserId != nil {
            map["MerchantUserId"] = self.merchantUserId!
        }
        if self.metaInfo != nil {
            map["MetaInfo"] = self.metaInfo!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.ocr != nil {
            map["Ocr"] = self.ocr!
        }
        if self.procedurePriority != nil {
            map["ProcedurePriority"] = self.procedurePriority!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productFlow != nil {
            map["ProductFlow"] = self.productFlow!
        }
        if self.returnUrl != nil {
            map["ReturnUrl"] = self.returnUrl!
        }
        if self.sceneCode != nil {
            map["SceneCode"] = self.sceneCode!
        }
        if self.securityLevel != nil {
            map["SecurityLevel"] = self.securityLevel!
        }
        if self.showAlbumIcon != nil {
            map["ShowAlbumIcon"] = self.showAlbumIcon!
        }
        if self.showGuidePage != nil {
            map["ShowGuidePage"] = self.showGuidePage!
        }
        if self.showOcrResult != nil {
            map["ShowOcrResult"] = self.showOcrResult!
        }
        if self.styleConfig != nil {
            map["StyleConfig"] = self.styleConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppQualityCheck") {
            self.appQualityCheck = dict["AppQualityCheck"] as! String
        }
        if dict.keys.contains("Authorize") {
            self.authorize = dict["Authorize"] as! String
        }
        if dict.keys.contains("CallbackToken") {
            self.callbackToken = dict["CallbackToken"] as! String
        }
        if dict.keys.contains("CallbackUrl") {
            self.callbackUrl = dict["CallbackUrl"] as! String
        }
        if dict.keys.contains("Crop") {
            self.crop = dict["Crop"] as! String
        }
        if dict.keys.contains("DocScanMode") {
            self.docScanMode = dict["DocScanMode"] as! String
        }
        if dict.keys.contains("DocType") {
            self.docType = dict["DocType"] as! String
        }
        if dict.keys.contains("DocVideo") {
            self.docVideo = dict["DocVideo"] as! String
        }
        if dict.keys.contains("ExperienceCode") {
            self.experienceCode = dict["ExperienceCode"] as! String
        }
        if dict.keys.contains("FacePictureBase64") {
            self.facePictureBase64 = dict["FacePictureBase64"] as! String
        }
        if dict.keys.contains("FacePictureUrl") {
            self.facePictureUrl = dict["FacePictureUrl"] as! String
        }
        if dict.keys.contains("IdFaceQuality") {
            self.idFaceQuality = dict["IdFaceQuality"] as! String
        }
        if dict.keys.contains("IdSpoof") {
            self.idSpoof = dict["IdSpoof"] as! String
        }
        if dict.keys.contains("IdThreshold") {
            self.idThreshold = dict["IdThreshold"] as! String
        }
        if dict.keys.contains("LanguageConfig") {
            self.languageConfig = dict["LanguageConfig"] as! String
        }
        if dict.keys.contains("MerchantBizId") {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("MerchantUserId") {
            self.merchantUserId = dict["MerchantUserId"] as! String
        }
        if dict.keys.contains("MetaInfo") {
            self.metaInfo = dict["MetaInfo"] as! String
        }
        if dict.keys.contains("Model") {
            self.model = dict["Model"] as! String
        }
        if dict.keys.contains("Ocr") {
            self.ocr = dict["Ocr"] as! String
        }
        if dict.keys.contains("ProcedurePriority") {
            self.procedurePriority = dict["ProcedurePriority"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductFlow") {
            self.productFlow = dict["ProductFlow"] as! String
        }
        if dict.keys.contains("ReturnUrl") {
            self.returnUrl = dict["ReturnUrl"] as! String
        }
        if dict.keys.contains("SceneCode") {
            self.sceneCode = dict["SceneCode"] as! String
        }
        if dict.keys.contains("SecurityLevel") {
            self.securityLevel = dict["SecurityLevel"] as! String
        }
        if dict.keys.contains("ShowAlbumIcon") {
            self.showAlbumIcon = dict["ShowAlbumIcon"] as! String
        }
        if dict.keys.contains("ShowGuidePage") {
            self.showGuidePage = dict["ShowGuidePage"] as! String
        }
        if dict.keys.contains("ShowOcrResult") {
            self.showOcrResult = dict["ShowOcrResult"] as! String
        }
        if dict.keys.contains("StyleConfig") {
            self.styleConfig = dict["StyleConfig"] as! String
        }
    }
}

public class InitializeResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var clientCfg: String?

        public var transactionId: String?

        public var transactionUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientCfg != nil {
                map["ClientCfg"] = self.clientCfg!
            }
            if self.transactionId != nil {
                map["TransactionId"] = self.transactionId!
            }
            if self.transactionUrl != nil {
                map["TransactionUrl"] = self.transactionUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientCfg") {
                self.clientCfg = dict["ClientCfg"] as! String
            }
            if dict.keys.contains("TransactionId") {
                self.transactionId = dict["TransactionId"] as! String
            }
            if dict.keys.contains("TransactionUrl") {
                self.transactionUrl = dict["TransactionUrl"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: InitializeResponseBody.Result?

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
        if dict.keys.contains("Result") {
            var model = InitializeResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class InitializeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InitializeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = InitializeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class Mobile3MetaVerifyIntlRequest : Tea.TeaModel {
    public var identifyNum: String?

    public var mobile: String?

    public var paramType: String?

    public var productCode: String?

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
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
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
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class Mobile3MetaVerifyIntlResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
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

    public var result: Mobile3MetaVerifyIntlResponseBody.Result?

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
        if dict.keys.contains("Result") {
            var model = Mobile3MetaVerifyIntlResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class Mobile3MetaVerifyIntlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Mobile3MetaVerifyIntlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Mobile3MetaVerifyIntlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
