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
        if dict.keys.contains("DocType") && dict["DocType"] != nil {
            self.docType = dict["DocType"] as! String
        }
        if dict.keys.contains("IdFaceQuality") && dict["IdFaceQuality"] != nil {
            self.idFaceQuality = dict["IdFaceQuality"] as! String
        }
        if dict.keys.contains("IdOcrPictureBase64") && dict["IdOcrPictureBase64"] != nil {
            self.idOcrPictureBase64 = dict["IdOcrPictureBase64"] as! String
        }
        if dict.keys.contains("IdOcrPictureUrl") && dict["IdOcrPictureUrl"] != nil {
            self.idOcrPictureUrl = dict["IdOcrPictureUrl"] as! String
        }
        if dict.keys.contains("MerchantBizId") && dict["MerchantBizId"] != nil {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("MerchantUserId") && dict["MerchantUserId"] != nil {
            self.merchantUserId = dict["MerchantUserId"] as! String
        }
        if dict.keys.contains("Ocr") && dict["Ocr"] != nil {
            self.ocr = dict["Ocr"] as! String
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("Spoof") && dict["Spoof"] != nil {
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
            if dict.keys.contains("ExtCardInfo") && dict["ExtCardInfo"] != nil {
                self.extCardInfo = dict["ExtCardInfo"] as! String
            }
            if dict.keys.contains("ExtIdInfo") && dict["ExtIdInfo"] != nil {
                self.extIdInfo = dict["ExtIdInfo"] as! String
            }
            if dict.keys.contains("Passed") && dict["Passed"] != nil {
                self.passed = dict["Passed"] as! String
            }
            if dict.keys.contains("SubCode") && dict["SubCode"] != nil {
                self.subCode = dict["SubCode"] as! String
            }
            if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("ExtraImageControlList") && dict["ExtraImageControlList"] != nil {
            self.extraImageControlList = dict["ExtraImageControlList"] as! String
        }
        if dict.keys.contains("IsReturnImage") && dict["IsReturnImage"] != nil {
            self.isReturnImage = dict["IsReturnImage"] as! String
        }
        if dict.keys.contains("MerchantBizId") && dict["MerchantBizId"] != nil {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("ReturnFiveCategorySpoofResult") && dict["ReturnFiveCategorySpoofResult"] != nil {
            self.returnFiveCategorySpoofResult = dict["ReturnFiveCategorySpoofResult"] as! String
        }
        if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
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
            if dict.keys.contains("EkycResult") && dict["EkycResult"] != nil {
                self.ekycResult = dict["EkycResult"] as! String
            }
            if dict.keys.contains("ExtBasicInfo") && dict["ExtBasicInfo"] != nil {
                self.extBasicInfo = dict["ExtBasicInfo"] as! String
            }
            if dict.keys.contains("ExtFaceInfo") && dict["ExtFaceInfo"] != nil {
                self.extFaceInfo = dict["ExtFaceInfo"] as! String
            }
            if dict.keys.contains("ExtIdInfo") && dict["ExtIdInfo"] != nil {
                self.extIdInfo = dict["ExtIdInfo"] as! String
            }
            if dict.keys.contains("ExtRiskInfo") && dict["ExtRiskInfo"] != nil {
                self.extRiskInfo = dict["ExtRiskInfo"] as! String
            }
            if dict.keys.contains("Passed") && dict["Passed"] != nil {
                self.passed = dict["Passed"] as! String
            }
            if dict.keys.contains("SubCode") && dict["SubCode"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CheckResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePictureRequest : Tea.TeaModel {
    public var deletePicAfterQuery: String?

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
        if self.deletePicAfterQuery != nil {
            map["DeletePicAfterQuery"] = self.deletePicAfterQuery!
        }
        if self.transactionId != nil {
            map["TransactionId"] = self.transactionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeletePicAfterQuery") && dict["DeletePicAfterQuery"] != nil {
            self.deletePicAfterQuery = dict["DeletePicAfterQuery"] as! String
        }
        if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
            self.transactionId = dict["TransactionId"] as! String
        }
    }
}

public class DeletePictureResponseBody : Tea.TeaModel {
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
            if dict.keys.contains("DeleteResult") && dict["DeleteResult"] != nil {
                self.deleteResult = dict["DeleteResult"] as! String
            }
            if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
                self.transactionId = dict["TransactionId"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: DeletePictureResponseBody.Result?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = DeletePictureResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class DeletePictureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePictureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeletePictureResponseBody()
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
        if dict.keys.contains("DeleteAfterQuery") && dict["DeleteAfterQuery"] != nil {
            self.deleteAfterQuery = dict["DeleteAfterQuery"] as! String
        }
        if dict.keys.contains("DeleteType") && dict["DeleteType"] != nil {
            self.deleteType = dict["DeleteType"] as! String
        }
        if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
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
            if dict.keys.contains("DeleteResult") && dict["DeleteResult"] != nil {
                self.deleteResult = dict["DeleteResult"] as! String
            }
            if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteVerifyResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAddressLabelsRequest : Tea.TeaModel {
    public var address: String?

    public var coin: String?

    public var merchantBizId: String?

    public override init() {
        super.init()
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
        if self.coin != nil {
            map["Coin"] = self.coin!
        }
        if self.merchantBizId != nil {
            map["MerchantBizId"] = self.merchantBizId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("Coin") && dict["Coin"] != nil {
            self.coin = dict["Coin"] as! String
        }
        if dict.keys.contains("MerchantBizId") && dict["MerchantBizId"] != nil {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
    }
}

public class DescribeAddressLabelsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var labelList: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.labelList != nil {
                map["LabelList"] = self.labelList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LabelList") && dict["LabelList"] != nil {
                self.labelList = dict["LabelList"] as! [String]
            }
        }
    }
    public var code: String?

    public var data: DescribeAddressLabelsResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeAddressLabelsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class DescribeAddressLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAddressLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAddressLabelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAddressOverviewRequest : Tea.TeaModel {
    public var address: String?

    public var coin: String?

    public var merchantBizId: String?

    public override init() {
        super.init()
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
        if self.coin != nil {
            map["Coin"] = self.coin!
        }
        if self.merchantBizId != nil {
            map["MerchantBizId"] = self.merchantBizId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("Coin") && dict["Coin"] != nil {
            self.coin = dict["Coin"] as! String
        }
        if dict.keys.contains("MerchantBizId") && dict["MerchantBizId"] != nil {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
    }
}

public class DescribeAddressOverviewResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var balance: Double?

        public var firstSeen: Int64?

        public var lastSeen: Int64?

        public var receivedTxsCount: Int32?

        public var spentTxsCount: Int32?

        public var totalReceived: Double?

        public var totalSpent: Double?

        public var txsCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.balance != nil {
                map["Balance"] = self.balance!
            }
            if self.firstSeen != nil {
                map["FirstSeen"] = self.firstSeen!
            }
            if self.lastSeen != nil {
                map["LastSeen"] = self.lastSeen!
            }
            if self.receivedTxsCount != nil {
                map["ReceivedTxsCount"] = self.receivedTxsCount!
            }
            if self.spentTxsCount != nil {
                map["SpentTxsCount"] = self.spentTxsCount!
            }
            if self.totalReceived != nil {
                map["TotalReceived"] = self.totalReceived!
            }
            if self.totalSpent != nil {
                map["TotalSpent"] = self.totalSpent!
            }
            if self.txsCount != nil {
                map["TxsCount"] = self.txsCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Balance") && dict["Balance"] != nil {
                self.balance = dict["Balance"] as! Double
            }
            if dict.keys.contains("FirstSeen") && dict["FirstSeen"] != nil {
                self.firstSeen = dict["FirstSeen"] as! Int64
            }
            if dict.keys.contains("LastSeen") && dict["LastSeen"] != nil {
                self.lastSeen = dict["LastSeen"] as! Int64
            }
            if dict.keys.contains("ReceivedTxsCount") && dict["ReceivedTxsCount"] != nil {
                self.receivedTxsCount = dict["ReceivedTxsCount"] as! Int32
            }
            if dict.keys.contains("SpentTxsCount") && dict["SpentTxsCount"] != nil {
                self.spentTxsCount = dict["SpentTxsCount"] as! Int32
            }
            if dict.keys.contains("TotalReceived") && dict["TotalReceived"] != nil {
                self.totalReceived = dict["TotalReceived"] as! Double
            }
            if dict.keys.contains("TotalSpent") && dict["TotalSpent"] != nil {
                self.totalSpent = dict["TotalSpent"] as! Double
            }
            if dict.keys.contains("TxsCount") && dict["TxsCount"] != nil {
                self.txsCount = dict["TxsCount"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: DescribeAddressOverviewResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeAddressOverviewResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class DescribeAddressOverviewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAddressOverviewResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAddressOverviewResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMaliciousAddressRequest : Tea.TeaModel {
    public var coin: String?

    public var end: String?

    public var merchantBizId: String?

    public var start: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.coin != nil {
            map["Coin"] = self.coin!
        }
        if self.end != nil {
            map["End"] = self.end!
        }
        if self.merchantBizId != nil {
            map["MerchantBizId"] = self.merchantBizId!
        }
        if self.start != nil {
            map["Start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Coin") && dict["Coin"] != nil {
            self.coin = dict["Coin"] as! String
        }
        if dict.keys.contains("End") && dict["End"] != nil {
            self.end = dict["End"] as! String
        }
        if dict.keys.contains("MerchantBizId") && dict["MerchantBizId"] != nil {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("Start") && dict["Start"] != nil {
            self.start = dict["Start"] as! String
        }
    }
}

public class DescribeMaliciousAddressResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var addTime: String?

        public var address: String?

        public var coin: String?

        public var detail: String?

        public var tag: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addTime != nil {
                map["AddTime"] = self.addTime!
            }
            if self.address != nil {
                map["Address"] = self.address!
            }
            if self.coin != nil {
                map["Coin"] = self.coin!
            }
            if self.detail != nil {
                map["Detail"] = self.detail!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AddTime") && dict["AddTime"] != nil {
                self.addTime = dict["AddTime"] as! String
            }
            if dict.keys.contains("Address") && dict["Address"] != nil {
                self.address = dict["Address"] as! String
            }
            if dict.keys.contains("Coin") && dict["Coin"] != nil {
                self.coin = dict["Coin"] as! String
            }
            if dict.keys.contains("Detail") && dict["Detail"] != nil {
                self.detail = dict["Detail"] as! String
            }
            if dict.keys.contains("Tag") && dict["Tag"] != nil {
                self.tag = dict["Tag"] as! String
            }
        }
    }
    public var code: String?

    public var data: [DescribeMaliciousAddressResponseBody.Data]?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeMaliciousAddressResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeMaliciousAddressResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

public class DescribeMaliciousAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMaliciousAddressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeMaliciousAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRiskScoreRequest : Tea.TeaModel {
    public var address: String?

    public var coin: String?

    public var merchantBizId: String?

    public override init() {
        super.init()
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
        if self.coin != nil {
            map["Coin"] = self.coin!
        }
        if self.merchantBizId != nil {
            map["MerchantBizId"] = self.merchantBizId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("Coin") && dict["Coin"] != nil {
            self.coin = dict["Coin"] as! String
        }
        if dict.keys.contains("MerchantBizId") && dict["MerchantBizId"] != nil {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
    }
}

public class DescribeRiskScoreResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var detailList: [String]?

        public var hackingEvent: String?

        public var riskLevel: String?

        public var score: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detailList != nil {
                map["DetailList"] = self.detailList!
            }
            if self.hackingEvent != nil {
                map["HackingEvent"] = self.hackingEvent!
            }
            if self.riskLevel != nil {
                map["RiskLevel"] = self.riskLevel!
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DetailList") && dict["DetailList"] != nil {
                self.detailList = dict["DetailList"] as! [String]
            }
            if dict.keys.contains("HackingEvent") && dict["HackingEvent"] != nil {
                self.hackingEvent = dict["HackingEvent"] as! String
            }
            if dict.keys.contains("RiskLevel") && dict["RiskLevel"] != nil {
                self.riskLevel = dict["RiskLevel"] as! String
            }
            if dict.keys.contains("Score") && dict["Score"] != nil {
                self.score = dict["Score"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: DescribeRiskScoreResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeRiskScoreResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class DescribeRiskScoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRiskScoreResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeRiskScoreResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTransactionsListRequest : Tea.TeaModel {
    public var address: String?

    public var coin: String?

    public var endTimestamp: Int64?

    public var merchantBizId: String?

    public var page: Int64?

    public var startTimestamp: Int64?

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
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.coin != nil {
            map["Coin"] = self.coin!
        }
        if self.endTimestamp != nil {
            map["EndTimestamp"] = self.endTimestamp!
        }
        if self.merchantBizId != nil {
            map["MerchantBizId"] = self.merchantBizId!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.startTimestamp != nil {
            map["StartTimestamp"] = self.startTimestamp!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("Coin") && dict["Coin"] != nil {
            self.coin = dict["Coin"] as! String
        }
        if dict.keys.contains("EndTimestamp") && dict["EndTimestamp"] != nil {
            self.endTimestamp = dict["EndTimestamp"] as! Int64
        }
        if dict.keys.contains("MerchantBizId") && dict["MerchantBizId"] != nil {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("Page") && dict["Page"] != nil {
            self.page = dict["Page"] as! Int64
        }
        if dict.keys.contains("StartTimestamp") && dict["StartTimestamp"] != nil {
            self.startTimestamp = dict["StartTimestamp"] as! Int64
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeTransactionsListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class In_ : Tea.TeaModel {
            public var address: String?

            public var amount: Double?

            public var label: String?

            public var txHashList: [String]?

            public var type: Int32?

            public override init() {
                super.init()
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
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.txHashList != nil {
                    map["TxHashList"] = self.txHashList!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Address") && dict["Address"] != nil {
                    self.address = dict["Address"] as! String
                }
                if dict.keys.contains("Amount") && dict["Amount"] != nil {
                    self.amount = dict["Amount"] as! Double
                }
                if dict.keys.contains("Label") && dict["Label"] != nil {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("TxHashList") && dict["TxHashList"] != nil {
                    self.txHashList = dict["TxHashList"] as! [String]
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! Int32
                }
            }
        }
        public class Out : Tea.TeaModel {
            public var address: String?

            public var amount: Double?

            public var label: String?

            public var txHashList: [String]?

            public var type: Int32?

            public override init() {
                super.init()
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
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.txHashList != nil {
                    map["TxHashList"] = self.txHashList!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Address") && dict["Address"] != nil {
                    self.address = dict["Address"] as! String
                }
                if dict.keys.contains("Amount") && dict["Amount"] != nil {
                    self.amount = dict["Amount"] as! Double
                }
                if dict.keys.contains("Label") && dict["Label"] != nil {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("TxHashList") && dict["TxHashList"] != nil {
                    self.txHashList = dict["TxHashList"] as! [String]
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! Int32
                }
            }
        }
        public var in_: [DescribeTransactionsListResponseBody.Data.In_]?

        public var out: [DescribeTransactionsListResponseBody.Data.Out]?

        public var page: Int64?

        public var totalPages: Int64?

        public var transactionsOnPage: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.in_ != nil {
                var tmp : [Any] = []
                for k in self.in_! {
                    tmp.append(k.toMap())
                }
                map["In"] = tmp
            }
            if self.out != nil {
                var tmp : [Any] = []
                for k in self.out! {
                    tmp.append(k.toMap())
                }
                map["Out"] = tmp
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            if self.transactionsOnPage != nil {
                map["TransactionsOnPage"] = self.transactionsOnPage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("In") && dict["In"] != nil {
                var tmp : [DescribeTransactionsListResponseBody.Data.In_] = []
                for v in dict["In"] as! [Any] {
                    var model = DescribeTransactionsListResponseBody.Data.In_()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.in_ = tmp
            }
            if dict.keys.contains("Out") && dict["Out"] != nil {
                var tmp : [DescribeTransactionsListResponseBody.Data.Out] = []
                for v in dict["Out"] as! [Any] {
                    var model = DescribeTransactionsListResponseBody.Data.Out()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.out = tmp
            }
            if dict.keys.contains("Page") && dict["Page"] != nil {
                self.page = dict["Page"] as! Int64
            }
            if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
                self.totalPages = dict["TotalPages"] as! Int64
            }
            if dict.keys.contains("TransactionsOnPage") && dict["TransactionsOnPage"] != nil {
                self.transactionsOnPage = dict["TransactionsOnPage"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: DescribeTransactionsListResponseBody.Data?

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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeTransactionsListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

public class DescribeTransactionsListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTransactionsListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeTransactionsListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeWeb3AddressLabelsRequest : Tea.TeaModel {
    public var address: String?

    public var chainShortName: String?

    public var merchantBizId: String?

    public override init() {
        super.init()
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
        if self.chainShortName != nil {
            map["ChainShortName"] = self.chainShortName!
        }
        if self.merchantBizId != nil {
            map["MerchantBizId"] = self.merchantBizId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("ChainShortName") && dict["ChainShortName"] != nil {
            self.chainShortName = dict["ChainShortName"] as! String
        }
        if dict.keys.contains("MerchantBizId") && dict["MerchantBizId"] != nil {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
    }
}

public class DescribeWeb3AddressLabelsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var address: String?

        public var balance: String?

        public var balanceSymbol: String?

        public var chainName: String?

        public var chainShortName: String?

        public var contractAddress: String?

        public var createContractAddress: String?

        public var createContractTransactionHash: String?

        public var customRiskAssessment: String?

        public var firstTransactionTime: String?

        public var isProducerAddress: String?

        public var lastTransactionTime: String?

        public var receiveAmount: String?

        public var sendAmount: String?

        public var tag: String?

        public var token: String?

        public var tokenAmount: Int32?

        public var tokenList: String?

        public var transactionCount: Int32?

        public override init() {
            super.init()
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
            if self.balance != nil {
                map["Balance"] = self.balance!
            }
            if self.balanceSymbol != nil {
                map["BalanceSymbol"] = self.balanceSymbol!
            }
            if self.chainName != nil {
                map["ChainName"] = self.chainName!
            }
            if self.chainShortName != nil {
                map["ChainShortName"] = self.chainShortName!
            }
            if self.contractAddress != nil {
                map["ContractAddress"] = self.contractAddress!
            }
            if self.createContractAddress != nil {
                map["CreateContractAddress"] = self.createContractAddress!
            }
            if self.createContractTransactionHash != nil {
                map["CreateContractTransactionHash"] = self.createContractTransactionHash!
            }
            if self.customRiskAssessment != nil {
                map["CustomRiskAssessment"] = self.customRiskAssessment!
            }
            if self.firstTransactionTime != nil {
                map["FirstTransactionTime"] = self.firstTransactionTime!
            }
            if self.isProducerAddress != nil {
                map["IsProducerAddress"] = self.isProducerAddress!
            }
            if self.lastTransactionTime != nil {
                map["LastTransactionTime"] = self.lastTransactionTime!
            }
            if self.receiveAmount != nil {
                map["ReceiveAmount"] = self.receiveAmount!
            }
            if self.sendAmount != nil {
                map["SendAmount"] = self.sendAmount!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            if self.token != nil {
                map["Token"] = self.token!
            }
            if self.tokenAmount != nil {
                map["TokenAmount"] = self.tokenAmount!
            }
            if self.tokenList != nil {
                map["TokenList"] = self.tokenList!
            }
            if self.transactionCount != nil {
                map["TransactionCount"] = self.transactionCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Address") && dict["Address"] != nil {
                self.address = dict["Address"] as! String
            }
            if dict.keys.contains("Balance") && dict["Balance"] != nil {
                self.balance = dict["Balance"] as! String
            }
            if dict.keys.contains("BalanceSymbol") && dict["BalanceSymbol"] != nil {
                self.balanceSymbol = dict["BalanceSymbol"] as! String
            }
            if dict.keys.contains("ChainName") && dict["ChainName"] != nil {
                self.chainName = dict["ChainName"] as! String
            }
            if dict.keys.contains("ChainShortName") && dict["ChainShortName"] != nil {
                self.chainShortName = dict["ChainShortName"] as! String
            }
            if dict.keys.contains("ContractAddress") && dict["ContractAddress"] != nil {
                self.contractAddress = dict["ContractAddress"] as! String
            }
            if dict.keys.contains("CreateContractAddress") && dict["CreateContractAddress"] != nil {
                self.createContractAddress = dict["CreateContractAddress"] as! String
            }
            if dict.keys.contains("CreateContractTransactionHash") && dict["CreateContractTransactionHash"] != nil {
                self.createContractTransactionHash = dict["CreateContractTransactionHash"] as! String
            }
            if dict.keys.contains("CustomRiskAssessment") && dict["CustomRiskAssessment"] != nil {
                self.customRiskAssessment = dict["CustomRiskAssessment"] as! String
            }
            if dict.keys.contains("FirstTransactionTime") && dict["FirstTransactionTime"] != nil {
                self.firstTransactionTime = dict["FirstTransactionTime"] as! String
            }
            if dict.keys.contains("IsProducerAddress") && dict["IsProducerAddress"] != nil {
                self.isProducerAddress = dict["IsProducerAddress"] as! String
            }
            if dict.keys.contains("LastTransactionTime") && dict["LastTransactionTime"] != nil {
                self.lastTransactionTime = dict["LastTransactionTime"] as! String
            }
            if dict.keys.contains("ReceiveAmount") && dict["ReceiveAmount"] != nil {
                self.receiveAmount = dict["ReceiveAmount"] as! String
            }
            if dict.keys.contains("SendAmount") && dict["SendAmount"] != nil {
                self.sendAmount = dict["SendAmount"] as! String
            }
            if dict.keys.contains("Tag") && dict["Tag"] != nil {
                self.tag = dict["Tag"] as! String
            }
            if dict.keys.contains("Token") && dict["Token"] != nil {
                self.token = dict["Token"] as! String
            }
            if dict.keys.contains("TokenAmount") && dict["TokenAmount"] != nil {
                self.tokenAmount = dict["TokenAmount"] as! Int32
            }
            if dict.keys.contains("TokenList") && dict["TokenList"] != nil {
                self.tokenList = dict["TokenList"] as! String
            }
            if dict.keys.contains("TransactionCount") && dict["TransactionCount"] != nil {
                self.transactionCount = dict["TransactionCount"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: DescribeWeb3AddressLabelsResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeWeb3AddressLabelsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeWeb3AddressLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWeb3AddressLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeWeb3AddressLabelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeWeb3RiskScoreRequest : Tea.TeaModel {
    public var chainShortName: String?

    public var depth: Int32?

    public var merchantBizId: String?

    public var objectId: String?

    public var objectType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chainShortName != nil {
            map["ChainShortName"] = self.chainShortName!
        }
        if self.depth != nil {
            map["Depth"] = self.depth!
        }
        if self.merchantBizId != nil {
            map["MerchantBizId"] = self.merchantBizId!
        }
        if self.objectId != nil {
            map["ObjectId"] = self.objectId!
        }
        if self.objectType != nil {
            map["ObjectType"] = self.objectType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChainShortName") && dict["ChainShortName"] != nil {
            self.chainShortName = dict["ChainShortName"] as! String
        }
        if dict.keys.contains("Depth") && dict["Depth"] != nil {
            self.depth = dict["Depth"] as! Int32
        }
        if dict.keys.contains("MerchantBizId") && dict["MerchantBizId"] != nil {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("ObjectId") && dict["ObjectId"] != nil {
            self.objectId = dict["ObjectId"] as! String
        }
        if dict.keys.contains("ObjectType") && dict["ObjectType"] != nil {
            self.objectType = dict["ObjectType"] as! String
        }
    }
}

public class DescribeWeb3RiskScoreResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RiskResults : Tea.TeaModel {
            public var description_: String?

            public var severity: String?

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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.severity != nil {
                    map["Severity"] = self.severity!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Severity") && dict["Severity"] != nil {
                    self.severity = dict["Severity"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var riskResults: [DescribeWeb3RiskScoreResponseBody.Data.RiskResults]?

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
            if self.riskResults != nil {
                var tmp : [Any] = []
                for k in self.riskResults! {
                    tmp.append(k.toMap())
                }
                map["RiskResults"] = tmp
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RiskResults") && dict["RiskResults"] != nil {
                var tmp : [DescribeWeb3RiskScoreResponseBody.Data.RiskResults] = []
                for v in dict["RiskResults"] as! [Any] {
                    var model = DescribeWeb3RiskScoreResponseBody.Data.RiskResults()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.riskResults = tmp
            }
            if dict.keys.contains("Score") && dict["Score"] != nil {
                self.score = dict["Score"] as! String
            }
        }
    }
    public var code: String?

    public var data: DescribeWeb3RiskScoreResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeWeb3RiskScoreResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeWeb3RiskScoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWeb3RiskScoreResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeWeb3RiskScoreResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeWeb3TransactionLabelsRequest : Tea.TeaModel {
    public var chainShortName: String?

    public var merchantBizId: String?

    public var transaction: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chainShortName != nil {
            map["ChainShortName"] = self.chainShortName!
        }
        if self.merchantBizId != nil {
            map["MerchantBizId"] = self.merchantBizId!
        }
        if self.transaction != nil {
            map["Transaction"] = self.transaction!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChainShortName") && dict["ChainShortName"] != nil {
            self.chainShortName = dict["ChainShortName"] as! String
        }
        if dict.keys.contains("MerchantBizId") && dict["MerchantBizId"] != nil {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("Transaction") && dict["Transaction"] != nil {
            self.transaction = dict["Transaction"] as! String
        }
    }
}

public class DescribeWeb3TransactionLabelsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ContractDetails : Tea.TeaModel {
            public var amount: String?

            public var from: String?

            public var gasLimit: Int32?

            public var index: Int32?

            public var to: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.from != nil {
                    map["From"] = self.from!
                }
                if self.gasLimit != nil {
                    map["GasLimit"] = self.gasLimit!
                }
                if self.index != nil {
                    map["Index"] = self.index!
                }
                if self.to != nil {
                    map["To"] = self.to!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Amount") && dict["Amount"] != nil {
                    self.amount = dict["Amount"] as! String
                }
                if dict.keys.contains("From") && dict["From"] != nil {
                    self.from = dict["From"] as! String
                }
                if dict.keys.contains("GasLimit") && dict["GasLimit"] != nil {
                    self.gasLimit = dict["GasLimit"] as! Int32
                }
                if dict.keys.contains("Index") && dict["Index"] != nil {
                    self.index = dict["Index"] as! Int32
                }
                if dict.keys.contains("To") && dict["To"] != nil {
                    self.to = dict["To"] as! String
                }
            }
        }
        public class InputDetails : Tea.TeaModel {
            public var amount: Int32?

            public var inputHash: String?

            public var isContract: String?

            public var tag: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.inputHash != nil {
                    map["InputHash"] = self.inputHash!
                }
                if self.isContract != nil {
                    map["IsContract"] = self.isContract!
                }
                if self.tag != nil {
                    map["Tag"] = self.tag!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Amount") && dict["Amount"] != nil {
                    self.amount = dict["Amount"] as! Int32
                }
                if dict.keys.contains("InputHash") && dict["InputHash"] != nil {
                    self.inputHash = dict["InputHash"] as! String
                }
                if dict.keys.contains("IsContract") && dict["IsContract"] != nil {
                    self.isContract = dict["IsContract"] as! String
                }
                if dict.keys.contains("Tag") && dict["Tag"] != nil {
                    self.tag = dict["Tag"] as! String
                }
            }
        }
        public class OutputDetails : Tea.TeaModel {
            public var amount: Int32?

            public var inputHash: String?

            public var isContract: String?

            public var tag: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.inputHash != nil {
                    map["InputHash"] = self.inputHash!
                }
                if self.isContract != nil {
                    map["IsContract"] = self.isContract!
                }
                if self.tag != nil {
                    map["Tag"] = self.tag!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Amount") && dict["Amount"] != nil {
                    self.amount = dict["Amount"] as! Int32
                }
                if dict.keys.contains("InputHash") && dict["InputHash"] != nil {
                    self.inputHash = dict["InputHash"] as! String
                }
                if dict.keys.contains("IsContract") && dict["IsContract"] != nil {
                    self.isContract = dict["IsContract"] as! String
                }
                if dict.keys.contains("Tag") && dict["Tag"] != nil {
                    self.tag = dict["Tag"] as! String
                }
            }
        }
        public class TokenTransferDetails : Tea.TeaModel {
            public var amount: String?

            public var from: String?

            public var index: Int32?

            public var symbol: String?

            public var to: String?

            public var token: String?

            public var tokenContractAddress: String?

            public var tokenId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.from != nil {
                    map["From"] = self.from!
                }
                if self.index != nil {
                    map["Index"] = self.index!
                }
                if self.symbol != nil {
                    map["Symbol"] = self.symbol!
                }
                if self.to != nil {
                    map["To"] = self.to!
                }
                if self.token != nil {
                    map["Token"] = self.token!
                }
                if self.tokenContractAddress != nil {
                    map["TokenContractAddress"] = self.tokenContractAddress!
                }
                if self.tokenId != nil {
                    map["TokenId"] = self.tokenId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Amount") && dict["Amount"] != nil {
                    self.amount = dict["Amount"] as! String
                }
                if dict.keys.contains("From") && dict["From"] != nil {
                    self.from = dict["From"] as! String
                }
                if dict.keys.contains("Index") && dict["Index"] != nil {
                    self.index = dict["Index"] as! Int32
                }
                if dict.keys.contains("Symbol") && dict["Symbol"] != nil {
                    self.symbol = dict["Symbol"] as! String
                }
                if dict.keys.contains("To") && dict["To"] != nil {
                    self.to = dict["To"] as! String
                }
                if dict.keys.contains("Token") && dict["Token"] != nil {
                    self.token = dict["Token"] as! String
                }
                if dict.keys.contains("TokenContractAddress") && dict["TokenContractAddress"] != nil {
                    self.tokenContractAddress = dict["TokenContractAddress"] as! String
                }
                if dict.keys.contains("TokenId") && dict["TokenId"] != nil {
                    self.tokenId = dict["TokenId"] as! String
                }
            }
        }
        public var amount: String?

        public var chainName: String?

        public var chainShortName: String?

        public var contractDetails: [DescribeWeb3TransactionLabelsResponseBody.Data.ContractDetails]?

        public var errorLog: String?

        public var gasLimit: Int32?

        public var gasPrice: String?

        public var gasUsed: Int32?

        public var height: Int32?

        public var index: Int32?

        public var inputData: String?

        public var inputDetails: [DescribeWeb3TransactionLabelsResponseBody.Data.InputDetails]?

        public var methodId: String?

        public var nonce: String?

        public var outputDetails: [DescribeWeb3TransactionLabelsResponseBody.Data.OutputDetails]?

        public var state: Int32?

        public var tokenTransferDetails: [DescribeWeb3TransactionLabelsResponseBody.Data.TokenTransferDetails]?

        public var transactionSymbol: String?

        public var transactionTime: String?

        public var transactionType: String?

        public var txfee: String?

        public var txid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.chainName != nil {
                map["ChainName"] = self.chainName!
            }
            if self.chainShortName != nil {
                map["ChainShortName"] = self.chainShortName!
            }
            if self.contractDetails != nil {
                var tmp : [Any] = []
                for k in self.contractDetails! {
                    tmp.append(k.toMap())
                }
                map["ContractDetails"] = tmp
            }
            if self.errorLog != nil {
                map["ErrorLog"] = self.errorLog!
            }
            if self.gasLimit != nil {
                map["GasLimit"] = self.gasLimit!
            }
            if self.gasPrice != nil {
                map["GasPrice"] = self.gasPrice!
            }
            if self.gasUsed != nil {
                map["GasUsed"] = self.gasUsed!
            }
            if self.height != nil {
                map["Height"] = self.height!
            }
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.inputData != nil {
                map["InputData"] = self.inputData!
            }
            if self.inputDetails != nil {
                var tmp : [Any] = []
                for k in self.inputDetails! {
                    tmp.append(k.toMap())
                }
                map["InputDetails"] = tmp
            }
            if self.methodId != nil {
                map["MethodId"] = self.methodId!
            }
            if self.nonce != nil {
                map["Nonce"] = self.nonce!
            }
            if self.outputDetails != nil {
                var tmp : [Any] = []
                for k in self.outputDetails! {
                    tmp.append(k.toMap())
                }
                map["OutputDetails"] = tmp
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.tokenTransferDetails != nil {
                var tmp : [Any] = []
                for k in self.tokenTransferDetails! {
                    tmp.append(k.toMap())
                }
                map["TokenTransferDetails"] = tmp
            }
            if self.transactionSymbol != nil {
                map["TransactionSymbol"] = self.transactionSymbol!
            }
            if self.transactionTime != nil {
                map["TransactionTime"] = self.transactionTime!
            }
            if self.transactionType != nil {
                map["TransactionType"] = self.transactionType!
            }
            if self.txfee != nil {
                map["Txfee"] = self.txfee!
            }
            if self.txid != nil {
                map["Txid"] = self.txid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Amount") && dict["Amount"] != nil {
                self.amount = dict["Amount"] as! String
            }
            if dict.keys.contains("ChainName") && dict["ChainName"] != nil {
                self.chainName = dict["ChainName"] as! String
            }
            if dict.keys.contains("ChainShortName") && dict["ChainShortName"] != nil {
                self.chainShortName = dict["ChainShortName"] as! String
            }
            if dict.keys.contains("ContractDetails") && dict["ContractDetails"] != nil {
                var tmp : [DescribeWeb3TransactionLabelsResponseBody.Data.ContractDetails] = []
                for v in dict["ContractDetails"] as! [Any] {
                    var model = DescribeWeb3TransactionLabelsResponseBody.Data.ContractDetails()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.contractDetails = tmp
            }
            if dict.keys.contains("ErrorLog") && dict["ErrorLog"] != nil {
                self.errorLog = dict["ErrorLog"] as! String
            }
            if dict.keys.contains("GasLimit") && dict["GasLimit"] != nil {
                self.gasLimit = dict["GasLimit"] as! Int32
            }
            if dict.keys.contains("GasPrice") && dict["GasPrice"] != nil {
                self.gasPrice = dict["GasPrice"] as! String
            }
            if dict.keys.contains("GasUsed") && dict["GasUsed"] != nil {
                self.gasUsed = dict["GasUsed"] as! Int32
            }
            if dict.keys.contains("Height") && dict["Height"] != nil {
                self.height = dict["Height"] as! Int32
            }
            if dict.keys.contains("Index") && dict["Index"] != nil {
                self.index = dict["Index"] as! Int32
            }
            if dict.keys.contains("InputData") && dict["InputData"] != nil {
                self.inputData = dict["InputData"] as! String
            }
            if dict.keys.contains("InputDetails") && dict["InputDetails"] != nil {
                var tmp : [DescribeWeb3TransactionLabelsResponseBody.Data.InputDetails] = []
                for v in dict["InputDetails"] as! [Any] {
                    var model = DescribeWeb3TransactionLabelsResponseBody.Data.InputDetails()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.inputDetails = tmp
            }
            if dict.keys.contains("MethodId") && dict["MethodId"] != nil {
                self.methodId = dict["MethodId"] as! String
            }
            if dict.keys.contains("Nonce") && dict["Nonce"] != nil {
                self.nonce = dict["Nonce"] as! String
            }
            if dict.keys.contains("OutputDetails") && dict["OutputDetails"] != nil {
                var tmp : [DescribeWeb3TransactionLabelsResponseBody.Data.OutputDetails] = []
                for v in dict["OutputDetails"] as! [Any] {
                    var model = DescribeWeb3TransactionLabelsResponseBody.Data.OutputDetails()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.outputDetails = tmp
            }
            if dict.keys.contains("State") && dict["State"] != nil {
                self.state = dict["State"] as! Int32
            }
            if dict.keys.contains("TokenTransferDetails") && dict["TokenTransferDetails"] != nil {
                var tmp : [DescribeWeb3TransactionLabelsResponseBody.Data.TokenTransferDetails] = []
                for v in dict["TokenTransferDetails"] as! [Any] {
                    var model = DescribeWeb3TransactionLabelsResponseBody.Data.TokenTransferDetails()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tokenTransferDetails = tmp
            }
            if dict.keys.contains("TransactionSymbol") && dict["TransactionSymbol"] != nil {
                self.transactionSymbol = dict["TransactionSymbol"] as! String
            }
            if dict.keys.contains("TransactionTime") && dict["TransactionTime"] != nil {
                self.transactionTime = dict["TransactionTime"] as! String
            }
            if dict.keys.contains("TransactionType") && dict["TransactionType"] != nil {
                self.transactionType = dict["TransactionType"] as! String
            }
            if dict.keys.contains("Txfee") && dict["Txfee"] != nil {
                self.txfee = dict["Txfee"] as! String
            }
            if dict.keys.contains("Txid") && dict["Txid"] != nil {
                self.txid = dict["Txid"] as! String
            }
        }
    }
    public var code: String?

    public var data: DescribeWeb3TransactionLabelsResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeWeb3TransactionLabelsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeWeb3TransactionLabelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWeb3TransactionLabelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeWeb3TransactionLabelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DocOcrRequest : Tea.TeaModel {
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
        if dict.keys.contains("DocType") && dict["DocType"] != nil {
            self.docType = dict["DocType"] as! String
        }
        if dict.keys.contains("IdFaceQuality") && dict["IdFaceQuality"] != nil {
            self.idFaceQuality = dict["IdFaceQuality"] as! String
        }
        if dict.keys.contains("IdOcrPictureBase64") && dict["IdOcrPictureBase64"] != nil {
            self.idOcrPictureBase64 = dict["IdOcrPictureBase64"] as! String
        }
        if dict.keys.contains("IdOcrPictureUrl") && dict["IdOcrPictureUrl"] != nil {
            self.idOcrPictureUrl = dict["IdOcrPictureUrl"] as! String
        }
        if dict.keys.contains("MerchantBizId") && dict["MerchantBizId"] != nil {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("MerchantUserId") && dict["MerchantUserId"] != nil {
            self.merchantUserId = dict["MerchantUserId"] as! String
        }
        if dict.keys.contains("Ocr") && dict["Ocr"] != nil {
            self.ocr = dict["Ocr"] as! String
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("Spoof") && dict["Spoof"] != nil {
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
            if dict.keys.contains("ExtIdInfo") && dict["ExtIdInfo"] != nil {
                self.extIdInfo = dict["ExtIdInfo"] as! String
            }
            if dict.keys.contains("Passed") && dict["Passed"] != nil {
                self.passed = dict["Passed"] as! String
            }
            if dict.keys.contains("SubCode") && dict["SubCode"] != nil {
                self.subCode = dict["SubCode"] as! String
            }
            if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("Authorize") && dict["Authorize"] != nil {
            self.authorize = dict["Authorize"] as! String
        }
        if dict.keys.contains("Crop") && dict["Crop"] != nil {
            self.crop = dict["Crop"] as! String
        }
        if dict.keys.contains("DocName") && dict["DocName"] != nil {
            self.docName = dict["DocName"] as! String
        }
        if dict.keys.contains("DocNo") && dict["DocNo"] != nil {
            self.docNo = dict["DocNo"] as! String
        }
        if dict.keys.contains("DocType") && dict["DocType"] != nil {
            self.docType = dict["DocType"] as! String
        }
        if dict.keys.contains("FacePictureBase64") && dict["FacePictureBase64"] != nil {
            self.facePictureBase64 = dict["FacePictureBase64"] as! String
        }
        if dict.keys.contains("FacePictureUrl") && dict["FacePictureUrl"] != nil {
            self.facePictureUrl = dict["FacePictureUrl"] as! String
        }
        if dict.keys.contains("IdOcrPictureBase64") && dict["IdOcrPictureBase64"] != nil {
            self.idOcrPictureBase64 = dict["IdOcrPictureBase64"] as! String
        }
        if dict.keys.contains("IdOcrPictureUrl") && dict["IdOcrPictureUrl"] != nil {
            self.idOcrPictureUrl = dict["IdOcrPictureUrl"] as! String
        }
        if dict.keys.contains("MerchantBizId") && dict["MerchantBizId"] != nil {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("MerchantUserId") && dict["MerchantUserId"] != nil {
            self.merchantUserId = dict["MerchantUserId"] as! String
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
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
            if dict.keys.contains("ExtFaceInfo") && dict["ExtFaceInfo"] != nil {
                self.extFaceInfo = dict["ExtFaceInfo"] as! String
            }
            if dict.keys.contains("ExtIdInfo") && dict["ExtIdInfo"] != nil {
                self.extIdInfo = dict["ExtIdInfo"] as! String
            }
            if dict.keys.contains("Passed") && dict["Passed"] != nil {
                self.passed = dict["Passed"] as! String
            }
            if dict.keys.contains("SubCode") && dict["SubCode"] != nil {
                self.subCode = dict["SubCode"] as! String
            }
            if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("MerchantBizId") && dict["MerchantBizId"] != nil {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("SourceFacePicture") && dict["SourceFacePicture"] != nil {
            self.sourceFacePicture = dict["SourceFacePicture"] as! String
        }
        if dict.keys.contains("SourceFacePictureUrl") && dict["SourceFacePictureUrl"] != nil {
            self.sourceFacePictureUrl = dict["SourceFacePictureUrl"] as! String
        }
        if dict.keys.contains("TargetFacePicture") && dict["TargetFacePicture"] != nil {
            self.targetFacePicture = dict["TargetFacePicture"] as! String
        }
        if dict.keys.contains("TargetFacePictureUrl") && dict["TargetFacePictureUrl"] != nil {
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
            if dict.keys.contains("FaceComparisonScore") && dict["FaceComparisonScore"] != nil {
                self.faceComparisonScore = dict["FaceComparisonScore"] as! Double
            }
            if dict.keys.contains("Passed") && dict["Passed"] != nil {
                self.passed = dict["Passed"] as! String
            }
            if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = FaceCompareResponseBody()
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
        if dict.keys.contains("Crop") && dict["Crop"] != nil {
            self.crop = dict["Crop"] as! String
        }
        if dict.keys.contains("FacePictureBase64") && dict["FacePictureBase64"] != nil {
            self.facePictureBase64 = dict["FacePictureBase64"] as! String
        }
        if dict.keys.contains("FacePictureUrl") && dict["FacePictureUrl"] != nil {
            self.facePictureUrl = dict["FacePictureUrl"] as! String
        }
        if dict.keys.contains("FaceQuality") && dict["FaceQuality"] != nil {
            self.faceQuality = dict["FaceQuality"] as! String
        }
        if dict.keys.contains("MerchantBizId") && dict["MerchantBizId"] != nil {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("MerchantUserId") && dict["MerchantUserId"] != nil {
            self.merchantUserId = dict["MerchantUserId"] as! String
        }
        if dict.keys.contains("Occlusion") && dict["Occlusion"] != nil {
            self.occlusion = dict["Occlusion"] as! String
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
    }
}

public class FaceLivenessResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class ExtFaceInfo : Tea.TeaModel {
            public var faceAttack: String?

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
                if self.faceAttack != nil {
                    map["FaceAttack"] = self.faceAttack!
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
                if dict.keys.contains("FaceAttack") && dict["FaceAttack"] != nil {
                    self.faceAttack = dict["FaceAttack"] as! String
                }
                if dict.keys.contains("FaceQualityScore") && dict["FaceQualityScore"] != nil {
                    self.faceQualityScore = dict["FaceQualityScore"] as! Double
                }
                if dict.keys.contains("OcclusionResult") && dict["OcclusionResult"] != nil {
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
            if dict.keys.contains("ExtFaceInfo") && dict["ExtFaceInfo"] != nil {
                var model = FaceLivenessResponseBody.Result.ExtFaceInfo()
                model.fromMap(dict["ExtFaceInfo"] as! [String: Any])
                self.extFaceInfo = model
            }
            if dict.keys.contains("Passed") && dict["Passed"] != nil {
                self.passed = dict["Passed"] as! String
            }
            if dict.keys.contains("SubCode") && dict["SubCode"] != nil {
                self.subCode = dict["SubCode"] as! String
            }
            if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("CertifyId") && dict["CertifyId"] != nil {
            self.certifyId = dict["CertifyId"] as! String
        }
        if dict.keys.contains("ExtParams") && dict["ExtParams"] != nil {
            self.extParams = dict["ExtParams"] as! String
        }
        if dict.keys.contains("ResultCode") && dict["ResultCode"] != nil {
            self.resultCode = dict["ResultCode"] as! String
        }
        if dict.keys.contains("VerifyDeployEnv") && dict["VerifyDeployEnv"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = FraudResultCallBackResponseBody()
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
        if dict.keys.contains("IdentifyNum") && dict["IdentifyNum"] != nil {
            self.identifyNum = dict["IdentifyNum"] as! String
        }
        if dict.keys.contains("ParamType") && dict["ParamType"] != nil {
            self.paramType = dict["ParamType"] as! String
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
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
            if dict.keys.contains("BizCode") && dict["BizCode"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = Id2MetaVerifyIntlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InitializeRequest : Tea.TeaModel {
    public var authorize: String?

    public var callbackToken: String?

    public var callbackUrl: String?

    public var crop: String?

    public var docScanMode: String?

    public var docType: String?

    public var facePictureBase64: String?

    public var facePictureUrl: String?

    public var flowType: String?

    public var idFaceQuality: String?

    public var idSpoof: String?

    public var languageConfig: String?

    public var merchantBizId: String?

    public var merchantUserId: String?

    public var metaInfo: String?

    public var ocr: String?

    public var operationMode: String?

    public var pages: String?

    public var productCode: String?

    public var productConfig: String?

    public var productFlow: String?

    public var returnUrl: String?

    public var sceneCode: String?

    public var securityLevel: String?

    public var serviceLevel: String?

    public override init() {
        super.init()
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
        if self.facePictureBase64 != nil {
            map["FacePictureBase64"] = self.facePictureBase64!
        }
        if self.facePictureUrl != nil {
            map["FacePictureUrl"] = self.facePictureUrl!
        }
        if self.flowType != nil {
            map["FlowType"] = self.flowType!
        }
        if self.idFaceQuality != nil {
            map["IdFaceQuality"] = self.idFaceQuality!
        }
        if self.idSpoof != nil {
            map["IdSpoof"] = self.idSpoof!
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
        if self.ocr != nil {
            map["Ocr"] = self.ocr!
        }
        if self.operationMode != nil {
            map["OperationMode"] = self.operationMode!
        }
        if self.pages != nil {
            map["Pages"] = self.pages!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productConfig != nil {
            map["ProductConfig"] = self.productConfig!
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
        if self.serviceLevel != nil {
            map["ServiceLevel"] = self.serviceLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Authorize") && dict["Authorize"] != nil {
            self.authorize = dict["Authorize"] as! String
        }
        if dict.keys.contains("CallbackToken") && dict["CallbackToken"] != nil {
            self.callbackToken = dict["CallbackToken"] as! String
        }
        if dict.keys.contains("CallbackUrl") && dict["CallbackUrl"] != nil {
            self.callbackUrl = dict["CallbackUrl"] as! String
        }
        if dict.keys.contains("Crop") && dict["Crop"] != nil {
            self.crop = dict["Crop"] as! String
        }
        if dict.keys.contains("DocScanMode") && dict["DocScanMode"] != nil {
            self.docScanMode = dict["DocScanMode"] as! String
        }
        if dict.keys.contains("DocType") && dict["DocType"] != nil {
            self.docType = dict["DocType"] as! String
        }
        if dict.keys.contains("FacePictureBase64") && dict["FacePictureBase64"] != nil {
            self.facePictureBase64 = dict["FacePictureBase64"] as! String
        }
        if dict.keys.contains("FacePictureUrl") && dict["FacePictureUrl"] != nil {
            self.facePictureUrl = dict["FacePictureUrl"] as! String
        }
        if dict.keys.contains("FlowType") && dict["FlowType"] != nil {
            self.flowType = dict["FlowType"] as! String
        }
        if dict.keys.contains("IdFaceQuality") && dict["IdFaceQuality"] != nil {
            self.idFaceQuality = dict["IdFaceQuality"] as! String
        }
        if dict.keys.contains("IdSpoof") && dict["IdSpoof"] != nil {
            self.idSpoof = dict["IdSpoof"] as! String
        }
        if dict.keys.contains("LanguageConfig") && dict["LanguageConfig"] != nil {
            self.languageConfig = dict["LanguageConfig"] as! String
        }
        if dict.keys.contains("MerchantBizId") && dict["MerchantBizId"] != nil {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("MerchantUserId") && dict["MerchantUserId"] != nil {
            self.merchantUserId = dict["MerchantUserId"] as! String
        }
        if dict.keys.contains("MetaInfo") && dict["MetaInfo"] != nil {
            self.metaInfo = dict["MetaInfo"] as! String
        }
        if dict.keys.contains("Ocr") && dict["Ocr"] != nil {
            self.ocr = dict["Ocr"] as! String
        }
        if dict.keys.contains("OperationMode") && dict["OperationMode"] != nil {
            self.operationMode = dict["OperationMode"] as! String
        }
        if dict.keys.contains("Pages") && dict["Pages"] != nil {
            self.pages = dict["Pages"] as! String
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("ProductConfig") && dict["ProductConfig"] != nil {
            self.productConfig = dict["ProductConfig"] as! String
        }
        if dict.keys.contains("ProductFlow") && dict["ProductFlow"] != nil {
            self.productFlow = dict["ProductFlow"] as! String
        }
        if dict.keys.contains("ReturnUrl") && dict["ReturnUrl"] != nil {
            self.returnUrl = dict["ReturnUrl"] as! String
        }
        if dict.keys.contains("SceneCode") && dict["SceneCode"] != nil {
            self.sceneCode = dict["SceneCode"] as! String
        }
        if dict.keys.contains("SecurityLevel") && dict["SecurityLevel"] != nil {
            self.securityLevel = dict["SecurityLevel"] as! String
        }
        if dict.keys.contains("ServiceLevel") && dict["ServiceLevel"] != nil {
            self.serviceLevel = dict["ServiceLevel"] as! String
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
            if dict.keys.contains("ClientCfg") && dict["ClientCfg"] != nil {
                self.clientCfg = dict["ClientCfg"] as! String
            }
            if dict.keys.contains("TransactionId") && dict["TransactionId"] != nil {
                self.transactionId = dict["TransactionId"] as! String
            }
            if dict.keys.contains("TransactionUrl") && dict["TransactionUrl"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("IdentifyNum") && dict["IdentifyNum"] != nil {
            self.identifyNum = dict["IdentifyNum"] as! String
        }
        if dict.keys.contains("Mobile") && dict["Mobile"] != nil {
            self.mobile = dict["Mobile"] as! String
        }
        if dict.keys.contains("ParamType") && dict["ParamType"] != nil {
            self.paramType = dict["ParamType"] as! String
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
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
            if dict.keys.contains("BizCode") && dict["BizCode"] != nil {
                self.bizCode = dict["BizCode"] as! String
            }
            if dict.keys.contains("IspName") && dict["IspName"] != nil {
                self.ispName = dict["IspName"] as! String
            }
            if dict.keys.contains("SubCode") && dict["SubCode"] != nil {
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
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = Mobile3MetaVerifyIntlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
