import Foundation
import Tea
import TeaUtils
import DarabonbaXML
import AlibabaCloudCredentials
import TeaFileForm
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddFaceRecordRequest : Tea.TeaModel {
    public var faceGroupCode: String?

    public var facePicture: String?

    public var facePictureFile: String?

    public var facePictureUrl: String?

    public var faceQualityCheck: String?

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
        if self.faceGroupCode != nil {
            map["FaceGroupCode"] = self.faceGroupCode!
        }
        if self.facePicture != nil {
            map["FacePicture"] = self.facePicture!
        }
        if self.facePictureFile != nil {
            map["FacePictureFile"] = self.facePictureFile!
        }
        if self.facePictureUrl != nil {
            map["FacePictureUrl"] = self.facePictureUrl!
        }
        if self.faceQualityCheck != nil {
            map["FaceQualityCheck"] = self.faceQualityCheck!
        }
        if self.merchantUserId != nil {
            map["MerchantUserId"] = self.merchantUserId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FaceGroupCode"] as? String {
            self.faceGroupCode = value
        }
        if let value = dict["FacePicture"] as? String {
            self.facePicture = value
        }
        if let value = dict["FacePictureFile"] as? String {
            self.facePictureFile = value
        }
        if let value = dict["FacePictureUrl"] as? String {
            self.facePictureUrl = value
        }
        if let value = dict["FaceQualityCheck"] as? String {
            self.faceQualityCheck = value
        }
        if let value = dict["MerchantUserId"] as? String {
            self.merchantUserId = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
    }
}

public class AddFaceRecordAdvanceRequest : Tea.TeaModel {
    public var faceGroupCode: String?

    public var facePicture: String?

    public var facePictureFileObject: InputStream?

    public var facePictureUrl: String?

    public var faceQualityCheck: String?

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
        if self.faceGroupCode != nil {
            map["FaceGroupCode"] = self.faceGroupCode!
        }
        if self.facePicture != nil {
            map["FacePicture"] = self.facePicture!
        }
        if self.facePictureFileObject != nil {
            map["FacePictureFile"] = self.facePictureFileObject!
        }
        if self.facePictureUrl != nil {
            map["FacePictureUrl"] = self.facePictureUrl!
        }
        if self.faceQualityCheck != nil {
            map["FaceQualityCheck"] = self.faceQualityCheck!
        }
        if self.merchantUserId != nil {
            map["MerchantUserId"] = self.merchantUserId!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FaceGroupCode"] as? String {
            self.faceGroupCode = value
        }
        if let value = dict["FacePicture"] as? String {
            self.facePicture = value
        }
        if let value = dict["FacePictureFile"] as? InputStream {
            self.facePictureFileObject = value
        }
        if let value = dict["FacePictureUrl"] as? String {
            self.facePictureUrl = value
        }
        if let value = dict["FaceQualityCheck"] as? String {
            self.faceQualityCheck = value
        }
        if let value = dict["MerchantUserId"] as? String {
            self.merchantUserId = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
    }
}

public class AddFaceRecordResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var extFaceInfo: String?

        public var passed: String?

        public override init() {
            super.init()
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
            if self.passed != nil {
                map["Passed"] = self.passed!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExtFaceInfo"] as? String {
                self.extFaceInfo = value
            }
            if let value = dict["Passed"] as? String {
                self.passed = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: AddFaceRecordResponseBody.Result?

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
            var model = AddFaceRecordResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class AddFaceRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddFaceRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddFaceRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddressCompareIntlRequest : Tea.TeaModel {
    public var defaultCountry: String?

    public var productCode: String?

    public var text1: String?

    public var text2: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defaultCountry != nil {
            map["DefaultCountry"] = self.defaultCountry!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.text1 != nil {
            map["Text1"] = self.text1!
        }
        if self.text2 != nil {
            map["Text2"] = self.text2!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefaultCountry"] as? String {
            self.defaultCountry = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["Text1"] as? String {
            self.text1 = value
        }
        if let value = dict["Text2"] as? String {
            self.text2 = value
        }
    }
}

public class AddressCompareIntlResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var data: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? String {
                self.data = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: AddressCompareIntlResponseBody.Result?

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
            var model = AddressCompareIntlResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class AddressCompareIntlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddressCompareIntlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddressCompareIntlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddressVerifyIntlRequest : Tea.TeaModel {
    public var addressType: String?

    public var defaultCity: String?

    public var defaultCountry: String?

    public var defaultDistrict: String?

    public var defaultProvince: String?

    public var latitude: String?

    public var longitude: String?

    public var mobile: String?

    public var productCode: String?

    public var text: String?

    public var verifyType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressType != nil {
            map["AddressType"] = self.addressType!
        }
        if self.defaultCity != nil {
            map["DefaultCity"] = self.defaultCity!
        }
        if self.defaultCountry != nil {
            map["DefaultCountry"] = self.defaultCountry!
        }
        if self.defaultDistrict != nil {
            map["DefaultDistrict"] = self.defaultDistrict!
        }
        if self.defaultProvince != nil {
            map["DefaultProvince"] = self.defaultProvince!
        }
        if self.latitude != nil {
            map["Latitude"] = self.latitude!
        }
        if self.longitude != nil {
            map["Longitude"] = self.longitude!
        }
        if self.mobile != nil {
            map["Mobile"] = self.mobile!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        if self.verifyType != nil {
            map["VerifyType"] = self.verifyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddressType"] as? String {
            self.addressType = value
        }
        if let value = dict["DefaultCity"] as? String {
            self.defaultCity = value
        }
        if let value = dict["DefaultCountry"] as? String {
            self.defaultCountry = value
        }
        if let value = dict["DefaultDistrict"] as? String {
            self.defaultDistrict = value
        }
        if let value = dict["DefaultProvince"] as? String {
            self.defaultProvince = value
        }
        if let value = dict["Latitude"] as? String {
            self.latitude = value
        }
        if let value = dict["Longitude"] as? String {
            self.longitude = value
        }
        if let value = dict["Mobile"] as? String {
            self.mobile = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["Text"] as? String {
            self.text = value
        }
        if let value = dict["VerifyType"] as? String {
            self.verifyType = value
        }
    }
}

public class AddressVerifyIntlResponseBody : Tea.TeaModel {
    public class ResultObject : Tea.TeaModel {
        public var addressInfo: String?

        public var ispName: String?

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
            if self.addressInfo != nil {
                map["AddressInfo"] = self.addressInfo!
            }
            if self.ispName != nil {
                map["IspName"] = self.ispName!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddressInfo"] as? String {
                self.addressInfo = value
            }
            if let value = dict["IspName"] as? String {
                self.ispName = value
            }
            if let value = dict["Passed"] as? String {
                self.passed = value
            }
            if let value = dict["SubCode"] as? String {
                self.subCode = value
            }
            if let value = dict["TransactionId"] as? String {
                self.transactionId = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var resultObject: AddressVerifyIntlResponseBody.ResultObject?

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
            var model = AddressVerifyIntlResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class AddressVerifyIntlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddressVerifyIntlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddressVerifyIntlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddressVerifyV2IntlRequest : Tea.TeaModel {
    public var deviceToken: String?

    public var mobile: String?

    public var productCode: String?

    public var regCountry: String?

    public var text: String?

    public var verifyType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceToken != nil {
            map["DeviceToken"] = self.deviceToken!
        }
        if self.mobile != nil {
            map["Mobile"] = self.mobile!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.regCountry != nil {
            map["RegCountry"] = self.regCountry!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        if self.verifyType != nil {
            map["VerifyType"] = self.verifyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeviceToken"] as? String {
            self.deviceToken = value
        }
        if let value = dict["Mobile"] as? String {
            self.mobile = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["RegCountry"] as? String {
            self.regCountry = value
        }
        if let value = dict["Text"] as? String {
            self.text = value
        }
        if let value = dict["VerifyType"] as? String {
            self.verifyType = value
        }
    }
}

public class AddressVerifyV2IntlResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var bizCode: String?

        public var detail: String?

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
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            if self.detail != nil {
                map["Detail"] = self.detail!
            }
            if self.transactionId != nil {
                map["TransactionId"] = self.transactionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["Detail"] as? String {
                self.detail = value
            }
            if let value = dict["TransactionId"] as? String {
                self.transactionId = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: AddressVerifyV2IntlResponseBody.Result?

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
            var model = AddressVerifyV2IntlResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class AddressVerifyV2IntlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddressVerifyV2IntlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddressVerifyV2IntlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BankMetaVerifyIntlRequest : Tea.TeaModel {
    public var bankCard: String?

    public var identifyNum: String?

    public var identityType: String?

    public var mobile: String?

    public var paramType: String?

    public var productCode: String?

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
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
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
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
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

public class BankMetaVerifyIntlResponseBody : Tea.TeaModel {
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

    public var resultObject: BankMetaVerifyIntlResponseBody.ResultObject?

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
            var model = BankMetaVerifyIntlResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class BankMetaVerifyIntlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BankMetaVerifyIntlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BankMetaVerifyIntlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DocType"] as? String {
            self.docType = value
        }
        if let value = dict["IdFaceQuality"] as? String {
            self.idFaceQuality = value
        }
        if let value = dict["IdOcrPictureBase64"] as? String {
            self.idOcrPictureBase64 = value
        }
        if let value = dict["IdOcrPictureUrl"] as? String {
            self.idOcrPictureUrl = value
        }
        if let value = dict["MerchantBizId"] as? String {
            self.merchantBizId = value
        }
        if let value = dict["MerchantUserId"] as? String {
            self.merchantUserId = value
        }
        if let value = dict["Ocr"] as? String {
            self.ocr = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["Spoof"] as? String {
            self.spoof = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExtCardInfo"] as? String {
                self.extCardInfo = value
            }
            if let value = dict["ExtIdInfo"] as? String {
                self.extIdInfo = value
            }
            if let value = dict["Passed"] as? String {
                self.passed = value
            }
            if let value = dict["SubCode"] as? String {
                self.subCode = value
            }
            if let value = dict["TransactionId"] as? String {
                self.transactionId = value
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
            var model = CardOcrResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CardOcrResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExtraImageControlList"] as? String {
            self.extraImageControlList = value
        }
        if let value = dict["IsReturnImage"] as? String {
            self.isReturnImage = value
        }
        if let value = dict["MerchantBizId"] as? String {
            self.merchantBizId = value
        }
        if let value = dict["ReturnFiveCategorySpoofResult"] as? String {
            self.returnFiveCategorySpoofResult = value
        }
        if let value = dict["TransactionId"] as? String {
            self.transactionId = value
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

        public var extSourceInfo: String?

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
            if self.extSourceInfo != nil {
                map["ExtSourceInfo"] = self.extSourceInfo!
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
            if let value = dict["EkycResult"] as? String {
                self.ekycResult = value
            }
            if let value = dict["ExtBasicInfo"] as? String {
                self.extBasicInfo = value
            }
            if let value = dict["ExtFaceInfo"] as? String {
                self.extFaceInfo = value
            }
            if let value = dict["ExtIdInfo"] as? String {
                self.extIdInfo = value
            }
            if let value = dict["ExtInfo"] as? String {
                self.extInfo = value
            }
            if let value = dict["ExtRiskInfo"] as? String {
                self.extRiskInfo = value
            }
            if let value = dict["ExtSourceInfo"] as? String {
                self.extSourceInfo = value
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
            var model = CheckResultResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MerchantBizId"] as? String {
            self.merchantBizId = value
        }
        if let value = dict["TransactionId"] as? String {
            self.transactionId = value
        }
    }
}

public class CheckVerifyLogResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var extInfo: String?

        public var interruptPage: String?

        public var interruptPageEn: String?

        public var logInfo: [String]?

        public var logInfoEn: [String]?

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
            if self.interruptPageEn != nil {
                map["InterruptPageEn"] = self.interruptPageEn!
            }
            if self.logInfo != nil {
                map["LogInfo"] = self.logInfo!
            }
            if self.logInfoEn != nil {
                map["LogInfoEn"] = self.logInfoEn!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExtInfo"] as? String {
                self.extInfo = value
            }
            if let value = dict["InterruptPage"] as? String {
                self.interruptPage = value
            }
            if let value = dict["InterruptPageEn"] as? String {
                self.interruptPageEn = value
            }
            if let value = dict["LogInfo"] as? [String] {
                self.logInfo = value
            }
            if let value = dict["LogInfoEn"] as? [String] {
                self.logInfoEn = value
            }
            if let value = dict["LogStatisticsInfo"] as? String {
                self.logStatisticsInfo = value
            }
            if let value = dict["Passed"] as? String {
                self.passed = value
            }
            if let value = dict["SubCode"] as? String {
                self.subCode = value
            }
            if let value = dict["VerifyErrorCode"] as? String {
                self.verifyErrorCode = value
            }
            if let value = dict["VerifyStatus"] as? String {
                self.verifyStatus = value
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
            var model = CheckVerifyLogResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckVerifyLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CredentialGetResultIntlRequest : Tea.TeaModel {
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
        if self.transactionId != nil {
            map["TransactionId"] = self.transactionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TransactionId"] as? String {
            self.transactionId = value
        }
    }
}

public class CredentialGetResultIntlResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var extIdInfo: String?

        public var status: String?

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
            if self.extIdInfo != nil {
                map["ExtIdInfo"] = self.extIdInfo!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subCode != nil {
                map["SubCode"] = self.subCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExtIdInfo"] as? String {
                self.extIdInfo = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SubCode"] as? String {
                self.subCode = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: CredentialGetResultIntlResponseBody.Result?

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
            var model = CredentialGetResultIntlResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class CredentialGetResultIntlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CredentialGetResultIntlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CredentialGetResultIntlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CredentialRecognitionIntlRequest : Tea.TeaModel {
    public var credentialOcrPictureBase64: String?

    public var credentialOcrPictureUrl: String?

    public var docType: String?

    public var fraudCheck: String?

    public var ocrArea: String?

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
        if self.credentialOcrPictureBase64 != nil {
            map["CredentialOcrPictureBase64"] = self.credentialOcrPictureBase64!
        }
        if self.credentialOcrPictureUrl != nil {
            map["CredentialOcrPictureUrl"] = self.credentialOcrPictureUrl!
        }
        if self.docType != nil {
            map["DocType"] = self.docType!
        }
        if self.fraudCheck != nil {
            map["FraudCheck"] = self.fraudCheck!
        }
        if self.ocrArea != nil {
            map["OcrArea"] = self.ocrArea!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialOcrPictureBase64"] as? String {
            self.credentialOcrPictureBase64 = value
        }
        if let value = dict["CredentialOcrPictureUrl"] as? String {
            self.credentialOcrPictureUrl = value
        }
        if let value = dict["DocType"] as? String {
            self.docType = value
        }
        if let value = dict["FraudCheck"] as? String {
            self.fraudCheck = value
        }
        if let value = dict["OcrArea"] as? String {
            self.ocrArea = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
    }
}

public class CredentialRecognitionIntlResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var extIdInfo: String?

        public var subCode: String?

        public var success: String?

        public override init() {
            super.init()
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
            if self.subCode != nil {
                map["SubCode"] = self.subCode!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExtIdInfo"] as? String {
                self.extIdInfo = value
            }
            if let value = dict["SubCode"] as? String {
                self.subCode = value
            }
            if let value = dict["Success"] as? String {
                self.success = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: CredentialRecognitionIntlResponseBody.Result?

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
            var model = CredentialRecognitionIntlResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class CredentialRecognitionIntlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CredentialRecognitionIntlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CredentialRecognitionIntlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CredentialSubmitIntlRequest : Tea.TeaModel {
    public var credentialOcrPictureBase64: String?

    public var credentialOcrPictureUrl: String?

    public var docType: String?

    public var fraudCheck: String?

    public var merchantBizId: String?

    public var ocrArea: String?

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
        if self.credentialOcrPictureBase64 != nil {
            map["CredentialOcrPictureBase64"] = self.credentialOcrPictureBase64!
        }
        if self.credentialOcrPictureUrl != nil {
            map["CredentialOcrPictureUrl"] = self.credentialOcrPictureUrl!
        }
        if self.docType != nil {
            map["DocType"] = self.docType!
        }
        if self.fraudCheck != nil {
            map["FraudCheck"] = self.fraudCheck!
        }
        if self.merchantBizId != nil {
            map["MerchantBizId"] = self.merchantBizId!
        }
        if self.ocrArea != nil {
            map["OcrArea"] = self.ocrArea!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.sceneCode != nil {
            map["SceneCode"] = self.sceneCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialOcrPictureBase64"] as? String {
            self.credentialOcrPictureBase64 = value
        }
        if let value = dict["CredentialOcrPictureUrl"] as? String {
            self.credentialOcrPictureUrl = value
        }
        if let value = dict["DocType"] as? String {
            self.docType = value
        }
        if let value = dict["FraudCheck"] as? String {
            self.fraudCheck = value
        }
        if let value = dict["MerchantBizId"] as? String {
            self.merchantBizId = value
        }
        if let value = dict["OcrArea"] as? String {
            self.ocrArea = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["SceneCode"] as? String {
            self.sceneCode = value
        }
    }
}

public class CredentialSubmitIntlResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
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
            if self.transactionId != nil {
                map["TransactionId"] = self.transactionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TransactionId"] as? String {
                self.transactionId = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: CredentialSubmitIntlResponseBody.Result?

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
            var model = CredentialSubmitIntlResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class CredentialSubmitIntlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CredentialSubmitIntlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CredentialSubmitIntlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CredentialVerifyIntlRequest : Tea.TeaModel {
    public var credName: String?

    public var credType: String?

    public var imageFile: String?

    public var imageUrl: String?

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
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
    }
}

public class CredentialVerifyIntlAdvanceRequest : Tea.TeaModel {
    public var credName: String?

    public var credType: String?

    public var imageFileObject: InputStream?

    public var imageUrl: String?

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
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
    }
}

public class CredentialVerifyIntlResponseBody : Tea.TeaModel {
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

    public var resultObject: CredentialVerifyIntlResponseBody.ResultObject?

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
            var model = CredentialVerifyIntlResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class CredentialVerifyIntlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CredentialVerifyIntlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CredentialVerifyIntlResponseBody()
            model.fromMap(value)
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
        if let value = dict["MerchantBizId"] as? String {
            self.merchantBizId = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["SceneCode"] as? String {
            self.sceneCode = value
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
            var model = DeepfakeDetectIntlResponseBody.ResultObject()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeepfakeDetectIntlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeepfakeDetectIntlStreamRequest : Tea.TeaModel {
    public var faceBase64: String?

    public var faceFile: String?

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
        if self.faceFile != nil {
            map["FaceFile"] = self.faceFile!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FaceBase64"] as? String {
            self.faceBase64 = value
        }
        if let value = dict["FaceFile"] as? String {
            self.faceFile = value
        }
        if let value = dict["FaceInputType"] as? String {
            self.faceInputType = value
        }
        if let value = dict["FaceUrl"] as? String {
            self.faceUrl = value
        }
        if let value = dict["MerchantBizId"] as? String {
            self.merchantBizId = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["SceneCode"] as? String {
            self.sceneCode = value
        }
    }
}

public class DeepfakeDetectIntlStreamAdvanceRequest : Tea.TeaModel {
    public var faceBase64: String?

    public var faceFileObject: InputStream?

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
        if self.faceFileObject != nil {
            map["FaceFile"] = self.faceFileObject!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FaceBase64"] as? String {
            self.faceBase64 = value
        }
        if let value = dict["FaceFile"] as? InputStream {
            self.faceFileObject = value
        }
        if let value = dict["FaceInputType"] as? String {
            self.faceInputType = value
        }
        if let value = dict["FaceUrl"] as? String {
            self.faceUrl = value
        }
        if let value = dict["MerchantBizId"] as? String {
            self.merchantBizId = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["SceneCode"] as? String {
            self.sceneCode = value
        }
    }
}

public class DeepfakeDetectIntlStreamResponseBody : Tea.TeaModel {
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

    public var resultObject: DeepfakeDetectIntlStreamResponseBody.ResultObject?

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
            var model = DeepfakeDetectIntlStreamResponseBody.ResultObject()
            model.fromMap(value)
            self.resultObject = model
        }
    }
}

public class DeepfakeDetectIntlStreamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeepfakeDetectIntlStreamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeepfakeDetectIntlStreamResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFaceGroupRequest : Tea.TeaModel {
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
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
    }
}

public class DeleteFaceGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int32?

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
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["Data"] as? Int32 {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteFaceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFaceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteFaceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFaceRecordRequest : Tea.TeaModel {
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
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
    }
}

public class DeleteFaceRecordResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int32?

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
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["Data"] as? Int32 {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteFaceRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFaceRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteFaceRecordResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeleteAfterQuery"] as? String {
            self.deleteAfterQuery = value
        }
        if let value = dict["DeleteType"] as? String {
            self.deleteType = value
        }
        if let value = dict["TransactionId"] as? String {
            self.transactionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeleteResult"] as? String {
                self.deleteResult = value
            }
            if let value = dict["TransactionId"] as? String {
                self.transactionId = value
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
            var model = DeleteVerifyResultResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteVerifyResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CardSide"] as? String {
            self.cardSide = value
        }
        if let value = dict["DocType"] as? String {
            self.docType = value
        }
        if let value = dict["IdFaceQuality"] as? String {
            self.idFaceQuality = value
        }
        if let value = dict["IdOcrPictureBase64"] as? String {
            self.idOcrPictureBase64 = value
        }
        if let value = dict["IdOcrPictureUrl"] as? String {
            self.idOcrPictureUrl = value
        }
        if let value = dict["IdThreshold"] as? String {
            self.idThreshold = value
        }
        if let value = dict["MerchantBizId"] as? String {
            self.merchantBizId = value
        }
        if let value = dict["MerchantUserId"] as? String {
            self.merchantUserId = value
        }
        if let value = dict["Ocr"] as? String {
            self.ocr = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["Spoof"] as? String {
            self.spoof = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExtIdInfo"] as? String {
                self.extIdInfo = value
            }
            if let value = dict["Passed"] as? String {
                self.passed = value
            }
            if let value = dict["SubCode"] as? String {
                self.subCode = value
            }
            if let value = dict["TransactionId"] as? String {
                self.transactionId = value
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
            var model = DocOcrResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DocOcrResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DocOcrMaxRequest : Tea.TeaModel {
    public var authorize: String?

    public var docPage: String?

    public var docType: String?

    public var idOcrPictureBase64: String?

    public var idOcrPictureUrl: String?

    public var idSpoof: String?

    public var idThreshold: String?

    public var merchantBizId: String?

    public var merchantUserId: String?

    public var ocrModel: String?

    public var ocrValueStandard: String?

    public var productCode: String?

    public var prompt: String?

    public var sceneCode: String?

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
        if self.authorize != nil {
            map["Authorize"] = self.authorize!
        }
        if self.docPage != nil {
            map["DocPage"] = self.docPage!
        }
        if self.docType != nil {
            map["DocType"] = self.docType!
        }
        if self.idOcrPictureBase64 != nil {
            map["IdOcrPictureBase64"] = self.idOcrPictureBase64!
        }
        if self.idOcrPictureUrl != nil {
            map["IdOcrPictureUrl"] = self.idOcrPictureUrl!
        }
        if self.idSpoof != nil {
            map["IdSpoof"] = self.idSpoof!
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
        if self.ocrModel != nil {
            map["OcrModel"] = self.ocrModel!
        }
        if self.ocrValueStandard != nil {
            map["OcrValueStandard"] = self.ocrValueStandard!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.prompt != nil {
            map["Prompt"] = self.prompt!
        }
        if self.sceneCode != nil {
            map["SceneCode"] = self.sceneCode!
        }
        if self.spoof != nil {
            map["Spoof"] = self.spoof!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Authorize"] as? String {
            self.authorize = value
        }
        if let value = dict["DocPage"] as? String {
            self.docPage = value
        }
        if let value = dict["DocType"] as? String {
            self.docType = value
        }
        if let value = dict["IdOcrPictureBase64"] as? String {
            self.idOcrPictureBase64 = value
        }
        if let value = dict["IdOcrPictureUrl"] as? String {
            self.idOcrPictureUrl = value
        }
        if let value = dict["IdSpoof"] as? String {
            self.idSpoof = value
        }
        if let value = dict["IdThreshold"] as? String {
            self.idThreshold = value
        }
        if let value = dict["MerchantBizId"] as? String {
            self.merchantBizId = value
        }
        if let value = dict["MerchantUserId"] as? String {
            self.merchantUserId = value
        }
        if let value = dict["OcrModel"] as? String {
            self.ocrModel = value
        }
        if let value = dict["OcrValueStandard"] as? String {
            self.ocrValueStandard = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["Prompt"] as? String {
            self.prompt = value
        }
        if let value = dict["SceneCode"] as? String {
            self.sceneCode = value
        }
        if let value = dict["Spoof"] as? String {
            self.spoof = value
        }
    }
}

public class DocOcrMaxResponseBody : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExtIdInfo"] as? String {
                self.extIdInfo = value
            }
            if let value = dict["Passed"] as? String {
                self.passed = value
            }
            if let value = dict["SubCode"] as? String {
                self.subCode = value
            }
            if let value = dict["TransactionId"] as? String {
                self.transactionId = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: DocOcrMaxResponseBody.Result?

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
            var model = DocOcrMaxResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class DocOcrMaxResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DocOcrMaxResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DocOcrMaxResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DownloadVerifyRecordIntlRequest : Tea.TeaModel {
    public var bizType: String?

    public var code: String?

    public var downloadMode: String?

    public var param: String?

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
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.downloadMode != nil {
            map["DownloadMode"] = self.downloadMode!
        }
        if self.param != nil {
            map["Param"] = self.param!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["DownloadMode"] as? String {
            self.downloadMode = value
        }
        if let value = dict["Param"] as? String {
            self.param = value
        }
        if let value = dict["ProductType"] as? String {
            self.productType = value
        }
    }
}

public class DownloadVerifyRecordIntlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var downloadTaskId: String?

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
            if self.downloadTaskId != nil {
                map["DownloadTaskId"] = self.downloadTaskId!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DownloadTaskId"] as? String {
                self.downloadTaskId = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var code: String?

    public var data: DownloadVerifyRecordIntlResponseBody.Data?

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
            var model = DownloadVerifyRecordIntlResponseBody.Data()
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

public class DownloadVerifyRecordIntlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DownloadVerifyRecordIntlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DownloadVerifyRecordIntlResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Authorize"] as? String {
            self.authorize = value
        }
        if let value = dict["Crop"] as? String {
            self.crop = value
        }
        if let value = dict["DocName"] as? String {
            self.docName = value
        }
        if let value = dict["DocNo"] as? String {
            self.docNo = value
        }
        if let value = dict["DocType"] as? String {
            self.docType = value
        }
        if let value = dict["FacePictureBase64"] as? String {
            self.facePictureBase64 = value
        }
        if let value = dict["FacePictureUrl"] as? String {
            self.facePictureUrl = value
        }
        if let value = dict["IdOcrPictureBase64"] as? String {
            self.idOcrPictureBase64 = value
        }
        if let value = dict["IdOcrPictureUrl"] as? String {
            self.idOcrPictureUrl = value
        }
        if let value = dict["IdThreshold"] as? String {
            self.idThreshold = value
        }
        if let value = dict["MerchantBizId"] as? String {
            self.merchantBizId = value
        }
        if let value = dict["MerchantUserId"] as? String {
            self.merchantUserId = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExtFaceInfo"] as? String {
                self.extFaceInfo = value
            }
            if let value = dict["ExtIdInfo"] as? String {
                self.extIdInfo = value
            }
            if let value = dict["Passed"] as? String {
                self.passed = value
            }
            if let value = dict["SubCode"] as? String {
                self.subCode = value
            }
            if let value = dict["TransactionId"] as? String {
                self.transactionId = value
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
            var model = EkycVerifyResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EkycVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FaceCompareRequest : Tea.TeaModel {
    public var facePictureQualityCheck: String?

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
        if self.facePictureQualityCheck != nil {
            map["FacePictureQualityCheck"] = self.facePictureQualityCheck!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FacePictureQualityCheck"] as? String {
            self.facePictureQualityCheck = value
        }
        if let value = dict["MerchantBizId"] as? String {
            self.merchantBizId = value
        }
        if let value = dict["SourceFacePicture"] as? String {
            self.sourceFacePicture = value
        }
        if let value = dict["SourceFacePictureUrl"] as? String {
            self.sourceFacePictureUrl = value
        }
        if let value = dict["TargetFacePicture"] as? String {
            self.targetFacePicture = value
        }
        if let value = dict["TargetFacePictureUrl"] as? String {
            self.targetFacePictureUrl = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FaceComparisonScore"] as? Double {
                self.faceComparisonScore = value
            }
            if let value = dict["Passed"] as? String {
                self.passed = value
            }
            if let value = dict["TransactionId"] as? String {
                self.transactionId = value
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
            var model = FaceCompareResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = FaceCompareResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FaceCrossCompareIntlRequest : Tea.TeaModel {
    public var compareModel: String?

    public var faceVerifyThreshold: String?

    public var merchantBizId: String?

    public var productCode: String?

    public var sceneCode: String?

    public var sourceAFacePicture: String?

    public var sourceAFacePictureUrl: String?

    public var sourceBFacePicture: String?

    public var sourceBFacePictureUrl: String?

    public var sourceCFacePicture: String?

    public var sourceCFacePictureUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.compareModel != nil {
            map["CompareModel"] = self.compareModel!
        }
        if self.faceVerifyThreshold != nil {
            map["FaceVerifyThreshold"] = self.faceVerifyThreshold!
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
        if self.sourceAFacePicture != nil {
            map["SourceAFacePicture"] = self.sourceAFacePicture!
        }
        if self.sourceAFacePictureUrl != nil {
            map["SourceAFacePictureUrl"] = self.sourceAFacePictureUrl!
        }
        if self.sourceBFacePicture != nil {
            map["SourceBFacePicture"] = self.sourceBFacePicture!
        }
        if self.sourceBFacePictureUrl != nil {
            map["SourceBFacePictureUrl"] = self.sourceBFacePictureUrl!
        }
        if self.sourceCFacePicture != nil {
            map["SourceCFacePicture"] = self.sourceCFacePicture!
        }
        if self.sourceCFacePictureUrl != nil {
            map["SourceCFacePictureUrl"] = self.sourceCFacePictureUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CompareModel"] as? String {
            self.compareModel = value
        }
        if let value = dict["FaceVerifyThreshold"] as? String {
            self.faceVerifyThreshold = value
        }
        if let value = dict["MerchantBizId"] as? String {
            self.merchantBizId = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["SceneCode"] as? String {
            self.sceneCode = value
        }
        if let value = dict["SourceAFacePicture"] as? String {
            self.sourceAFacePicture = value
        }
        if let value = dict["SourceAFacePictureUrl"] as? String {
            self.sourceAFacePictureUrl = value
        }
        if let value = dict["SourceBFacePicture"] as? String {
            self.sourceBFacePicture = value
        }
        if let value = dict["SourceBFacePictureUrl"] as? String {
            self.sourceBFacePictureUrl = value
        }
        if let value = dict["SourceCFacePicture"] as? String {
            self.sourceCFacePicture = value
        }
        if let value = dict["SourceCFacePictureUrl"] as? String {
            self.sourceCFacePictureUrl = value
        }
    }
}

public class FaceCrossCompareIntlResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var faceComparisonScoreA2B: Double?

        public var faceComparisonScoreB2C: Double?

        public var faceComparisonScoreC2A: Double?

        public var facePassed: String?

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
            if self.faceComparisonScoreA2B != nil {
                map["FaceComparisonScoreA2B"] = self.faceComparisonScoreA2B!
            }
            if self.faceComparisonScoreB2C != nil {
                map["FaceComparisonScoreB2C"] = self.faceComparisonScoreB2C!
            }
            if self.faceComparisonScoreC2A != nil {
                map["FaceComparisonScoreC2A"] = self.faceComparisonScoreC2A!
            }
            if self.facePassed != nil {
                map["FacePassed"] = self.facePassed!
            }
            if self.transactionId != nil {
                map["TransactionId"] = self.transactionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FaceComparisonScoreA2B"] as? Double {
                self.faceComparisonScoreA2B = value
            }
            if let value = dict["FaceComparisonScoreB2C"] as? Double {
                self.faceComparisonScoreB2C = value
            }
            if let value = dict["FaceComparisonScoreC2A"] as? Double {
                self.faceComparisonScoreC2A = value
            }
            if let value = dict["FacePassed"] as? String {
                self.facePassed = value
            }
            if let value = dict["TransactionId"] as? String {
                self.transactionId = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: FaceCrossCompareIntlResponseBody.Result?

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
            var model = FaceCrossCompareIntlResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class FaceCrossCompareIntlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FaceCrossCompareIntlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = FaceCrossCompareIntlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FaceDuplicationCheckIntlRequest : Tea.TeaModel {
    public var autoRegistration: String?

    public var faceGroupCodes: String?

    public var faceRegisterGroupCode: String?

    public var faceVerifyThreshold: String?

    public var liveness: String?

    public var merchantBizId: String?

    public var merchantUserId: String?

    public var productCode: String?

    public var returnFaces: String?

    public var saveFacePicture: String?

    public var sceneCode: String?

    public var sourceFacePicture: String?

    public var sourceFacePictureUrl: String?

    public var targetFacePicture: String?

    public var targetFacePictureUrl: String?

    public var verifyModel: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRegistration != nil {
            map["AutoRegistration"] = self.autoRegistration!
        }
        if self.faceGroupCodes != nil {
            map["FaceGroupCodes"] = self.faceGroupCodes!
        }
        if self.faceRegisterGroupCode != nil {
            map["FaceRegisterGroupCode"] = self.faceRegisterGroupCode!
        }
        if self.faceVerifyThreshold != nil {
            map["FaceVerifyThreshold"] = self.faceVerifyThreshold!
        }
        if self.liveness != nil {
            map["Liveness"] = self.liveness!
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
        if self.returnFaces != nil {
            map["ReturnFaces"] = self.returnFaces!
        }
        if self.saveFacePicture != nil {
            map["SaveFacePicture"] = self.saveFacePicture!
        }
        if self.sceneCode != nil {
            map["SceneCode"] = self.sceneCode!
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
        if self.verifyModel != nil {
            map["VerifyModel"] = self.verifyModel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoRegistration"] as? String {
            self.autoRegistration = value
        }
        if let value = dict["FaceGroupCodes"] as? String {
            self.faceGroupCodes = value
        }
        if let value = dict["FaceRegisterGroupCode"] as? String {
            self.faceRegisterGroupCode = value
        }
        if let value = dict["FaceVerifyThreshold"] as? String {
            self.faceVerifyThreshold = value
        }
        if let value = dict["Liveness"] as? String {
            self.liveness = value
        }
        if let value = dict["MerchantBizId"] as? String {
            self.merchantBizId = value
        }
        if let value = dict["MerchantUserId"] as? String {
            self.merchantUserId = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ReturnFaces"] as? String {
            self.returnFaces = value
        }
        if let value = dict["SaveFacePicture"] as? String {
            self.saveFacePicture = value
        }
        if let value = dict["SceneCode"] as? String {
            self.sceneCode = value
        }
        if let value = dict["SourceFacePicture"] as? String {
            self.sourceFacePicture = value
        }
        if let value = dict["SourceFacePictureUrl"] as? String {
            self.sourceFacePictureUrl = value
        }
        if let value = dict["TargetFacePicture"] as? String {
            self.targetFacePicture = value
        }
        if let value = dict["TargetFacePictureUrl"] as? String {
            self.targetFacePictureUrl = value
        }
        if let value = dict["VerifyModel"] as? String {
            self.verifyModel = value
        }
    }
}

public class FaceDuplicationCheckIntlResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var duplicateFace: String?

        public var faceAge: String?

        public var faceAttack: String?

        public var faceAttackScore: String?

        public var faceComparisonScore: String?

        public var faceGender: String?

        public var facePassed: String?

        public var faceRegistrationId: String?

        public var faceRegistrationResult: Int32?

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
            if self.duplicateFace != nil {
                map["DuplicateFace"] = self.duplicateFace!
            }
            if self.faceAge != nil {
                map["FaceAge"] = self.faceAge!
            }
            if self.faceAttack != nil {
                map["FaceAttack"] = self.faceAttack!
            }
            if self.faceAttackScore != nil {
                map["FaceAttackScore"] = self.faceAttackScore!
            }
            if self.faceComparisonScore != nil {
                map["FaceComparisonScore"] = self.faceComparisonScore!
            }
            if self.faceGender != nil {
                map["FaceGender"] = self.faceGender!
            }
            if self.facePassed != nil {
                map["FacePassed"] = self.facePassed!
            }
            if self.faceRegistrationId != nil {
                map["FaceRegistrationId"] = self.faceRegistrationId!
            }
            if self.faceRegistrationResult != nil {
                map["FaceRegistrationResult"] = self.faceRegistrationResult!
            }
            if self.subCode != nil {
                map["SubCode"] = self.subCode!
            }
            if self.transactionId != nil {
                map["TransactionId"] = self.transactionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DuplicateFace"] as? String {
                self.duplicateFace = value
            }
            if let value = dict["FaceAge"] as? String {
                self.faceAge = value
            }
            if let value = dict["FaceAttack"] as? String {
                self.faceAttack = value
            }
            if let value = dict["FaceAttackScore"] as? String {
                self.faceAttackScore = value
            }
            if let value = dict["FaceComparisonScore"] as? String {
                self.faceComparisonScore = value
            }
            if let value = dict["FaceGender"] as? String {
                self.faceGender = value
            }
            if let value = dict["FacePassed"] as? String {
                self.facePassed = value
            }
            if let value = dict["FaceRegistrationId"] as? String {
                self.faceRegistrationId = value
            }
            if let value = dict["FaceRegistrationResult"] as? Int32 {
                self.faceRegistrationResult = value
            }
            if let value = dict["SubCode"] as? String {
                self.subCode = value
            }
            if let value = dict["TransactionId"] as? String {
                self.transactionId = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: FaceDuplicationCheckIntlResponseBody.Result?

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
            var model = FaceDuplicationCheckIntlResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class FaceDuplicationCheckIntlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FaceDuplicationCheckIntlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = FaceDuplicationCheckIntlResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizId"] as? String {
            self.bizId = value
        }
        if let value = dict["DeviceToken"] as? String {
            self.deviceToken = value
        }
        if let value = dict["MerchantBizId"] as? String {
            self.merchantBizId = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GuardRiskScore"] as? Double {
                self.guardRiskScore = value
            }
            if let value = dict["RiskExtends"] as? String {
                self.riskExtends = value
            }
            if let value = dict["RiskTags"] as? String {
                self.riskTags = value
            }
            if let value = dict["TransactionId"] as? String {
                self.transactionId = value
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
            var model = FaceGuardRiskResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = FaceGuardRiskResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Crop"] as? String {
            self.crop = value
        }
        if let value = dict["FacePictureBase64"] as? String {
            self.facePictureBase64 = value
        }
        if let value = dict["FacePictureUrl"] as? String {
            self.facePictureUrl = value
        }
        if let value = dict["FaceQuality"] as? String {
            self.faceQuality = value
        }
        if let value = dict["MerchantBizId"] as? String {
            self.merchantBizId = value
        }
        if let value = dict["MerchantUserId"] as? String {
            self.merchantUserId = value
        }
        if let value = dict["Occlusion"] as? String {
            self.occlusion = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FaceAge"] as? Int32 {
                    self.faceAge = value
                }
                if let value = dict["FaceAttack"] as? String {
                    self.faceAttack = value
                }
                if let value = dict["FaceGender"] as? String {
                    self.faceGender = value
                }
                if let value = dict["FaceQualityScore"] as? Double {
                    self.faceQualityScore = value
                }
                if let value = dict["OcclusionResult"] as? String {
                    self.occlusionResult = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExtFaceInfo"] as? [String: Any?] {
                var model = FaceLivenessResponseBody.Result.ExtFaceInfo()
                model.fromMap(value)
                self.extFaceInfo = model
            }
            if let value = dict["Passed"] as? String {
                self.passed = value
            }
            if let value = dict["SubCode"] as? String {
                self.subCode = value
            }
            if let value = dict["TransactionId"] as? String {
                self.transactionId = value
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
            var model = FaceLivenessResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = FaceLivenessResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertifyId"] as? String {
            self.certifyId = value
        }
        if let value = dict["ExtParams"] as? String {
            self.extParams = value
        }
        if let value = dict["ResultCode"] as? String {
            self.resultCode = value
        }
        if let value = dict["VerifyDeployEnv"] as? String {
            self.verifyDeployEnv = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = FraudResultCallBackResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DocName"] as? String {
            self.docName = value
        }
        if let value = dict["DocNo"] as? String {
            self.docNo = value
        }
        if let value = dict["DocType"] as? String {
            self.docType = value
        }
        if let value = dict["MerchantBizId"] as? String {
            self.merchantBizId = value
        }
        if let value = dict["MerchantUserId"] as? String {
            self.merchantUserId = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["SceneCode"] as? String {
            self.sceneCode = value
        }
        if let value = dict["ValidityEndDate"] as? String {
            self.validityEndDate = value
        }
        if let value = dict["ValidityStartDate"] as? String {
            self.validityStartDate = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
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
            var model = Id2MetaPeriodVerifyIntlResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Id2MetaPeriodVerifyIntlResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdentifyNum"] as? String {
            self.identifyNum = value
        }
        if let value = dict["ParamType"] as? String {
            self.paramType = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
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
            var model = Id2MetaVerifyIntlResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Id2MetaVerifyIntlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InitializeRequest : Tea.TeaModel {
    public var appQualityCheck: String?

    public var authorize: String?

    public var autoRegistration: String?

    public var callbackToken: String?

    public var callbackUrl: String?

    public var chameleonFrameEnable: String?

    public var crop: String?

    public var dateOfBirth: String?

    public var dateOfExpiry: String?

    public var docName: String?

    public var docNo: String?

    public var docPageConfig: [String]?

    public var docScanMode: String?

    public var docType: String?

    public var docVideo: String?

    public var documentNumber: String?

    public var editOcrResult: String?

    public var email: String?

    public var experienceCode: String?

    public var faceGroupCodes: String?

    public var facePictureBase64: String?

    public var facePictureUrl: String?

    public var faceRegisterGroupCode: String?

    public var faceVerifyThreshold: String?

    public var idFaceQuality: String?

    public var idSpoof: String?

    public var idThreshold: String?

    public var languageConfig: String?

    public var MRTDInput: String?

    public var merchantBizId: String?

    public var merchantUserId: String?

    public var metaInfo: String?

    public var mobile: String?

    public var model: String?

    public var ocr: String?

    public var pages: String?

    public var procedurePriority: String?

    public var productCode: String?

    public var productFlow: String?

    public var returnFaces: String?

    public var returnUrl: String?

    public var saveFacePicture: String?

    public var sceneCode: String?

    public var securityLevel: String?

    public var showAlbumIcon: String?

    public var showGuidePage: String?

    public var showOcrResult: String?

    public var styleConfig: String?

    public var targetFacePicture: String?

    public var targetFacePictureUrl: String?

    public var useNFC: String?

    public var verifyModel: String?

    public override init() {
        super.init()
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
        if self.autoRegistration != nil {
            map["AutoRegistration"] = self.autoRegistration!
        }
        if self.callbackToken != nil {
            map["CallbackToken"] = self.callbackToken!
        }
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.chameleonFrameEnable != nil {
            map["ChameleonFrameEnable"] = self.chameleonFrameEnable!
        }
        if self.crop != nil {
            map["Crop"] = self.crop!
        }
        if self.dateOfBirth != nil {
            map["DateOfBirth"] = self.dateOfBirth!
        }
        if self.dateOfExpiry != nil {
            map["DateOfExpiry"] = self.dateOfExpiry!
        }
        if self.docName != nil {
            map["DocName"] = self.docName!
        }
        if self.docNo != nil {
            map["DocNo"] = self.docNo!
        }
        if self.docPageConfig != nil {
            map["DocPageConfig"] = self.docPageConfig!
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
        if self.documentNumber != nil {
            map["DocumentNumber"] = self.documentNumber!
        }
        if self.editOcrResult != nil {
            map["EditOcrResult"] = self.editOcrResult!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.experienceCode != nil {
            map["ExperienceCode"] = self.experienceCode!
        }
        if self.faceGroupCodes != nil {
            map["FaceGroupCodes"] = self.faceGroupCodes!
        }
        if self.facePictureBase64 != nil {
            map["FacePictureBase64"] = self.facePictureBase64!
        }
        if self.facePictureUrl != nil {
            map["FacePictureUrl"] = self.facePictureUrl!
        }
        if self.faceRegisterGroupCode != nil {
            map["FaceRegisterGroupCode"] = self.faceRegisterGroupCode!
        }
        if self.faceVerifyThreshold != nil {
            map["FaceVerifyThreshold"] = self.faceVerifyThreshold!
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
        if self.MRTDInput != nil {
            map["MRTDInput"] = self.MRTDInput!
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
        if self.mobile != nil {
            map["Mobile"] = self.mobile!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.ocr != nil {
            map["Ocr"] = self.ocr!
        }
        if self.pages != nil {
            map["Pages"] = self.pages!
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
        if self.returnFaces != nil {
            map["ReturnFaces"] = self.returnFaces!
        }
        if self.returnUrl != nil {
            map["ReturnUrl"] = self.returnUrl!
        }
        if self.saveFacePicture != nil {
            map["SaveFacePicture"] = self.saveFacePicture!
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
        if self.targetFacePicture != nil {
            map["TargetFacePicture"] = self.targetFacePicture!
        }
        if self.targetFacePictureUrl != nil {
            map["TargetFacePictureUrl"] = self.targetFacePictureUrl!
        }
        if self.useNFC != nil {
            map["UseNFC"] = self.useNFC!
        }
        if self.verifyModel != nil {
            map["VerifyModel"] = self.verifyModel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppQualityCheck"] as? String {
            self.appQualityCheck = value
        }
        if let value = dict["Authorize"] as? String {
            self.authorize = value
        }
        if let value = dict["AutoRegistration"] as? String {
            self.autoRegistration = value
        }
        if let value = dict["CallbackToken"] as? String {
            self.callbackToken = value
        }
        if let value = dict["CallbackUrl"] as? String {
            self.callbackUrl = value
        }
        if let value = dict["ChameleonFrameEnable"] as? String {
            self.chameleonFrameEnable = value
        }
        if let value = dict["Crop"] as? String {
            self.crop = value
        }
        if let value = dict["DateOfBirth"] as? String {
            self.dateOfBirth = value
        }
        if let value = dict["DateOfExpiry"] as? String {
            self.dateOfExpiry = value
        }
        if let value = dict["DocName"] as? String {
            self.docName = value
        }
        if let value = dict["DocNo"] as? String {
            self.docNo = value
        }
        if let value = dict["DocPageConfig"] as? [String] {
            self.docPageConfig = value
        }
        if let value = dict["DocScanMode"] as? String {
            self.docScanMode = value
        }
        if let value = dict["DocType"] as? String {
            self.docType = value
        }
        if let value = dict["DocVideo"] as? String {
            self.docVideo = value
        }
        if let value = dict["DocumentNumber"] as? String {
            self.documentNumber = value
        }
        if let value = dict["EditOcrResult"] as? String {
            self.editOcrResult = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["ExperienceCode"] as? String {
            self.experienceCode = value
        }
        if let value = dict["FaceGroupCodes"] as? String {
            self.faceGroupCodes = value
        }
        if let value = dict["FacePictureBase64"] as? String {
            self.facePictureBase64 = value
        }
        if let value = dict["FacePictureUrl"] as? String {
            self.facePictureUrl = value
        }
        if let value = dict["FaceRegisterGroupCode"] as? String {
            self.faceRegisterGroupCode = value
        }
        if let value = dict["FaceVerifyThreshold"] as? String {
            self.faceVerifyThreshold = value
        }
        if let value = dict["IdFaceQuality"] as? String {
            self.idFaceQuality = value
        }
        if let value = dict["IdSpoof"] as? String {
            self.idSpoof = value
        }
        if let value = dict["IdThreshold"] as? String {
            self.idThreshold = value
        }
        if let value = dict["LanguageConfig"] as? String {
            self.languageConfig = value
        }
        if let value = dict["MRTDInput"] as? String {
            self.MRTDInput = value
        }
        if let value = dict["MerchantBizId"] as? String {
            self.merchantBizId = value
        }
        if let value = dict["MerchantUserId"] as? String {
            self.merchantUserId = value
        }
        if let value = dict["MetaInfo"] as? String {
            self.metaInfo = value
        }
        if let value = dict["Mobile"] as? String {
            self.mobile = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["Ocr"] as? String {
            self.ocr = value
        }
        if let value = dict["Pages"] as? String {
            self.pages = value
        }
        if let value = dict["ProcedurePriority"] as? String {
            self.procedurePriority = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductFlow"] as? String {
            self.productFlow = value
        }
        if let value = dict["ReturnFaces"] as? String {
            self.returnFaces = value
        }
        if let value = dict["ReturnUrl"] as? String {
            self.returnUrl = value
        }
        if let value = dict["SaveFacePicture"] as? String {
            self.saveFacePicture = value
        }
        if let value = dict["SceneCode"] as? String {
            self.sceneCode = value
        }
        if let value = dict["SecurityLevel"] as? String {
            self.securityLevel = value
        }
        if let value = dict["ShowAlbumIcon"] as? String {
            self.showAlbumIcon = value
        }
        if let value = dict["ShowGuidePage"] as? String {
            self.showGuidePage = value
        }
        if let value = dict["ShowOcrResult"] as? String {
            self.showOcrResult = value
        }
        if let value = dict["StyleConfig"] as? String {
            self.styleConfig = value
        }
        if let value = dict["TargetFacePicture"] as? String {
            self.targetFacePicture = value
        }
        if let value = dict["TargetFacePictureUrl"] as? String {
            self.targetFacePictureUrl = value
        }
        if let value = dict["UseNFC"] as? String {
            self.useNFC = value
        }
        if let value = dict["VerifyModel"] as? String {
            self.verifyModel = value
        }
    }
}

public class InitializeShrinkRequest : Tea.TeaModel {
    public var appQualityCheck: String?

    public var authorize: String?

    public var autoRegistration: String?

    public var callbackToken: String?

    public var callbackUrl: String?

    public var chameleonFrameEnable: String?

    public var crop: String?

    public var dateOfBirth: String?

    public var dateOfExpiry: String?

    public var docName: String?

    public var docNo: String?

    public var docPageConfigShrink: String?

    public var docScanMode: String?

    public var docType: String?

    public var docVideo: String?

    public var documentNumber: String?

    public var editOcrResult: String?

    public var email: String?

    public var experienceCode: String?

    public var faceGroupCodes: String?

    public var facePictureBase64: String?

    public var facePictureUrl: String?

    public var faceRegisterGroupCode: String?

    public var faceVerifyThreshold: String?

    public var idFaceQuality: String?

    public var idSpoof: String?

    public var idThreshold: String?

    public var languageConfig: String?

    public var MRTDInput: String?

    public var merchantBizId: String?

    public var merchantUserId: String?

    public var metaInfo: String?

    public var mobile: String?

    public var model: String?

    public var ocr: String?

    public var pages: String?

    public var procedurePriority: String?

    public var productCode: String?

    public var productFlow: String?

    public var returnFaces: String?

    public var returnUrl: String?

    public var saveFacePicture: String?

    public var sceneCode: String?

    public var securityLevel: String?

    public var showAlbumIcon: String?

    public var showGuidePage: String?

    public var showOcrResult: String?

    public var styleConfig: String?

    public var targetFacePicture: String?

    public var targetFacePictureUrl: String?

    public var useNFC: String?

    public var verifyModel: String?

    public override init() {
        super.init()
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
        if self.autoRegistration != nil {
            map["AutoRegistration"] = self.autoRegistration!
        }
        if self.callbackToken != nil {
            map["CallbackToken"] = self.callbackToken!
        }
        if self.callbackUrl != nil {
            map["CallbackUrl"] = self.callbackUrl!
        }
        if self.chameleonFrameEnable != nil {
            map["ChameleonFrameEnable"] = self.chameleonFrameEnable!
        }
        if self.crop != nil {
            map["Crop"] = self.crop!
        }
        if self.dateOfBirth != nil {
            map["DateOfBirth"] = self.dateOfBirth!
        }
        if self.dateOfExpiry != nil {
            map["DateOfExpiry"] = self.dateOfExpiry!
        }
        if self.docName != nil {
            map["DocName"] = self.docName!
        }
        if self.docNo != nil {
            map["DocNo"] = self.docNo!
        }
        if self.docPageConfigShrink != nil {
            map["DocPageConfig"] = self.docPageConfigShrink!
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
        if self.documentNumber != nil {
            map["DocumentNumber"] = self.documentNumber!
        }
        if self.editOcrResult != nil {
            map["EditOcrResult"] = self.editOcrResult!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.experienceCode != nil {
            map["ExperienceCode"] = self.experienceCode!
        }
        if self.faceGroupCodes != nil {
            map["FaceGroupCodes"] = self.faceGroupCodes!
        }
        if self.facePictureBase64 != nil {
            map["FacePictureBase64"] = self.facePictureBase64!
        }
        if self.facePictureUrl != nil {
            map["FacePictureUrl"] = self.facePictureUrl!
        }
        if self.faceRegisterGroupCode != nil {
            map["FaceRegisterGroupCode"] = self.faceRegisterGroupCode!
        }
        if self.faceVerifyThreshold != nil {
            map["FaceVerifyThreshold"] = self.faceVerifyThreshold!
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
        if self.MRTDInput != nil {
            map["MRTDInput"] = self.MRTDInput!
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
        if self.mobile != nil {
            map["Mobile"] = self.mobile!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.ocr != nil {
            map["Ocr"] = self.ocr!
        }
        if self.pages != nil {
            map["Pages"] = self.pages!
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
        if self.returnFaces != nil {
            map["ReturnFaces"] = self.returnFaces!
        }
        if self.returnUrl != nil {
            map["ReturnUrl"] = self.returnUrl!
        }
        if self.saveFacePicture != nil {
            map["SaveFacePicture"] = self.saveFacePicture!
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
        if self.targetFacePicture != nil {
            map["TargetFacePicture"] = self.targetFacePicture!
        }
        if self.targetFacePictureUrl != nil {
            map["TargetFacePictureUrl"] = self.targetFacePictureUrl!
        }
        if self.useNFC != nil {
            map["UseNFC"] = self.useNFC!
        }
        if self.verifyModel != nil {
            map["VerifyModel"] = self.verifyModel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppQualityCheck"] as? String {
            self.appQualityCheck = value
        }
        if let value = dict["Authorize"] as? String {
            self.authorize = value
        }
        if let value = dict["AutoRegistration"] as? String {
            self.autoRegistration = value
        }
        if let value = dict["CallbackToken"] as? String {
            self.callbackToken = value
        }
        if let value = dict["CallbackUrl"] as? String {
            self.callbackUrl = value
        }
        if let value = dict["ChameleonFrameEnable"] as? String {
            self.chameleonFrameEnable = value
        }
        if let value = dict["Crop"] as? String {
            self.crop = value
        }
        if let value = dict["DateOfBirth"] as? String {
            self.dateOfBirth = value
        }
        if let value = dict["DateOfExpiry"] as? String {
            self.dateOfExpiry = value
        }
        if let value = dict["DocName"] as? String {
            self.docName = value
        }
        if let value = dict["DocNo"] as? String {
            self.docNo = value
        }
        if let value = dict["DocPageConfig"] as? String {
            self.docPageConfigShrink = value
        }
        if let value = dict["DocScanMode"] as? String {
            self.docScanMode = value
        }
        if let value = dict["DocType"] as? String {
            self.docType = value
        }
        if let value = dict["DocVideo"] as? String {
            self.docVideo = value
        }
        if let value = dict["DocumentNumber"] as? String {
            self.documentNumber = value
        }
        if let value = dict["EditOcrResult"] as? String {
            self.editOcrResult = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["ExperienceCode"] as? String {
            self.experienceCode = value
        }
        if let value = dict["FaceGroupCodes"] as? String {
            self.faceGroupCodes = value
        }
        if let value = dict["FacePictureBase64"] as? String {
            self.facePictureBase64 = value
        }
        if let value = dict["FacePictureUrl"] as? String {
            self.facePictureUrl = value
        }
        if let value = dict["FaceRegisterGroupCode"] as? String {
            self.faceRegisterGroupCode = value
        }
        if let value = dict["FaceVerifyThreshold"] as? String {
            self.faceVerifyThreshold = value
        }
        if let value = dict["IdFaceQuality"] as? String {
            self.idFaceQuality = value
        }
        if let value = dict["IdSpoof"] as? String {
            self.idSpoof = value
        }
        if let value = dict["IdThreshold"] as? String {
            self.idThreshold = value
        }
        if let value = dict["LanguageConfig"] as? String {
            self.languageConfig = value
        }
        if let value = dict["MRTDInput"] as? String {
            self.MRTDInput = value
        }
        if let value = dict["MerchantBizId"] as? String {
            self.merchantBizId = value
        }
        if let value = dict["MerchantUserId"] as? String {
            self.merchantUserId = value
        }
        if let value = dict["MetaInfo"] as? String {
            self.metaInfo = value
        }
        if let value = dict["Mobile"] as? String {
            self.mobile = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
        if let value = dict["Ocr"] as? String {
            self.ocr = value
        }
        if let value = dict["Pages"] as? String {
            self.pages = value
        }
        if let value = dict["ProcedurePriority"] as? String {
            self.procedurePriority = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductFlow"] as? String {
            self.productFlow = value
        }
        if let value = dict["ReturnFaces"] as? String {
            self.returnFaces = value
        }
        if let value = dict["ReturnUrl"] as? String {
            self.returnUrl = value
        }
        if let value = dict["SaveFacePicture"] as? String {
            self.saveFacePicture = value
        }
        if let value = dict["SceneCode"] as? String {
            self.sceneCode = value
        }
        if let value = dict["SecurityLevel"] as? String {
            self.securityLevel = value
        }
        if let value = dict["ShowAlbumIcon"] as? String {
            self.showAlbumIcon = value
        }
        if let value = dict["ShowGuidePage"] as? String {
            self.showGuidePage = value
        }
        if let value = dict["ShowOcrResult"] as? String {
            self.showOcrResult = value
        }
        if let value = dict["StyleConfig"] as? String {
            self.styleConfig = value
        }
        if let value = dict["TargetFacePicture"] as? String {
            self.targetFacePicture = value
        }
        if let value = dict["TargetFacePictureUrl"] as? String {
            self.targetFacePictureUrl = value
        }
        if let value = dict["UseNFC"] as? String {
            self.useNFC = value
        }
        if let value = dict["VerifyModel"] as? String {
            self.verifyModel = value
        }
    }
}

public class InitializeResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var clientCfg: String?

        public var protocol_: String?

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
            if self.protocol_ != nil {
                map["Protocol"] = self.protocol_!
            }
            if self.transactionId != nil {
                map["TransactionId"] = self.transactionId!
            }
            if self.transactionUrl != nil {
                map["TransactionUrl"] = self.transactionUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClientCfg"] as? String {
                self.clientCfg = value
            }
            if let value = dict["Protocol"] as? String {
                self.protocol_ = value
            }
            if let value = dict["TransactionId"] as? String {
                self.transactionId = value
            }
            if let value = dict["TransactionUrl"] as? String {
                self.transactionUrl = value
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
            var model = InitializeResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = InitializeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class KeepaliveIntlResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var result: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Result"] as? String {
                self.result = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: KeepaliveIntlResponseBody.Result?

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
            var model = KeepaliveIntlResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class KeepaliveIntlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KeepaliveIntlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = KeepaliveIntlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class Mobile2MetaVerifyIntlRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Mobile"] as? String {
            self.mobile = value
        }
        if let value = dict["ParamType"] as? String {
            self.paramType = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class Mobile2MetaVerifyIntlResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
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

    public var result: Mobile2MetaVerifyIntlResponseBody.Result?

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
            var model = Mobile2MetaVerifyIntlResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class Mobile2MetaVerifyIntlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Mobile2MetaVerifyIntlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = Mobile2MetaVerifyIntlResponseBody()
            model.fromMap(value)
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
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
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
            var model = Mobile3MetaVerifyIntlResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = Mobile3MetaVerifyIntlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyFaceGroupRequest : Tea.TeaModel {
    public var description_: String?

    public var id: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
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
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class ModifyFaceGroupResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int32?

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
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["Data"] as? Int32 {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyFaceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyFaceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyFaceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyFaceRecordRequest : Tea.TeaModel {
    public var faceGroupCode: String?

    public var imgOssInfos: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.faceGroupCode != nil {
            map["FaceGroupCode"] = self.faceGroupCode!
        }
        if self.imgOssInfos != nil {
            map["ImgOssInfos"] = self.imgOssInfos!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FaceGroupCode"] as? String {
            self.faceGroupCode = value
        }
        if let value = dict["ImgOssInfos"] as? String {
            self.imgOssInfos = value
        }
    }
}

public class ModifyFaceRecordResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int32?

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
        if self.data != nil {
            map["Data"] = self.data!
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
        if let value = dict["Data"] as? Int32 {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyFaceRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyFaceRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyFaceRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryFaceGroupRequest : Tea.TeaModel {
    public var currentPage: Int64?

    public var groupCode: String?

    public var maxResults: Int32?

    public var name: String?

    public var nextToken: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.groupCode != nil {
            map["GroupCode"] = self.groupCode!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["GroupCode"] as? String {
            self.groupCode = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class QueryFaceGroupResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var code: String?

        public var description_: String?

        public var id: Int64?

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
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
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
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public var code: String?

    public var currentPage: Int64?

    public var items: [QueryFaceGroupResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [QueryFaceGroupResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = QueryFaceGroupResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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

public class QueryFaceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryFaceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryFaceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryFaceRecordRequest : Tea.TeaModel {
    public var currentPage: Int64?

    public var faceGroupCode: String?

    public var faceId: String?

    public var maxResults: Int32?

    public var merchantUserId: String?

    public var nextToken: String?

    public var pageSize: Int32?

    public var registrationType: String?

    public override init() {
        super.init()
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
        if self.faceGroupCode != nil {
            map["FaceGroupCode"] = self.faceGroupCode!
        }
        if self.faceId != nil {
            map["FaceId"] = self.faceId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.merchantUserId != nil {
            map["MerchantUserId"] = self.merchantUserId!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.registrationType != nil {
            map["RegistrationType"] = self.registrationType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["FaceGroupCode"] as? String {
            self.faceGroupCode = value
        }
        if let value = dict["FaceId"] as? String {
            self.faceId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["MerchantUserId"] as? String {
            self.merchantUserId = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegistrationType"] as? String {
            self.registrationType = value
        }
    }
}

public class QueryFaceRecordResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var faceId: String?

        public var gmtCreate: String?

        public var id: Int64?

        public var imgOssUrl: String?

        public var merchantUserId: String?

        public var registrationType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.faceId != nil {
                map["FaceId"] = self.faceId!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.imgOssUrl != nil {
                map["ImgOssUrl"] = self.imgOssUrl!
            }
            if self.merchantUserId != nil {
                map["MerchantUserId"] = self.merchantUserId!
            }
            if self.registrationType != nil {
                map["RegistrationType"] = self.registrationType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FaceId"] as? String {
                self.faceId = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["ImgOssUrl"] as? String {
                self.imgOssUrl = value
            }
            if let value = dict["MerchantUserId"] as? String {
                self.merchantUserId = value
            }
            if let value = dict["RegistrationType"] as? String {
                self.registrationType = value
            }
        }
    }
    public var code: String?

    public var currentPage: Int64?

    public var items: [QueryFaceRecordResponseBody.Items]?

    public var maxResults: Int32?

    public var message: String?

    public var nextToken: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [QueryFaceRecordResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = QueryFaceRecordResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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

public class QueryFaceRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryFaceRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryFaceRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TempAccessTokenIntlRequest : Tea.TeaModel {
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
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class TempAccessTokenIntlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessKeyId: String?

        public var accessKeySecret: String?

        public var bucketName: String?

        public var fileNamePrefix: String?

        public var ossEndPoint: String?

        public var securityToken: String?

        public override init() {
            super.init()
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
            if self.accessKeySecret != nil {
                map["AccessKeySecret"] = self.accessKeySecret!
            }
            if self.bucketName != nil {
                map["BucketName"] = self.bucketName!
            }
            if self.fileNamePrefix != nil {
                map["FileNamePrefix"] = self.fileNamePrefix!
            }
            if self.ossEndPoint != nil {
                map["OssEndPoint"] = self.ossEndPoint!
            }
            if self.securityToken != nil {
                map["SecurityToken"] = self.securityToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKeyId"] as? String {
                self.accessKeyId = value
            }
            if let value = dict["AccessKeySecret"] as? String {
                self.accessKeySecret = value
            }
            if let value = dict["BucketName"] as? String {
                self.bucketName = value
            }
            if let value = dict["FileNamePrefix"] as? String {
                self.fileNamePrefix = value
            }
            if let value = dict["OssEndPoint"] as? String {
                self.ossEndPoint = value
            }
            if let value = dict["SecurityToken"] as? String {
                self.securityToken = value
            }
        }
    }
    public var code: String?

    public var data: TempAccessTokenIntlResponseBody.Data?

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
            var model = TempAccessTokenIntlResponseBody.Data()
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

public class TempAccessTokenIntlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TempAccessTokenIntlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = TempAccessTokenIntlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TempOssUrlIntlRequest : Tea.TeaModel {
    public var objectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.objectName != nil {
            map["ObjectName"] = self.objectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ObjectName"] as? String {
            self.objectName = value
        }
    }
}

public class TempOssUrlIntlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var code: String?

    public var data: TempOssUrlIntlResponseBody.Data?

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
            var model = TempOssUrlIntlResponseBody.Data()
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

public class TempOssUrlIntlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TempOssUrlIntlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = TempOssUrlIntlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
