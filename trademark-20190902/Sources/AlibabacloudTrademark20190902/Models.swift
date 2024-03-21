import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class BindApplicantRequest : Tea.TeaModel {
    public var applicantId: String?

    public var authorizationOssKey: String?

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
        if self.applicantId != nil {
            map["ApplicantId"] = self.applicantId!
        }
        if self.authorizationOssKey != nil {
            map["AuthorizationOssKey"] = self.authorizationOssKey!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicantId") && dict["ApplicantId"] != nil {
            self.applicantId = dict["ApplicantId"] as! String
        }
        if dict.keys.contains("AuthorizationOssKey") && dict["AuthorizationOssKey"] != nil {
            self.authorizationOssKey = dict["AuthorizationOssKey"] as! String
        }
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
    }
}

public class BindApplicantResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BindApplicantResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindApplicantResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BindApplicantResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelOrderRequest : Tea.TeaModel {
    public var orderId: Int64?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! Int64
        }
    }
}

public class CancelOrderResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CancelOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelOrderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CancelOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckAuthorizationLetterRequest : Tea.TeaModel {
    public var applicantType: String?

    public var color: String?

    public var contactName: String?

    public var contactNumber: String?

    public var contactZipcode: String?

    public var ossKey: String?

    public var personalType: String?

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
        if self.applicantType != nil {
            map["ApplicantType"] = self.applicantType!
        }
        if self.color != nil {
            map["Color"] = self.color!
        }
        if self.contactName != nil {
            map["ContactName"] = self.contactName!
        }
        if self.contactNumber != nil {
            map["ContactNumber"] = self.contactNumber!
        }
        if self.contactZipcode != nil {
            map["ContactZipcode"] = self.contactZipcode!
        }
        if self.ossKey != nil {
            map["OssKey"] = self.ossKey!
        }
        if self.personalType != nil {
            map["PersonalType"] = self.personalType!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicantType") && dict["ApplicantType"] != nil {
            self.applicantType = dict["ApplicantType"] as! String
        }
        if dict.keys.contains("Color") && dict["Color"] != nil {
            self.color = dict["Color"] as! String
        }
        if dict.keys.contains("ContactName") && dict["ContactName"] != nil {
            self.contactName = dict["ContactName"] as! String
        }
        if dict.keys.contains("ContactNumber") && dict["ContactNumber"] != nil {
            self.contactNumber = dict["ContactNumber"] as! String
        }
        if dict.keys.contains("ContactZipcode") && dict["ContactZipcode"] != nil {
            self.contactZipcode = dict["ContactZipcode"] as! String
        }
        if dict.keys.contains("OssKey") && dict["OssKey"] != nil {
            self.ossKey = dict["OssKey"] as! String
        }
        if dict.keys.contains("PersonalType") && dict["PersonalType"] != nil {
            self.personalType = dict["PersonalType"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class CheckAuthorizationLetterResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var templateUrl: String?

    public var tips: String?

    public override init() {
        super.init()
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
        if self.templateUrl != nil {
            map["TemplateUrl"] = self.templateUrl!
        }
        if self.tips != nil {
            map["Tips"] = self.tips!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateUrl") && dict["TemplateUrl"] != nil {
            self.templateUrl = dict["TemplateUrl"] as! String
        }
        if dict.keys.contains("Tips") && dict["Tips"] != nil {
            self.tips = dict["Tips"] as! String
        }
    }
}

public class CheckAuthorizationLetterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckAuthorizationLetterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckAuthorizationLetterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckBizAvailableRequest : Tea.TeaModel {
    public var biz: String?

    public var scene: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.biz != nil {
            map["Biz"] = self.biz!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Biz") && dict["Biz"] != nil {
            self.biz = dict["Biz"] as! String
        }
        if dict.keys.contains("Scene") && dict["Scene"] != nil {
            self.scene = dict["Scene"] as! String
        }
    }
}

public class CheckBizAvailableResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckBizAvailableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckBizAvailableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckBizAvailableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckDuplicateApplicantRiskRequest : Tea.TeaModel {
    public var applicantName: String?

    public var eventSceneType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicantName != nil {
            map["ApplicantName"] = self.applicantName!
        }
        if self.eventSceneType != nil {
            map["EventSceneType"] = self.eventSceneType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicantName") && dict["ApplicantName"] != nil {
            self.applicantName = dict["ApplicantName"] as! String
        }
        if dict.keys.contains("EventSceneType") && dict["EventSceneType"] != nil {
            self.eventSceneType = dict["EventSceneType"] as! Int32
        }
    }
}

public class CheckDuplicateApplicantRiskResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! String
        }
    }
}

public class CheckDuplicateApplicantRiskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckDuplicateApplicantRiskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckDuplicateApplicantRiskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckDuplicateClassificationRequest : Tea.TeaModel {
    public var classification: String?

    public var eventSceneType: Int32?

    public var trademarkName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.classification != nil {
            map["Classification"] = self.classification!
        }
        if self.eventSceneType != nil {
            map["EventSceneType"] = self.eventSceneType!
        }
        if self.trademarkName != nil {
            map["TrademarkName"] = self.trademarkName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Classification") && dict["Classification"] != nil {
            self.classification = dict["Classification"] as! String
        }
        if dict.keys.contains("EventSceneType") && dict["EventSceneType"] != nil {
            self.eventSceneType = dict["EventSceneType"] as! Int32
        }
        if dict.keys.contains("TrademarkName") && dict["TrademarkName"] != nil {
            self.trademarkName = dict["TrademarkName"] as! String
        }
    }
}

public class CheckDuplicateClassificationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DuplicateSecondaryClassification : Tea.TeaModel {
            public var secondaryClassification: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.secondaryClassification != nil {
                    map["SecondaryClassification"] = self.secondaryClassification!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SecondaryClassification") && dict["SecondaryClassification"] != nil {
                    self.secondaryClassification = dict["SecondaryClassification"] as! [String]
                }
            }
        }
        public var duplicateSecondaryClassification: CheckDuplicateClassificationResponseBody.Data.DuplicateSecondaryClassification?

        public var trademarkName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.duplicateSecondaryClassification?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.duplicateSecondaryClassification != nil {
                map["DuplicateSecondaryClassification"] = self.duplicateSecondaryClassification?.toMap()
            }
            if self.trademarkName != nil {
                map["TrademarkName"] = self.trademarkName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DuplicateSecondaryClassification") && dict["DuplicateSecondaryClassification"] != nil {
                var model = CheckDuplicateClassificationResponseBody.Data.DuplicateSecondaryClassification()
                model.fromMap(dict["DuplicateSecondaryClassification"] as! [String: Any])
                self.duplicateSecondaryClassification = model
            }
            if dict.keys.contains("TrademarkName") && dict["TrademarkName"] != nil {
                self.trademarkName = dict["TrademarkName"] as! String
            }
        }
    }
    public var code: String?

    public var data: CheckDuplicateClassificationResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CheckDuplicateClassificationResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckDuplicateClassificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckDuplicateClassificationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckDuplicateClassificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckDuplicateTrademarkRequest : Tea.TeaModel {
    public var classification: String?

    public var eventSceneType: Int32?

    public var materialName: String?

    public var trademarkName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.classification != nil {
            map["Classification"] = self.classification!
        }
        if self.eventSceneType != nil {
            map["EventSceneType"] = self.eventSceneType!
        }
        if self.materialName != nil {
            map["MaterialName"] = self.materialName!
        }
        if self.trademarkName != nil {
            map["TrademarkName"] = self.trademarkName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Classification") && dict["Classification"] != nil {
            self.classification = dict["Classification"] as! String
        }
        if dict.keys.contains("EventSceneType") && dict["EventSceneType"] != nil {
            self.eventSceneType = dict["EventSceneType"] as! Int32
        }
        if dict.keys.contains("MaterialName") && dict["MaterialName"] != nil {
            self.materialName = dict["MaterialName"] as! String
        }
        if dict.keys.contains("TrademarkName") && dict["TrademarkName"] != nil {
            self.trademarkName = dict["TrademarkName"] as! String
        }
    }
}

public class CheckDuplicateTrademarkResponseBody : Tea.TeaModel {
    public var code: String?

    public var duplicateTrademark: String?

    public var message: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.duplicateTrademark != nil {
            map["DuplicateTrademark"] = self.duplicateTrademark!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DuplicateTrademark") && dict["DuplicateTrademark"] != nil {
            self.duplicateTrademark = dict["DuplicateTrademark"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class CheckDuplicateTrademarkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckDuplicateTrademarkResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckDuplicateTrademarkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckMaterialValidityRequest : Tea.TeaModel {
    public var businessLicenseOssKey: String?

    public var cardNumber: String?

    public var idCardName: String?

    public var idCardNumber: String?

    public var idCardOssKey: String?

    public var materialId: Int64?

    public var materialRegion: Int32?

    public var materialType: Int32?

    public var name: String?

    public var personalType: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessLicenseOssKey != nil {
            map["BusinessLicenseOssKey"] = self.businessLicenseOssKey!
        }
        if self.cardNumber != nil {
            map["CardNumber"] = self.cardNumber!
        }
        if self.idCardName != nil {
            map["IdCardName"] = self.idCardName!
        }
        if self.idCardNumber != nil {
            map["IdCardNumber"] = self.idCardNumber!
        }
        if self.idCardOssKey != nil {
            map["IdCardOssKey"] = self.idCardOssKey!
        }
        if self.materialId != nil {
            map["MaterialId"] = self.materialId!
        }
        if self.materialRegion != nil {
            map["MaterialRegion"] = self.materialRegion!
        }
        if self.materialType != nil {
            map["MaterialType"] = self.materialType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.personalType != nil {
            map["PersonalType"] = self.personalType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BusinessLicenseOssKey") && dict["BusinessLicenseOssKey"] != nil {
            self.businessLicenseOssKey = dict["BusinessLicenseOssKey"] as! String
        }
        if dict.keys.contains("CardNumber") && dict["CardNumber"] != nil {
            self.cardNumber = dict["CardNumber"] as! String
        }
        if dict.keys.contains("IdCardName") && dict["IdCardName"] != nil {
            self.idCardName = dict["IdCardName"] as! String
        }
        if dict.keys.contains("IdCardNumber") && dict["IdCardNumber"] != nil {
            self.idCardNumber = dict["IdCardNumber"] as! String
        }
        if dict.keys.contains("IdCardOssKey") && dict["IdCardOssKey"] != nil {
            self.idCardOssKey = dict["IdCardOssKey"] as! String
        }
        if dict.keys.contains("MaterialId") && dict["MaterialId"] != nil {
            self.materialId = dict["MaterialId"] as! Int64
        }
        if dict.keys.contains("MaterialRegion") && dict["MaterialRegion"] != nil {
            self.materialRegion = dict["MaterialRegion"] as! Int32
        }
        if dict.keys.contains("MaterialType") && dict["MaterialType"] != nil {
            self.materialType = dict["MaterialType"] as! Int32
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PersonalType") && dict["PersonalType"] != nil {
            self.personalType = dict["PersonalType"] as! Int64
        }
    }
}

public class CheckMaterialValidityResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckMaterialValidityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckMaterialValidityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckMaterialValidityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckTrademarkNameRequest : Tea.TeaModel {
    public var eventSceneType: Int32?

    public var trademarkName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventSceneType != nil {
            map["EventSceneType"] = self.eventSceneType!
        }
        if self.trademarkName != nil {
            map["TrademarkName"] = self.trademarkName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventSceneType") && dict["EventSceneType"] != nil {
            self.eventSceneType = dict["EventSceneType"] as! Int32
        }
        if dict.keys.contains("TrademarkName") && dict["TrademarkName"] != nil {
            self.trademarkName = dict["TrademarkName"] as! String
        }
    }
}

public class CheckTrademarkNameResponseBody : Tea.TeaModel {
    public var message: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! String
        }
    }
}

public class CheckTrademarkNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckTrademarkNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckTrademarkNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CloseTrademarkApplicationRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
    }
}

public class CloseTrademarkApplicationResponseBody : Tea.TeaModel {
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

public class CloseTrademarkApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloseTrademarkApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CloseTrademarkApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CombineAuthorizationLetterRequest : Tea.TeaModel {
    public var address: String?

    public var applicantType: String?

    public var contactName: String?

    public var contactPhone: String?

    public var contactPostcode: String?

    public var materialId: String?

    public var materialName: String?

    public var nationality: String?

    public var personalType: String?

    public var principalName: Int32?

    public var tmProduceType: String?

    public var trademarkName: String?

    public override init() {
        super.init()
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
        if self.applicantType != nil {
            map["ApplicantType"] = self.applicantType!
        }
        if self.contactName != nil {
            map["ContactName"] = self.contactName!
        }
        if self.contactPhone != nil {
            map["ContactPhone"] = self.contactPhone!
        }
        if self.contactPostcode != nil {
            map["ContactPostcode"] = self.contactPostcode!
        }
        if self.materialId != nil {
            map["MaterialId"] = self.materialId!
        }
        if self.materialName != nil {
            map["MaterialName"] = self.materialName!
        }
        if self.nationality != nil {
            map["Nationality"] = self.nationality!
        }
        if self.personalType != nil {
            map["PersonalType"] = self.personalType!
        }
        if self.principalName != nil {
            map["PrincipalName"] = self.principalName!
        }
        if self.tmProduceType != nil {
            map["TmProduceType"] = self.tmProduceType!
        }
        if self.trademarkName != nil {
            map["TrademarkName"] = self.trademarkName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("ApplicantType") && dict["ApplicantType"] != nil {
            self.applicantType = dict["ApplicantType"] as! String
        }
        if dict.keys.contains("ContactName") && dict["ContactName"] != nil {
            self.contactName = dict["ContactName"] as! String
        }
        if dict.keys.contains("ContactPhone") && dict["ContactPhone"] != nil {
            self.contactPhone = dict["ContactPhone"] as! String
        }
        if dict.keys.contains("ContactPostcode") && dict["ContactPostcode"] != nil {
            self.contactPostcode = dict["ContactPostcode"] as! String
        }
        if dict.keys.contains("MaterialId") && dict["MaterialId"] != nil {
            self.materialId = dict["MaterialId"] as! String
        }
        if dict.keys.contains("MaterialName") && dict["MaterialName"] != nil {
            self.materialName = dict["MaterialName"] as! String
        }
        if dict.keys.contains("Nationality") && dict["Nationality"] != nil {
            self.nationality = dict["Nationality"] as! String
        }
        if dict.keys.contains("PersonalType") && dict["PersonalType"] != nil {
            self.personalType = dict["PersonalType"] as! String
        }
        if dict.keys.contains("PrincipalName") && dict["PrincipalName"] != nil {
            self.principalName = dict["PrincipalName"] as! Int32
        }
        if dict.keys.contains("TmProduceType") && dict["TmProduceType"] != nil {
            self.tmProduceType = dict["TmProduceType"] as! String
        }
        if dict.keys.contains("TrademarkName") && dict["TrademarkName"] != nil {
            self.trademarkName = dict["TrademarkName"] as! String
        }
    }
}

public class CombineAuthorizationLetterResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var templateCombineUrl: String?

    public override init() {
        super.init()
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
        if self.templateCombineUrl != nil {
            map["TemplateCombineUrl"] = self.templateCombineUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateCombineUrl") && dict["TemplateCombineUrl"] != nil {
            self.templateCombineUrl = dict["TemplateCombineUrl"] as! String
        }
    }
}

public class CombineAuthorizationLetterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CombineAuthorizationLetterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CombineAuthorizationLetterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ComplementTrademarkApplicationRequest : Tea.TeaModel {
    public var agreementId: String?

    public var authorizationOssKey: String?

    public var bizId: String?

    public var isBlackIcon: Bool?

    public var materialId: String?

    public var orderData: String?

    public var source: String?

    public var trademarkComment: String?

    public var trademarkIconOssKey: String?

    public var trademarkName: String?

    public var trademarkNameType: String?

    public var trademarkType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agreementId != nil {
            map["AgreementId"] = self.agreementId!
        }
        if self.authorizationOssKey != nil {
            map["AuthorizationOssKey"] = self.authorizationOssKey!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.isBlackIcon != nil {
            map["IsBlackIcon"] = self.isBlackIcon!
        }
        if self.materialId != nil {
            map["MaterialId"] = self.materialId!
        }
        if self.orderData != nil {
            map["OrderData"] = self.orderData!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.trademarkComment != nil {
            map["TrademarkComment"] = self.trademarkComment!
        }
        if self.trademarkIconOssKey != nil {
            map["TrademarkIconOssKey"] = self.trademarkIconOssKey!
        }
        if self.trademarkName != nil {
            map["TrademarkName"] = self.trademarkName!
        }
        if self.trademarkNameType != nil {
            map["TrademarkNameType"] = self.trademarkNameType!
        }
        if self.trademarkType != nil {
            map["TrademarkType"] = self.trademarkType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgreementId") && dict["AgreementId"] != nil {
            self.agreementId = dict["AgreementId"] as! String
        }
        if dict.keys.contains("AuthorizationOssKey") && dict["AuthorizationOssKey"] != nil {
            self.authorizationOssKey = dict["AuthorizationOssKey"] as! String
        }
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("IsBlackIcon") && dict["IsBlackIcon"] != nil {
            self.isBlackIcon = dict["IsBlackIcon"] as! Bool
        }
        if dict.keys.contains("MaterialId") && dict["MaterialId"] != nil {
            self.materialId = dict["MaterialId"] as! String
        }
        if dict.keys.contains("OrderData") && dict["OrderData"] != nil {
            self.orderData = dict["OrderData"] as! String
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("TrademarkComment") && dict["TrademarkComment"] != nil {
            self.trademarkComment = dict["TrademarkComment"] as! String
        }
        if dict.keys.contains("TrademarkIconOssKey") && dict["TrademarkIconOssKey"] != nil {
            self.trademarkIconOssKey = dict["TrademarkIconOssKey"] as! String
        }
        if dict.keys.contains("TrademarkName") && dict["TrademarkName"] != nil {
            self.trademarkName = dict["TrademarkName"] as! String
        }
        if dict.keys.contains("TrademarkNameType") && dict["TrademarkNameType"] != nil {
            self.trademarkNameType = dict["TrademarkNameType"] as! String
        }
        if dict.keys.contains("TrademarkType") && dict["TrademarkType"] != nil {
            self.trademarkType = dict["TrademarkType"] as! Int32
        }
    }
}

public class ComplementTrademarkApplicationResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ComplementTrademarkApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ComplementTrademarkApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ComplementTrademarkApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConfirmExpertSolutionRequest : Tea.TeaModel {
    public var bizId: String?

    public var note: String?

    public override init() {
        super.init()
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
        if self.note != nil {
            map["Note"] = self.note!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("Note") && dict["Note"] != nil {
            self.note = dict["Note"] as! String
        }
    }
}

public class ConfirmExpertSolutionResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ConfirmExpertSolutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConfirmExpertSolutionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ConfirmExpertSolutionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateApplicantRequest : Tea.TeaModel {
    public var address: String?

    public var applicantName: String?

    public var applicantRegion: Int32?

    public var applicantType: Int32?

    public var authorizationOssKey: String?

    public var businessLicenceOssKey: String?

    public var cardNumber: String?

    public var contactAddress: String?

    public var contactCity: String?

    public var contactCounty: String?

    public var contactDistrict: String?

    public var contactEmail: String?

    public var contactName: String?

    public var contactNumber: String?

    public var contactProvince: String?

    public var contactZipcode: String?

    public var country: String?

    public var EAddress: String?

    public var EName: String?

    public var idCardName: String?

    public var idCardNumber: String?

    public var idCardOssKey: String?

    public var legalNoticeOssKey: String?

    public var passportOssKey: String?

    public var personalType: Int64?

    public var principalName: Int32?

    public var province: String?

    public override init() {
        super.init()
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
        if self.applicantName != nil {
            map["ApplicantName"] = self.applicantName!
        }
        if self.applicantRegion != nil {
            map["ApplicantRegion"] = self.applicantRegion!
        }
        if self.applicantType != nil {
            map["ApplicantType"] = self.applicantType!
        }
        if self.authorizationOssKey != nil {
            map["AuthorizationOssKey"] = self.authorizationOssKey!
        }
        if self.businessLicenceOssKey != nil {
            map["BusinessLicenceOssKey"] = self.businessLicenceOssKey!
        }
        if self.cardNumber != nil {
            map["CardNumber"] = self.cardNumber!
        }
        if self.contactAddress != nil {
            map["ContactAddress"] = self.contactAddress!
        }
        if self.contactCity != nil {
            map["ContactCity"] = self.contactCity!
        }
        if self.contactCounty != nil {
            map["ContactCounty"] = self.contactCounty!
        }
        if self.contactDistrict != nil {
            map["ContactDistrict"] = self.contactDistrict!
        }
        if self.contactEmail != nil {
            map["ContactEmail"] = self.contactEmail!
        }
        if self.contactName != nil {
            map["ContactName"] = self.contactName!
        }
        if self.contactNumber != nil {
            map["ContactNumber"] = self.contactNumber!
        }
        if self.contactProvince != nil {
            map["ContactProvince"] = self.contactProvince!
        }
        if self.contactZipcode != nil {
            map["ContactZipcode"] = self.contactZipcode!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.EAddress != nil {
            map["EAddress"] = self.EAddress!
        }
        if self.EName != nil {
            map["EName"] = self.EName!
        }
        if self.idCardName != nil {
            map["IdCardName"] = self.idCardName!
        }
        if self.idCardNumber != nil {
            map["IdCardNumber"] = self.idCardNumber!
        }
        if self.idCardOssKey != nil {
            map["IdCardOssKey"] = self.idCardOssKey!
        }
        if self.legalNoticeOssKey != nil {
            map["LegalNoticeOssKey"] = self.legalNoticeOssKey!
        }
        if self.passportOssKey != nil {
            map["PassportOssKey"] = self.passportOssKey!
        }
        if self.personalType != nil {
            map["PersonalType"] = self.personalType!
        }
        if self.principalName != nil {
            map["PrincipalName"] = self.principalName!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("ApplicantName") && dict["ApplicantName"] != nil {
            self.applicantName = dict["ApplicantName"] as! String
        }
        if dict.keys.contains("ApplicantRegion") && dict["ApplicantRegion"] != nil {
            self.applicantRegion = dict["ApplicantRegion"] as! Int32
        }
        if dict.keys.contains("ApplicantType") && dict["ApplicantType"] != nil {
            self.applicantType = dict["ApplicantType"] as! Int32
        }
        if dict.keys.contains("AuthorizationOssKey") && dict["AuthorizationOssKey"] != nil {
            self.authorizationOssKey = dict["AuthorizationOssKey"] as! String
        }
        if dict.keys.contains("BusinessLicenceOssKey") && dict["BusinessLicenceOssKey"] != nil {
            self.businessLicenceOssKey = dict["BusinessLicenceOssKey"] as! String
        }
        if dict.keys.contains("CardNumber") && dict["CardNumber"] != nil {
            self.cardNumber = dict["CardNumber"] as! String
        }
        if dict.keys.contains("ContactAddress") && dict["ContactAddress"] != nil {
            self.contactAddress = dict["ContactAddress"] as! String
        }
        if dict.keys.contains("ContactCity") && dict["ContactCity"] != nil {
            self.contactCity = dict["ContactCity"] as! String
        }
        if dict.keys.contains("ContactCounty") && dict["ContactCounty"] != nil {
            self.contactCounty = dict["ContactCounty"] as! String
        }
        if dict.keys.contains("ContactDistrict") && dict["ContactDistrict"] != nil {
            self.contactDistrict = dict["ContactDistrict"] as! String
        }
        if dict.keys.contains("ContactEmail") && dict["ContactEmail"] != nil {
            self.contactEmail = dict["ContactEmail"] as! String
        }
        if dict.keys.contains("ContactName") && dict["ContactName"] != nil {
            self.contactName = dict["ContactName"] as! String
        }
        if dict.keys.contains("ContactNumber") && dict["ContactNumber"] != nil {
            self.contactNumber = dict["ContactNumber"] as! String
        }
        if dict.keys.contains("ContactProvince") && dict["ContactProvince"] != nil {
            self.contactProvince = dict["ContactProvince"] as! String
        }
        if dict.keys.contains("ContactZipcode") && dict["ContactZipcode"] != nil {
            self.contactZipcode = dict["ContactZipcode"] as! String
        }
        if dict.keys.contains("Country") && dict["Country"] != nil {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("EAddress") && dict["EAddress"] != nil {
            self.EAddress = dict["EAddress"] as! String
        }
        if dict.keys.contains("EName") && dict["EName"] != nil {
            self.EName = dict["EName"] as! String
        }
        if dict.keys.contains("IdCardName") && dict["IdCardName"] != nil {
            self.idCardName = dict["IdCardName"] as! String
        }
        if dict.keys.contains("IdCardNumber") && dict["IdCardNumber"] != nil {
            self.idCardNumber = dict["IdCardNumber"] as! String
        }
        if dict.keys.contains("IdCardOssKey") && dict["IdCardOssKey"] != nil {
            self.idCardOssKey = dict["IdCardOssKey"] as! String
        }
        if dict.keys.contains("LegalNoticeOssKey") && dict["LegalNoticeOssKey"] != nil {
            self.legalNoticeOssKey = dict["LegalNoticeOssKey"] as! String
        }
        if dict.keys.contains("PassportOssKey") && dict["PassportOssKey"] != nil {
            self.passportOssKey = dict["PassportOssKey"] as! String
        }
        if dict.keys.contains("PersonalType") && dict["PersonalType"] != nil {
            self.personalType = dict["PersonalType"] as! Int64
        }
        if dict.keys.contains("PrincipalName") && dict["PrincipalName"] != nil {
            self.principalName = dict["PrincipalName"] as! Int32
        }
        if dict.keys.contains("Province") && dict["Province"] != nil {
            self.province = dict["Province"] as! String
        }
    }
}

public class CreateApplicantResponseBody : Tea.TeaModel {
    public var applicantId: String?

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
        if self.applicantId != nil {
            map["ApplicantId"] = self.applicantId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicantId") && dict["ApplicantId"] != nil {
            self.applicantId = dict["ApplicantId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateApplicantResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApplicantResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateApplicantResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCommodityOrderRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var bizType: String?

    public var chargeType: String?

    public var clientToken: String?

    public var commodityCode: String?

    public var components: [String: Any]?

    public var duration: Int32?

    public var instanceId: String?

    public var orderParams: [String: Any]?

    public var orderType: String?

    public var pricingCycle: String?

    public var quantity: Int32?

    public var specCode: String?

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
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.commodityCode != nil {
            map["CommodityCode"] = self.commodityCode!
        }
        if self.components != nil {
            map["Components"] = self.components!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.orderParams != nil {
            map["OrderParams"] = self.orderParams!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.quantity != nil {
            map["Quantity"] = self.quantity!
        }
        if self.specCode != nil {
            map["SpecCode"] = self.specCode!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoPay") && dict["AutoPay"] != nil {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CommodityCode") && dict["CommodityCode"] != nil {
            self.commodityCode = dict["CommodityCode"] as! String
        }
        if dict.keys.contains("Components") && dict["Components"] != nil {
            self.components = dict["Components"] as! [String: Any]
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrderParams") && dict["OrderParams"] != nil {
            self.orderParams = dict["OrderParams"] as! [String: Any]
        }
        if dict.keys.contains("OrderType") && dict["OrderType"] != nil {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("Quantity") && dict["Quantity"] != nil {
            self.quantity = dict["Quantity"] as! Int32
        }
        if dict.keys.contains("SpecCode") && dict["SpecCode"] != nil {
            self.specCode = dict["SpecCode"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class CreateCommodityOrderShrinkRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var bizType: String?

    public var chargeType: String?

    public var clientToken: String?

    public var commodityCode: String?

    public var componentsShrink: String?

    public var duration: Int32?

    public var instanceId: String?

    public var orderParamsShrink: String?

    public var orderType: String?

    public var pricingCycle: String?

    public var quantity: Int32?

    public var specCode: String?

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
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.commodityCode != nil {
            map["CommodityCode"] = self.commodityCode!
        }
        if self.componentsShrink != nil {
            map["Components"] = self.componentsShrink!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.orderParamsShrink != nil {
            map["OrderParams"] = self.orderParamsShrink!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.quantity != nil {
            map["Quantity"] = self.quantity!
        }
        if self.specCode != nil {
            map["SpecCode"] = self.specCode!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoPay") && dict["AutoPay"] != nil {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CommodityCode") && dict["CommodityCode"] != nil {
            self.commodityCode = dict["CommodityCode"] as! String
        }
        if dict.keys.contains("Components") && dict["Components"] != nil {
            self.componentsShrink = dict["Components"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OrderParams") && dict["OrderParams"] != nil {
            self.orderParamsShrink = dict["OrderParams"] as! String
        }
        if dict.keys.contains("OrderType") && dict["OrderType"] != nil {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("Quantity") && dict["Quantity"] != nil {
            self.quantity = dict["Quantity"] as! Int32
        }
        if dict.keys.contains("SpecCode") && dict["SpecCode"] != nil {
            self.specCode = dict["SpecCode"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class CreateCommodityOrderResponseBody : Tea.TeaModel {
    public var data: [Int64]?

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
        if self.data != nil {
            map["Data"] = self.data!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [Int64]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateCommodityOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCommodityOrderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateCommodityOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateOrderRequest : Tea.TeaModel {
    public var agreementId: String?

    public var applicantId: String?

    public var applicationType: Int32?

    public var authorizationOssKey: String?

    public var autoPay: Bool?

    public var blackAndWhiteIcon: String?

    public var channel: String?

    public var classifications: String?

    public var idempotentId: String?

    public var legalNoticeKey: String?

    public var payType: String?

    public var paymentCallback: String?

    public var principalName: Int32?

    public var source: String?

    public var trademarkComment: String?

    public var trademarkIcon: String?

    public var trademarkName: String?

    public var trademarkNameType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agreementId != nil {
            map["AgreementId"] = self.agreementId!
        }
        if self.applicantId != nil {
            map["ApplicantId"] = self.applicantId!
        }
        if self.applicationType != nil {
            map["ApplicationType"] = self.applicationType!
        }
        if self.authorizationOssKey != nil {
            map["AuthorizationOssKey"] = self.authorizationOssKey!
        }
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.blackAndWhiteIcon != nil {
            map["BlackAndWhiteIcon"] = self.blackAndWhiteIcon!
        }
        if self.channel != nil {
            map["Channel"] = self.channel!
        }
        if self.classifications != nil {
            map["Classifications"] = self.classifications!
        }
        if self.idempotentId != nil {
            map["IdempotentId"] = self.idempotentId!
        }
        if self.legalNoticeKey != nil {
            map["LegalNoticeKey"] = self.legalNoticeKey!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.paymentCallback != nil {
            map["PaymentCallback"] = self.paymentCallback!
        }
        if self.principalName != nil {
            map["PrincipalName"] = self.principalName!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.trademarkComment != nil {
            map["TrademarkComment"] = self.trademarkComment!
        }
        if self.trademarkIcon != nil {
            map["TrademarkIcon"] = self.trademarkIcon!
        }
        if self.trademarkName != nil {
            map["TrademarkName"] = self.trademarkName!
        }
        if self.trademarkNameType != nil {
            map["TrademarkNameType"] = self.trademarkNameType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgreementId") && dict["AgreementId"] != nil {
            self.agreementId = dict["AgreementId"] as! String
        }
        if dict.keys.contains("ApplicantId") && dict["ApplicantId"] != nil {
            self.applicantId = dict["ApplicantId"] as! String
        }
        if dict.keys.contains("ApplicationType") && dict["ApplicationType"] != nil {
            self.applicationType = dict["ApplicationType"] as! Int32
        }
        if dict.keys.contains("AuthorizationOssKey") && dict["AuthorizationOssKey"] != nil {
            self.authorizationOssKey = dict["AuthorizationOssKey"] as! String
        }
        if dict.keys.contains("AutoPay") && dict["AutoPay"] != nil {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("BlackAndWhiteIcon") && dict["BlackAndWhiteIcon"] != nil {
            self.blackAndWhiteIcon = dict["BlackAndWhiteIcon"] as! String
        }
        if dict.keys.contains("Channel") && dict["Channel"] != nil {
            self.channel = dict["Channel"] as! String
        }
        if dict.keys.contains("Classifications") && dict["Classifications"] != nil {
            self.classifications = dict["Classifications"] as! String
        }
        if dict.keys.contains("IdempotentId") && dict["IdempotentId"] != nil {
            self.idempotentId = dict["IdempotentId"] as! String
        }
        if dict.keys.contains("LegalNoticeKey") && dict["LegalNoticeKey"] != nil {
            self.legalNoticeKey = dict["LegalNoticeKey"] as! String
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("PaymentCallback") && dict["PaymentCallback"] != nil {
            self.paymentCallback = dict["PaymentCallback"] as! String
        }
        if dict.keys.contains("PrincipalName") && dict["PrincipalName"] != nil {
            self.principalName = dict["PrincipalName"] as! Int32
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("TrademarkComment") && dict["TrademarkComment"] != nil {
            self.trademarkComment = dict["TrademarkComment"] as! String
        }
        if dict.keys.contains("TrademarkIcon") && dict["TrademarkIcon"] != nil {
            self.trademarkIcon = dict["TrademarkIcon"] as! String
        }
        if dict.keys.contains("TrademarkName") && dict["TrademarkName"] != nil {
            self.trademarkName = dict["TrademarkName"] as! String
        }
        if dict.keys.contains("TrademarkNameType") && dict["TrademarkNameType"] != nil {
            self.trademarkNameType = dict["TrademarkNameType"] as! String
        }
    }
}

public class CreateOrderResponseBody : Tea.TeaModel {
    public var message: String?

    public var orderIds: [String: Any]?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.orderIds != nil {
            map["OrderIds"] = self.orderIds!
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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OrderIds") && dict["OrderIds"] != nil {
            self.orderIds = dict["OrderIds"] as! [String: Any]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOrderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTrademarkApplicationRequest : Tea.TeaModel {
    public var agreementId: String?

    public var applicantId: String?

    public var applicationType: Int32?

    public var authorizationOssKey: String?

    public var autoPay: Bool?

    public var blackAndWhiteIcon: String?

    public var channel: String?

    public var classifications: String?

    public var idempotentId: String?

    public var legalNoticeKey: String?

    public var principalName: Int32?

    public var source: String?

    public var trademarkComment: String?

    public var trademarkIcon: String?

    public var trademarkName: String?

    public var trademarkNameType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agreementId != nil {
            map["AgreementId"] = self.agreementId!
        }
        if self.applicantId != nil {
            map["ApplicantId"] = self.applicantId!
        }
        if self.applicationType != nil {
            map["ApplicationType"] = self.applicationType!
        }
        if self.authorizationOssKey != nil {
            map["AuthorizationOssKey"] = self.authorizationOssKey!
        }
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.blackAndWhiteIcon != nil {
            map["BlackAndWhiteIcon"] = self.blackAndWhiteIcon!
        }
        if self.channel != nil {
            map["Channel"] = self.channel!
        }
        if self.classifications != nil {
            map["Classifications"] = self.classifications!
        }
        if self.idempotentId != nil {
            map["IdempotentId"] = self.idempotentId!
        }
        if self.legalNoticeKey != nil {
            map["LegalNoticeKey"] = self.legalNoticeKey!
        }
        if self.principalName != nil {
            map["PrincipalName"] = self.principalName!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.trademarkComment != nil {
            map["TrademarkComment"] = self.trademarkComment!
        }
        if self.trademarkIcon != nil {
            map["TrademarkIcon"] = self.trademarkIcon!
        }
        if self.trademarkName != nil {
            map["TrademarkName"] = self.trademarkName!
        }
        if self.trademarkNameType != nil {
            map["TrademarkNameType"] = self.trademarkNameType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgreementId") && dict["AgreementId"] != nil {
            self.agreementId = dict["AgreementId"] as! String
        }
        if dict.keys.contains("ApplicantId") && dict["ApplicantId"] != nil {
            self.applicantId = dict["ApplicantId"] as! String
        }
        if dict.keys.contains("ApplicationType") && dict["ApplicationType"] != nil {
            self.applicationType = dict["ApplicationType"] as! Int32
        }
        if dict.keys.contains("AuthorizationOssKey") && dict["AuthorizationOssKey"] != nil {
            self.authorizationOssKey = dict["AuthorizationOssKey"] as! String
        }
        if dict.keys.contains("AutoPay") && dict["AutoPay"] != nil {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("BlackAndWhiteIcon") && dict["BlackAndWhiteIcon"] != nil {
            self.blackAndWhiteIcon = dict["BlackAndWhiteIcon"] as! String
        }
        if dict.keys.contains("Channel") && dict["Channel"] != nil {
            self.channel = dict["Channel"] as! String
        }
        if dict.keys.contains("Classifications") && dict["Classifications"] != nil {
            self.classifications = dict["Classifications"] as! String
        }
        if dict.keys.contains("IdempotentId") && dict["IdempotentId"] != nil {
            self.idempotentId = dict["IdempotentId"] as! String
        }
        if dict.keys.contains("LegalNoticeKey") && dict["LegalNoticeKey"] != nil {
            self.legalNoticeKey = dict["LegalNoticeKey"] as! String
        }
        if dict.keys.contains("PrincipalName") && dict["PrincipalName"] != nil {
            self.principalName = dict["PrincipalName"] as! Int32
        }
        if dict.keys.contains("Source") && dict["Source"] != nil {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("TrademarkComment") && dict["TrademarkComment"] != nil {
            self.trademarkComment = dict["TrademarkComment"] as! String
        }
        if dict.keys.contains("TrademarkIcon") && dict["TrademarkIcon"] != nil {
            self.trademarkIcon = dict["TrademarkIcon"] as! String
        }
        if dict.keys.contains("TrademarkName") && dict["TrademarkName"] != nil {
            self.trademarkName = dict["TrademarkName"] as! String
        }
        if dict.keys.contains("TrademarkNameType") && dict["TrademarkNameType"] != nil {
            self.trademarkNameType = dict["TrademarkNameType"] as! String
        }
    }
}

public class CreateTrademarkApplicationResponseBody : Tea.TeaModel {
    public var message: String?

    public var orderId: Int64?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateTrademarkApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTrademarkApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateTrademarkApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSearchConditionRequest : Tea.TeaModel {
    public var conditionId: Int64?

    public var sessionId: String?

    public var umid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conditionId != nil {
            map["ConditionId"] = self.conditionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.umid != nil {
            map["Umid"] = self.umid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConditionId") && dict["ConditionId"] != nil {
            self.conditionId = dict["ConditionId"] as! Int64
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("Umid") && dict["Umid"] != nil {
            self.umid = dict["Umid"] as! String
        }
    }
}

public class DeleteSearchConditionResponseBody : Tea.TeaModel {
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

public class DeleteSearchConditionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSearchConditionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteSearchConditionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAdminTrademarkApplicationRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
    }
}

public class DescribeAdminTrademarkApplicationResponseBody : Tea.TeaModel {
    public class Applicant : Tea.TeaModel {
        public var address: String?

        public var applicantName: String?

        public var applicantRegion: Int32?

        public var applicantType: Int32?

        public var auditStatus: Int32?

        public var authorizationUrl: String?

        public var businessLicenceUrl: String?

        public var cardNumber: String?

        public var contactAddress: String?

        public var contactEmail: String?

        public var contactName: String?

        public var contactNumber: String?

        public var contactZipcode: String?

        public var country: String?

        public var EAddress: String?

        public var EName: String?

        public var idCardUrl: String?

        public var legalNoticeUrl: String?

        public var passportUrl: String?

        public var principalName: Int32?

        public var province: String?

        public override init() {
            super.init()
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
            if self.applicantName != nil {
                map["ApplicantName"] = self.applicantName!
            }
            if self.applicantRegion != nil {
                map["ApplicantRegion"] = self.applicantRegion!
            }
            if self.applicantType != nil {
                map["ApplicantType"] = self.applicantType!
            }
            if self.auditStatus != nil {
                map["AuditStatus"] = self.auditStatus!
            }
            if self.authorizationUrl != nil {
                map["AuthorizationUrl"] = self.authorizationUrl!
            }
            if self.businessLicenceUrl != nil {
                map["BusinessLicenceUrl"] = self.businessLicenceUrl!
            }
            if self.cardNumber != nil {
                map["CardNumber"] = self.cardNumber!
            }
            if self.contactAddress != nil {
                map["ContactAddress"] = self.contactAddress!
            }
            if self.contactEmail != nil {
                map["ContactEmail"] = self.contactEmail!
            }
            if self.contactName != nil {
                map["ContactName"] = self.contactName!
            }
            if self.contactNumber != nil {
                map["ContactNumber"] = self.contactNumber!
            }
            if self.contactZipcode != nil {
                map["ContactZipcode"] = self.contactZipcode!
            }
            if self.country != nil {
                map["Country"] = self.country!
            }
            if self.EAddress != nil {
                map["EAddress"] = self.EAddress!
            }
            if self.EName != nil {
                map["EName"] = self.EName!
            }
            if self.idCardUrl != nil {
                map["IdCardUrl"] = self.idCardUrl!
            }
            if self.legalNoticeUrl != nil {
                map["LegalNoticeUrl"] = self.legalNoticeUrl!
            }
            if self.passportUrl != nil {
                map["PassportUrl"] = self.passportUrl!
            }
            if self.principalName != nil {
                map["PrincipalName"] = self.principalName!
            }
            if self.province != nil {
                map["Province"] = self.province!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Address") && dict["Address"] != nil {
                self.address = dict["Address"] as! String
            }
            if dict.keys.contains("ApplicantName") && dict["ApplicantName"] != nil {
                self.applicantName = dict["ApplicantName"] as! String
            }
            if dict.keys.contains("ApplicantRegion") && dict["ApplicantRegion"] != nil {
                self.applicantRegion = dict["ApplicantRegion"] as! Int32
            }
            if dict.keys.contains("ApplicantType") && dict["ApplicantType"] != nil {
                self.applicantType = dict["ApplicantType"] as! Int32
            }
            if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
                self.auditStatus = dict["AuditStatus"] as! Int32
            }
            if dict.keys.contains("AuthorizationUrl") && dict["AuthorizationUrl"] != nil {
                self.authorizationUrl = dict["AuthorizationUrl"] as! String
            }
            if dict.keys.contains("BusinessLicenceUrl") && dict["BusinessLicenceUrl"] != nil {
                self.businessLicenceUrl = dict["BusinessLicenceUrl"] as! String
            }
            if dict.keys.contains("CardNumber") && dict["CardNumber"] != nil {
                self.cardNumber = dict["CardNumber"] as! String
            }
            if dict.keys.contains("ContactAddress") && dict["ContactAddress"] != nil {
                self.contactAddress = dict["ContactAddress"] as! String
            }
            if dict.keys.contains("ContactEmail") && dict["ContactEmail"] != nil {
                self.contactEmail = dict["ContactEmail"] as! String
            }
            if dict.keys.contains("ContactName") && dict["ContactName"] != nil {
                self.contactName = dict["ContactName"] as! String
            }
            if dict.keys.contains("ContactNumber") && dict["ContactNumber"] != nil {
                self.contactNumber = dict["ContactNumber"] as! String
            }
            if dict.keys.contains("ContactZipcode") && dict["ContactZipcode"] != nil {
                self.contactZipcode = dict["ContactZipcode"] as! String
            }
            if dict.keys.contains("Country") && dict["Country"] != nil {
                self.country = dict["Country"] as! String
            }
            if dict.keys.contains("EAddress") && dict["EAddress"] != nil {
                self.EAddress = dict["EAddress"] as! String
            }
            if dict.keys.contains("EName") && dict["EName"] != nil {
                self.EName = dict["EName"] as! String
            }
            if dict.keys.contains("IdCardUrl") && dict["IdCardUrl"] != nil {
                self.idCardUrl = dict["IdCardUrl"] as! String
            }
            if dict.keys.contains("LegalNoticeUrl") && dict["LegalNoticeUrl"] != nil {
                self.legalNoticeUrl = dict["LegalNoticeUrl"] as! String
            }
            if dict.keys.contains("PassportUrl") && dict["PassportUrl"] != nil {
                self.passportUrl = dict["PassportUrl"] as! String
            }
            if dict.keys.contains("PrincipalName") && dict["PrincipalName"] != nil {
                self.principalName = dict["PrincipalName"] as! Int32
            }
            if dict.keys.contains("Province") && dict["Province"] != nil {
                self.province = dict["Province"] as! String
            }
        }
    }
    public class FirstClassification : Tea.TeaModel {
        public var classificationCode: String?

        public var classificationName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.classificationCode != nil {
                map["ClassificationCode"] = self.classificationCode!
            }
            if self.classificationName != nil {
                map["ClassificationName"] = self.classificationName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClassificationCode") && dict["ClassificationCode"] != nil {
                self.classificationCode = dict["ClassificationCode"] as! String
            }
            if dict.keys.contains("ClassificationName") && dict["ClassificationName"] != nil {
                self.classificationName = dict["ClassificationName"] as! String
            }
        }
    }
    public class Supplements : Tea.TeaModel {
        public var acceptExpirationDate: Int64?

        public var acceptTime: Int64?

        public var applicationType: Int32?

        public var content: String?

        public var officialFile: String?

        public var operateTime: Int64?

        public var orderId: String?

        public var sbjExpirationDate: Int64?

        public var sendTime: Int64?

        public var serialNumber: String?

        public var supplementId: Int64?

        public var supplementStatus: Int32?

        public var trademarkNumber: String?

        public var userFiles: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceptExpirationDate != nil {
                map["AcceptExpirationDate"] = self.acceptExpirationDate!
            }
            if self.acceptTime != nil {
                map["AcceptTime"] = self.acceptTime!
            }
            if self.applicationType != nil {
                map["ApplicationType"] = self.applicationType!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.officialFile != nil {
                map["OfficialFile"] = self.officialFile!
            }
            if self.operateTime != nil {
                map["OperateTime"] = self.operateTime!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.sbjExpirationDate != nil {
                map["SbjExpirationDate"] = self.sbjExpirationDate!
            }
            if self.sendTime != nil {
                map["SendTime"] = self.sendTime!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.supplementId != nil {
                map["SupplementId"] = self.supplementId!
            }
            if self.supplementStatus != nil {
                map["SupplementStatus"] = self.supplementStatus!
            }
            if self.trademarkNumber != nil {
                map["TrademarkNumber"] = self.trademarkNumber!
            }
            if self.userFiles != nil {
                map["UserFiles"] = self.userFiles!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceptExpirationDate") && dict["AcceptExpirationDate"] != nil {
                self.acceptExpirationDate = dict["AcceptExpirationDate"] as! Int64
            }
            if dict.keys.contains("AcceptTime") && dict["AcceptTime"] != nil {
                self.acceptTime = dict["AcceptTime"] as! Int64
            }
            if dict.keys.contains("ApplicationType") && dict["ApplicationType"] != nil {
                self.applicationType = dict["ApplicationType"] as! Int32
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("OfficialFile") && dict["OfficialFile"] != nil {
                self.officialFile = dict["OfficialFile"] as! String
            }
            if dict.keys.contains("OperateTime") && dict["OperateTime"] != nil {
                self.operateTime = dict["OperateTime"] as! Int64
            }
            if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                self.orderId = dict["OrderId"] as! String
            }
            if dict.keys.contains("SbjExpirationDate") && dict["SbjExpirationDate"] != nil {
                self.sbjExpirationDate = dict["SbjExpirationDate"] as! Int64
            }
            if dict.keys.contains("SendTime") && dict["SendTime"] != nil {
                self.sendTime = dict["SendTime"] as! Int64
            }
            if dict.keys.contains("SerialNumber") && dict["SerialNumber"] != nil {
                self.serialNumber = dict["SerialNumber"] as! String
            }
            if dict.keys.contains("SupplementId") && dict["SupplementId"] != nil {
                self.supplementId = dict["SupplementId"] as! Int64
            }
            if dict.keys.contains("SupplementStatus") && dict["SupplementStatus"] != nil {
                self.supplementStatus = dict["SupplementStatus"] as! Int32
            }
            if dict.keys.contains("TrademarkNumber") && dict["TrademarkNumber"] != nil {
                self.trademarkNumber = dict["TrademarkNumber"] as! String
            }
            if dict.keys.contains("UserFiles") && dict["UserFiles"] != nil {
                self.userFiles = dict["UserFiles"] as! [String]
            }
        }
    }
    public class ThirdClassifications : Tea.TeaModel {
        public var classificationCode: String?

        public var classificationName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.classificationCode != nil {
                map["ClassificationCode"] = self.classificationCode!
            }
            if self.classificationName != nil {
                map["ClassificationName"] = self.classificationName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClassificationCode") && dict["ClassificationCode"] != nil {
                self.classificationCode = dict["ClassificationCode"] as! String
            }
            if dict.keys.contains("ClassificationName") && dict["ClassificationName"] != nil {
                self.classificationName = dict["ClassificationName"] as! String
            }
        }
    }
    public var acceptUrl: String?

    public var applicant: DescribeAdminTrademarkApplicationResponseBody.Applicant?

    public var applicantId: Int64?

    public var applicationStatus: Int32?

    public var applicationType: Int32?

    public var authorizationUrl: String?

    public var bizId: String?

    public var blackAndWhiteIconUrl: String?

    public var createTime: Int64?

    public var extendInfo: [String: Any]?

    public var firstClassification: DescribeAdminTrademarkApplicationResponseBody.FirstClassification?

    public var judgeResultUrls: [String]?

    public var note: String?

    public var orderId: String?

    public var orderPrice: Double?

    public var principalName: Int32?

    public var receiptUrls: [String]?

    public var recvUserLogistics: String?

    public var requestId: String?

    public var sendSbjLogistics: String?

    public var sendUserLogistics: String?

    public var servicePrice: Double?

    public var supplements: [DescribeAdminTrademarkApplicationResponseBody.Supplements]?

    public var thirdClassifications: [DescribeAdminTrademarkApplicationResponseBody.ThirdClassifications]?

    public var totalPrice: Double?

    public var trademarkIcon: String?

    public var trademarkName: String?

    public var trademarkNameType: Int32?

    public var trademarkNumber: String?

    public var updateTime: Int64?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.applicant?.validate()
        try self.firstClassification?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptUrl != nil {
            map["AcceptUrl"] = self.acceptUrl!
        }
        if self.applicant != nil {
            map["Applicant"] = self.applicant?.toMap()
        }
        if self.applicantId != nil {
            map["ApplicantId"] = self.applicantId!
        }
        if self.applicationStatus != nil {
            map["ApplicationStatus"] = self.applicationStatus!
        }
        if self.applicationType != nil {
            map["ApplicationType"] = self.applicationType!
        }
        if self.authorizationUrl != nil {
            map["AuthorizationUrl"] = self.authorizationUrl!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.blackAndWhiteIconUrl != nil {
            map["BlackAndWhiteIconUrl"] = self.blackAndWhiteIconUrl!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.extendInfo != nil {
            map["ExtendInfo"] = self.extendInfo!
        }
        if self.firstClassification != nil {
            map["FirstClassification"] = self.firstClassification?.toMap()
        }
        if self.judgeResultUrls != nil {
            map["JudgeResultUrls"] = self.judgeResultUrls!
        }
        if self.note != nil {
            map["Note"] = self.note!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.orderPrice != nil {
            map["OrderPrice"] = self.orderPrice!
        }
        if self.principalName != nil {
            map["PrincipalName"] = self.principalName!
        }
        if self.receiptUrls != nil {
            map["ReceiptUrls"] = self.receiptUrls!
        }
        if self.recvUserLogistics != nil {
            map["RecvUserLogistics"] = self.recvUserLogistics!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sendSbjLogistics != nil {
            map["SendSbjLogistics"] = self.sendSbjLogistics!
        }
        if self.sendUserLogistics != nil {
            map["SendUserLogistics"] = self.sendUserLogistics!
        }
        if self.servicePrice != nil {
            map["ServicePrice"] = self.servicePrice!
        }
        if self.supplements != nil {
            var tmp : [Any] = []
            for k in self.supplements! {
                tmp.append(k.toMap())
            }
            map["Supplements"] = tmp
        }
        if self.thirdClassifications != nil {
            var tmp : [Any] = []
            for k in self.thirdClassifications! {
                tmp.append(k.toMap())
            }
            map["ThirdClassifications"] = tmp
        }
        if self.totalPrice != nil {
            map["TotalPrice"] = self.totalPrice!
        }
        if self.trademarkIcon != nil {
            map["TrademarkIcon"] = self.trademarkIcon!
        }
        if self.trademarkName != nil {
            map["TrademarkName"] = self.trademarkName!
        }
        if self.trademarkNameType != nil {
            map["TrademarkNameType"] = self.trademarkNameType!
        }
        if self.trademarkNumber != nil {
            map["TrademarkNumber"] = self.trademarkNumber!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptUrl") && dict["AcceptUrl"] != nil {
            self.acceptUrl = dict["AcceptUrl"] as! String
        }
        if dict.keys.contains("Applicant") && dict["Applicant"] != nil {
            var model = DescribeAdminTrademarkApplicationResponseBody.Applicant()
            model.fromMap(dict["Applicant"] as! [String: Any])
            self.applicant = model
        }
        if dict.keys.contains("ApplicantId") && dict["ApplicantId"] != nil {
            self.applicantId = dict["ApplicantId"] as! Int64
        }
        if dict.keys.contains("ApplicationStatus") && dict["ApplicationStatus"] != nil {
            self.applicationStatus = dict["ApplicationStatus"] as! Int32
        }
        if dict.keys.contains("ApplicationType") && dict["ApplicationType"] != nil {
            self.applicationType = dict["ApplicationType"] as! Int32
        }
        if dict.keys.contains("AuthorizationUrl") && dict["AuthorizationUrl"] != nil {
            self.authorizationUrl = dict["AuthorizationUrl"] as! String
        }
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("BlackAndWhiteIconUrl") && dict["BlackAndWhiteIconUrl"] != nil {
            self.blackAndWhiteIconUrl = dict["BlackAndWhiteIconUrl"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! Int64
        }
        if dict.keys.contains("ExtendInfo") && dict["ExtendInfo"] != nil {
            self.extendInfo = dict["ExtendInfo"] as! [String: Any]
        }
        if dict.keys.contains("FirstClassification") && dict["FirstClassification"] != nil {
            var model = DescribeAdminTrademarkApplicationResponseBody.FirstClassification()
            model.fromMap(dict["FirstClassification"] as! [String: Any])
            self.firstClassification = model
        }
        if dict.keys.contains("JudgeResultUrls") && dict["JudgeResultUrls"] != nil {
            self.judgeResultUrls = dict["JudgeResultUrls"] as! [String]
        }
        if dict.keys.contains("Note") && dict["Note"] != nil {
            self.note = dict["Note"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("OrderPrice") && dict["OrderPrice"] != nil {
            self.orderPrice = dict["OrderPrice"] as! Double
        }
        if dict.keys.contains("PrincipalName") && dict["PrincipalName"] != nil {
            self.principalName = dict["PrincipalName"] as! Int32
        }
        if dict.keys.contains("ReceiptUrls") && dict["ReceiptUrls"] != nil {
            self.receiptUrls = dict["ReceiptUrls"] as! [String]
        }
        if dict.keys.contains("RecvUserLogistics") && dict["RecvUserLogistics"] != nil {
            self.recvUserLogistics = dict["RecvUserLogistics"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SendSbjLogistics") && dict["SendSbjLogistics"] != nil {
            self.sendSbjLogistics = dict["SendSbjLogistics"] as! String
        }
        if dict.keys.contains("SendUserLogistics") && dict["SendUserLogistics"] != nil {
            self.sendUserLogistics = dict["SendUserLogistics"] as! String
        }
        if dict.keys.contains("ServicePrice") && dict["ServicePrice"] != nil {
            self.servicePrice = dict["ServicePrice"] as! Double
        }
        if dict.keys.contains("Supplements") && dict["Supplements"] != nil {
            var tmp : [DescribeAdminTrademarkApplicationResponseBody.Supplements] = []
            for v in dict["Supplements"] as! [Any] {
                var model = DescribeAdminTrademarkApplicationResponseBody.Supplements()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.supplements = tmp
        }
        if dict.keys.contains("ThirdClassifications") && dict["ThirdClassifications"] != nil {
            var tmp : [DescribeAdminTrademarkApplicationResponseBody.ThirdClassifications] = []
            for v in dict["ThirdClassifications"] as! [Any] {
                var model = DescribeAdminTrademarkApplicationResponseBody.ThirdClassifications()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.thirdClassifications = tmp
        }
        if dict.keys.contains("TotalPrice") && dict["TotalPrice"] != nil {
            self.totalPrice = dict["TotalPrice"] as! Double
        }
        if dict.keys.contains("TrademarkIcon") && dict["TrademarkIcon"] != nil {
            self.trademarkIcon = dict["TrademarkIcon"] as! String
        }
        if dict.keys.contains("TrademarkName") && dict["TrademarkName"] != nil {
            self.trademarkName = dict["TrademarkName"] as! String
        }
        if dict.keys.contains("TrademarkNameType") && dict["TrademarkNameType"] != nil {
            self.trademarkNameType = dict["TrademarkNameType"] as! Int32
        }
        if dict.keys.contains("TrademarkNumber") && dict["TrademarkNumber"] != nil {
            self.trademarkNumber = dict["TrademarkNumber"] as! String
        }
        if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
            self.updateTime = dict["UpdateTime"] as! Int64
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DescribeAdminTrademarkApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAdminTrademarkApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAdminTrademarkApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeApplicantRequest : Tea.TeaModel {
    public var applicantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicantId != nil {
            map["ApplicantId"] = self.applicantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicantId") && dict["ApplicantId"] != nil {
            self.applicantId = dict["ApplicantId"] as! Int64
        }
    }
}

public class DescribeApplicantResponseBody : Tea.TeaModel {
    public var address: String?

    public var applicantId: Int64?

    public var applicantName: String?

    public var applicantRegion: Int32?

    public var applicantType: Int32?

    public var applicantVersion: String?

    public var auditStatus: Int32?

    public var authorizationAuditStatus: Int32?

    public var authorizationUrl: String?

    public var businessLicenceUrl: String?

    public var cardNumber: String?

    public var contactAddress: String?

    public var contactCity: String?

    public var contactCounty: String?

    public var contactDistrict: String?

    public var contactEmail: String?

    public var contactName: String?

    public var contactNumber: String?

    public var contactProvince: String?

    public var contactZipcode: String?

    public var country: String?

    public var EAddress: String?

    public var EName: String?

    public var idCardName: String?

    public var idCardNumber: String?

    public var idCardUrl: String?

    public var legalNoticeUrl: String?

    public var note: String?

    public var passportUrl: String?

    public var personalType: Int64?

    public var principalName: Int32?

    public var province: String?

    public var requestId: String?

    public var validDate: Int64?

    public override init() {
        super.init()
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
        if self.applicantId != nil {
            map["ApplicantId"] = self.applicantId!
        }
        if self.applicantName != nil {
            map["ApplicantName"] = self.applicantName!
        }
        if self.applicantRegion != nil {
            map["ApplicantRegion"] = self.applicantRegion!
        }
        if self.applicantType != nil {
            map["ApplicantType"] = self.applicantType!
        }
        if self.applicantVersion != nil {
            map["ApplicantVersion"] = self.applicantVersion!
        }
        if self.auditStatus != nil {
            map["AuditStatus"] = self.auditStatus!
        }
        if self.authorizationAuditStatus != nil {
            map["AuthorizationAuditStatus"] = self.authorizationAuditStatus!
        }
        if self.authorizationUrl != nil {
            map["AuthorizationUrl"] = self.authorizationUrl!
        }
        if self.businessLicenceUrl != nil {
            map["BusinessLicenceUrl"] = self.businessLicenceUrl!
        }
        if self.cardNumber != nil {
            map["CardNumber"] = self.cardNumber!
        }
        if self.contactAddress != nil {
            map["ContactAddress"] = self.contactAddress!
        }
        if self.contactCity != nil {
            map["ContactCity"] = self.contactCity!
        }
        if self.contactCounty != nil {
            map["ContactCounty"] = self.contactCounty!
        }
        if self.contactDistrict != nil {
            map["ContactDistrict"] = self.contactDistrict!
        }
        if self.contactEmail != nil {
            map["ContactEmail"] = self.contactEmail!
        }
        if self.contactName != nil {
            map["ContactName"] = self.contactName!
        }
        if self.contactNumber != nil {
            map["ContactNumber"] = self.contactNumber!
        }
        if self.contactProvince != nil {
            map["ContactProvince"] = self.contactProvince!
        }
        if self.contactZipcode != nil {
            map["ContactZipcode"] = self.contactZipcode!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.EAddress != nil {
            map["EAddress"] = self.EAddress!
        }
        if self.EName != nil {
            map["EName"] = self.EName!
        }
        if self.idCardName != nil {
            map["IdCardName"] = self.idCardName!
        }
        if self.idCardNumber != nil {
            map["IdCardNumber"] = self.idCardNumber!
        }
        if self.idCardUrl != nil {
            map["IdCardUrl"] = self.idCardUrl!
        }
        if self.legalNoticeUrl != nil {
            map["LegalNoticeUrl"] = self.legalNoticeUrl!
        }
        if self.note != nil {
            map["Note"] = self.note!
        }
        if self.passportUrl != nil {
            map["PassportUrl"] = self.passportUrl!
        }
        if self.personalType != nil {
            map["PersonalType"] = self.personalType!
        }
        if self.principalName != nil {
            map["PrincipalName"] = self.principalName!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.validDate != nil {
            map["ValidDate"] = self.validDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("ApplicantId") && dict["ApplicantId"] != nil {
            self.applicantId = dict["ApplicantId"] as! Int64
        }
        if dict.keys.contains("ApplicantName") && dict["ApplicantName"] != nil {
            self.applicantName = dict["ApplicantName"] as! String
        }
        if dict.keys.contains("ApplicantRegion") && dict["ApplicantRegion"] != nil {
            self.applicantRegion = dict["ApplicantRegion"] as! Int32
        }
        if dict.keys.contains("ApplicantType") && dict["ApplicantType"] != nil {
            self.applicantType = dict["ApplicantType"] as! Int32
        }
        if dict.keys.contains("ApplicantVersion") && dict["ApplicantVersion"] != nil {
            self.applicantVersion = dict["ApplicantVersion"] as! String
        }
        if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
            self.auditStatus = dict["AuditStatus"] as! Int32
        }
        if dict.keys.contains("AuthorizationAuditStatus") && dict["AuthorizationAuditStatus"] != nil {
            self.authorizationAuditStatus = dict["AuthorizationAuditStatus"] as! Int32
        }
        if dict.keys.contains("AuthorizationUrl") && dict["AuthorizationUrl"] != nil {
            self.authorizationUrl = dict["AuthorizationUrl"] as! String
        }
        if dict.keys.contains("BusinessLicenceUrl") && dict["BusinessLicenceUrl"] != nil {
            self.businessLicenceUrl = dict["BusinessLicenceUrl"] as! String
        }
        if dict.keys.contains("CardNumber") && dict["CardNumber"] != nil {
            self.cardNumber = dict["CardNumber"] as! String
        }
        if dict.keys.contains("ContactAddress") && dict["ContactAddress"] != nil {
            self.contactAddress = dict["ContactAddress"] as! String
        }
        if dict.keys.contains("ContactCity") && dict["ContactCity"] != nil {
            self.contactCity = dict["ContactCity"] as! String
        }
        if dict.keys.contains("ContactCounty") && dict["ContactCounty"] != nil {
            self.contactCounty = dict["ContactCounty"] as! String
        }
        if dict.keys.contains("ContactDistrict") && dict["ContactDistrict"] != nil {
            self.contactDistrict = dict["ContactDistrict"] as! String
        }
        if dict.keys.contains("ContactEmail") && dict["ContactEmail"] != nil {
            self.contactEmail = dict["ContactEmail"] as! String
        }
        if dict.keys.contains("ContactName") && dict["ContactName"] != nil {
            self.contactName = dict["ContactName"] as! String
        }
        if dict.keys.contains("ContactNumber") && dict["ContactNumber"] != nil {
            self.contactNumber = dict["ContactNumber"] as! String
        }
        if dict.keys.contains("ContactProvince") && dict["ContactProvince"] != nil {
            self.contactProvince = dict["ContactProvince"] as! String
        }
        if dict.keys.contains("ContactZipcode") && dict["ContactZipcode"] != nil {
            self.contactZipcode = dict["ContactZipcode"] as! String
        }
        if dict.keys.contains("Country") && dict["Country"] != nil {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("EAddress") && dict["EAddress"] != nil {
            self.EAddress = dict["EAddress"] as! String
        }
        if dict.keys.contains("EName") && dict["EName"] != nil {
            self.EName = dict["EName"] as! String
        }
        if dict.keys.contains("IdCardName") && dict["IdCardName"] != nil {
            self.idCardName = dict["IdCardName"] as! String
        }
        if dict.keys.contains("IdCardNumber") && dict["IdCardNumber"] != nil {
            self.idCardNumber = dict["IdCardNumber"] as! String
        }
        if dict.keys.contains("IdCardUrl") && dict["IdCardUrl"] != nil {
            self.idCardUrl = dict["IdCardUrl"] as! String
        }
        if dict.keys.contains("LegalNoticeUrl") && dict["LegalNoticeUrl"] != nil {
            self.legalNoticeUrl = dict["LegalNoticeUrl"] as! String
        }
        if dict.keys.contains("Note") && dict["Note"] != nil {
            self.note = dict["Note"] as! String
        }
        if dict.keys.contains("PassportUrl") && dict["PassportUrl"] != nil {
            self.passportUrl = dict["PassportUrl"] as! String
        }
        if dict.keys.contains("PersonalType") && dict["PersonalType"] != nil {
            self.personalType = dict["PersonalType"] as! Int64
        }
        if dict.keys.contains("PrincipalName") && dict["PrincipalName"] != nil {
            self.principalName = dict["PrincipalName"] as! Int32
        }
        if dict.keys.contains("Province") && dict["Province"] != nil {
            self.province = dict["Province"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ValidDate") && dict["ValidDate"] != nil {
            self.validDate = dict["ValidDate"] as! Int64
        }
    }
}

public class DescribeApplicantResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApplicantResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeApplicantResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePartnerTrademarkApplicationRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
    }
}

public class DescribePartnerTrademarkApplicationResponseBody : Tea.TeaModel {
    public class Applicant : Tea.TeaModel {
        public var address: String?

        public var applicantName: String?

        public var applicantRegion: Int32?

        public var applicantType: Int32?

        public var auditStatus: Int32?

        public var authorizationUrl: String?

        public var businessLicenceUrl: String?

        public var cardNumber: String?

        public var contactAddress: String?

        public var contactEmail: String?

        public var contactName: String?

        public var contactNumber: String?

        public var contactZipcode: String?

        public var country: String?

        public var EAddress: String?

        public var EName: String?

        public var idCardUrl: String?

        public var legalNoticeUrl: String?

        public var passportUrl: String?

        public var principalName: Int32?

        public var province: String?

        public override init() {
            super.init()
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
            if self.applicantName != nil {
                map["ApplicantName"] = self.applicantName!
            }
            if self.applicantRegion != nil {
                map["ApplicantRegion"] = self.applicantRegion!
            }
            if self.applicantType != nil {
                map["ApplicantType"] = self.applicantType!
            }
            if self.auditStatus != nil {
                map["AuditStatus"] = self.auditStatus!
            }
            if self.authorizationUrl != nil {
                map["AuthorizationUrl"] = self.authorizationUrl!
            }
            if self.businessLicenceUrl != nil {
                map["BusinessLicenceUrl"] = self.businessLicenceUrl!
            }
            if self.cardNumber != nil {
                map["CardNumber"] = self.cardNumber!
            }
            if self.contactAddress != nil {
                map["ContactAddress"] = self.contactAddress!
            }
            if self.contactEmail != nil {
                map["ContactEmail"] = self.contactEmail!
            }
            if self.contactName != nil {
                map["ContactName"] = self.contactName!
            }
            if self.contactNumber != nil {
                map["ContactNumber"] = self.contactNumber!
            }
            if self.contactZipcode != nil {
                map["ContactZipcode"] = self.contactZipcode!
            }
            if self.country != nil {
                map["Country"] = self.country!
            }
            if self.EAddress != nil {
                map["EAddress"] = self.EAddress!
            }
            if self.EName != nil {
                map["EName"] = self.EName!
            }
            if self.idCardUrl != nil {
                map["IdCardUrl"] = self.idCardUrl!
            }
            if self.legalNoticeUrl != nil {
                map["LegalNoticeUrl"] = self.legalNoticeUrl!
            }
            if self.passportUrl != nil {
                map["PassportUrl"] = self.passportUrl!
            }
            if self.principalName != nil {
                map["PrincipalName"] = self.principalName!
            }
            if self.province != nil {
                map["Province"] = self.province!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Address") && dict["Address"] != nil {
                self.address = dict["Address"] as! String
            }
            if dict.keys.contains("ApplicantName") && dict["ApplicantName"] != nil {
                self.applicantName = dict["ApplicantName"] as! String
            }
            if dict.keys.contains("ApplicantRegion") && dict["ApplicantRegion"] != nil {
                self.applicantRegion = dict["ApplicantRegion"] as! Int32
            }
            if dict.keys.contains("ApplicantType") && dict["ApplicantType"] != nil {
                self.applicantType = dict["ApplicantType"] as! Int32
            }
            if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
                self.auditStatus = dict["AuditStatus"] as! Int32
            }
            if dict.keys.contains("AuthorizationUrl") && dict["AuthorizationUrl"] != nil {
                self.authorizationUrl = dict["AuthorizationUrl"] as! String
            }
            if dict.keys.contains("BusinessLicenceUrl") && dict["BusinessLicenceUrl"] != nil {
                self.businessLicenceUrl = dict["BusinessLicenceUrl"] as! String
            }
            if dict.keys.contains("CardNumber") && dict["CardNumber"] != nil {
                self.cardNumber = dict["CardNumber"] as! String
            }
            if dict.keys.contains("ContactAddress") && dict["ContactAddress"] != nil {
                self.contactAddress = dict["ContactAddress"] as! String
            }
            if dict.keys.contains("ContactEmail") && dict["ContactEmail"] != nil {
                self.contactEmail = dict["ContactEmail"] as! String
            }
            if dict.keys.contains("ContactName") && dict["ContactName"] != nil {
                self.contactName = dict["ContactName"] as! String
            }
            if dict.keys.contains("ContactNumber") && dict["ContactNumber"] != nil {
                self.contactNumber = dict["ContactNumber"] as! String
            }
            if dict.keys.contains("ContactZipcode") && dict["ContactZipcode"] != nil {
                self.contactZipcode = dict["ContactZipcode"] as! String
            }
            if dict.keys.contains("Country") && dict["Country"] != nil {
                self.country = dict["Country"] as! String
            }
            if dict.keys.contains("EAddress") && dict["EAddress"] != nil {
                self.EAddress = dict["EAddress"] as! String
            }
            if dict.keys.contains("EName") && dict["EName"] != nil {
                self.EName = dict["EName"] as! String
            }
            if dict.keys.contains("IdCardUrl") && dict["IdCardUrl"] != nil {
                self.idCardUrl = dict["IdCardUrl"] as! String
            }
            if dict.keys.contains("LegalNoticeUrl") && dict["LegalNoticeUrl"] != nil {
                self.legalNoticeUrl = dict["LegalNoticeUrl"] as! String
            }
            if dict.keys.contains("PassportUrl") && dict["PassportUrl"] != nil {
                self.passportUrl = dict["PassportUrl"] as! String
            }
            if dict.keys.contains("PrincipalName") && dict["PrincipalName"] != nil {
                self.principalName = dict["PrincipalName"] as! Int32
            }
            if dict.keys.contains("Province") && dict["Province"] != nil {
                self.province = dict["Province"] as! String
            }
        }
    }
    public class FirstClassification : Tea.TeaModel {
        public var classificationCode: String?

        public var classificationName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.classificationCode != nil {
                map["ClassificationCode"] = self.classificationCode!
            }
            if self.classificationName != nil {
                map["ClassificationName"] = self.classificationName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClassificationCode") && dict["ClassificationCode"] != nil {
                self.classificationCode = dict["ClassificationCode"] as! String
            }
            if dict.keys.contains("ClassificationName") && dict["ClassificationName"] != nil {
                self.classificationName = dict["ClassificationName"] as! String
            }
        }
    }
    public class Supplements : Tea.TeaModel {
        public var acceptExpirationDate: Int64?

        public var acceptTime: Int64?

        public var applicationType: Int32?

        public var content: String?

        public var officialFile: String?

        public var operateTime: Int64?

        public var orderId: String?

        public var sbjExpirationDate: Int64?

        public var sendTime: Int64?

        public var serialNumber: String?

        public var supplementId: Int64?

        public var supplementStatus: Int32?

        public var trademarkNumber: String?

        public var userFiles: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acceptExpirationDate != nil {
                map["AcceptExpirationDate"] = self.acceptExpirationDate!
            }
            if self.acceptTime != nil {
                map["AcceptTime"] = self.acceptTime!
            }
            if self.applicationType != nil {
                map["ApplicationType"] = self.applicationType!
            }
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.officialFile != nil {
                map["OfficialFile"] = self.officialFile!
            }
            if self.operateTime != nil {
                map["OperateTime"] = self.operateTime!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.sbjExpirationDate != nil {
                map["SbjExpirationDate"] = self.sbjExpirationDate!
            }
            if self.sendTime != nil {
                map["SendTime"] = self.sendTime!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.supplementId != nil {
                map["SupplementId"] = self.supplementId!
            }
            if self.supplementStatus != nil {
                map["SupplementStatus"] = self.supplementStatus!
            }
            if self.trademarkNumber != nil {
                map["TrademarkNumber"] = self.trademarkNumber!
            }
            if self.userFiles != nil {
                map["UserFiles"] = self.userFiles!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcceptExpirationDate") && dict["AcceptExpirationDate"] != nil {
                self.acceptExpirationDate = dict["AcceptExpirationDate"] as! Int64
            }
            if dict.keys.contains("AcceptTime") && dict["AcceptTime"] != nil {
                self.acceptTime = dict["AcceptTime"] as! Int64
            }
            if dict.keys.contains("ApplicationType") && dict["ApplicationType"] != nil {
                self.applicationType = dict["ApplicationType"] as! Int32
            }
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("OfficialFile") && dict["OfficialFile"] != nil {
                self.officialFile = dict["OfficialFile"] as! String
            }
            if dict.keys.contains("OperateTime") && dict["OperateTime"] != nil {
                self.operateTime = dict["OperateTime"] as! Int64
            }
            if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                self.orderId = dict["OrderId"] as! String
            }
            if dict.keys.contains("SbjExpirationDate") && dict["SbjExpirationDate"] != nil {
                self.sbjExpirationDate = dict["SbjExpirationDate"] as! Int64
            }
            if dict.keys.contains("SendTime") && dict["SendTime"] != nil {
                self.sendTime = dict["SendTime"] as! Int64
            }
            if dict.keys.contains("SerialNumber") && dict["SerialNumber"] != nil {
                self.serialNumber = dict["SerialNumber"] as! String
            }
            if dict.keys.contains("SupplementId") && dict["SupplementId"] != nil {
                self.supplementId = dict["SupplementId"] as! Int64
            }
            if dict.keys.contains("SupplementStatus") && dict["SupplementStatus"] != nil {
                self.supplementStatus = dict["SupplementStatus"] as! Int32
            }
            if dict.keys.contains("TrademarkNumber") && dict["TrademarkNumber"] != nil {
                self.trademarkNumber = dict["TrademarkNumber"] as! String
            }
            if dict.keys.contains("UserFiles") && dict["UserFiles"] != nil {
                self.userFiles = dict["UserFiles"] as! [String]
            }
        }
    }
    public class ThirdClassifications : Tea.TeaModel {
        public var classificationCode: String?

        public var classificationName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.classificationCode != nil {
                map["ClassificationCode"] = self.classificationCode!
            }
            if self.classificationName != nil {
                map["ClassificationName"] = self.classificationName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClassificationCode") && dict["ClassificationCode"] != nil {
                self.classificationCode = dict["ClassificationCode"] as! String
            }
            if dict.keys.contains("ClassificationName") && dict["ClassificationName"] != nil {
                self.classificationName = dict["ClassificationName"] as! String
            }
        }
    }
    public var acceptUrl: String?

    public var applicant: DescribePartnerTrademarkApplicationResponseBody.Applicant?

    public var applicantId: Int64?

    public var applicationStatus: Int32?

    public var applicationType: Int32?

    public var authorizationUrl: String?

    public var bizId: String?

    public var blackAndWhiteIconUrl: String?

    public var createTime: Int64?

    public var extendInfo: [String: Any]?

    public var firstClassification: DescribePartnerTrademarkApplicationResponseBody.FirstClassification?

    public var judgeResultUrls: [String]?

    public var note: String?

    public var orderId: String?

    public var orderPrice: Double?

    public var principalName: Int32?

    public var receiptUrls: [String]?

    public var recvUserLogistics: String?

    public var requestId: String?

    public var sendSbjLogistics: String?

    public var sendUserLogistics: String?

    public var servicePrice: Double?

    public var supplements: [DescribePartnerTrademarkApplicationResponseBody.Supplements]?

    public var thirdClassifications: [DescribePartnerTrademarkApplicationResponseBody.ThirdClassifications]?

    public var totalPrice: Double?

    public var trademarkIcon: String?

    public var trademarkName: String?

    public var trademarkNameType: Int32?

    public var trademarkNumber: String?

    public var updateTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.applicant?.validate()
        try self.firstClassification?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptUrl != nil {
            map["AcceptUrl"] = self.acceptUrl!
        }
        if self.applicant != nil {
            map["Applicant"] = self.applicant?.toMap()
        }
        if self.applicantId != nil {
            map["ApplicantId"] = self.applicantId!
        }
        if self.applicationStatus != nil {
            map["ApplicationStatus"] = self.applicationStatus!
        }
        if self.applicationType != nil {
            map["ApplicationType"] = self.applicationType!
        }
        if self.authorizationUrl != nil {
            map["AuthorizationUrl"] = self.authorizationUrl!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.blackAndWhiteIconUrl != nil {
            map["BlackAndWhiteIconUrl"] = self.blackAndWhiteIconUrl!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.extendInfo != nil {
            map["ExtendInfo"] = self.extendInfo!
        }
        if self.firstClassification != nil {
            map["FirstClassification"] = self.firstClassification?.toMap()
        }
        if self.judgeResultUrls != nil {
            map["JudgeResultUrls"] = self.judgeResultUrls!
        }
        if self.note != nil {
            map["Note"] = self.note!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.orderPrice != nil {
            map["OrderPrice"] = self.orderPrice!
        }
        if self.principalName != nil {
            map["PrincipalName"] = self.principalName!
        }
        if self.receiptUrls != nil {
            map["ReceiptUrls"] = self.receiptUrls!
        }
        if self.recvUserLogistics != nil {
            map["RecvUserLogistics"] = self.recvUserLogistics!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sendSbjLogistics != nil {
            map["SendSbjLogistics"] = self.sendSbjLogistics!
        }
        if self.sendUserLogistics != nil {
            map["SendUserLogistics"] = self.sendUserLogistics!
        }
        if self.servicePrice != nil {
            map["ServicePrice"] = self.servicePrice!
        }
        if self.supplements != nil {
            var tmp : [Any] = []
            for k in self.supplements! {
                tmp.append(k.toMap())
            }
            map["Supplements"] = tmp
        }
        if self.thirdClassifications != nil {
            var tmp : [Any] = []
            for k in self.thirdClassifications! {
                tmp.append(k.toMap())
            }
            map["ThirdClassifications"] = tmp
        }
        if self.totalPrice != nil {
            map["TotalPrice"] = self.totalPrice!
        }
        if self.trademarkIcon != nil {
            map["TrademarkIcon"] = self.trademarkIcon!
        }
        if self.trademarkName != nil {
            map["TrademarkName"] = self.trademarkName!
        }
        if self.trademarkNameType != nil {
            map["TrademarkNameType"] = self.trademarkNameType!
        }
        if self.trademarkNumber != nil {
            map["TrademarkNumber"] = self.trademarkNumber!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptUrl") && dict["AcceptUrl"] != nil {
            self.acceptUrl = dict["AcceptUrl"] as! String
        }
        if dict.keys.contains("Applicant") && dict["Applicant"] != nil {
            var model = DescribePartnerTrademarkApplicationResponseBody.Applicant()
            model.fromMap(dict["Applicant"] as! [String: Any])
            self.applicant = model
        }
        if dict.keys.contains("ApplicantId") && dict["ApplicantId"] != nil {
            self.applicantId = dict["ApplicantId"] as! Int64
        }
        if dict.keys.contains("ApplicationStatus") && dict["ApplicationStatus"] != nil {
            self.applicationStatus = dict["ApplicationStatus"] as! Int32
        }
        if dict.keys.contains("ApplicationType") && dict["ApplicationType"] != nil {
            self.applicationType = dict["ApplicationType"] as! Int32
        }
        if dict.keys.contains("AuthorizationUrl") && dict["AuthorizationUrl"] != nil {
            self.authorizationUrl = dict["AuthorizationUrl"] as! String
        }
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("BlackAndWhiteIconUrl") && dict["BlackAndWhiteIconUrl"] != nil {
            self.blackAndWhiteIconUrl = dict["BlackAndWhiteIconUrl"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! Int64
        }
        if dict.keys.contains("ExtendInfo") && dict["ExtendInfo"] != nil {
            self.extendInfo = dict["ExtendInfo"] as! [String: Any]
        }
        if dict.keys.contains("FirstClassification") && dict["FirstClassification"] != nil {
            var model = DescribePartnerTrademarkApplicationResponseBody.FirstClassification()
            model.fromMap(dict["FirstClassification"] as! [String: Any])
            self.firstClassification = model
        }
        if dict.keys.contains("JudgeResultUrls") && dict["JudgeResultUrls"] != nil {
            self.judgeResultUrls = dict["JudgeResultUrls"] as! [String]
        }
        if dict.keys.contains("Note") && dict["Note"] != nil {
            self.note = dict["Note"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("OrderPrice") && dict["OrderPrice"] != nil {
            self.orderPrice = dict["OrderPrice"] as! Double
        }
        if dict.keys.contains("PrincipalName") && dict["PrincipalName"] != nil {
            self.principalName = dict["PrincipalName"] as! Int32
        }
        if dict.keys.contains("ReceiptUrls") && dict["ReceiptUrls"] != nil {
            self.receiptUrls = dict["ReceiptUrls"] as! [String]
        }
        if dict.keys.contains("RecvUserLogistics") && dict["RecvUserLogistics"] != nil {
            self.recvUserLogistics = dict["RecvUserLogistics"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SendSbjLogistics") && dict["SendSbjLogistics"] != nil {
            self.sendSbjLogistics = dict["SendSbjLogistics"] as! String
        }
        if dict.keys.contains("SendUserLogistics") && dict["SendUserLogistics"] != nil {
            self.sendUserLogistics = dict["SendUserLogistics"] as! String
        }
        if dict.keys.contains("ServicePrice") && dict["ServicePrice"] != nil {
            self.servicePrice = dict["ServicePrice"] as! Double
        }
        if dict.keys.contains("Supplements") && dict["Supplements"] != nil {
            var tmp : [DescribePartnerTrademarkApplicationResponseBody.Supplements] = []
            for v in dict["Supplements"] as! [Any] {
                var model = DescribePartnerTrademarkApplicationResponseBody.Supplements()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.supplements = tmp
        }
        if dict.keys.contains("ThirdClassifications") && dict["ThirdClassifications"] != nil {
            var tmp : [DescribePartnerTrademarkApplicationResponseBody.ThirdClassifications] = []
            for v in dict["ThirdClassifications"] as! [Any] {
                var model = DescribePartnerTrademarkApplicationResponseBody.ThirdClassifications()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.thirdClassifications = tmp
        }
        if dict.keys.contains("TotalPrice") && dict["TotalPrice"] != nil {
            self.totalPrice = dict["TotalPrice"] as! Double
        }
        if dict.keys.contains("TrademarkIcon") && dict["TrademarkIcon"] != nil {
            self.trademarkIcon = dict["TrademarkIcon"] as! String
        }
        if dict.keys.contains("TrademarkName") && dict["TrademarkName"] != nil {
            self.trademarkName = dict["TrademarkName"] as! String
        }
        if dict.keys.contains("TrademarkNameType") && dict["TrademarkNameType"] != nil {
            self.trademarkNameType = dict["TrademarkNameType"] as! Int32
        }
        if dict.keys.contains("TrademarkNumber") && dict["TrademarkNumber"] != nil {
            self.trademarkNumber = dict["TrademarkNumber"] as! String
        }
        if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
            self.updateTime = dict["UpdateTime"] as! Int64
        }
    }
}

public class DescribePartnerTrademarkApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePartnerTrademarkApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePartnerTrademarkApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeQualificationStatusRequest : Tea.TeaModel {
    public var tbUid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tbUid != nil {
            map["TbUid"] = self.tbUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TbUid") && dict["TbUid"] != nil {
            self.tbUid = dict["TbUid"] as! String
        }
    }
}

public class DescribeQualificationStatusResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var status: String?

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
        if self.status != nil {
            map["Status"] = self.status!
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
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeQualificationStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeQualificationStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeQualificationStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSupplementRequest : Tea.TeaModel {
    public var supplementId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.supplementId != nil {
            map["SupplementId"] = self.supplementId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SupplementId") && dict["SupplementId"] != nil {
            self.supplementId = dict["SupplementId"] as! Int64
        }
    }
}

public class DescribeSupplementResponseBody : Tea.TeaModel {
    public class UserFiles : Tea.TeaModel {
        public var userFile: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.userFile != nil {
                map["UserFile"] = self.userFile!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserFile") && dict["UserFile"] != nil {
                self.userFile = dict["UserFile"] as! [String]
            }
        }
    }
    public var acceptExpirationDate: Int64?

    public var acceptTime: Int64?

    public var applicationType: Int32?

    public var content: String?

    public var officialFile: String?

    public var operateTime: Int64?

    public var requestId: String?

    public var sbjExpirationDate: Int64?

    public var sendTime: Int64?

    public var serialNumber: String?

    public var supplementId: Int64?

    public var supplementStatus: Int32?

    public var trademarkNumber: String?

    public var userFiles: DescribeSupplementResponseBody.UserFiles?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userFiles?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptExpirationDate != nil {
            map["AcceptExpirationDate"] = self.acceptExpirationDate!
        }
        if self.acceptTime != nil {
            map["AcceptTime"] = self.acceptTime!
        }
        if self.applicationType != nil {
            map["ApplicationType"] = self.applicationType!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.officialFile != nil {
            map["OfficialFile"] = self.officialFile!
        }
        if self.operateTime != nil {
            map["OperateTime"] = self.operateTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sbjExpirationDate != nil {
            map["SbjExpirationDate"] = self.sbjExpirationDate!
        }
        if self.sendTime != nil {
            map["SendTime"] = self.sendTime!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.supplementId != nil {
            map["SupplementId"] = self.supplementId!
        }
        if self.supplementStatus != nil {
            map["SupplementStatus"] = self.supplementStatus!
        }
        if self.trademarkNumber != nil {
            map["TrademarkNumber"] = self.trademarkNumber!
        }
        if self.userFiles != nil {
            map["UserFiles"] = self.userFiles?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptExpirationDate") && dict["AcceptExpirationDate"] != nil {
            self.acceptExpirationDate = dict["AcceptExpirationDate"] as! Int64
        }
        if dict.keys.contains("AcceptTime") && dict["AcceptTime"] != nil {
            self.acceptTime = dict["AcceptTime"] as! Int64
        }
        if dict.keys.contains("ApplicationType") && dict["ApplicationType"] != nil {
            self.applicationType = dict["ApplicationType"] as! Int32
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("OfficialFile") && dict["OfficialFile"] != nil {
            self.officialFile = dict["OfficialFile"] as! String
        }
        if dict.keys.contains("OperateTime") && dict["OperateTime"] != nil {
            self.operateTime = dict["OperateTime"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SbjExpirationDate") && dict["SbjExpirationDate"] != nil {
            self.sbjExpirationDate = dict["SbjExpirationDate"] as! Int64
        }
        if dict.keys.contains("SendTime") && dict["SendTime"] != nil {
            self.sendTime = dict["SendTime"] as! Int64
        }
        if dict.keys.contains("SerialNumber") && dict["SerialNumber"] != nil {
            self.serialNumber = dict["SerialNumber"] as! String
        }
        if dict.keys.contains("SupplementId") && dict["SupplementId"] != nil {
            self.supplementId = dict["SupplementId"] as! Int64
        }
        if dict.keys.contains("SupplementStatus") && dict["SupplementStatus"] != nil {
            self.supplementStatus = dict["SupplementStatus"] as! Int32
        }
        if dict.keys.contains("TrademarkNumber") && dict["TrademarkNumber"] != nil {
            self.trademarkNumber = dict["TrademarkNumber"] as! String
        }
        if dict.keys.contains("UserFiles") && dict["UserFiles"] != nil {
            var model = DescribeSupplementResponseBody.UserFiles()
            model.fromMap(dict["UserFiles"] as! [String: Any])
            self.userFiles = model
        }
    }
}

public class DescribeSupplementResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSupplementResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSupplementResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTrademarkApplicationRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
    }
}

public class DescribeTrademarkApplicationResponseBody : Tea.TeaModel {
    public class Applicant : Tea.TeaModel {
        public var address: String?

        public var applicantName: String?

        public var applicantRegion: Int32?

        public var applicantType: Int32?

        public var auditStatus: Int32?

        public var authorizationUrl: String?

        public var businessLicenceUrl: String?

        public var cardNumber: String?

        public var contactAddress: String?

        public var contactEmail: String?

        public var contactName: String?

        public var contactNumber: String?

        public var contactZipcode: String?

        public var country: String?

        public var EAddress: String?

        public var EName: String?

        public var idCardName: String?

        public var idCardNumber: String?

        public var idCardUrl: String?

        public var legalNoticeUrl: String?

        public var passportUrl: String?

        public var personalType: Int64?

        public var principalName: Int32?

        public var province: String?

        public override init() {
            super.init()
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
            if self.applicantName != nil {
                map["ApplicantName"] = self.applicantName!
            }
            if self.applicantRegion != nil {
                map["ApplicantRegion"] = self.applicantRegion!
            }
            if self.applicantType != nil {
                map["ApplicantType"] = self.applicantType!
            }
            if self.auditStatus != nil {
                map["AuditStatus"] = self.auditStatus!
            }
            if self.authorizationUrl != nil {
                map["AuthorizationUrl"] = self.authorizationUrl!
            }
            if self.businessLicenceUrl != nil {
                map["BusinessLicenceUrl"] = self.businessLicenceUrl!
            }
            if self.cardNumber != nil {
                map["CardNumber"] = self.cardNumber!
            }
            if self.contactAddress != nil {
                map["ContactAddress"] = self.contactAddress!
            }
            if self.contactEmail != nil {
                map["ContactEmail"] = self.contactEmail!
            }
            if self.contactName != nil {
                map["ContactName"] = self.contactName!
            }
            if self.contactNumber != nil {
                map["ContactNumber"] = self.contactNumber!
            }
            if self.contactZipcode != nil {
                map["ContactZipcode"] = self.contactZipcode!
            }
            if self.country != nil {
                map["Country"] = self.country!
            }
            if self.EAddress != nil {
                map["EAddress"] = self.EAddress!
            }
            if self.EName != nil {
                map["EName"] = self.EName!
            }
            if self.idCardName != nil {
                map["IdCardName"] = self.idCardName!
            }
            if self.idCardNumber != nil {
                map["IdCardNumber"] = self.idCardNumber!
            }
            if self.idCardUrl != nil {
                map["IdCardUrl"] = self.idCardUrl!
            }
            if self.legalNoticeUrl != nil {
                map["LegalNoticeUrl"] = self.legalNoticeUrl!
            }
            if self.passportUrl != nil {
                map["PassportUrl"] = self.passportUrl!
            }
            if self.personalType != nil {
                map["PersonalType"] = self.personalType!
            }
            if self.principalName != nil {
                map["PrincipalName"] = self.principalName!
            }
            if self.province != nil {
                map["Province"] = self.province!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Address") && dict["Address"] != nil {
                self.address = dict["Address"] as! String
            }
            if dict.keys.contains("ApplicantName") && dict["ApplicantName"] != nil {
                self.applicantName = dict["ApplicantName"] as! String
            }
            if dict.keys.contains("ApplicantRegion") && dict["ApplicantRegion"] != nil {
                self.applicantRegion = dict["ApplicantRegion"] as! Int32
            }
            if dict.keys.contains("ApplicantType") && dict["ApplicantType"] != nil {
                self.applicantType = dict["ApplicantType"] as! Int32
            }
            if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
                self.auditStatus = dict["AuditStatus"] as! Int32
            }
            if dict.keys.contains("AuthorizationUrl") && dict["AuthorizationUrl"] != nil {
                self.authorizationUrl = dict["AuthorizationUrl"] as! String
            }
            if dict.keys.contains("BusinessLicenceUrl") && dict["BusinessLicenceUrl"] != nil {
                self.businessLicenceUrl = dict["BusinessLicenceUrl"] as! String
            }
            if dict.keys.contains("CardNumber") && dict["CardNumber"] != nil {
                self.cardNumber = dict["CardNumber"] as! String
            }
            if dict.keys.contains("ContactAddress") && dict["ContactAddress"] != nil {
                self.contactAddress = dict["ContactAddress"] as! String
            }
            if dict.keys.contains("ContactEmail") && dict["ContactEmail"] != nil {
                self.contactEmail = dict["ContactEmail"] as! String
            }
            if dict.keys.contains("ContactName") && dict["ContactName"] != nil {
                self.contactName = dict["ContactName"] as! String
            }
            if dict.keys.contains("ContactNumber") && dict["ContactNumber"] != nil {
                self.contactNumber = dict["ContactNumber"] as! String
            }
            if dict.keys.contains("ContactZipcode") && dict["ContactZipcode"] != nil {
                self.contactZipcode = dict["ContactZipcode"] as! String
            }
            if dict.keys.contains("Country") && dict["Country"] != nil {
                self.country = dict["Country"] as! String
            }
            if dict.keys.contains("EAddress") && dict["EAddress"] != nil {
                self.EAddress = dict["EAddress"] as! String
            }
            if dict.keys.contains("EName") && dict["EName"] != nil {
                self.EName = dict["EName"] as! String
            }
            if dict.keys.contains("IdCardName") && dict["IdCardName"] != nil {
                self.idCardName = dict["IdCardName"] as! String
            }
            if dict.keys.contains("IdCardNumber") && dict["IdCardNumber"] != nil {
                self.idCardNumber = dict["IdCardNumber"] as! String
            }
            if dict.keys.contains("IdCardUrl") && dict["IdCardUrl"] != nil {
                self.idCardUrl = dict["IdCardUrl"] as! String
            }
            if dict.keys.contains("LegalNoticeUrl") && dict["LegalNoticeUrl"] != nil {
                self.legalNoticeUrl = dict["LegalNoticeUrl"] as! String
            }
            if dict.keys.contains("PassportUrl") && dict["PassportUrl"] != nil {
                self.passportUrl = dict["PassportUrl"] as! String
            }
            if dict.keys.contains("PersonalType") && dict["PersonalType"] != nil {
                self.personalType = dict["PersonalType"] as! Int64
            }
            if dict.keys.contains("PrincipalName") && dict["PrincipalName"] != nil {
                self.principalName = dict["PrincipalName"] as! Int32
            }
            if dict.keys.contains("Province") && dict["Province"] != nil {
                self.province = dict["Province"] as! String
            }
        }
    }
    public class FirstClassification : Tea.TeaModel {
        public var classificationCode: String?

        public var classificationName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.classificationCode != nil {
                map["ClassificationCode"] = self.classificationCode!
            }
            if self.classificationName != nil {
                map["ClassificationName"] = self.classificationName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClassificationCode") && dict["ClassificationCode"] != nil {
                self.classificationCode = dict["ClassificationCode"] as! String
            }
            if dict.keys.contains("ClassificationName") && dict["ClassificationName"] != nil {
                self.classificationName = dict["ClassificationName"] as! String
            }
        }
    }
    public class Flags : Tea.TeaModel {
        public var flag: [Int32]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.flag != nil {
                map["Flag"] = self.flag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Flag") && dict["Flag"] != nil {
                self.flag = dict["Flag"] as! [Int32]
            }
        }
    }
    public class JudgeResultUrls : Tea.TeaModel {
        public var judgeResultUrl: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.judgeResultUrl != nil {
                map["JudgeResultUrl"] = self.judgeResultUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JudgeResultUrl") && dict["JudgeResultUrl"] != nil {
                self.judgeResultUrl = dict["JudgeResultUrl"] as! [String]
            }
        }
    }
    public class ReceiptUrls : Tea.TeaModel {
        public var receiptUrl: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.receiptUrl != nil {
                map["ReceiptUrl"] = self.receiptUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ReceiptUrl") && dict["ReceiptUrl"] != nil {
                self.receiptUrl = dict["ReceiptUrl"] as! [String]
            }
        }
    }
    public class Supplements : Tea.TeaModel {
        public class Supplement : Tea.TeaModel {
            public class UserFiles : Tea.TeaModel {
                public var userFile: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.userFile != nil {
                        map["UserFile"] = self.userFile!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("UserFile") && dict["UserFile"] != nil {
                        self.userFile = dict["UserFile"] as! [String]
                    }
                }
            }
            public var acceptExpirationDate: Int64?

            public var acceptTime: Int64?

            public var applicationType: Int32?

            public var content: String?

            public var officialFile: String?

            public var operateTime: Int64?

            public var orderId: String?

            public var sbjExpirationDate: Int64?

            public var sendTime: Int64?

            public var serialNumber: String?

            public var supplementId: Int64?

            public var supplementStatus: Int32?

            public var trademarkNumber: String?

            public var userFiles: DescribeTrademarkApplicationResponseBody.Supplements.Supplement.UserFiles?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.userFiles?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.acceptExpirationDate != nil {
                    map["AcceptExpirationDate"] = self.acceptExpirationDate!
                }
                if self.acceptTime != nil {
                    map["AcceptTime"] = self.acceptTime!
                }
                if self.applicationType != nil {
                    map["ApplicationType"] = self.applicationType!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.officialFile != nil {
                    map["OfficialFile"] = self.officialFile!
                }
                if self.operateTime != nil {
                    map["OperateTime"] = self.operateTime!
                }
                if self.orderId != nil {
                    map["OrderId"] = self.orderId!
                }
                if self.sbjExpirationDate != nil {
                    map["SbjExpirationDate"] = self.sbjExpirationDate!
                }
                if self.sendTime != nil {
                    map["SendTime"] = self.sendTime!
                }
                if self.serialNumber != nil {
                    map["SerialNumber"] = self.serialNumber!
                }
                if self.supplementId != nil {
                    map["SupplementId"] = self.supplementId!
                }
                if self.supplementStatus != nil {
                    map["SupplementStatus"] = self.supplementStatus!
                }
                if self.trademarkNumber != nil {
                    map["TrademarkNumber"] = self.trademarkNumber!
                }
                if self.userFiles != nil {
                    map["UserFiles"] = self.userFiles?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AcceptExpirationDate") && dict["AcceptExpirationDate"] != nil {
                    self.acceptExpirationDate = dict["AcceptExpirationDate"] as! Int64
                }
                if dict.keys.contains("AcceptTime") && dict["AcceptTime"] != nil {
                    self.acceptTime = dict["AcceptTime"] as! Int64
                }
                if dict.keys.contains("ApplicationType") && dict["ApplicationType"] != nil {
                    self.applicationType = dict["ApplicationType"] as! Int32
                }
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("OfficialFile") && dict["OfficialFile"] != nil {
                    self.officialFile = dict["OfficialFile"] as! String
                }
                if dict.keys.contains("OperateTime") && dict["OperateTime"] != nil {
                    self.operateTime = dict["OperateTime"] as! Int64
                }
                if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                    self.orderId = dict["OrderId"] as! String
                }
                if dict.keys.contains("SbjExpirationDate") && dict["SbjExpirationDate"] != nil {
                    self.sbjExpirationDate = dict["SbjExpirationDate"] as! Int64
                }
                if dict.keys.contains("SendTime") && dict["SendTime"] != nil {
                    self.sendTime = dict["SendTime"] as! Int64
                }
                if dict.keys.contains("SerialNumber") && dict["SerialNumber"] != nil {
                    self.serialNumber = dict["SerialNumber"] as! String
                }
                if dict.keys.contains("SupplementId") && dict["SupplementId"] != nil {
                    self.supplementId = dict["SupplementId"] as! Int64
                }
                if dict.keys.contains("SupplementStatus") && dict["SupplementStatus"] != nil {
                    self.supplementStatus = dict["SupplementStatus"] as! Int32
                }
                if dict.keys.contains("TrademarkNumber") && dict["TrademarkNumber"] != nil {
                    self.trademarkNumber = dict["TrademarkNumber"] as! String
                }
                if dict.keys.contains("UserFiles") && dict["UserFiles"] != nil {
                    var model = DescribeTrademarkApplicationResponseBody.Supplements.Supplement.UserFiles()
                    model.fromMap(dict["UserFiles"] as! [String: Any])
                    self.userFiles = model
                }
            }
        }
        public var supplement: [DescribeTrademarkApplicationResponseBody.Supplements.Supplement]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.supplement != nil {
                var tmp : [Any] = []
                for k in self.supplement! {
                    tmp.append(k.toMap())
                }
                map["Supplement"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Supplement") && dict["Supplement"] != nil {
                var tmp : [DescribeTrademarkApplicationResponseBody.Supplements.Supplement] = []
                for v in dict["Supplement"] as! [Any] {
                    var model = DescribeTrademarkApplicationResponseBody.Supplements.Supplement()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.supplement = tmp
            }
        }
    }
    public class ThirdClassifications : Tea.TeaModel {
        public class ThirdClassification : Tea.TeaModel {
            public var classificationCode: String?

            public var classificationName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.classificationCode != nil {
                    map["ClassificationCode"] = self.classificationCode!
                }
                if self.classificationName != nil {
                    map["ClassificationName"] = self.classificationName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClassificationCode") && dict["ClassificationCode"] != nil {
                    self.classificationCode = dict["ClassificationCode"] as! String
                }
                if dict.keys.contains("ClassificationName") && dict["ClassificationName"] != nil {
                    self.classificationName = dict["ClassificationName"] as! String
                }
            }
        }
        public var thirdClassification: [DescribeTrademarkApplicationResponseBody.ThirdClassifications.ThirdClassification]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.thirdClassification != nil {
                var tmp : [Any] = []
                for k in self.thirdClassification! {
                    tmp.append(k.toMap())
                }
                map["ThirdClassification"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ThirdClassification") && dict["ThirdClassification"] != nil {
                var tmp : [DescribeTrademarkApplicationResponseBody.ThirdClassifications.ThirdClassification] = []
                for v in dict["ThirdClassification"] as! [Any] {
                    var model = DescribeTrademarkApplicationResponseBody.ThirdClassifications.ThirdClassification()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.thirdClassification = tmp
            }
        }
    }
    public var acceptUrl: String?

    public var agreementId: String?

    public var applicant: DescribeTrademarkApplicationResponseBody.Applicant?

    public var applicantId: Int64?

    public var applicationStatus: Int32?

    public var applicationType: Int32?

    public var authorizationUrl: String?

    public var bizId: String?

    public var blackAndWhiteIconUrl: String?

    public var createTime: Int64?

    public var extendInfo: [String: Any]?

    public var firstClassification: DescribeTrademarkApplicationResponseBody.FirstClassification?

    public var flags: DescribeTrademarkApplicationResponseBody.Flags?

    public var judgeResultUrls: DescribeTrademarkApplicationResponseBody.JudgeResultUrls?

    public var note: String?

    public var orderId: String?

    public var orderPrice: Double?

    public var principalName: Int32?

    public var receiptUrls: DescribeTrademarkApplicationResponseBody.ReceiptUrls?

    public var recvUserLogistics: String?

    public var requestId: String?

    public var sendSbjLogistics: String?

    public var sendUserLogistics: String?

    public var servicePrice: Double?

    public var supplements: DescribeTrademarkApplicationResponseBody.Supplements?

    public var thirdClassifications: DescribeTrademarkApplicationResponseBody.ThirdClassifications?

    public var totalPrice: Double?

    public var trademarkIcon: String?

    public var trademarkName: String?

    public var trademarkNameType: Int32?

    public var trademarkNumber: String?

    public var updateTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.applicant?.validate()
        try self.firstClassification?.validate()
        try self.flags?.validate()
        try self.judgeResultUrls?.validate()
        try self.receiptUrls?.validate()
        try self.supplements?.validate()
        try self.thirdClassifications?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptUrl != nil {
            map["AcceptUrl"] = self.acceptUrl!
        }
        if self.agreementId != nil {
            map["AgreementId"] = self.agreementId!
        }
        if self.applicant != nil {
            map["Applicant"] = self.applicant?.toMap()
        }
        if self.applicantId != nil {
            map["ApplicantId"] = self.applicantId!
        }
        if self.applicationStatus != nil {
            map["ApplicationStatus"] = self.applicationStatus!
        }
        if self.applicationType != nil {
            map["ApplicationType"] = self.applicationType!
        }
        if self.authorizationUrl != nil {
            map["AuthorizationUrl"] = self.authorizationUrl!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.blackAndWhiteIconUrl != nil {
            map["BlackAndWhiteIconUrl"] = self.blackAndWhiteIconUrl!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.extendInfo != nil {
            map["ExtendInfo"] = self.extendInfo!
        }
        if self.firstClassification != nil {
            map["FirstClassification"] = self.firstClassification?.toMap()
        }
        if self.flags != nil {
            map["Flags"] = self.flags?.toMap()
        }
        if self.judgeResultUrls != nil {
            map["JudgeResultUrls"] = self.judgeResultUrls?.toMap()
        }
        if self.note != nil {
            map["Note"] = self.note!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.orderPrice != nil {
            map["OrderPrice"] = self.orderPrice!
        }
        if self.principalName != nil {
            map["PrincipalName"] = self.principalName!
        }
        if self.receiptUrls != nil {
            map["ReceiptUrls"] = self.receiptUrls?.toMap()
        }
        if self.recvUserLogistics != nil {
            map["RecvUserLogistics"] = self.recvUserLogistics!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sendSbjLogistics != nil {
            map["SendSbjLogistics"] = self.sendSbjLogistics!
        }
        if self.sendUserLogistics != nil {
            map["SendUserLogistics"] = self.sendUserLogistics!
        }
        if self.servicePrice != nil {
            map["ServicePrice"] = self.servicePrice!
        }
        if self.supplements != nil {
            map["Supplements"] = self.supplements?.toMap()
        }
        if self.thirdClassifications != nil {
            map["ThirdClassifications"] = self.thirdClassifications?.toMap()
        }
        if self.totalPrice != nil {
            map["TotalPrice"] = self.totalPrice!
        }
        if self.trademarkIcon != nil {
            map["TrademarkIcon"] = self.trademarkIcon!
        }
        if self.trademarkName != nil {
            map["TrademarkName"] = self.trademarkName!
        }
        if self.trademarkNameType != nil {
            map["TrademarkNameType"] = self.trademarkNameType!
        }
        if self.trademarkNumber != nil {
            map["TrademarkNumber"] = self.trademarkNumber!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptUrl") && dict["AcceptUrl"] != nil {
            self.acceptUrl = dict["AcceptUrl"] as! String
        }
        if dict.keys.contains("AgreementId") && dict["AgreementId"] != nil {
            self.agreementId = dict["AgreementId"] as! String
        }
        if dict.keys.contains("Applicant") && dict["Applicant"] != nil {
            var model = DescribeTrademarkApplicationResponseBody.Applicant()
            model.fromMap(dict["Applicant"] as! [String: Any])
            self.applicant = model
        }
        if dict.keys.contains("ApplicantId") && dict["ApplicantId"] != nil {
            self.applicantId = dict["ApplicantId"] as! Int64
        }
        if dict.keys.contains("ApplicationStatus") && dict["ApplicationStatus"] != nil {
            self.applicationStatus = dict["ApplicationStatus"] as! Int32
        }
        if dict.keys.contains("ApplicationType") && dict["ApplicationType"] != nil {
            self.applicationType = dict["ApplicationType"] as! Int32
        }
        if dict.keys.contains("AuthorizationUrl") && dict["AuthorizationUrl"] != nil {
            self.authorizationUrl = dict["AuthorizationUrl"] as! String
        }
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("BlackAndWhiteIconUrl") && dict["BlackAndWhiteIconUrl"] != nil {
            self.blackAndWhiteIconUrl = dict["BlackAndWhiteIconUrl"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! Int64
        }
        if dict.keys.contains("ExtendInfo") && dict["ExtendInfo"] != nil {
            self.extendInfo = dict["ExtendInfo"] as! [String: Any]
        }
        if dict.keys.contains("FirstClassification") && dict["FirstClassification"] != nil {
            var model = DescribeTrademarkApplicationResponseBody.FirstClassification()
            model.fromMap(dict["FirstClassification"] as! [String: Any])
            self.firstClassification = model
        }
        if dict.keys.contains("Flags") && dict["Flags"] != nil {
            var model = DescribeTrademarkApplicationResponseBody.Flags()
            model.fromMap(dict["Flags"] as! [String: Any])
            self.flags = model
        }
        if dict.keys.contains("JudgeResultUrls") && dict["JudgeResultUrls"] != nil {
            var model = DescribeTrademarkApplicationResponseBody.JudgeResultUrls()
            model.fromMap(dict["JudgeResultUrls"] as! [String: Any])
            self.judgeResultUrls = model
        }
        if dict.keys.contains("Note") && dict["Note"] != nil {
            self.note = dict["Note"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("OrderPrice") && dict["OrderPrice"] != nil {
            self.orderPrice = dict["OrderPrice"] as! Double
        }
        if dict.keys.contains("PrincipalName") && dict["PrincipalName"] != nil {
            self.principalName = dict["PrincipalName"] as! Int32
        }
        if dict.keys.contains("ReceiptUrls") && dict["ReceiptUrls"] != nil {
            var model = DescribeTrademarkApplicationResponseBody.ReceiptUrls()
            model.fromMap(dict["ReceiptUrls"] as! [String: Any])
            self.receiptUrls = model
        }
        if dict.keys.contains("RecvUserLogistics") && dict["RecvUserLogistics"] != nil {
            self.recvUserLogistics = dict["RecvUserLogistics"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SendSbjLogistics") && dict["SendSbjLogistics"] != nil {
            self.sendSbjLogistics = dict["SendSbjLogistics"] as! String
        }
        if dict.keys.contains("SendUserLogistics") && dict["SendUserLogistics"] != nil {
            self.sendUserLogistics = dict["SendUserLogistics"] as! String
        }
        if dict.keys.contains("ServicePrice") && dict["ServicePrice"] != nil {
            self.servicePrice = dict["ServicePrice"] as! Double
        }
        if dict.keys.contains("Supplements") && dict["Supplements"] != nil {
            var model = DescribeTrademarkApplicationResponseBody.Supplements()
            model.fromMap(dict["Supplements"] as! [String: Any])
            self.supplements = model
        }
        if dict.keys.contains("ThirdClassifications") && dict["ThirdClassifications"] != nil {
            var model = DescribeTrademarkApplicationResponseBody.ThirdClassifications()
            model.fromMap(dict["ThirdClassifications"] as! [String: Any])
            self.thirdClassifications = model
        }
        if dict.keys.contains("TotalPrice") && dict["TotalPrice"] != nil {
            self.totalPrice = dict["TotalPrice"] as! Double
        }
        if dict.keys.contains("TrademarkIcon") && dict["TrademarkIcon"] != nil {
            self.trademarkIcon = dict["TrademarkIcon"] as! String
        }
        if dict.keys.contains("TrademarkName") && dict["TrademarkName"] != nil {
            self.trademarkName = dict["TrademarkName"] as! String
        }
        if dict.keys.contains("TrademarkNameType") && dict["TrademarkNameType"] != nil {
            self.trademarkNameType = dict["TrademarkNameType"] as! Int32
        }
        if dict.keys.contains("TrademarkNumber") && dict["TrademarkNumber"] != nil {
            self.trademarkNumber = dict["TrademarkNumber"] as! String
        }
        if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
            self.updateTime = dict["UpdateTime"] as! Int64
        }
    }
}

public class DescribeTrademarkApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTrademarkApplicationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeTrademarkApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTrademarkDetailForInnerRequest : Tea.TeaModel {
    public var uid: String?

    public var umid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        if self.umid != nil {
            map["Umid"] = self.umid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! String
        }
        if dict.keys.contains("Umid") && dict["Umid"] != nil {
            self.umid = dict["Umid"] as! String
        }
    }
}

public class DescribeTrademarkDetailForInnerResponseBody : Tea.TeaModel {
    public class FlowList : Tea.TeaModel {
        public var date: String?

        public var procedureCode: String?

        public var procedureDate: String?

        public var procedureName: String?

        public var procedureResult: String?

        public var procedureStep: String?

        public var registrationNumber: String?

        public override init() {
            super.init()
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
            if self.procedureCode != nil {
                map["ProcedureCode"] = self.procedureCode!
            }
            if self.procedureDate != nil {
                map["ProcedureDate"] = self.procedureDate!
            }
            if self.procedureName != nil {
                map["ProcedureName"] = self.procedureName!
            }
            if self.procedureResult != nil {
                map["ProcedureResult"] = self.procedureResult!
            }
            if self.procedureStep != nil {
                map["ProcedureStep"] = self.procedureStep!
            }
            if self.registrationNumber != nil {
                map["RegistrationNumber"] = self.registrationNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Date") && dict["Date"] != nil {
                self.date = dict["Date"] as! String
            }
            if dict.keys.contains("ProcedureCode") && dict["ProcedureCode"] != nil {
                self.procedureCode = dict["ProcedureCode"] as! String
            }
            if dict.keys.contains("ProcedureDate") && dict["ProcedureDate"] != nil {
                self.procedureDate = dict["ProcedureDate"] as! String
            }
            if dict.keys.contains("ProcedureName") && dict["ProcedureName"] != nil {
                self.procedureName = dict["ProcedureName"] as! String
            }
            if dict.keys.contains("ProcedureResult") && dict["ProcedureResult"] != nil {
                self.procedureResult = dict["ProcedureResult"] as! String
            }
            if dict.keys.contains("ProcedureStep") && dict["ProcedureStep"] != nil {
                self.procedureStep = dict["ProcedureStep"] as! String
            }
            if dict.keys.contains("RegistrationNumber") && dict["RegistrationNumber"] != nil {
                self.registrationNumber = dict["RegistrationNumber"] as! String
            }
        }
    }
    public class NoticeList : Tea.TeaModel {
        public var annDate: String?

        public var annId: String?

        public var annNum: String?

        public var annTypeCode: String?

        public var annTypeName: String?

        public var applicant: String?

        public var date: String?

        public var imageUrl: String?

        public var originalImageUrl: String?

        public var pageNo: String?

        public var reactNum: String?

        public var registrationNumber: String?

        public var trademarkName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.annDate != nil {
                map["AnnDate"] = self.annDate!
            }
            if self.annId != nil {
                map["AnnId"] = self.annId!
            }
            if self.annNum != nil {
                map["AnnNum"] = self.annNum!
            }
            if self.annTypeCode != nil {
                map["AnnTypeCode"] = self.annTypeCode!
            }
            if self.annTypeName != nil {
                map["AnnTypeName"] = self.annTypeName!
            }
            if self.applicant != nil {
                map["Applicant"] = self.applicant!
            }
            if self.date != nil {
                map["Date"] = self.date!
            }
            if self.imageUrl != nil {
                map["ImageUrl"] = self.imageUrl!
            }
            if self.originalImageUrl != nil {
                map["OriginalImageUrl"] = self.originalImageUrl!
            }
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.reactNum != nil {
                map["ReactNum"] = self.reactNum!
            }
            if self.registrationNumber != nil {
                map["RegistrationNumber"] = self.registrationNumber!
            }
            if self.trademarkName != nil {
                map["TrademarkName"] = self.trademarkName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AnnDate") && dict["AnnDate"] != nil {
                self.annDate = dict["AnnDate"] as! String
            }
            if dict.keys.contains("AnnId") && dict["AnnId"] != nil {
                self.annId = dict["AnnId"] as! String
            }
            if dict.keys.contains("AnnNum") && dict["AnnNum"] != nil {
                self.annNum = dict["AnnNum"] as! String
            }
            if dict.keys.contains("AnnTypeCode") && dict["AnnTypeCode"] != nil {
                self.annTypeCode = dict["AnnTypeCode"] as! String
            }
            if dict.keys.contains("AnnTypeName") && dict["AnnTypeName"] != nil {
                self.annTypeName = dict["AnnTypeName"] as! String
            }
            if dict.keys.contains("Applicant") && dict["Applicant"] != nil {
                self.applicant = dict["Applicant"] as! String
            }
            if dict.keys.contains("Date") && dict["Date"] != nil {
                self.date = dict["Date"] as! String
            }
            if dict.keys.contains("ImageUrl") && dict["ImageUrl"] != nil {
                self.imageUrl = dict["ImageUrl"] as! String
            }
            if dict.keys.contains("OriginalImageUrl") && dict["OriginalImageUrl"] != nil {
                self.originalImageUrl = dict["OriginalImageUrl"] as! String
            }
            if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
                self.pageNo = dict["PageNo"] as! String
            }
            if dict.keys.contains("ReactNum") && dict["ReactNum"] != nil {
                self.reactNum = dict["ReactNum"] as! String
            }
            if dict.keys.contains("RegistrationNumber") && dict["RegistrationNumber"] != nil {
                self.registrationNumber = dict["RegistrationNumber"] as! String
            }
            if dict.keys.contains("TrademarkName") && dict["TrademarkName"] != nil {
                self.trademarkName = dict["TrademarkName"] as! String
            }
        }
    }
    public var agency: String?

    public var applyDate: String?

    public var classification: String?

    public var exclusiveDateLimit: String?

    public var flowList: [DescribeTrademarkDetailForInnerResponseBody.FlowList]?

    public var image: String?

    public var imageElement: String?

    public var intlRegDate: String?

    public var lastProcedureStatus: String?

    public var name: String?

    public var noticeList: [DescribeTrademarkDetailForInnerResponseBody.NoticeList]?

    public var ownerAddress: String?

    public var ownerEnAddress: String?

    public var ownerEnName: String?

    public var ownerName: String?

    public var preAnnDate: String?

    public var preAnnNum: String?

    public var priorityDate: String?

    public var product: String?

    public var productDescription: String?

    public var regAnnDate: String?

    public var regAnnNum: Int32?

    public var registrationNumber: String?

    public var registrationType: String?

    public var requestId: String?

    public var share: String?

    public var similarGroup: String?

    public var status: String?

    public var subsequentDesignationDate: String?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agency != nil {
            map["Agency"] = self.agency!
        }
        if self.applyDate != nil {
            map["ApplyDate"] = self.applyDate!
        }
        if self.classification != nil {
            map["Classification"] = self.classification!
        }
        if self.exclusiveDateLimit != nil {
            map["ExclusiveDateLimit"] = self.exclusiveDateLimit!
        }
        if self.flowList != nil {
            var tmp : [Any] = []
            for k in self.flowList! {
                tmp.append(k.toMap())
            }
            map["FlowList"] = tmp
        }
        if self.image != nil {
            map["Image"] = self.image!
        }
        if self.imageElement != nil {
            map["ImageElement"] = self.imageElement!
        }
        if self.intlRegDate != nil {
            map["IntlRegDate"] = self.intlRegDate!
        }
        if self.lastProcedureStatus != nil {
            map["LastProcedureStatus"] = self.lastProcedureStatus!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.noticeList != nil {
            var tmp : [Any] = []
            for k in self.noticeList! {
                tmp.append(k.toMap())
            }
            map["NoticeList"] = tmp
        }
        if self.ownerAddress != nil {
            map["OwnerAddress"] = self.ownerAddress!
        }
        if self.ownerEnAddress != nil {
            map["OwnerEnAddress"] = self.ownerEnAddress!
        }
        if self.ownerEnName != nil {
            map["OwnerEnName"] = self.ownerEnName!
        }
        if self.ownerName != nil {
            map["OwnerName"] = self.ownerName!
        }
        if self.preAnnDate != nil {
            map["PreAnnDate"] = self.preAnnDate!
        }
        if self.preAnnNum != nil {
            map["PreAnnNum"] = self.preAnnNum!
        }
        if self.priorityDate != nil {
            map["PriorityDate"] = self.priorityDate!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.productDescription != nil {
            map["ProductDescription"] = self.productDescription!
        }
        if self.regAnnDate != nil {
            map["RegAnnDate"] = self.regAnnDate!
        }
        if self.regAnnNum != nil {
            map["RegAnnNum"] = self.regAnnNum!
        }
        if self.registrationNumber != nil {
            map["RegistrationNumber"] = self.registrationNumber!
        }
        if self.registrationType != nil {
            map["RegistrationType"] = self.registrationType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.share != nil {
            map["Share"] = self.share!
        }
        if self.similarGroup != nil {
            map["SimilarGroup"] = self.similarGroup!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.subsequentDesignationDate != nil {
            map["SubsequentDesignationDate"] = self.subsequentDesignationDate!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Agency") && dict["Agency"] != nil {
            self.agency = dict["Agency"] as! String
        }
        if dict.keys.contains("ApplyDate") && dict["ApplyDate"] != nil {
            self.applyDate = dict["ApplyDate"] as! String
        }
        if dict.keys.contains("Classification") && dict["Classification"] != nil {
            self.classification = dict["Classification"] as! String
        }
        if dict.keys.contains("ExclusiveDateLimit") && dict["ExclusiveDateLimit"] != nil {
            self.exclusiveDateLimit = dict["ExclusiveDateLimit"] as! String
        }
        if dict.keys.contains("FlowList") && dict["FlowList"] != nil {
            var tmp : [DescribeTrademarkDetailForInnerResponseBody.FlowList] = []
            for v in dict["FlowList"] as! [Any] {
                var model = DescribeTrademarkDetailForInnerResponseBody.FlowList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.flowList = tmp
        }
        if dict.keys.contains("Image") && dict["Image"] != nil {
            self.image = dict["Image"] as! String
        }
        if dict.keys.contains("ImageElement") && dict["ImageElement"] != nil {
            self.imageElement = dict["ImageElement"] as! String
        }
        if dict.keys.contains("IntlRegDate") && dict["IntlRegDate"] != nil {
            self.intlRegDate = dict["IntlRegDate"] as! String
        }
        if dict.keys.contains("LastProcedureStatus") && dict["LastProcedureStatus"] != nil {
            self.lastProcedureStatus = dict["LastProcedureStatus"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NoticeList") && dict["NoticeList"] != nil {
            var tmp : [DescribeTrademarkDetailForInnerResponseBody.NoticeList] = []
            for v in dict["NoticeList"] as! [Any] {
                var model = DescribeTrademarkDetailForInnerResponseBody.NoticeList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.noticeList = tmp
        }
        if dict.keys.contains("OwnerAddress") && dict["OwnerAddress"] != nil {
            self.ownerAddress = dict["OwnerAddress"] as! String
        }
        if dict.keys.contains("OwnerEnAddress") && dict["OwnerEnAddress"] != nil {
            self.ownerEnAddress = dict["OwnerEnAddress"] as! String
        }
        if dict.keys.contains("OwnerEnName") && dict["OwnerEnName"] != nil {
            self.ownerEnName = dict["OwnerEnName"] as! String
        }
        if dict.keys.contains("OwnerName") && dict["OwnerName"] != nil {
            self.ownerName = dict["OwnerName"] as! String
        }
        if dict.keys.contains("PreAnnDate") && dict["PreAnnDate"] != nil {
            self.preAnnDate = dict["PreAnnDate"] as! String
        }
        if dict.keys.contains("PreAnnNum") && dict["PreAnnNum"] != nil {
            self.preAnnNum = dict["PreAnnNum"] as! String
        }
        if dict.keys.contains("PriorityDate") && dict["PriorityDate"] != nil {
            self.priorityDate = dict["PriorityDate"] as! String
        }
        if dict.keys.contains("Product") && dict["Product"] != nil {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("ProductDescription") && dict["ProductDescription"] != nil {
            self.productDescription = dict["ProductDescription"] as! String
        }
        if dict.keys.contains("RegAnnDate") && dict["RegAnnDate"] != nil {
            self.regAnnDate = dict["RegAnnDate"] as! String
        }
        if dict.keys.contains("RegAnnNum") && dict["RegAnnNum"] != nil {
            self.regAnnNum = dict["RegAnnNum"] as! Int32
        }
        if dict.keys.contains("RegistrationNumber") && dict["RegistrationNumber"] != nil {
            self.registrationNumber = dict["RegistrationNumber"] as! String
        }
        if dict.keys.contains("RegistrationType") && dict["RegistrationType"] != nil {
            self.registrationType = dict["RegistrationType"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Share") && dict["Share"] != nil {
            self.share = dict["Share"] as! String
        }
        if dict.keys.contains("SimilarGroup") && dict["SimilarGroup"] != nil {
            self.similarGroup = dict["SimilarGroup"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SubsequentDesignationDate") && dict["SubsequentDesignationDate"] != nil {
            self.subsequentDesignationDate = dict["SubsequentDesignationDate"] as! String
        }
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! String
        }
    }
}

public class DescribeTrademarkDetailForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTrademarkDetailForInnerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeTrademarkDetailForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateUploadFilePolicyRequest : Tea.TeaModel {
    public var fileType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileType != nil {
            map["FileType"] = self.fileType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileType") && dict["FileType"] != nil {
            self.fileType = dict["FileType"] as! String
        }
    }
}

public class GenerateUploadFilePolicyResponseBody : Tea.TeaModel {
    public var accessId: String?

    public var encodedPolicy: String?

    public var expireTime: Int64?

    public var fileDir: String?

    public var host: String?

    public var requestId: String?

    public var signature: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessId != nil {
            map["AccessId"] = self.accessId!
        }
        if self.encodedPolicy != nil {
            map["EncodedPolicy"] = self.encodedPolicy!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.fileDir != nil {
            map["FileDir"] = self.fileDir!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.signature != nil {
            map["Signature"] = self.signature!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessId") && dict["AccessId"] != nil {
            self.accessId = dict["AccessId"] as! String
        }
        if dict.keys.contains("EncodedPolicy") && dict["EncodedPolicy"] != nil {
            self.encodedPolicy = dict["EncodedPolicy"] as! String
        }
        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
            self.expireTime = dict["ExpireTime"] as! Int64
        }
        if dict.keys.contains("FileDir") && dict["FileDir"] != nil {
            self.fileDir = dict["FileDir"] as! String
        }
        if dict.keys.contains("Host") && dict["Host"] != nil {
            self.host = dict["Host"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Signature") && dict["Signature"] != nil {
            self.signature = dict["Signature"] as! String
        }
    }
}

public class GenerateUploadFilePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateUploadFilePolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GenerateUploadFilePolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAlipayUrlRequest : Tea.TeaModel {
    public var bizType: String?

    public var orderId: Int64?

    public var returnUrl: String?

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
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.returnUrl != nil {
            map["ReturnUrl"] = self.returnUrl!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("ReturnUrl") && dict["ReturnUrl"] != nil {
            self.returnUrl = dict["ReturnUrl"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class GetAlipayUrlResponseBody : Tea.TeaModel {
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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAlipayUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAlipayUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetAlipayUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOrderConfirmUrlRequest : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var itemCode: String?

        public var quantity: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.itemCode != nil {
                map["ItemCode"] = self.itemCode!
            }
            if self.quantity != nil {
                map["Quantity"] = self.quantity!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ItemCode") && dict["ItemCode"] != nil {
                self.itemCode = dict["ItemCode"] as! String
            }
            if dict.keys.contains("Quantity") && dict["Quantity"] != nil {
                self.quantity = dict["Quantity"] as! Int64
            }
        }
    }
    public var items: [GetOrderConfirmUrlRequest.Items]?

    public var outTraceCode: String?

    public var outTraceType: String?

    public override init() {
        super.init()
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
        if self.outTraceCode != nil {
            map["OutTraceCode"] = self.outTraceCode!
        }
        if self.outTraceType != nil {
            map["OutTraceType"] = self.outTraceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [GetOrderConfirmUrlRequest.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = GetOrderConfirmUrlRequest.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("OutTraceCode") && dict["OutTraceCode"] != nil {
            self.outTraceCode = dict["OutTraceCode"] as! String
        }
        if dict.keys.contains("OutTraceType") && dict["OutTraceType"] != nil {
            self.outTraceType = dict["OutTraceType"] as! String
        }
    }
}

public class GetOrderConfirmUrlResponseBody : Tea.TeaModel {
    public var confirmUrl: String?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.confirmUrl != nil {
            map["ConfirmUrl"] = self.confirmUrl!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if dict.keys.contains("ConfirmUrl") && dict["ConfirmUrl"] != nil {
            self.confirmUrl = dict["ConfirmUrl"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetOrderConfirmUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOrderConfirmUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetOrderConfirmUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetStsByTaobaoUidRequest : Tea.TeaModel {
    public var aliyunUid: String?

    public var tbUid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliyunUid != nil {
            map["AliyunUid"] = self.aliyunUid!
        }
        if self.tbUid != nil {
            map["TbUid"] = self.tbUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliyunUid") && dict["AliyunUid"] != nil {
            self.aliyunUid = dict["AliyunUid"] as! String
        }
        if dict.keys.contains("TbUid") && dict["TbUid"] != nil {
            self.tbUid = dict["TbUid"] as! String
        }
    }
}

public class GetStsByTaobaoUidResponseBody : Tea.TeaModel {
    public var accessKeyId: String?

    public var accessKeySecret: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var expiration: String?

    public var requestId: String?

    public var securityToken: String?

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
        if self.accessKeyId != nil {
            map["AccessKeyId"] = self.accessKeyId!
        }
        if self.accessKeySecret != nil {
            map["AccessKeySecret"] = self.accessKeySecret!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessKeyId") && dict["AccessKeyId"] != nil {
            self.accessKeyId = dict["AccessKeyId"] as! String
        }
        if dict.keys.contains("AccessKeySecret") && dict["AccessKeySecret"] != nil {
            self.accessKeySecret = dict["AccessKeySecret"] as! String
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("Expiration") && dict["Expiration"] != nil {
            self.expiration = dict["Expiration"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetStsByTaobaoUidResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStsByTaobaoUidResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetStsByTaobaoUidResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAdminTrademarkApplicationLogsRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
    }
}

public class ListAdminTrademarkApplicationLogsResponseBody : Tea.TeaModel {
    public class TrademarkApplicationLogs : Tea.TeaModel {
        public var bizId: String?

        public var bizStatus: Int32?

        public var note: String?

        public var operateTime: Int64?

        public var operateType: Int32?

        public override init() {
            super.init()
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
            if self.bizStatus != nil {
                map["BizStatus"] = self.bizStatus!
            }
            if self.note != nil {
                map["Note"] = self.note!
            }
            if self.operateTime != nil {
                map["OperateTime"] = self.operateTime!
            }
            if self.operateType != nil {
                map["OperateType"] = self.operateType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizId") && dict["BizId"] != nil {
                self.bizId = dict["BizId"] as! String
            }
            if dict.keys.contains("BizStatus") && dict["BizStatus"] != nil {
                self.bizStatus = dict["BizStatus"] as! Int32
            }
            if dict.keys.contains("Note") && dict["Note"] != nil {
                self.note = dict["Note"] as! String
            }
            if dict.keys.contains("OperateTime") && dict["OperateTime"] != nil {
                self.operateTime = dict["OperateTime"] as! Int64
            }
            if dict.keys.contains("OperateType") && dict["OperateType"] != nil {
                self.operateType = dict["OperateType"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var trademarkApplicationLogs: [ListAdminTrademarkApplicationLogsResponseBody.TrademarkApplicationLogs]?

    public override init() {
        super.init()
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
        if self.trademarkApplicationLogs != nil {
            var tmp : [Any] = []
            for k in self.trademarkApplicationLogs! {
                tmp.append(k.toMap())
            }
            map["TrademarkApplicationLogs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TrademarkApplicationLogs") && dict["TrademarkApplicationLogs"] != nil {
            var tmp : [ListAdminTrademarkApplicationLogsResponseBody.TrademarkApplicationLogs] = []
            for v in dict["TrademarkApplicationLogs"] as! [Any] {
                var model = ListAdminTrademarkApplicationLogsResponseBody.TrademarkApplicationLogs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.trademarkApplicationLogs = tmp
        }
    }
}

public class ListAdminTrademarkApplicationLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAdminTrademarkApplicationLogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAdminTrademarkApplicationLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAdminTrademarkApplicationsRequest : Tea.TeaModel {
    public var applicantName: String?

    public var applicationStatus: Int32?

    public var applicationType: String?

    public var bizId: String?

    public var orderId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sortOrder: String?

    public var supplementStatus: Int32?

    public var trademarkName: String?

    public var trademarkNumber: String?

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
        if self.applicantName != nil {
            map["ApplicantName"] = self.applicantName!
        }
        if self.applicationStatus != nil {
            map["ApplicationStatus"] = self.applicationStatus!
        }
        if self.applicationType != nil {
            map["ApplicationType"] = self.applicationType!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.supplementStatus != nil {
            map["SupplementStatus"] = self.supplementStatus!
        }
        if self.trademarkName != nil {
            map["TrademarkName"] = self.trademarkName!
        }
        if self.trademarkNumber != nil {
            map["TrademarkNumber"] = self.trademarkNumber!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicantName") && dict["ApplicantName"] != nil {
            self.applicantName = dict["ApplicantName"] as! String
        }
        if dict.keys.contains("ApplicationStatus") && dict["ApplicationStatus"] != nil {
            self.applicationStatus = dict["ApplicationStatus"] as! Int32
        }
        if dict.keys.contains("ApplicationType") && dict["ApplicationType"] != nil {
            self.applicationType = dict["ApplicationType"] as! String
        }
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SortOrder") && dict["SortOrder"] != nil {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("SupplementStatus") && dict["SupplementStatus"] != nil {
            self.supplementStatus = dict["SupplementStatus"] as! Int32
        }
        if dict.keys.contains("TrademarkName") && dict["TrademarkName"] != nil {
            self.trademarkName = dict["TrademarkName"] as! String
        }
        if dict.keys.contains("TrademarkNumber") && dict["TrademarkNumber"] != nil {
            self.trademarkNumber = dict["TrademarkNumber"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class ListAdminTrademarkApplicationsResponseBody : Tea.TeaModel {
    public class TrademarkApplications : Tea.TeaModel {
        public class FirstClassification : Tea.TeaModel {
            public var classificationCode: String?

            public var classificationName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.classificationCode != nil {
                    map["ClassificationCode"] = self.classificationCode!
                }
                if self.classificationName != nil {
                    map["ClassificationName"] = self.classificationName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClassificationCode") && dict["ClassificationCode"] != nil {
                    self.classificationCode = dict["ClassificationCode"] as! String
                }
                if dict.keys.contains("ClassificationName") && dict["ClassificationName"] != nil {
                    self.classificationName = dict["ClassificationName"] as! String
                }
            }
        }
        public class ThirdClassification : Tea.TeaModel {
            public var classificationCode: String?

            public var classificationName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.classificationCode != nil {
                    map["ClassificationCode"] = self.classificationCode!
                }
                if self.classificationName != nil {
                    map["ClassificationName"] = self.classificationName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClassificationCode") && dict["ClassificationCode"] != nil {
                    self.classificationCode = dict["ClassificationCode"] as! String
                }
                if dict.keys.contains("ClassificationName") && dict["ClassificationName"] != nil {
                    self.classificationName = dict["ClassificationName"] as! String
                }
            }
        }
        public var applicantId: Int64?

        public var applicantName: String?

        public var applicationStatus: Int32?

        public var applicationType: Int32?

        public var authorizationUrl: String?

        public var bizId: String?

        public var createTime: Int64?

        public var firstClassification: ListAdminTrademarkApplicationsResponseBody.TrademarkApplications.FirstClassification?

        public var flags: [String]?

        public var note: String?

        public var orderId: String?

        public var orderPrice: Double?

        public var principalName: Int32?

        public var servicePrice: Double?

        public var supplementId: Int64?

        public var supplementStatus: Int32?

        public var systemVersion: String?

        public var thirdClassification: [ListAdminTrademarkApplicationsResponseBody.TrademarkApplications.ThirdClassification]?

        public var totalPrice: Double?

        public var trademarkIcon: String?

        public var trademarkName: String?

        public var trademarkNumber: String?

        public var updateTime: Int64?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.firstClassification?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicantId != nil {
                map["ApplicantId"] = self.applicantId!
            }
            if self.applicantName != nil {
                map["ApplicantName"] = self.applicantName!
            }
            if self.applicationStatus != nil {
                map["ApplicationStatus"] = self.applicationStatus!
            }
            if self.applicationType != nil {
                map["ApplicationType"] = self.applicationType!
            }
            if self.authorizationUrl != nil {
                map["AuthorizationUrl"] = self.authorizationUrl!
            }
            if self.bizId != nil {
                map["BizId"] = self.bizId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.firstClassification != nil {
                map["FirstClassification"] = self.firstClassification?.toMap()
            }
            if self.flags != nil {
                map["Flags"] = self.flags!
            }
            if self.note != nil {
                map["Note"] = self.note!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.orderPrice != nil {
                map["OrderPrice"] = self.orderPrice!
            }
            if self.principalName != nil {
                map["PrincipalName"] = self.principalName!
            }
            if self.servicePrice != nil {
                map["ServicePrice"] = self.servicePrice!
            }
            if self.supplementId != nil {
                map["SupplementId"] = self.supplementId!
            }
            if self.supplementStatus != nil {
                map["SupplementStatus"] = self.supplementStatus!
            }
            if self.systemVersion != nil {
                map["SystemVersion"] = self.systemVersion!
            }
            if self.thirdClassification != nil {
                var tmp : [Any] = []
                for k in self.thirdClassification! {
                    tmp.append(k.toMap())
                }
                map["ThirdClassification"] = tmp
            }
            if self.totalPrice != nil {
                map["TotalPrice"] = self.totalPrice!
            }
            if self.trademarkIcon != nil {
                map["TrademarkIcon"] = self.trademarkIcon!
            }
            if self.trademarkName != nil {
                map["TrademarkName"] = self.trademarkName!
            }
            if self.trademarkNumber != nil {
                map["TrademarkNumber"] = self.trademarkNumber!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicantId") && dict["ApplicantId"] != nil {
                self.applicantId = dict["ApplicantId"] as! Int64
            }
            if dict.keys.contains("ApplicantName") && dict["ApplicantName"] != nil {
                self.applicantName = dict["ApplicantName"] as! String
            }
            if dict.keys.contains("ApplicationStatus") && dict["ApplicationStatus"] != nil {
                self.applicationStatus = dict["ApplicationStatus"] as! Int32
            }
            if dict.keys.contains("ApplicationType") && dict["ApplicationType"] != nil {
                self.applicationType = dict["ApplicationType"] as! Int32
            }
            if dict.keys.contains("AuthorizationUrl") && dict["AuthorizationUrl"] != nil {
                self.authorizationUrl = dict["AuthorizationUrl"] as! String
            }
            if dict.keys.contains("BizId") && dict["BizId"] != nil {
                self.bizId = dict["BizId"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("FirstClassification") && dict["FirstClassification"] != nil {
                var model = ListAdminTrademarkApplicationsResponseBody.TrademarkApplications.FirstClassification()
                model.fromMap(dict["FirstClassification"] as! [String: Any])
                self.firstClassification = model
            }
            if dict.keys.contains("Flags") && dict["Flags"] != nil {
                self.flags = dict["Flags"] as! [String]
            }
            if dict.keys.contains("Note") && dict["Note"] != nil {
                self.note = dict["Note"] as! String
            }
            if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                self.orderId = dict["OrderId"] as! String
            }
            if dict.keys.contains("OrderPrice") && dict["OrderPrice"] != nil {
                self.orderPrice = dict["OrderPrice"] as! Double
            }
            if dict.keys.contains("PrincipalName") && dict["PrincipalName"] != nil {
                self.principalName = dict["PrincipalName"] as! Int32
            }
            if dict.keys.contains("ServicePrice") && dict["ServicePrice"] != nil {
                self.servicePrice = dict["ServicePrice"] as! Double
            }
            if dict.keys.contains("SupplementId") && dict["SupplementId"] != nil {
                self.supplementId = dict["SupplementId"] as! Int64
            }
            if dict.keys.contains("SupplementStatus") && dict["SupplementStatus"] != nil {
                self.supplementStatus = dict["SupplementStatus"] as! Int32
            }
            if dict.keys.contains("SystemVersion") && dict["SystemVersion"] != nil {
                self.systemVersion = dict["SystemVersion"] as! String
            }
            if dict.keys.contains("ThirdClassification") && dict["ThirdClassification"] != nil {
                var tmp : [ListAdminTrademarkApplicationsResponseBody.TrademarkApplications.ThirdClassification] = []
                for v in dict["ThirdClassification"] as! [Any] {
                    var model = ListAdminTrademarkApplicationsResponseBody.TrademarkApplications.ThirdClassification()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.thirdClassification = tmp
            }
            if dict.keys.contains("TotalPrice") && dict["TotalPrice"] != nil {
                self.totalPrice = dict["TotalPrice"] as! Double
            }
            if dict.keys.contains("TrademarkIcon") && dict["TrademarkIcon"] != nil {
                self.trademarkIcon = dict["TrademarkIcon"] as! String
            }
            if dict.keys.contains("TrademarkName") && dict["TrademarkName"] != nil {
                self.trademarkName = dict["TrademarkName"] as! String
            }
            if dict.keys.contains("TrademarkNumber") && dict["TrademarkNumber"] != nil {
                self.trademarkNumber = dict["TrademarkNumber"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var trademarkApplications: [ListAdminTrademarkApplicationsResponseBody.TrademarkApplications]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        if self.trademarkApplications != nil {
            var tmp : [Any] = []
            for k in self.trademarkApplications! {
                tmp.append(k.toMap())
            }
            map["TrademarkApplications"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TrademarkApplications") && dict["TrademarkApplications"] != nil {
            var tmp : [ListAdminTrademarkApplicationsResponseBody.TrademarkApplications] = []
            for v in dict["TrademarkApplications"] as! [Any] {
                var model = ListAdminTrademarkApplicationsResponseBody.TrademarkApplications()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.trademarkApplications = tmp
        }
    }
}

public class ListAdminTrademarkApplicationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAdminTrademarkApplicationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAdminTrademarkApplicationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListApplicantsRequest : Tea.TeaModel {
    public var applicantName: String?

    public var applicantRegion: Int32?

    public var applicantType: Int32?

    public var applicantVersion: String?

    public var auditStatus: Int32?

    public var cardNumber: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var principalName: Int32?

    public var systemVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicantName != nil {
            map["ApplicantName"] = self.applicantName!
        }
        if self.applicantRegion != nil {
            map["ApplicantRegion"] = self.applicantRegion!
        }
        if self.applicantType != nil {
            map["ApplicantType"] = self.applicantType!
        }
        if self.applicantVersion != nil {
            map["ApplicantVersion"] = self.applicantVersion!
        }
        if self.auditStatus != nil {
            map["AuditStatus"] = self.auditStatus!
        }
        if self.cardNumber != nil {
            map["CardNumber"] = self.cardNumber!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.principalName != nil {
            map["PrincipalName"] = self.principalName!
        }
        if self.systemVersion != nil {
            map["SystemVersion"] = self.systemVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicantName") && dict["ApplicantName"] != nil {
            self.applicantName = dict["ApplicantName"] as! String
        }
        if dict.keys.contains("ApplicantRegion") && dict["ApplicantRegion"] != nil {
            self.applicantRegion = dict["ApplicantRegion"] as! Int32
        }
        if dict.keys.contains("ApplicantType") && dict["ApplicantType"] != nil {
            self.applicantType = dict["ApplicantType"] as! Int32
        }
        if dict.keys.contains("ApplicantVersion") && dict["ApplicantVersion"] != nil {
            self.applicantVersion = dict["ApplicantVersion"] as! String
        }
        if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
            self.auditStatus = dict["AuditStatus"] as! Int32
        }
        if dict.keys.contains("CardNumber") && dict["CardNumber"] != nil {
            self.cardNumber = dict["CardNumber"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrincipalName") && dict["PrincipalName"] != nil {
            self.principalName = dict["PrincipalName"] as! Int32
        }
        if dict.keys.contains("SystemVersion") && dict["SystemVersion"] != nil {
            self.systemVersion = dict["SystemVersion"] as! String
        }
    }
}

public class ListApplicantsResponseBody : Tea.TeaModel {
    public class Applicants : Tea.TeaModel {
        public class Applicant : Tea.TeaModel {
            public var applicantId: Int64?

            public var applicantName: String?

            public var applicantRegion: Int32?

            public var applicantType: Int32?

            public var applicantVersion: String?

            public var auditStatus: Int32?

            public var authorizationAuditStatus: Int32?

            public var authorizationUrl: String?

            public var cardNumber: String?

            public var contactName: String?

            public var principalName: Int32?

            public var systemVersion: String?

            public var validDate: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.applicantId != nil {
                    map["ApplicantId"] = self.applicantId!
                }
                if self.applicantName != nil {
                    map["ApplicantName"] = self.applicantName!
                }
                if self.applicantRegion != nil {
                    map["ApplicantRegion"] = self.applicantRegion!
                }
                if self.applicantType != nil {
                    map["ApplicantType"] = self.applicantType!
                }
                if self.applicantVersion != nil {
                    map["ApplicantVersion"] = self.applicantVersion!
                }
                if self.auditStatus != nil {
                    map["AuditStatus"] = self.auditStatus!
                }
                if self.authorizationAuditStatus != nil {
                    map["AuthorizationAuditStatus"] = self.authorizationAuditStatus!
                }
                if self.authorizationUrl != nil {
                    map["AuthorizationUrl"] = self.authorizationUrl!
                }
                if self.cardNumber != nil {
                    map["CardNumber"] = self.cardNumber!
                }
                if self.contactName != nil {
                    map["ContactName"] = self.contactName!
                }
                if self.principalName != nil {
                    map["PrincipalName"] = self.principalName!
                }
                if self.systemVersion != nil {
                    map["SystemVersion"] = self.systemVersion!
                }
                if self.validDate != nil {
                    map["ValidDate"] = self.validDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApplicantId") && dict["ApplicantId"] != nil {
                    self.applicantId = dict["ApplicantId"] as! Int64
                }
                if dict.keys.contains("ApplicantName") && dict["ApplicantName"] != nil {
                    self.applicantName = dict["ApplicantName"] as! String
                }
                if dict.keys.contains("ApplicantRegion") && dict["ApplicantRegion"] != nil {
                    self.applicantRegion = dict["ApplicantRegion"] as! Int32
                }
                if dict.keys.contains("ApplicantType") && dict["ApplicantType"] != nil {
                    self.applicantType = dict["ApplicantType"] as! Int32
                }
                if dict.keys.contains("ApplicantVersion") && dict["ApplicantVersion"] != nil {
                    self.applicantVersion = dict["ApplicantVersion"] as! String
                }
                if dict.keys.contains("AuditStatus") && dict["AuditStatus"] != nil {
                    self.auditStatus = dict["AuditStatus"] as! Int32
                }
                if dict.keys.contains("AuthorizationAuditStatus") && dict["AuthorizationAuditStatus"] != nil {
                    self.authorizationAuditStatus = dict["AuthorizationAuditStatus"] as! Int32
                }
                if dict.keys.contains("AuthorizationUrl") && dict["AuthorizationUrl"] != nil {
                    self.authorizationUrl = dict["AuthorizationUrl"] as! String
                }
                if dict.keys.contains("CardNumber") && dict["CardNumber"] != nil {
                    self.cardNumber = dict["CardNumber"] as! String
                }
                if dict.keys.contains("ContactName") && dict["ContactName"] != nil {
                    self.contactName = dict["ContactName"] as! String
                }
                if dict.keys.contains("PrincipalName") && dict["PrincipalName"] != nil {
                    self.principalName = dict["PrincipalName"] as! Int32
                }
                if dict.keys.contains("SystemVersion") && dict["SystemVersion"] != nil {
                    self.systemVersion = dict["SystemVersion"] as! String
                }
                if dict.keys.contains("ValidDate") && dict["ValidDate"] != nil {
                    self.validDate = dict["ValidDate"] as! Int64
                }
            }
        }
        public var applicant: [ListApplicantsResponseBody.Applicants.Applicant]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicant != nil {
                var tmp : [Any] = []
                for k in self.applicant! {
                    tmp.append(k.toMap())
                }
                map["Applicant"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Applicant") && dict["Applicant"] != nil {
                var tmp : [ListApplicantsResponseBody.Applicants.Applicant] = []
                for v in dict["Applicant"] as! [Any] {
                    var model = ListApplicantsResponseBody.Applicants.Applicant()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.applicant = tmp
            }
        }
    }
    public var applicants: ListApplicantsResponseBody.Applicants?

    public var pageNumber: Int32?

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
        try self.applicants?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicants != nil {
            map["Applicants"] = self.applicants?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        if dict.keys.contains("Applicants") && dict["Applicants"] != nil {
            var model = ListApplicantsResponseBody.Applicants()
            model.fromMap(dict["Applicants"] as! [String: Any])
            self.applicants = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListApplicantsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApplicantsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListApplicantsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAreasRequest : Tea.TeaModel {
    public var bizType: String?

    public var parentCode: String?

    public override init() {
        super.init()
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
        if self.parentCode != nil {
            map["ParentCode"] = self.parentCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("ParentCode") && dict["ParentCode"] != nil {
            self.parentCode = dict["ParentCode"] as! String
        }
    }
}

public class ListAreasResponseBody : Tea.TeaModel {
    public class Datas : Tea.TeaModel {
        public class SubArea : Tea.TeaModel {
            public var code: String?

            public var name: String?

            public var parentCode: String?

            public var sortNum: Int32?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.parentCode != nil {
                    map["ParentCode"] = self.parentCode!
                }
                if self.sortNum != nil {
                    map["SortNum"] = self.sortNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("ParentCode") && dict["ParentCode"] != nil {
                    self.parentCode = dict["ParentCode"] as! String
                }
                if dict.keys.contains("SortNum") && dict["SortNum"] != nil {
                    self.sortNum = dict["SortNum"] as! Int32
                }
            }
        }
        public var code: String?

        public var name: String?

        public var parentCode: String?

        public var sortNum: Int32?

        public var subArea: [ListAreasResponseBody.Datas.SubArea]?

        public override init() {
            super.init()
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parentCode != nil {
                map["ParentCode"] = self.parentCode!
            }
            if self.sortNum != nil {
                map["SortNum"] = self.sortNum!
            }
            if self.subArea != nil {
                var tmp : [Any] = []
                for k in self.subArea! {
                    tmp.append(k.toMap())
                }
                map["SubArea"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParentCode") && dict["ParentCode"] != nil {
                self.parentCode = dict["ParentCode"] as! String
            }
            if dict.keys.contains("SortNum") && dict["SortNum"] != nil {
                self.sortNum = dict["SortNum"] as! Int32
            }
            if dict.keys.contains("SubArea") && dict["SubArea"] != nil {
                var tmp : [ListAreasResponseBody.Datas.SubArea] = []
                for v in dict["SubArea"] as! [Any] {
                    var model = ListAreasResponseBody.Datas.SubArea()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.subArea = tmp
            }
        }
    }
    public var datas: [ListAreasResponseBody.Datas]?

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
        if self.datas != nil {
            var tmp : [Any] = []
            for k in self.datas! {
                tmp.append(k.toMap())
            }
            map["Datas"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Datas") && dict["Datas"] != nil {
            var tmp : [ListAreasResponseBody.Datas] = []
            for v in dict["Datas"] as! [Any] {
                var model = ListAreasResponseBody.Datas()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.datas = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAreasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAreasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAreasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClassificationConditionsRequest : Tea.TeaModel {
    public var tagName: String?

    public var type: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TagName") && dict["TagName"] != nil {
            self.tagName = dict["TagName"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! Int64
        }
    }
}

public class ListClassificationConditionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var conditionContent: String?

        public var createTime: Int64?

        public var id: Int64?

        public var sessionId: String?

        public var tagName: String?

        public var type: Int64?

        public var umid: String?

        public var updateTime: Int64?

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
            if self.conditionContent != nil {
                map["ConditionContent"] = self.conditionContent!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.tagName != nil {
                map["TagName"] = self.tagName!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.umid != nil {
                map["Umid"] = self.umid!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConditionContent") && dict["ConditionContent"] != nil {
                self.conditionContent = dict["ConditionContent"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("TagName") && dict["TagName"] != nil {
                self.tagName = dict["TagName"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! Int64
            }
            if dict.keys.contains("Umid") && dict["Umid"] != nil {
                self.umid = dict["Umid"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                self.updateTime = dict["UpdateTime"] as! Int64
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! Int64
            }
        }
    }
    public var data: [ListClassificationConditionsResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [ListClassificationConditionsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListClassificationConditionsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListClassificationConditionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClassificationConditionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListClassificationConditionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClassificationsRequest : Tea.TeaModel {
    public var parentCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parentCode != nil {
            map["ParentCode"] = self.parentCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ParentCode") && dict["ParentCode"] != nil {
            self.parentCode = dict["ParentCode"] as! String
        }
    }
}

public class ListClassificationsResponseBody : Tea.TeaModel {
    public class Classifications : Tea.TeaModel {
        public class Classification : Tea.TeaModel {
            public var classificationCode: String?

            public var classificationName: String?

            public var id: Int64?

            public var level: Int32?

            public var officialCode: String?

            public var parentCode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.classificationCode != nil {
                    map["ClassificationCode"] = self.classificationCode!
                }
                if self.classificationName != nil {
                    map["ClassificationName"] = self.classificationName!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.level != nil {
                    map["Level"] = self.level!
                }
                if self.officialCode != nil {
                    map["OfficialCode"] = self.officialCode!
                }
                if self.parentCode != nil {
                    map["ParentCode"] = self.parentCode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClassificationCode") && dict["ClassificationCode"] != nil {
                    self.classificationCode = dict["ClassificationCode"] as! String
                }
                if dict.keys.contains("ClassificationName") && dict["ClassificationName"] != nil {
                    self.classificationName = dict["ClassificationName"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("Level") && dict["Level"] != nil {
                    self.level = dict["Level"] as! Int32
                }
                if dict.keys.contains("OfficialCode") && dict["OfficialCode"] != nil {
                    self.officialCode = dict["OfficialCode"] as! String
                }
                if dict.keys.contains("ParentCode") && dict["ParentCode"] != nil {
                    self.parentCode = dict["ParentCode"] as! String
                }
            }
        }
        public var classification: [ListClassificationsResponseBody.Classifications.Classification]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.classification != nil {
                var tmp : [Any] = []
                for k in self.classification! {
                    tmp.append(k.toMap())
                }
                map["Classification"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Classification") && dict["Classification"] != nil {
                var tmp : [ListClassificationsResponseBody.Classifications.Classification] = []
                for v in dict["Classification"] as! [Any] {
                    var model = ListClassificationsResponseBody.Classifications.Classification()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.classification = tmp
            }
        }
    }
    public var classifications: ListClassificationsResponseBody.Classifications?

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
        try self.classifications?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.classifications != nil {
            map["Classifications"] = self.classifications?.toMap()
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
        if dict.keys.contains("Classifications") && dict["Classifications"] != nil {
            var model = ListClassificationsResponseBody.Classifications()
            model.fromMap(dict["Classifications"] as! [String: Any])
            self.classifications = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListClassificationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClassificationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListClassificationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTrademarkApplicationLogsRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
    }
}

public class ListTrademarkApplicationLogsResponseBody : Tea.TeaModel {
    public class TrademarkApplicationLogs : Tea.TeaModel {
        public class TrademarkApplicationLog : Tea.TeaModel {
            public var bizId: String?

            public var bizStatus: Int32?

            public var note: String?

            public var operateTime: Int64?

            public var operateType: Int32?

            public override init() {
                super.init()
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
                if self.bizStatus != nil {
                    map["BizStatus"] = self.bizStatus!
                }
                if self.note != nil {
                    map["Note"] = self.note!
                }
                if self.operateTime != nil {
                    map["OperateTime"] = self.operateTime!
                }
                if self.operateType != nil {
                    map["OperateType"] = self.operateType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BizId") && dict["BizId"] != nil {
                    self.bizId = dict["BizId"] as! String
                }
                if dict.keys.contains("BizStatus") && dict["BizStatus"] != nil {
                    self.bizStatus = dict["BizStatus"] as! Int32
                }
                if dict.keys.contains("Note") && dict["Note"] != nil {
                    self.note = dict["Note"] as! String
                }
                if dict.keys.contains("OperateTime") && dict["OperateTime"] != nil {
                    self.operateTime = dict["OperateTime"] as! Int64
                }
                if dict.keys.contains("OperateType") && dict["OperateType"] != nil {
                    self.operateType = dict["OperateType"] as! Int32
                }
            }
        }
        public var trademarkApplicationLog: [ListTrademarkApplicationLogsResponseBody.TrademarkApplicationLogs.TrademarkApplicationLog]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.trademarkApplicationLog != nil {
                var tmp : [Any] = []
                for k in self.trademarkApplicationLog! {
                    tmp.append(k.toMap())
                }
                map["TrademarkApplicationLog"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TrademarkApplicationLog") && dict["TrademarkApplicationLog"] != nil {
                var tmp : [ListTrademarkApplicationLogsResponseBody.TrademarkApplicationLogs.TrademarkApplicationLog] = []
                for v in dict["TrademarkApplicationLog"] as! [Any] {
                    var model = ListTrademarkApplicationLogsResponseBody.TrademarkApplicationLogs.TrademarkApplicationLog()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.trademarkApplicationLog = tmp
            }
        }
    }
    public var requestId: String?

    public var trademarkApplicationLogs: ListTrademarkApplicationLogsResponseBody.TrademarkApplicationLogs?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.trademarkApplicationLogs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.trademarkApplicationLogs != nil {
            map["TrademarkApplicationLogs"] = self.trademarkApplicationLogs?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TrademarkApplicationLogs") && dict["TrademarkApplicationLogs"] != nil {
            var model = ListTrademarkApplicationLogsResponseBody.TrademarkApplicationLogs()
            model.fromMap(dict["TrademarkApplicationLogs"] as! [String: Any])
            self.trademarkApplicationLogs = model
        }
    }
}

public class ListTrademarkApplicationLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTrademarkApplicationLogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTrademarkApplicationLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTrademarkApplicationsRequest : Tea.TeaModel {
    public var applicantName: String?

    public var applicationStatus: Int32?

    public var applicationType: String?

    public var bizId: String?

    public var createTimeLeft: Int64?

    public var createTimeRight: Int64?

    public var flag: Int32?

    public var orderId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var productType: Int32?

    public var queryVoucherOrderDoneFlag: Bool?

    public var queryVoucherOrderFlag: Bool?

    public var sortFiled: String?

    public var sortOrder: String?

    public var supplementStatus: Int32?

    public var trademarkName: String?

    public var trademarkNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicantName != nil {
            map["ApplicantName"] = self.applicantName!
        }
        if self.applicationStatus != nil {
            map["ApplicationStatus"] = self.applicationStatus!
        }
        if self.applicationType != nil {
            map["ApplicationType"] = self.applicationType!
        }
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.createTimeLeft != nil {
            map["CreateTimeLeft"] = self.createTimeLeft!
        }
        if self.createTimeRight != nil {
            map["CreateTimeRight"] = self.createTimeRight!
        }
        if self.flag != nil {
            map["Flag"] = self.flag!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productType != nil {
            map["ProductType"] = self.productType!
        }
        if self.queryVoucherOrderDoneFlag != nil {
            map["QueryVoucherOrderDoneFlag"] = self.queryVoucherOrderDoneFlag!
        }
        if self.queryVoucherOrderFlag != nil {
            map["QueryVoucherOrderFlag"] = self.queryVoucherOrderFlag!
        }
        if self.sortFiled != nil {
            map["SortFiled"] = self.sortFiled!
        }
        if self.sortOrder != nil {
            map["SortOrder"] = self.sortOrder!
        }
        if self.supplementStatus != nil {
            map["SupplementStatus"] = self.supplementStatus!
        }
        if self.trademarkName != nil {
            map["TrademarkName"] = self.trademarkName!
        }
        if self.trademarkNumber != nil {
            map["TrademarkNumber"] = self.trademarkNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicantName") && dict["ApplicantName"] != nil {
            self.applicantName = dict["ApplicantName"] as! String
        }
        if dict.keys.contains("ApplicationStatus") && dict["ApplicationStatus"] != nil {
            self.applicationStatus = dict["ApplicationStatus"] as! Int32
        }
        if dict.keys.contains("ApplicationType") && dict["ApplicationType"] != nil {
            self.applicationType = dict["ApplicationType"] as! String
        }
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("CreateTimeLeft") && dict["CreateTimeLeft"] != nil {
            self.createTimeLeft = dict["CreateTimeLeft"] as! Int64
        }
        if dict.keys.contains("CreateTimeRight") && dict["CreateTimeRight"] != nil {
            self.createTimeRight = dict["CreateTimeRight"] as! Int64
        }
        if dict.keys.contains("Flag") && dict["Flag"] != nil {
            self.flag = dict["Flag"] as! Int32
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductType") && dict["ProductType"] != nil {
            self.productType = dict["ProductType"] as! Int32
        }
        if dict.keys.contains("QueryVoucherOrderDoneFlag") && dict["QueryVoucherOrderDoneFlag"] != nil {
            self.queryVoucherOrderDoneFlag = dict["QueryVoucherOrderDoneFlag"] as! Bool
        }
        if dict.keys.contains("QueryVoucherOrderFlag") && dict["QueryVoucherOrderFlag"] != nil {
            self.queryVoucherOrderFlag = dict["QueryVoucherOrderFlag"] as! Bool
        }
        if dict.keys.contains("SortFiled") && dict["SortFiled"] != nil {
            self.sortFiled = dict["SortFiled"] as! String
        }
        if dict.keys.contains("SortOrder") && dict["SortOrder"] != nil {
            self.sortOrder = dict["SortOrder"] as! String
        }
        if dict.keys.contains("SupplementStatus") && dict["SupplementStatus"] != nil {
            self.supplementStatus = dict["SupplementStatus"] as! Int32
        }
        if dict.keys.contains("TrademarkName") && dict["TrademarkName"] != nil {
            self.trademarkName = dict["TrademarkName"] as! String
        }
        if dict.keys.contains("TrademarkNumber") && dict["TrademarkNumber"] != nil {
            self.trademarkNumber = dict["TrademarkNumber"] as! String
        }
    }
}

public class ListTrademarkApplicationsResponseBody : Tea.TeaModel {
    public class TrademarkApplications : Tea.TeaModel {
        public class TrademarkApplication : Tea.TeaModel {
            public class FirstClassification : Tea.TeaModel {
                public var classificationCode: String?

                public var classificationName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.classificationCode != nil {
                        map["ClassificationCode"] = self.classificationCode!
                    }
                    if self.classificationName != nil {
                        map["ClassificationName"] = self.classificationName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ClassificationCode") && dict["ClassificationCode"] != nil {
                        self.classificationCode = dict["ClassificationCode"] as! String
                    }
                    if dict.keys.contains("ClassificationName") && dict["ClassificationName"] != nil {
                        self.classificationName = dict["ClassificationName"] as! String
                    }
                }
            }
            public class Flags : Tea.TeaModel {
                public var flags: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.flags != nil {
                        map["Flags"] = self.flags!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Flags") && dict["Flags"] != nil {
                        self.flags = dict["Flags"] as! [String]
                    }
                }
            }
            public class ThirdClassification : Tea.TeaModel {
                public class ThirdClassification : Tea.TeaModel {
                    public var classificationCode: String?

                    public var classificationName: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.classificationCode != nil {
                            map["ClassificationCode"] = self.classificationCode!
                        }
                        if self.classificationName != nil {
                            map["ClassificationName"] = self.classificationName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ClassificationCode") && dict["ClassificationCode"] != nil {
                            self.classificationCode = dict["ClassificationCode"] as! String
                        }
                        if dict.keys.contains("ClassificationName") && dict["ClassificationName"] != nil {
                            self.classificationName = dict["ClassificationName"] as! String
                        }
                    }
                }
                public var thirdClassification: [ListTrademarkApplicationsResponseBody.TrademarkApplications.TrademarkApplication.ThirdClassification.ThirdClassification]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.thirdClassification != nil {
                        var tmp : [Any] = []
                        for k in self.thirdClassification! {
                            tmp.append(k.toMap())
                        }
                        map["ThirdClassification"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ThirdClassification") && dict["ThirdClassification"] != nil {
                        var tmp : [ListTrademarkApplicationsResponseBody.TrademarkApplications.TrademarkApplication.ThirdClassification.ThirdClassification] = []
                        for v in dict["ThirdClassification"] as! [Any] {
                            var model = ListTrademarkApplicationsResponseBody.TrademarkApplications.TrademarkApplication.ThirdClassification.ThirdClassification()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.thirdClassification = tmp
                    }
                }
            }
            public var agreementId: String?

            public var applicantId: Int64?

            public var applicantName: String?

            public var applicationStatus: Int32?

            public var applicationType: Int32?

            public var authorizationUrl: String?

            public var bizId: String?

            public var createTime: Int64?

            public var firstClassification: ListTrademarkApplicationsResponseBody.TrademarkApplications.TrademarkApplication.FirstClassification?

            public var flags: ListTrademarkApplicationsResponseBody.TrademarkApplications.TrademarkApplication.Flags?

            public var note: String?

            public var orderId: String?

            public var orderPrice: Double?

            public var principalName: Int32?

            public var servicePrice: Double?

            public var supplementId: Int64?

            public var supplementStatus: Int32?

            public var systemVersion: String?

            public var thirdClassification: ListTrademarkApplicationsResponseBody.TrademarkApplications.TrademarkApplication.ThirdClassification?

            public var totalPrice: Double?

            public var trademarkIcon: String?

            public var trademarkName: String?

            public var trademarkNumber: String?

            public var updateTime: Int64?

            public var userId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.firstClassification?.validate()
                try self.flags?.validate()
                try self.thirdClassification?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agreementId != nil {
                    map["AgreementId"] = self.agreementId!
                }
                if self.applicantId != nil {
                    map["ApplicantId"] = self.applicantId!
                }
                if self.applicantName != nil {
                    map["ApplicantName"] = self.applicantName!
                }
                if self.applicationStatus != nil {
                    map["ApplicationStatus"] = self.applicationStatus!
                }
                if self.applicationType != nil {
                    map["ApplicationType"] = self.applicationType!
                }
                if self.authorizationUrl != nil {
                    map["AuthorizationUrl"] = self.authorizationUrl!
                }
                if self.bizId != nil {
                    map["BizId"] = self.bizId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.firstClassification != nil {
                    map["FirstClassification"] = self.firstClassification?.toMap()
                }
                if self.flags != nil {
                    map["Flags"] = self.flags?.toMap()
                }
                if self.note != nil {
                    map["Note"] = self.note!
                }
                if self.orderId != nil {
                    map["OrderId"] = self.orderId!
                }
                if self.orderPrice != nil {
                    map["OrderPrice"] = self.orderPrice!
                }
                if self.principalName != nil {
                    map["PrincipalName"] = self.principalName!
                }
                if self.servicePrice != nil {
                    map["ServicePrice"] = self.servicePrice!
                }
                if self.supplementId != nil {
                    map["SupplementId"] = self.supplementId!
                }
                if self.supplementStatus != nil {
                    map["SupplementStatus"] = self.supplementStatus!
                }
                if self.systemVersion != nil {
                    map["SystemVersion"] = self.systemVersion!
                }
                if self.thirdClassification != nil {
                    map["ThirdClassification"] = self.thirdClassification?.toMap()
                }
                if self.totalPrice != nil {
                    map["TotalPrice"] = self.totalPrice!
                }
                if self.trademarkIcon != nil {
                    map["TrademarkIcon"] = self.trademarkIcon!
                }
                if self.trademarkName != nil {
                    map["TrademarkName"] = self.trademarkName!
                }
                if self.trademarkNumber != nil {
                    map["TrademarkNumber"] = self.trademarkNumber!
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AgreementId") && dict["AgreementId"] != nil {
                    self.agreementId = dict["AgreementId"] as! String
                }
                if dict.keys.contains("ApplicantId") && dict["ApplicantId"] != nil {
                    self.applicantId = dict["ApplicantId"] as! Int64
                }
                if dict.keys.contains("ApplicantName") && dict["ApplicantName"] != nil {
                    self.applicantName = dict["ApplicantName"] as! String
                }
                if dict.keys.contains("ApplicationStatus") && dict["ApplicationStatus"] != nil {
                    self.applicationStatus = dict["ApplicationStatus"] as! Int32
                }
                if dict.keys.contains("ApplicationType") && dict["ApplicationType"] != nil {
                    self.applicationType = dict["ApplicationType"] as! Int32
                }
                if dict.keys.contains("AuthorizationUrl") && dict["AuthorizationUrl"] != nil {
                    self.authorizationUrl = dict["AuthorizationUrl"] as! String
                }
                if dict.keys.contains("BizId") && dict["BizId"] != nil {
                    self.bizId = dict["BizId"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("FirstClassification") && dict["FirstClassification"] != nil {
                    var model = ListTrademarkApplicationsResponseBody.TrademarkApplications.TrademarkApplication.FirstClassification()
                    model.fromMap(dict["FirstClassification"] as! [String: Any])
                    self.firstClassification = model
                }
                if dict.keys.contains("Flags") && dict["Flags"] != nil {
                    var model = ListTrademarkApplicationsResponseBody.TrademarkApplications.TrademarkApplication.Flags()
                    model.fromMap(dict["Flags"] as! [String: Any])
                    self.flags = model
                }
                if dict.keys.contains("Note") && dict["Note"] != nil {
                    self.note = dict["Note"] as! String
                }
                if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                    self.orderId = dict["OrderId"] as! String
                }
                if dict.keys.contains("OrderPrice") && dict["OrderPrice"] != nil {
                    self.orderPrice = dict["OrderPrice"] as! Double
                }
                if dict.keys.contains("PrincipalName") && dict["PrincipalName"] != nil {
                    self.principalName = dict["PrincipalName"] as! Int32
                }
                if dict.keys.contains("ServicePrice") && dict["ServicePrice"] != nil {
                    self.servicePrice = dict["ServicePrice"] as! Double
                }
                if dict.keys.contains("SupplementId") && dict["SupplementId"] != nil {
                    self.supplementId = dict["SupplementId"] as! Int64
                }
                if dict.keys.contains("SupplementStatus") && dict["SupplementStatus"] != nil {
                    self.supplementStatus = dict["SupplementStatus"] as! Int32
                }
                if dict.keys.contains("SystemVersion") && dict["SystemVersion"] != nil {
                    self.systemVersion = dict["SystemVersion"] as! String
                }
                if dict.keys.contains("ThirdClassification") && dict["ThirdClassification"] != nil {
                    var model = ListTrademarkApplicationsResponseBody.TrademarkApplications.TrademarkApplication.ThirdClassification()
                    model.fromMap(dict["ThirdClassification"] as! [String: Any])
                    self.thirdClassification = model
                }
                if dict.keys.contains("TotalPrice") && dict["TotalPrice"] != nil {
                    self.totalPrice = dict["TotalPrice"] as! Double
                }
                if dict.keys.contains("TrademarkIcon") && dict["TrademarkIcon"] != nil {
                    self.trademarkIcon = dict["TrademarkIcon"] as! String
                }
                if dict.keys.contains("TrademarkName") && dict["TrademarkName"] != nil {
                    self.trademarkName = dict["TrademarkName"] as! String
                }
                if dict.keys.contains("TrademarkNumber") && dict["TrademarkNumber"] != nil {
                    self.trademarkNumber = dict["TrademarkNumber"] as! String
                }
                if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                    self.updateTime = dict["UpdateTime"] as! Int64
                }
                if dict.keys.contains("UserId") && dict["UserId"] != nil {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public var trademarkApplication: [ListTrademarkApplicationsResponseBody.TrademarkApplications.TrademarkApplication]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.trademarkApplication != nil {
                var tmp : [Any] = []
                for k in self.trademarkApplication! {
                    tmp.append(k.toMap())
                }
                map["TrademarkApplication"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TrademarkApplication") && dict["TrademarkApplication"] != nil {
                var tmp : [ListTrademarkApplicationsResponseBody.TrademarkApplications.TrademarkApplication] = []
                for v in dict["TrademarkApplication"] as! [Any] {
                    var model = ListTrademarkApplicationsResponseBody.TrademarkApplications.TrademarkApplication()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.trademarkApplication = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var trademarkApplications: ListTrademarkApplicationsResponseBody.TrademarkApplications?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.trademarkApplications?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        if self.trademarkApplications != nil {
            map["TrademarkApplications"] = self.trademarkApplications?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("TrademarkApplications") && dict["TrademarkApplications"] != nil {
            var model = ListTrademarkApplicationsResponseBody.TrademarkApplications()
            model.fromMap(dict["TrademarkApplications"] as! [String: Any])
            self.trademarkApplications = model
        }
    }
}

public class ListTrademarkApplicationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTrademarkApplicationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTrademarkApplicationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTrademarkSearchForInnerRequest : Tea.TeaModel {
    public var applyBeginTime: String?

    public var applyEndTime: String?

    public var classification: String?

    public var ifPrecision: Bool?

    public var keyword: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var product: String?

    public var searchPreference: String?

    public var searchType: String?

    public var status: String?

    public var umid: String?

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
        if self.applyBeginTime != nil {
            map["ApplyBeginTime"] = self.applyBeginTime!
        }
        if self.applyEndTime != nil {
            map["ApplyEndTime"] = self.applyEndTime!
        }
        if self.classification != nil {
            map["Classification"] = self.classification!
        }
        if self.ifPrecision != nil {
            map["IfPrecision"] = self.ifPrecision!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.searchPreference != nil {
            map["SearchPreference"] = self.searchPreference!
        }
        if self.searchType != nil {
            map["SearchType"] = self.searchType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.umid != nil {
            map["Umid"] = self.umid!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplyBeginTime") && dict["ApplyBeginTime"] != nil {
            self.applyBeginTime = dict["ApplyBeginTime"] as! String
        }
        if dict.keys.contains("ApplyEndTime") && dict["ApplyEndTime"] != nil {
            self.applyEndTime = dict["ApplyEndTime"] as! String
        }
        if dict.keys.contains("Classification") && dict["Classification"] != nil {
            self.classification = dict["Classification"] as! String
        }
        if dict.keys.contains("IfPrecision") && dict["IfPrecision"] != nil {
            self.ifPrecision = dict["IfPrecision"] as! Bool
        }
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Product") && dict["Product"] != nil {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("SearchPreference") && dict["SearchPreference"] != nil {
            self.searchPreference = dict["SearchPreference"] as! String
        }
        if dict.keys.contains("SearchType") && dict["SearchType"] != nil {
            self.searchType = dict["SearchType"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Umid") && dict["Umid"] != nil {
            self.umid = dict["Umid"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class ListTrademarkSearchForInnerResponseBody : Tea.TeaModel {
    public class TrademarkSearchContents : Tea.TeaModel {
        public var applyDate: String?

        public var classification: String?

        public var exclusiveDateLimit: String?

        public var id: Int64?

        public var image: String?

        public var lastProcedureStatus: String?

        public var name: String?

        public var nameCharSection: String?

        public var nameOrigin: String?

        public var nameSimplifiedChinese: String?

        public var nameSort: String?

        public var onSale: String?

        public var ownerAddress: String?

        public var ownerEnAddress: String?

        public var ownerEnName: String?

        public var ownerName: String?

        public var preAnnDate: String?

        public var preAnnNum: String?

        public var product: String?

        public var productDel: [String]?

        public var productDescription: String?

        public var regAnnNum: String?

        public var registrationNumber: String?

        public var share: String?

        public var similarGroupDel: [String]?

        public var uid: String?

        public var wellKnow: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applyDate != nil {
                map["ApplyDate"] = self.applyDate!
            }
            if self.classification != nil {
                map["Classification"] = self.classification!
            }
            if self.exclusiveDateLimit != nil {
                map["ExclusiveDateLimit"] = self.exclusiveDateLimit!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.image != nil {
                map["Image"] = self.image!
            }
            if self.lastProcedureStatus != nil {
                map["LastProcedureStatus"] = self.lastProcedureStatus!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nameCharSection != nil {
                map["NameCharSection"] = self.nameCharSection!
            }
            if self.nameOrigin != nil {
                map["NameOrigin"] = self.nameOrigin!
            }
            if self.nameSimplifiedChinese != nil {
                map["NameSimplifiedChinese"] = self.nameSimplifiedChinese!
            }
            if self.nameSort != nil {
                map["NameSort"] = self.nameSort!
            }
            if self.onSale != nil {
                map["OnSale"] = self.onSale!
            }
            if self.ownerAddress != nil {
                map["OwnerAddress"] = self.ownerAddress!
            }
            if self.ownerEnAddress != nil {
                map["OwnerEnAddress"] = self.ownerEnAddress!
            }
            if self.ownerEnName != nil {
                map["OwnerEnName"] = self.ownerEnName!
            }
            if self.ownerName != nil {
                map["OwnerName"] = self.ownerName!
            }
            if self.preAnnDate != nil {
                map["PreAnnDate"] = self.preAnnDate!
            }
            if self.preAnnNum != nil {
                map["PreAnnNum"] = self.preAnnNum!
            }
            if self.product != nil {
                map["Product"] = self.product!
            }
            if self.productDel != nil {
                map["ProductDel"] = self.productDel!
            }
            if self.productDescription != nil {
                map["ProductDescription"] = self.productDescription!
            }
            if self.regAnnNum != nil {
                map["RegAnnNum"] = self.regAnnNum!
            }
            if self.registrationNumber != nil {
                map["RegistrationNumber"] = self.registrationNumber!
            }
            if self.share != nil {
                map["Share"] = self.share!
            }
            if self.similarGroupDel != nil {
                map["SimilarGroupDel"] = self.similarGroupDel!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            if self.wellKnow != nil {
                map["WellKnow"] = self.wellKnow!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplyDate") && dict["ApplyDate"] != nil {
                self.applyDate = dict["ApplyDate"] as! String
            }
            if dict.keys.contains("Classification") && dict["Classification"] != nil {
                self.classification = dict["Classification"] as! String
            }
            if dict.keys.contains("ExclusiveDateLimit") && dict["ExclusiveDateLimit"] != nil {
                self.exclusiveDateLimit = dict["ExclusiveDateLimit"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Image") && dict["Image"] != nil {
                self.image = dict["Image"] as! String
            }
            if dict.keys.contains("LastProcedureStatus") && dict["LastProcedureStatus"] != nil {
                self.lastProcedureStatus = dict["LastProcedureStatus"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NameCharSection") && dict["NameCharSection"] != nil {
                self.nameCharSection = dict["NameCharSection"] as! String
            }
            if dict.keys.contains("NameOrigin") && dict["NameOrigin"] != nil {
                self.nameOrigin = dict["NameOrigin"] as! String
            }
            if dict.keys.contains("NameSimplifiedChinese") && dict["NameSimplifiedChinese"] != nil {
                self.nameSimplifiedChinese = dict["NameSimplifiedChinese"] as! String
            }
            if dict.keys.contains("NameSort") && dict["NameSort"] != nil {
                self.nameSort = dict["NameSort"] as! String
            }
            if dict.keys.contains("OnSale") && dict["OnSale"] != nil {
                self.onSale = dict["OnSale"] as! String
            }
            if dict.keys.contains("OwnerAddress") && dict["OwnerAddress"] != nil {
                self.ownerAddress = dict["OwnerAddress"] as! String
            }
            if dict.keys.contains("OwnerEnAddress") && dict["OwnerEnAddress"] != nil {
                self.ownerEnAddress = dict["OwnerEnAddress"] as! String
            }
            if dict.keys.contains("OwnerEnName") && dict["OwnerEnName"] != nil {
                self.ownerEnName = dict["OwnerEnName"] as! String
            }
            if dict.keys.contains("OwnerName") && dict["OwnerName"] != nil {
                self.ownerName = dict["OwnerName"] as! String
            }
            if dict.keys.contains("PreAnnDate") && dict["PreAnnDate"] != nil {
                self.preAnnDate = dict["PreAnnDate"] as! String
            }
            if dict.keys.contains("PreAnnNum") && dict["PreAnnNum"] != nil {
                self.preAnnNum = dict["PreAnnNum"] as! String
            }
            if dict.keys.contains("Product") && dict["Product"] != nil {
                self.product = dict["Product"] as! String
            }
            if dict.keys.contains("ProductDel") && dict["ProductDel"] != nil {
                self.productDel = dict["ProductDel"] as! [String]
            }
            if dict.keys.contains("ProductDescription") && dict["ProductDescription"] != nil {
                self.productDescription = dict["ProductDescription"] as! String
            }
            if dict.keys.contains("RegAnnNum") && dict["RegAnnNum"] != nil {
                self.regAnnNum = dict["RegAnnNum"] as! String
            }
            if dict.keys.contains("RegistrationNumber") && dict["RegistrationNumber"] != nil {
                self.registrationNumber = dict["RegistrationNumber"] as! String
            }
            if dict.keys.contains("Share") && dict["Share"] != nil {
                self.share = dict["Share"] as! String
            }
            if dict.keys.contains("SimilarGroupDel") && dict["SimilarGroupDel"] != nil {
                self.similarGroupDel = dict["SimilarGroupDel"] as! [String]
            }
            if dict.keys.contains("Uid") && dict["Uid"] != nil {
                self.uid = dict["Uid"] as! String
            }
            if dict.keys.contains("WellKnow") && dict["WellKnow"] != nil {
                self.wellKnow = dict["WellKnow"] as! String
            }
        }
    }
    public var pageNumber: String?

    public var pageSize: String?

    public var products: [String]?

    public var requestId: String?

    public var totalCount: String?

    public var trademarkSearchContents: [ListTrademarkSearchForInnerResponseBody.TrademarkSearchContents]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.products != nil {
            map["Products"] = self.products!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.trademarkSearchContents != nil {
            var tmp : [Any] = []
            for k in self.trademarkSearchContents! {
                tmp.append(k.toMap())
            }
            map["TrademarkSearchContents"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("Products") && dict["Products"] != nil {
            self.products = dict["Products"] as! [String]
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! String
        }
        if dict.keys.contains("TrademarkSearchContents") && dict["TrademarkSearchContents"] != nil {
            var tmp : [ListTrademarkSearchForInnerResponseBody.TrademarkSearchContents] = []
            for v in dict["TrademarkSearchContents"] as! [Any] {
                var model = ListTrademarkSearchForInnerResponseBody.TrademarkSearchContents()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.trademarkSearchContents = tmp
        }
    }
}

public class ListTrademarkSearchForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTrademarkSearchForInnerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTrademarkSearchForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutMeasureDataRequest : Tea.TeaModel {
    public var bizType: String?

    public var data: String?

    public var dataType: String?

    public var endTime: String?

    public var startTime: String?

    public override init() {
        super.init()
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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("DataType") && dict["DataType"] != nil {
            self.dataType = dict["DataType"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class PutMeasureDataResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class PutMeasureDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutMeasureDataResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PutMeasureDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutMeasureReadyFlagRequest : Tea.TeaModel {
    public var bizType: String?

    public var dataType: String?

    public var endTime: String?

    public var readyFlag: String?

    public var startTime: String?

    public override init() {
        super.init()
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
        if self.dataType != nil {
            map["DataType"] = self.dataType!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.readyFlag != nil {
            map["ReadyFlag"] = self.readyFlag!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
        if dict.keys.contains("DataType") && dict["DataType"] != nil {
            self.dataType = dict["DataType"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("ReadyFlag") && dict["ReadyFlag"] != nil {
            self.readyFlag = dict["ReadyFlag"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class PutMeasureReadyFlagResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class PutMeasureReadyFlagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutMeasureReadyFlagResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PutMeasureReadyFlagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryActivityItemsRequest : Tea.TeaModel {
    public var activityId: Int32?

    public var extendInfo: String?

    public var floorIndex: Int32?

    public var mock: Bool?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var refresh: Bool?

    public var umId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.activityId != nil {
            map["ActivityId"] = self.activityId!
        }
        if self.extendInfo != nil {
            map["ExtendInfo"] = self.extendInfo!
        }
        if self.floorIndex != nil {
            map["FloorIndex"] = self.floorIndex!
        }
        if self.mock != nil {
            map["Mock"] = self.mock!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.refresh != nil {
            map["Refresh"] = self.refresh!
        }
        if self.umId != nil {
            map["UmId"] = self.umId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActivityId") && dict["ActivityId"] != nil {
            self.activityId = dict["ActivityId"] as! Int32
        }
        if dict.keys.contains("ExtendInfo") && dict["ExtendInfo"] != nil {
            self.extendInfo = dict["ExtendInfo"] as! String
        }
        if dict.keys.contains("FloorIndex") && dict["FloorIndex"] != nil {
            self.floorIndex = dict["FloorIndex"] as! Int32
        }
        if dict.keys.contains("Mock") && dict["Mock"] != nil {
            self.mock = dict["Mock"] as! Bool
        }
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Refresh") && dict["Refresh"] != nil {
            self.refresh = dict["Refresh"] as! Bool
        }
        if dict.keys.contains("UmId") && dict["UmId"] != nil {
            self.umId = dict["UmId"] as! String
        }
    }
}

public class QueryActivityItemsResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class FloorDisplayInfos : Tea.TeaModel {
            public class Floor : Tea.TeaModel {
                public class SubTitles : Tea.TeaModel {
                    public class SubFloor : Tea.TeaModel {
                        public var icon: String?

                        public var name: String?

                        public var title: String?

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
                            if self.icon != nil {
                                map["Icon"] = self.icon!
                            }
                            if self.name != nil {
                                map["Name"] = self.name!
                            }
                            if self.title != nil {
                                map["Title"] = self.title!
                            }
                            if self.value != nil {
                                map["Value"] = self.value!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Icon") && dict["Icon"] != nil {
                                self.icon = dict["Icon"] as! String
                            }
                            if dict.keys.contains("Name") && dict["Name"] != nil {
                                self.name = dict["Name"] as! String
                            }
                            if dict.keys.contains("Title") && dict["Title"] != nil {
                                self.title = dict["Title"] as! String
                            }
                            if dict.keys.contains("Value") && dict["Value"] != nil {
                                self.value = dict["Value"] as! String
                            }
                        }
                    }
                    public var subFloor: [QueryActivityItemsResponseBody.Module.FloorDisplayInfos.Floor.SubTitles.SubFloor]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.subFloor != nil {
                            var tmp : [Any] = []
                            for k in self.subFloor! {
                                tmp.append(k.toMap())
                            }
                            map["subFloor"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("subFloor") && dict["subFloor"] != nil {
                            var tmp : [QueryActivityItemsResponseBody.Module.FloorDisplayInfos.Floor.SubTitles.SubFloor] = []
                            for v in dict["subFloor"] as! [Any] {
                                var model = QueryActivityItemsResponseBody.Module.FloorDisplayInfos.Floor.SubTitles.SubFloor()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.subFloor = tmp
                        }
                    }
                }
                public var icon: String?

                public var index: Int32?

                public var name: String?

                public var subTitles: QueryActivityItemsResponseBody.Module.FloorDisplayInfos.Floor.SubTitles?

                public var title: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.subTitles?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.icon != nil {
                        map["Icon"] = self.icon!
                    }
                    if self.index != nil {
                        map["Index"] = self.index!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.subTitles != nil {
                        map["SubTitles"] = self.subTitles?.toMap()
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Icon") && dict["Icon"] != nil {
                        self.icon = dict["Icon"] as! String
                    }
                    if dict.keys.contains("Index") && dict["Index"] != nil {
                        self.index = dict["Index"] as! Int32
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("SubTitles") && dict["SubTitles"] != nil {
                        var model = QueryActivityItemsResponseBody.Module.FloorDisplayInfos.Floor.SubTitles()
                        model.fromMap(dict["SubTitles"] as! [String: Any])
                        self.subTitles = model
                    }
                    if dict.keys.contains("Title") && dict["Title"] != nil {
                        self.title = dict["Title"] as! String
                    }
                }
            }
            public var floor: [QueryActivityItemsResponseBody.Module.FloorDisplayInfos.Floor]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.floor != nil {
                    var tmp : [Any] = []
                    for k in self.floor! {
                        tmp.append(k.toMap())
                    }
                    map["floor"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("floor") && dict["floor"] != nil {
                    var tmp : [QueryActivityItemsResponseBody.Module.FloorDisplayInfos.Floor] = []
                    for v in dict["floor"] as! [Any] {
                        var model = QueryActivityItemsResponseBody.Module.FloorDisplayInfos.Floor()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.floor = tmp
                }
            }
        }
        public var data: String?

        public var floorDisplayInfos: QueryActivityItemsResponseBody.Module.FloorDisplayInfos?

        public var floorItems: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.floorDisplayInfos?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.floorDisplayInfos != nil {
                map["FloorDisplayInfos"] = self.floorDisplayInfos?.toMap()
            }
            if self.floorItems != nil {
                map["FloorItems"] = self.floorItems!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") && dict["Data"] != nil {
                self.data = dict["Data"] as! String
            }
            if dict.keys.contains("FloorDisplayInfos") && dict["FloorDisplayInfos"] != nil {
                var model = QueryActivityItemsResponseBody.Module.FloorDisplayInfos()
                model.fromMap(dict["FloorDisplayInfos"] as! [String: Any])
                self.floorDisplayInfos = model
            }
            if dict.keys.contains("FloorItems") && dict["FloorItems"] != nil {
                self.floorItems = dict["FloorItems"] as! String
            }
        }
    }
    public var module: QueryActivityItemsResponseBody.Module?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Module") && dict["Module"] != nil {
            var model = QueryActivityItemsResponseBody.Module()
            model.fromMap(dict["Module"] as! [String: Any])
            self.module = model
        }
    }
}

public class QueryActivityItemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryActivityItemsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryActivityItemsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAliyunUidRequest : Tea.TeaModel {
    public var tbUid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tbUid != nil {
            map["TbUid"] = self.tbUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TbUid") && dict["TbUid"] != nil {
            self.tbUid = dict["TbUid"] as! String
        }
    }
}

public class QueryAliyunUidResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var uid: String?

    public override init() {
        super.init()
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
        if self.uid != nil {
            map["Uid"] = self.uid!
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
        if dict.keys.contains("Uid") && dict["Uid"] != nil {
            self.uid = dict["Uid"] as! String
        }
    }
}

public class QueryAliyunUidResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAliyunUidResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryAliyunUidResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryDetailItemRequest : Tea.TeaModel {
    public var detailConvertType: String?

    public var detailId: String?

    public var detailType: String?

    public var mock: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.detailConvertType != nil {
            map["DetailConvertType"] = self.detailConvertType!
        }
        if self.detailId != nil {
            map["DetailId"] = self.detailId!
        }
        if self.detailType != nil {
            map["DetailType"] = self.detailType!
        }
        if self.mock != nil {
            map["Mock"] = self.mock!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DetailConvertType") && dict["DetailConvertType"] != nil {
            self.detailConvertType = dict["DetailConvertType"] as! String
        }
        if dict.keys.contains("DetailId") && dict["DetailId"] != nil {
            self.detailId = dict["DetailId"] as! String
        }
        if dict.keys.contains("DetailType") && dict["DetailType"] != nil {
            self.detailType = dict["DetailType"] as! String
        }
        if dict.keys.contains("Mock") && dict["Mock"] != nil {
            self.mock = dict["Mock"] as! Bool
        }
    }
}

public class QueryDetailItemResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class Attributes : Tea.TeaModel {
            public class Attribute : Tea.TeaModel {
                public var name: String?

                public var title: String?

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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Title") && dict["Title"] != nil {
                        self.title = dict["Title"] as! String
                    }
                    if dict.keys.contains("Value") && dict["Value"] != nil {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var attribute: [QueryDetailItemResponseBody.Module.Attributes.Attribute]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attribute != nil {
                    var tmp : [Any] = []
                    for k in self.attribute! {
                        tmp.append(k.toMap())
                    }
                    map["attribute"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("attribute") && dict["attribute"] != nil {
                    var tmp : [QueryDetailItemResponseBody.Module.Attributes.Attribute] = []
                    for v in dict["attribute"] as! [Any] {
                        var model = QueryDetailItemResponseBody.Module.Attributes.Attribute()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.attribute = tmp
                }
            }
        }
        public class DetailPicUrl : Tea.TeaModel {
            public var picUlr: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.picUlr != nil {
                    map["picUlr"] = self.picUlr!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("picUlr") && dict["picUlr"] != nil {
                    self.picUlr = dict["picUlr"] as! [String]
                }
            }
        }
        public var attributes: QueryDetailItemResponseBody.Module.Attributes?

        public var detailDescription: String?

        public var detailObjectJson: String?

        public var detailPagePicUrl: String?

        public var detailPicUrl: QueryDetailItemResponseBody.Module.DetailPicUrl?

        public var label: String?

        public var mainPicUrl: String?

        public var title: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.attributes?.validate()
            try self.detailPicUrl?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attributes != nil {
                map["Attributes"] = self.attributes?.toMap()
            }
            if self.detailDescription != nil {
                map["DetailDescription"] = self.detailDescription!
            }
            if self.detailObjectJson != nil {
                map["DetailObjectJson"] = self.detailObjectJson!
            }
            if self.detailPagePicUrl != nil {
                map["DetailPagePicUrl"] = self.detailPagePicUrl!
            }
            if self.detailPicUrl != nil {
                map["DetailPicUrl"] = self.detailPicUrl?.toMap()
            }
            if self.label != nil {
                map["Label"] = self.label!
            }
            if self.mainPicUrl != nil {
                map["MainPicUrl"] = self.mainPicUrl!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Attributes") && dict["Attributes"] != nil {
                var model = QueryDetailItemResponseBody.Module.Attributes()
                model.fromMap(dict["Attributes"] as! [String: Any])
                self.attributes = model
            }
            if dict.keys.contains("DetailDescription") && dict["DetailDescription"] != nil {
                self.detailDescription = dict["DetailDescription"] as! String
            }
            if dict.keys.contains("DetailObjectJson") && dict["DetailObjectJson"] != nil {
                self.detailObjectJson = dict["DetailObjectJson"] as! String
            }
            if dict.keys.contains("DetailPagePicUrl") && dict["DetailPagePicUrl"] != nil {
                self.detailPagePicUrl = dict["DetailPagePicUrl"] as! String
            }
            if dict.keys.contains("DetailPicUrl") && dict["DetailPicUrl"] != nil {
                var model = QueryDetailItemResponseBody.Module.DetailPicUrl()
                model.fromMap(dict["DetailPicUrl"] as! [String: Any])
                self.detailPicUrl = model
            }
            if dict.keys.contains("Label") && dict["Label"] != nil {
                self.label = dict["Label"] as! String
            }
            if dict.keys.contains("MainPicUrl") && dict["MainPicUrl"] != nil {
                self.mainPicUrl = dict["MainPicUrl"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var module: QueryDetailItemResponseBody.Module?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Module") && dict["Module"] != nil {
            var model = QueryDetailItemResponseBody.Module()
            model.fromMap(dict["Module"] as! [String: Any])
            self.module = model
        }
    }
}

public class QueryDetailItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDetailItemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryDetailItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryRemainResourcesRequest : Tea.TeaModel {
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
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizType") && dict["BizType"] != nil {
            self.bizType = dict["BizType"] as! String
        }
    }
}

public class QueryRemainResourcesResponseBody : Tea.TeaModel {
    public var data: Int64?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryRemainResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRemainResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryRemainResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefuseSupplementRequest : Tea.TeaModel {
    public var supplementId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.supplementId != nil {
            map["SupplementId"] = self.supplementId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SupplementId") && dict["SupplementId"] != nil {
            self.supplementId = dict["SupplementId"] as! Int64
        }
    }
}

public class RefuseSupplementResponseBody : Tea.TeaModel {
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

public class RefuseSupplementResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefuseSupplementResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RefuseSupplementResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RejectExpertSolutionRequest : Tea.TeaModel {
    public var bizId: String?

    public var note: String?

    public override init() {
        super.init()
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
        if self.note != nil {
            map["Note"] = self.note!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("Note") && dict["Note"] != nil {
            self.note = dict["Note"] as! String
        }
    }
}

public class RejectExpertSolutionResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RejectExpertSolutionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RejectExpertSolutionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RejectExpertSolutionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveApplicantRequest : Tea.TeaModel {
    public var applicantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicantId != nil {
            map["ApplicantId"] = self.applicantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicantId") && dict["ApplicantId"] != nil {
            self.applicantId = dict["ApplicantId"] as! Int64
        }
    }
}

public class RemoveApplicantResponseBody : Tea.TeaModel {
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

public class RemoveApplicantResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveApplicantResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RemoveApplicantResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveSearchConditionRequest : Tea.TeaModel {
    public var conditionContent: String?

    public var sessionId: String?

    public var tagName: String?

    public var type: Int32?

    public var umid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conditionContent != nil {
            map["ConditionContent"] = self.conditionContent!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.umid != nil {
            map["Umid"] = self.umid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConditionContent") && dict["ConditionContent"] != nil {
            self.conditionContent = dict["ConditionContent"] as! String
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TagName") && dict["TagName"] != nil {
            self.tagName = dict["TagName"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! Int32
        }
        if dict.keys.contains("Umid") && dict["Umid"] != nil {
            self.umid = dict["Umid"] as! String
        }
    }
}

public class SaveSearchConditionResponseBody : Tea.TeaModel {
    public var code: String?

    public var conditionContent: String?

    public var conditionId: Int64?

    public var message: String?

    public var requestId: String?

    public var sessionId: String?

    public var success: Bool?

    public var tagName: String?

    public var type: Int32?

    public var umid: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.conditionContent != nil {
            map["ConditionContent"] = self.conditionContent!
        }
        if self.conditionId != nil {
            map["ConditionId"] = self.conditionId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.umid != nil {
            map["Umid"] = self.umid!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ConditionContent") && dict["ConditionContent"] != nil {
            self.conditionContent = dict["ConditionContent"] as! String
        }
        if dict.keys.contains("ConditionId") && dict["ConditionId"] != nil {
            self.conditionId = dict["ConditionId"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TagName") && dict["TagName"] != nil {
            self.tagName = dict["TagName"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! Int32
        }
        if dict.keys.contains("Umid") && dict["Umid"] != nil {
            self.umid = dict["Umid"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! Int64
        }
    }
}

public class SaveSearchConditionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveSearchConditionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SaveSearchConditionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveTemporaryApplicantRequest : Tea.TeaModel {
    public var address: String?

    public var applicantId: Int64?

    public var businessLicenceOssKey: String?

    public var cardNumber: String?

    public var city: String?

    public var completeApplicant: Bool?

    public var contactAddress: String?

    public var contactCity: String?

    public var contactCounty: String?

    public var contactDistrict: String?

    public var contactEmail: String?

    public var contactName: String?

    public var contactNumber: String?

    public var contactProvince: String?

    public var contactZipCode: String?

    public var country: String?

    public var EAddress: String?

    public var EName: String?

    public var idCardOssKey: String?

    public var legalNoticeOssKey: String?

    public var loaOssKey: String?

    public var name: String?

    public var passportOssKey: String?

    public var principalName: Int32?

    public var province: String?

    public var region: String?

    public var town: String?

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
        if self.applicantId != nil {
            map["ApplicantId"] = self.applicantId!
        }
        if self.businessLicenceOssKey != nil {
            map["BusinessLicenceOssKey"] = self.businessLicenceOssKey!
        }
        if self.cardNumber != nil {
            map["CardNumber"] = self.cardNumber!
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.completeApplicant != nil {
            map["CompleteApplicant"] = self.completeApplicant!
        }
        if self.contactAddress != nil {
            map["ContactAddress"] = self.contactAddress!
        }
        if self.contactCity != nil {
            map["ContactCity"] = self.contactCity!
        }
        if self.contactCounty != nil {
            map["ContactCounty"] = self.contactCounty!
        }
        if self.contactDistrict != nil {
            map["ContactDistrict"] = self.contactDistrict!
        }
        if self.contactEmail != nil {
            map["ContactEmail"] = self.contactEmail!
        }
        if self.contactName != nil {
            map["ContactName"] = self.contactName!
        }
        if self.contactNumber != nil {
            map["ContactNumber"] = self.contactNumber!
        }
        if self.contactProvince != nil {
            map["ContactProvince"] = self.contactProvince!
        }
        if self.contactZipCode != nil {
            map["ContactZipCode"] = self.contactZipCode!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.EAddress != nil {
            map["EAddress"] = self.EAddress!
        }
        if self.EName != nil {
            map["EName"] = self.EName!
        }
        if self.idCardOssKey != nil {
            map["IdCardOssKey"] = self.idCardOssKey!
        }
        if self.legalNoticeOssKey != nil {
            map["LegalNoticeOssKey"] = self.legalNoticeOssKey!
        }
        if self.loaOssKey != nil {
            map["LoaOssKey"] = self.loaOssKey!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.passportOssKey != nil {
            map["PassportOssKey"] = self.passportOssKey!
        }
        if self.principalName != nil {
            map["PrincipalName"] = self.principalName!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.town != nil {
            map["Town"] = self.town!
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
        if dict.keys.contains("ApplicantId") && dict["ApplicantId"] != nil {
            self.applicantId = dict["ApplicantId"] as! Int64
        }
        if dict.keys.contains("BusinessLicenceOssKey") && dict["BusinessLicenceOssKey"] != nil {
            self.businessLicenceOssKey = dict["BusinessLicenceOssKey"] as! String
        }
        if dict.keys.contains("CardNumber") && dict["CardNumber"] != nil {
            self.cardNumber = dict["CardNumber"] as! String
        }
        if dict.keys.contains("City") && dict["City"] != nil {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("CompleteApplicant") && dict["CompleteApplicant"] != nil {
            self.completeApplicant = dict["CompleteApplicant"] as! Bool
        }
        if dict.keys.contains("ContactAddress") && dict["ContactAddress"] != nil {
            self.contactAddress = dict["ContactAddress"] as! String
        }
        if dict.keys.contains("ContactCity") && dict["ContactCity"] != nil {
            self.contactCity = dict["ContactCity"] as! String
        }
        if dict.keys.contains("ContactCounty") && dict["ContactCounty"] != nil {
            self.contactCounty = dict["ContactCounty"] as! String
        }
        if dict.keys.contains("ContactDistrict") && dict["ContactDistrict"] != nil {
            self.contactDistrict = dict["ContactDistrict"] as! String
        }
        if dict.keys.contains("ContactEmail") && dict["ContactEmail"] != nil {
            self.contactEmail = dict["ContactEmail"] as! String
        }
        if dict.keys.contains("ContactName") && dict["ContactName"] != nil {
            self.contactName = dict["ContactName"] as! String
        }
        if dict.keys.contains("ContactNumber") && dict["ContactNumber"] != nil {
            self.contactNumber = dict["ContactNumber"] as! String
        }
        if dict.keys.contains("ContactProvince") && dict["ContactProvince"] != nil {
            self.contactProvince = dict["ContactProvince"] as! String
        }
        if dict.keys.contains("ContactZipCode") && dict["ContactZipCode"] != nil {
            self.contactZipCode = dict["ContactZipCode"] as! String
        }
        if dict.keys.contains("Country") && dict["Country"] != nil {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("EAddress") && dict["EAddress"] != nil {
            self.EAddress = dict["EAddress"] as! String
        }
        if dict.keys.contains("EName") && dict["EName"] != nil {
            self.EName = dict["EName"] as! String
        }
        if dict.keys.contains("IdCardOssKey") && dict["IdCardOssKey"] != nil {
            self.idCardOssKey = dict["IdCardOssKey"] as! String
        }
        if dict.keys.contains("LegalNoticeOssKey") && dict["LegalNoticeOssKey"] != nil {
            self.legalNoticeOssKey = dict["LegalNoticeOssKey"] as! String
        }
        if dict.keys.contains("LoaOssKey") && dict["LoaOssKey"] != nil {
            self.loaOssKey = dict["LoaOssKey"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PassportOssKey") && dict["PassportOssKey"] != nil {
            self.passportOssKey = dict["PassportOssKey"] as! String
        }
        if dict.keys.contains("PrincipalName") && dict["PrincipalName"] != nil {
            self.principalName = dict["PrincipalName"] as! Int32
        }
        if dict.keys.contains("Province") && dict["Province"] != nil {
            self.province = dict["Province"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("Town") && dict["Town"] != nil {
            self.town = dict["Town"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class SaveTemporaryApplicantResponseBody : Tea.TeaModel {
    public var applicantId: Int64?

    public var errorCode: String?

    public var errorMessage: String?

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
        if self.applicantId != nil {
            map["ApplicantId"] = self.applicantId!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if dict.keys.contains("ApplicantId") && dict["ApplicantId"] != nil {
            self.applicantId = dict["ApplicantId"] as! Int64
        }
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SaveTemporaryApplicantResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveTemporaryApplicantResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SaveTemporaryApplicantResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchItemsRequest : Tea.TeaModel {
    public var excludedTags: String?

    public var excludedUids: String?

    public var feedsType: Bool?

    public var intCls: String?

    public var keywords: String?

    public var mock: Bool?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var priceLeft: String?

    public var priceRight: String?

    public var products: String?

    public var registerNumber: String?

    public var sort: String?

    public var sortType: Int32?

    public var tags: String?

    public var trademarkNameLength: Int32?

    public var trademarkNameType: String?

    public var umId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.excludedTags != nil {
            map["ExcludedTags"] = self.excludedTags!
        }
        if self.excludedUids != nil {
            map["ExcludedUids"] = self.excludedUids!
        }
        if self.feedsType != nil {
            map["FeedsType"] = self.feedsType!
        }
        if self.intCls != nil {
            map["IntCls"] = self.intCls!
        }
        if self.keywords != nil {
            map["Keywords"] = self.keywords!
        }
        if self.mock != nil {
            map["Mock"] = self.mock!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.priceLeft != nil {
            map["PriceLeft"] = self.priceLeft!
        }
        if self.priceRight != nil {
            map["PriceRight"] = self.priceRight!
        }
        if self.products != nil {
            map["Products"] = self.products!
        }
        if self.registerNumber != nil {
            map["RegisterNumber"] = self.registerNumber!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.sortType != nil {
            map["SortType"] = self.sortType!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.trademarkNameLength != nil {
            map["TrademarkNameLength"] = self.trademarkNameLength!
        }
        if self.trademarkNameType != nil {
            map["TrademarkNameType"] = self.trademarkNameType!
        }
        if self.umId != nil {
            map["UmId"] = self.umId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExcludedTags") && dict["ExcludedTags"] != nil {
            self.excludedTags = dict["ExcludedTags"] as! String
        }
        if dict.keys.contains("ExcludedUids") && dict["ExcludedUids"] != nil {
            self.excludedUids = dict["ExcludedUids"] as! String
        }
        if dict.keys.contains("FeedsType") && dict["FeedsType"] != nil {
            self.feedsType = dict["FeedsType"] as! Bool
        }
        if dict.keys.contains("IntCls") && dict["IntCls"] != nil {
            self.intCls = dict["IntCls"] as! String
        }
        if dict.keys.contains("Keywords") && dict["Keywords"] != nil {
            self.keywords = dict["Keywords"] as! String
        }
        if dict.keys.contains("Mock") && dict["Mock"] != nil {
            self.mock = dict["Mock"] as! Bool
        }
        if dict.keys.contains("PageIndex") && dict["PageIndex"] != nil {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PriceLeft") && dict["PriceLeft"] != nil {
            self.priceLeft = dict["PriceLeft"] as! String
        }
        if dict.keys.contains("PriceRight") && dict["PriceRight"] != nil {
            self.priceRight = dict["PriceRight"] as! String
        }
        if dict.keys.contains("Products") && dict["Products"] != nil {
            self.products = dict["Products"] as! String
        }
        if dict.keys.contains("RegisterNumber") && dict["RegisterNumber"] != nil {
            self.registerNumber = dict["RegisterNumber"] as! String
        }
        if dict.keys.contains("Sort") && dict["Sort"] != nil {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("SortType") && dict["SortType"] != nil {
            self.sortType = dict["SortType"] as! Int32
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! String
        }
        if dict.keys.contains("TrademarkNameLength") && dict["TrademarkNameLength"] != nil {
            self.trademarkNameLength = dict["TrademarkNameLength"] as! Int32
        }
        if dict.keys.contains("TrademarkNameType") && dict["TrademarkNameType"] != nil {
            self.trademarkNameType = dict["TrademarkNameType"] as! String
        }
        if dict.keys.contains("UmId") && dict["UmId"] != nil {
            self.umId = dict["UmId"] as! String
        }
    }
}

public class SearchItemsResponseBody : Tea.TeaModel {
    public class Module : Tea.TeaModel {
        public class Date : Tea.TeaModel {
            public class Item : Tea.TeaModel {
                public var detailViewObjectSourceDatum: String?

                public var detailViewObjectSourceType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.detailViewObjectSourceDatum != nil {
                        map["DetailViewObjectSourceDatum"] = self.detailViewObjectSourceDatum!
                    }
                    if self.detailViewObjectSourceType != nil {
                        map["DetailViewObjectSourceType"] = self.detailViewObjectSourceType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DetailViewObjectSourceDatum") && dict["DetailViewObjectSourceDatum"] != nil {
                        self.detailViewObjectSourceDatum = dict["DetailViewObjectSourceDatum"] as! String
                    }
                    if dict.keys.contains("DetailViewObjectSourceType") && dict["DetailViewObjectSourceType"] != nil {
                        self.detailViewObjectSourceType = dict["DetailViewObjectSourceType"] as! String
                    }
                }
            }
            public var item: [SearchItemsResponseBody.Module.Date.Item]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.item != nil {
                    var tmp : [Any] = []
                    for k in self.item! {
                        tmp.append(k.toMap())
                    }
                    map["item"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("item") && dict["item"] != nil {
                    var tmp : [SearchItemsResponseBody.Module.Date.Item] = []
                    for v in dict["item"] as! [Any] {
                        var model = SearchItemsResponseBody.Module.Date.Item()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.item = tmp
                }
            }
        }
        public var currentPageNum: Int32?

        public var date: SearchItemsResponseBody.Module.Date?

        public var pageSize: Int32?

        public var totalItemNum: Int32?

        public var totalPageNum: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.date?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentPageNum != nil {
                map["CurrentPageNum"] = self.currentPageNum!
            }
            if self.date != nil {
                map["Date"] = self.date?.toMap()
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalItemNum != nil {
                map["TotalItemNum"] = self.totalItemNum!
            }
            if self.totalPageNum != nil {
                map["TotalPageNum"] = self.totalPageNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurrentPageNum") && dict["CurrentPageNum"] != nil {
                self.currentPageNum = dict["CurrentPageNum"] as! Int32
            }
            if dict.keys.contains("Date") && dict["Date"] != nil {
                var model = SearchItemsResponseBody.Module.Date()
                model.fromMap(dict["Date"] as! [String: Any])
                self.date = model
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalItemNum") && dict["TotalItemNum"] != nil {
                self.totalItemNum = dict["TotalItemNum"] as! Int32
            }
            if dict.keys.contains("TotalPageNum") && dict["TotalPageNum"] != nil {
                self.totalPageNum = dict["TotalPageNum"] as! Int32
            }
        }
    }
    public var module: SearchItemsResponseBody.Module?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.module?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.module != nil {
            map["Module"] = self.module?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Module") && dict["Module"] != nil {
            var model = SearchItemsResponseBody.Module()
            model.fromMap(dict["Module"] as! [String: Any])
            self.module = model
        }
    }
}

public class SearchItemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchItemsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SearchItemsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchSimilarityRequest : Tea.TeaModel {
    public class NameUriList : Tea.TeaModel {
        public var name: String?

        public var uri: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.uri != nil {
                map["Uri"] = self.uri!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Uri") && dict["Uri"] != nil {
                self.uri = dict["Uri"] as! String
            }
        }
    }
    public var classifications: [String: Any]?

    public var limit: Int32?

    public var nameUriList: [SearchSimilarityRequest.NameUriList]?

    public var searchType: String?

    public var showDetail: Bool?

    public var similarGroups: [String: Any]?

    public var sorter: String?

    public var umid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.classifications != nil {
            map["Classifications"] = self.classifications!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nameUriList != nil {
            var tmp : [Any] = []
            for k in self.nameUriList! {
                tmp.append(k.toMap())
            }
            map["NameUriList"] = tmp
        }
        if self.searchType != nil {
            map["SearchType"] = self.searchType!
        }
        if self.showDetail != nil {
            map["ShowDetail"] = self.showDetail!
        }
        if self.similarGroups != nil {
            map["SimilarGroups"] = self.similarGroups!
        }
        if self.sorter != nil {
            map["Sorter"] = self.sorter!
        }
        if self.umid != nil {
            map["Umid"] = self.umid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Classifications") && dict["Classifications"] != nil {
            self.classifications = dict["Classifications"] as! [String: Any]
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("NameUriList") && dict["NameUriList"] != nil {
            var tmp : [SearchSimilarityRequest.NameUriList] = []
            for v in dict["NameUriList"] as! [Any] {
                var model = SearchSimilarityRequest.NameUriList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.nameUriList = tmp
        }
        if dict.keys.contains("SearchType") && dict["SearchType"] != nil {
            self.searchType = dict["SearchType"] as! String
        }
        if dict.keys.contains("ShowDetail") && dict["ShowDetail"] != nil {
            self.showDetail = dict["ShowDetail"] as! Bool
        }
        if dict.keys.contains("SimilarGroups") && dict["SimilarGroups"] != nil {
            self.similarGroups = dict["SimilarGroups"] as! [String: Any]
        }
        if dict.keys.contains("Sorter") && dict["Sorter"] != nil {
            self.sorter = dict["Sorter"] as! String
        }
        if dict.keys.contains("Umid") && dict["Umid"] != nil {
            self.umid = dict["Umid"] as! String
        }
    }
}

public class SearchSimilarityShrinkRequest : Tea.TeaModel {
    public class NameUriList : Tea.TeaModel {
        public var name: String?

        public var uri: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.uri != nil {
                map["Uri"] = self.uri!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Uri") && dict["Uri"] != nil {
                self.uri = dict["Uri"] as! String
            }
        }
    }
    public var classificationsShrink: String?

    public var limit: Int32?

    public var nameUriList: [SearchSimilarityShrinkRequest.NameUriList]?

    public var searchType: String?

    public var showDetail: Bool?

    public var similarGroupsShrink: String?

    public var sorter: String?

    public var umid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.classificationsShrink != nil {
            map["Classifications"] = self.classificationsShrink!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nameUriList != nil {
            var tmp : [Any] = []
            for k in self.nameUriList! {
                tmp.append(k.toMap())
            }
            map["NameUriList"] = tmp
        }
        if self.searchType != nil {
            map["SearchType"] = self.searchType!
        }
        if self.showDetail != nil {
            map["ShowDetail"] = self.showDetail!
        }
        if self.similarGroupsShrink != nil {
            map["SimilarGroups"] = self.similarGroupsShrink!
        }
        if self.sorter != nil {
            map["Sorter"] = self.sorter!
        }
        if self.umid != nil {
            map["Umid"] = self.umid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Classifications") && dict["Classifications"] != nil {
            self.classificationsShrink = dict["Classifications"] as! String
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("NameUriList") && dict["NameUriList"] != nil {
            var tmp : [SearchSimilarityShrinkRequest.NameUriList] = []
            for v in dict["NameUriList"] as! [Any] {
                var model = SearchSimilarityShrinkRequest.NameUriList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.nameUriList = tmp
        }
        if dict.keys.contains("SearchType") && dict["SearchType"] != nil {
            self.searchType = dict["SearchType"] as! String
        }
        if dict.keys.contains("ShowDetail") && dict["ShowDetail"] != nil {
            self.showDetail = dict["ShowDetail"] as! Bool
        }
        if dict.keys.contains("SimilarGroups") && dict["SimilarGroups"] != nil {
            self.similarGroupsShrink = dict["SimilarGroups"] as! String
        }
        if dict.keys.contains("Sorter") && dict["Sorter"] != nil {
            self.sorter = dict["Sorter"] as! String
        }
        if dict.keys.contains("Umid") && dict["Umid"] != nil {
            self.umid = dict["Umid"] as! String
        }
    }
}

public class SearchSimilarityResponseBody : Tea.TeaModel {
    public class DataList : Tea.TeaModel {
        public class ClassificationSimilarityList : Tea.TeaModel {
            public class SimilarGroupList : Tea.TeaModel {
                public class DetailList : Tea.TeaModel {
                    public var code: String?

                    public var name: String?

                    public var rate: Int32?

                    public var tmNumber: String?

                    public var uid: String?

                    public var uri: String?

                    public override init() {
                        super.init()
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
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.rate != nil {
                            map["Rate"] = self.rate!
                        }
                        if self.tmNumber != nil {
                            map["TmNumber"] = self.tmNumber!
                        }
                        if self.uid != nil {
                            map["Uid"] = self.uid!
                        }
                        if self.uri != nil {
                            map["Uri"] = self.uri!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Code") && dict["Code"] != nil {
                            self.code = dict["Code"] as! String
                        }
                        if dict.keys.contains("Name") && dict["Name"] != nil {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("Rate") && dict["Rate"] != nil {
                            self.rate = dict["Rate"] as! Int32
                        }
                        if dict.keys.contains("TmNumber") && dict["TmNumber"] != nil {
                            self.tmNumber = dict["TmNumber"] as! String
                        }
                        if dict.keys.contains("Uid") && dict["Uid"] != nil {
                            self.uid = dict["Uid"] as! String
                        }
                        if dict.keys.contains("Uri") && dict["Uri"] != nil {
                            self.uri = dict["Uri"] as! String
                        }
                    }
                }
                public var detailList: [SearchSimilarityResponseBody.DataList.ClassificationSimilarityList.SimilarGroupList.DetailList]?

                public var rate: Int32?

                public var similarGroup: String?

                public var similarGroupName: String?

                public override init() {
                    super.init()
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
                        var tmp : [Any] = []
                        for k in self.detailList! {
                            tmp.append(k.toMap())
                        }
                        map["DetailList"] = tmp
                    }
                    if self.rate != nil {
                        map["Rate"] = self.rate!
                    }
                    if self.similarGroup != nil {
                        map["SimilarGroup"] = self.similarGroup!
                    }
                    if self.similarGroupName != nil {
                        map["SimilarGroupName"] = self.similarGroupName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DetailList") && dict["DetailList"] != nil {
                        var tmp : [SearchSimilarityResponseBody.DataList.ClassificationSimilarityList.SimilarGroupList.DetailList] = []
                        for v in dict["DetailList"] as! [Any] {
                            var model = SearchSimilarityResponseBody.DataList.ClassificationSimilarityList.SimilarGroupList.DetailList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.detailList = tmp
                    }
                    if dict.keys.contains("Rate") && dict["Rate"] != nil {
                        self.rate = dict["Rate"] as! Int32
                    }
                    if dict.keys.contains("SimilarGroup") && dict["SimilarGroup"] != nil {
                        self.similarGroup = dict["SimilarGroup"] as! String
                    }
                    if dict.keys.contains("SimilarGroupName") && dict["SimilarGroupName"] != nil {
                        self.similarGroupName = dict["SimilarGroupName"] as! String
                    }
                }
            }
            public var classification: Int32?

            public var classificationName: String?

            public var rate: Int32?

            public var similarGroupList: [SearchSimilarityResponseBody.DataList.ClassificationSimilarityList.SimilarGroupList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.classification != nil {
                    map["Classification"] = self.classification!
                }
                if self.classificationName != nil {
                    map["ClassificationName"] = self.classificationName!
                }
                if self.rate != nil {
                    map["Rate"] = self.rate!
                }
                if self.similarGroupList != nil {
                    var tmp : [Any] = []
                    for k in self.similarGroupList! {
                        tmp.append(k.toMap())
                    }
                    map["SimilarGroupList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Classification") && dict["Classification"] != nil {
                    self.classification = dict["Classification"] as! Int32
                }
                if dict.keys.contains("ClassificationName") && dict["ClassificationName"] != nil {
                    self.classificationName = dict["ClassificationName"] as! String
                }
                if dict.keys.contains("Rate") && dict["Rate"] != nil {
                    self.rate = dict["Rate"] as! Int32
                }
                if dict.keys.contains("SimilarGroupList") && dict["SimilarGroupList"] != nil {
                    var tmp : [SearchSimilarityResponseBody.DataList.ClassificationSimilarityList.SimilarGroupList] = []
                    for v in dict["SimilarGroupList"] as! [Any] {
                        var model = SearchSimilarityResponseBody.DataList.ClassificationSimilarityList.SimilarGroupList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.similarGroupList = tmp
                }
            }
        }
        public var classificationSimilarityList: [SearchSimilarityResponseBody.DataList.ClassificationSimilarityList]?

        public var name: String?

        public var uri: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.classificationSimilarityList != nil {
                var tmp : [Any] = []
                for k in self.classificationSimilarityList! {
                    tmp.append(k.toMap())
                }
                map["ClassificationSimilarityList"] = tmp
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.uri != nil {
                map["Uri"] = self.uri!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClassificationSimilarityList") && dict["ClassificationSimilarityList"] != nil {
                var tmp : [SearchSimilarityResponseBody.DataList.ClassificationSimilarityList] = []
                for v in dict["ClassificationSimilarityList"] as! [Any] {
                    var model = SearchSimilarityResponseBody.DataList.ClassificationSimilarityList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.classificationSimilarityList = tmp
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Uri") && dict["Uri"] != nil {
                self.uri = dict["Uri"] as! String
            }
        }
    }
    public var dataList: [SearchSimilarityResponseBody.DataList]?

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
        if self.dataList != nil {
            var tmp : [Any] = []
            for k in self.dataList! {
                tmp.append(k.toMap())
            }
            map["DataList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataList") && dict["DataList"] != nil {
            var tmp : [SearchSimilarityResponseBody.DataList] = []
            for v in dict["DataList"] as! [Any] {
                var model = SearchSimilarityResponseBody.DataList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SearchSimilarityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchSimilarityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SearchSimilarityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchSimilarityListRequest : Tea.TeaModel {
    public var classifications: [String: Any]?

    public var name: String?

    public var orderId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var similarGroups: [String: Any]?

    public var status: Int32?

    public var successSearchType: String?

    public var umid: String?

    public var uri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.classifications != nil {
            map["Classifications"] = self.classifications!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.similarGroups != nil {
            map["SimilarGroups"] = self.similarGroups!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.successSearchType != nil {
            map["SuccessSearchType"] = self.successSearchType!
        }
        if self.umid != nil {
            map["Umid"] = self.umid!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Classifications") && dict["Classifications"] != nil {
            self.classifications = dict["Classifications"] as! [String: Any]
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SimilarGroups") && dict["SimilarGroups"] != nil {
            self.similarGroups = dict["SimilarGroups"] as! [String: Any]
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("SuccessSearchType") && dict["SuccessSearchType"] != nil {
            self.successSearchType = dict["SuccessSearchType"] as! String
        }
        if dict.keys.contains("Umid") && dict["Umid"] != nil {
            self.umid = dict["Umid"] as! String
        }
        if dict.keys.contains("Uri") && dict["Uri"] != nil {
            self.uri = dict["Uri"] as! String
        }
    }
}

public class SearchSimilarityListShrinkRequest : Tea.TeaModel {
    public var classificationsShrink: String?

    public var name: String?

    public var orderId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var similarGroupsShrink: String?

    public var status: Int32?

    public var successSearchType: String?

    public var umid: String?

    public var uri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.classificationsShrink != nil {
            map["Classifications"] = self.classificationsShrink!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.similarGroupsShrink != nil {
            map["SimilarGroups"] = self.similarGroupsShrink!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.successSearchType != nil {
            map["SuccessSearchType"] = self.successSearchType!
        }
        if self.umid != nil {
            map["Umid"] = self.umid!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Classifications") && dict["Classifications"] != nil {
            self.classificationsShrink = dict["Classifications"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SimilarGroups") && dict["SimilarGroups"] != nil {
            self.similarGroupsShrink = dict["SimilarGroups"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("SuccessSearchType") && dict["SuccessSearchType"] != nil {
            self.successSearchType = dict["SuccessSearchType"] as! String
        }
        if dict.keys.contains("Umid") && dict["Umid"] != nil {
            self.umid = dict["Umid"] as! String
        }
        if dict.keys.contains("Uri") && dict["Uri"] != nil {
            self.uri = dict["Uri"] as! String
        }
    }
}

public class SearchSimilarityListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var applyDate: String?

        public var classification: String?

        public var exclusiveDateLimit: String?

        public var id: Int64?

        public var image: String?

        public var lastProcedureStatus: String?

        public var name: String?

        public var onSale: Int32?

        public var ownerAddress: String?

        public var ownerEnAddress: String?

        public var ownerEnName: String?

        public var ownerName: String?

        public var preAnnDate: String?

        public var preAnnNum: String?

        public var product: String?

        public var productDesc: String?

        public var regAnnDate: String?

        public var regAnnNum: String?

        public var registrationNumber: String?

        public var share: String?

        public var status: String?

        public var uid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applyDate != nil {
                map["ApplyDate"] = self.applyDate!
            }
            if self.classification != nil {
                map["Classification"] = self.classification!
            }
            if self.exclusiveDateLimit != nil {
                map["ExclusiveDateLimit"] = self.exclusiveDateLimit!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.image != nil {
                map["Image"] = self.image!
            }
            if self.lastProcedureStatus != nil {
                map["LastProcedureStatus"] = self.lastProcedureStatus!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.onSale != nil {
                map["OnSale"] = self.onSale!
            }
            if self.ownerAddress != nil {
                map["OwnerAddress"] = self.ownerAddress!
            }
            if self.ownerEnAddress != nil {
                map["OwnerEnAddress"] = self.ownerEnAddress!
            }
            if self.ownerEnName != nil {
                map["OwnerEnName"] = self.ownerEnName!
            }
            if self.ownerName != nil {
                map["OwnerName"] = self.ownerName!
            }
            if self.preAnnDate != nil {
                map["PreAnnDate"] = self.preAnnDate!
            }
            if self.preAnnNum != nil {
                map["PreAnnNum"] = self.preAnnNum!
            }
            if self.product != nil {
                map["Product"] = self.product!
            }
            if self.productDesc != nil {
                map["ProductDesc"] = self.productDesc!
            }
            if self.regAnnDate != nil {
                map["RegAnnDate"] = self.regAnnDate!
            }
            if self.regAnnNum != nil {
                map["RegAnnNum"] = self.regAnnNum!
            }
            if self.registrationNumber != nil {
                map["RegistrationNumber"] = self.registrationNumber!
            }
            if self.share != nil {
                map["Share"] = self.share!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.uid != nil {
                map["Uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplyDate") && dict["ApplyDate"] != nil {
                self.applyDate = dict["ApplyDate"] as! String
            }
            if dict.keys.contains("Classification") && dict["Classification"] != nil {
                self.classification = dict["Classification"] as! String
            }
            if dict.keys.contains("ExclusiveDateLimit") && dict["ExclusiveDateLimit"] != nil {
                self.exclusiveDateLimit = dict["ExclusiveDateLimit"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Image") && dict["Image"] != nil {
                self.image = dict["Image"] as! String
            }
            if dict.keys.contains("LastProcedureStatus") && dict["LastProcedureStatus"] != nil {
                self.lastProcedureStatus = dict["LastProcedureStatus"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OnSale") && dict["OnSale"] != nil {
                self.onSale = dict["OnSale"] as! Int32
            }
            if dict.keys.contains("OwnerAddress") && dict["OwnerAddress"] != nil {
                self.ownerAddress = dict["OwnerAddress"] as! String
            }
            if dict.keys.contains("OwnerEnAddress") && dict["OwnerEnAddress"] != nil {
                self.ownerEnAddress = dict["OwnerEnAddress"] as! String
            }
            if dict.keys.contains("OwnerEnName") && dict["OwnerEnName"] != nil {
                self.ownerEnName = dict["OwnerEnName"] as! String
            }
            if dict.keys.contains("OwnerName") && dict["OwnerName"] != nil {
                self.ownerName = dict["OwnerName"] as! String
            }
            if dict.keys.contains("PreAnnDate") && dict["PreAnnDate"] != nil {
                self.preAnnDate = dict["PreAnnDate"] as! String
            }
            if dict.keys.contains("PreAnnNum") && dict["PreAnnNum"] != nil {
                self.preAnnNum = dict["PreAnnNum"] as! String
            }
            if dict.keys.contains("Product") && dict["Product"] != nil {
                self.product = dict["Product"] as! String
            }
            if dict.keys.contains("ProductDesc") && dict["ProductDesc"] != nil {
                self.productDesc = dict["ProductDesc"] as! String
            }
            if dict.keys.contains("RegAnnDate") && dict["RegAnnDate"] != nil {
                self.regAnnDate = dict["RegAnnDate"] as! String
            }
            if dict.keys.contains("RegAnnNum") && dict["RegAnnNum"] != nil {
                self.regAnnNum = dict["RegAnnNum"] as! String
            }
            if dict.keys.contains("RegistrationNumber") && dict["RegistrationNumber"] != nil {
                self.registrationNumber = dict["RegistrationNumber"] as! String
            }
            if dict.keys.contains("Share") && dict["Share"] != nil {
                self.share = dict["Share"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Uid") && dict["Uid"] != nil {
                self.uid = dict["Uid"] as! String
            }
        }
    }
    public var data: [SearchSimilarityListResponseBody.Data]?

    public var pageNumber: Int32?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [SearchSimilarityListResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = SearchSimilarityListResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class SearchSimilarityListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SearchSimilarityListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SearchSimilarityListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendMessageToUserRequest : Tea.TeaModel {
    public var receiverNickName: String?

    public var senderNickName: String?

    public var templateData: [String: Any]?

    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.receiverNickName != nil {
            map["ReceiverNickName"] = self.receiverNickName!
        }
        if self.senderNickName != nil {
            map["SenderNickName"] = self.senderNickName!
        }
        if self.templateData != nil {
            map["TemplateData"] = self.templateData!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ReceiverNickName") && dict["ReceiverNickName"] != nil {
            self.receiverNickName = dict["ReceiverNickName"] as! String
        }
        if dict.keys.contains("SenderNickName") && dict["SenderNickName"] != nil {
            self.senderNickName = dict["SenderNickName"] as! String
        }
        if dict.keys.contains("TemplateData") && dict["TemplateData"] != nil {
            self.templateData = dict["TemplateData"] as! [String: Any]
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class SendMessageToUserShrinkRequest : Tea.TeaModel {
    public var receiverNickName: String?

    public var senderNickName: String?

    public var templateDataShrink: String?

    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.receiverNickName != nil {
            map["ReceiverNickName"] = self.receiverNickName!
        }
        if self.senderNickName != nil {
            map["SenderNickName"] = self.senderNickName!
        }
        if self.templateDataShrink != nil {
            map["TemplateData"] = self.templateDataShrink!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ReceiverNickName") && dict["ReceiverNickName"] != nil {
            self.receiverNickName = dict["ReceiverNickName"] as! String
        }
        if dict.keys.contains("SenderNickName") && dict["SenderNickName"] != nil {
            self.senderNickName = dict["SenderNickName"] as! String
        }
        if dict.keys.contains("TemplateData") && dict["TemplateData"] != nil {
            self.templateDataShrink = dict["TemplateData"] as! String
        }
        if dict.keys.contains("TemplateId") && dict["TemplateId"] != nil {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class SendMessageToUserResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
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
        if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
            self.errorCode = dict["ErrorCode"] as! String
        }
        if dict.keys.contains("ErrorMessage") && dict["ErrorMessage"] != nil {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SendMessageToUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendMessageToUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SendMessageToUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitSupplementRequest : Tea.TeaModel {
    public var content: String?

    public var supplementId: Int64?

    public var userFiles: [String: Any]?

    public override init() {
        super.init()
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
        if self.supplementId != nil {
            map["SupplementId"] = self.supplementId!
        }
        if self.userFiles != nil {
            map["UserFiles"] = self.userFiles!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("SupplementId") && dict["SupplementId"] != nil {
            self.supplementId = dict["SupplementId"] as! Int64
        }
        if dict.keys.contains("UserFiles") && dict["UserFiles"] != nil {
            self.userFiles = dict["UserFiles"] as! [String: Any]
        }
    }
}

public class SubmitSupplementShrinkRequest : Tea.TeaModel {
    public var content: String?

    public var supplementId: Int64?

    public var userFilesShrink: String?

    public override init() {
        super.init()
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
        if self.supplementId != nil {
            map["SupplementId"] = self.supplementId!
        }
        if self.userFilesShrink != nil {
            map["UserFiles"] = self.userFilesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("SupplementId") && dict["SupplementId"] != nil {
            self.supplementId = dict["SupplementId"] as! Int64
        }
        if dict.keys.contains("UserFiles") && dict["UserFiles"] != nil {
            self.userFilesShrink = dict["UserFiles"] as! String
        }
    }
}

public class SubmitSupplementResponseBody : Tea.TeaModel {
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

public class SubmitSupplementResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitSupplementResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitSupplementResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateApplicantRequest : Tea.TeaModel {
    public var address: String?

    public var applicantId: Int64?

    public var applicantName: String?

    public var authorizationOssKey: String?

    public var businessLicenceOssKey: String?

    public var cardNumber: String?

    public var contactAddress: String?

    public var contactCity: String?

    public var contactCounty: String?

    public var contactDistrict: String?

    public var contactEmail: String?

    public var contactName: String?

    public var contactNumber: String?

    public var contactProvince: String?

    public var contactZipcode: String?

    public var EAddress: String?

    public var EName: String?

    public var idCardName: String?

    public var idCardNumber: String?

    public var idCardOssKey: String?

    public var legalNoticeOssKey: String?

    public var passportOssKey: String?

    public var personalType: Int64?

    public var province: String?

    public override init() {
        super.init()
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
        if self.applicantId != nil {
            map["ApplicantId"] = self.applicantId!
        }
        if self.applicantName != nil {
            map["ApplicantName"] = self.applicantName!
        }
        if self.authorizationOssKey != nil {
            map["AuthorizationOssKey"] = self.authorizationOssKey!
        }
        if self.businessLicenceOssKey != nil {
            map["BusinessLicenceOssKey"] = self.businessLicenceOssKey!
        }
        if self.cardNumber != nil {
            map["CardNumber"] = self.cardNumber!
        }
        if self.contactAddress != nil {
            map["ContactAddress"] = self.contactAddress!
        }
        if self.contactCity != nil {
            map["ContactCity"] = self.contactCity!
        }
        if self.contactCounty != nil {
            map["ContactCounty"] = self.contactCounty!
        }
        if self.contactDistrict != nil {
            map["ContactDistrict"] = self.contactDistrict!
        }
        if self.contactEmail != nil {
            map["ContactEmail"] = self.contactEmail!
        }
        if self.contactName != nil {
            map["ContactName"] = self.contactName!
        }
        if self.contactNumber != nil {
            map["ContactNumber"] = self.contactNumber!
        }
        if self.contactProvince != nil {
            map["ContactProvince"] = self.contactProvince!
        }
        if self.contactZipcode != nil {
            map["ContactZipcode"] = self.contactZipcode!
        }
        if self.EAddress != nil {
            map["EAddress"] = self.EAddress!
        }
        if self.EName != nil {
            map["EName"] = self.EName!
        }
        if self.idCardName != nil {
            map["IdCardName"] = self.idCardName!
        }
        if self.idCardNumber != nil {
            map["IdCardNumber"] = self.idCardNumber!
        }
        if self.idCardOssKey != nil {
            map["IdCardOssKey"] = self.idCardOssKey!
        }
        if self.legalNoticeOssKey != nil {
            map["LegalNoticeOssKey"] = self.legalNoticeOssKey!
        }
        if self.passportOssKey != nil {
            map["PassportOssKey"] = self.passportOssKey!
        }
        if self.personalType != nil {
            map["PersonalType"] = self.personalType!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") && dict["Address"] != nil {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("ApplicantId") && dict["ApplicantId"] != nil {
            self.applicantId = dict["ApplicantId"] as! Int64
        }
        if dict.keys.contains("ApplicantName") && dict["ApplicantName"] != nil {
            self.applicantName = dict["ApplicantName"] as! String
        }
        if dict.keys.contains("AuthorizationOssKey") && dict["AuthorizationOssKey"] != nil {
            self.authorizationOssKey = dict["AuthorizationOssKey"] as! String
        }
        if dict.keys.contains("BusinessLicenceOssKey") && dict["BusinessLicenceOssKey"] != nil {
            self.businessLicenceOssKey = dict["BusinessLicenceOssKey"] as! String
        }
        if dict.keys.contains("CardNumber") && dict["CardNumber"] != nil {
            self.cardNumber = dict["CardNumber"] as! String
        }
        if dict.keys.contains("ContactAddress") && dict["ContactAddress"] != nil {
            self.contactAddress = dict["ContactAddress"] as! String
        }
        if dict.keys.contains("ContactCity") && dict["ContactCity"] != nil {
            self.contactCity = dict["ContactCity"] as! String
        }
        if dict.keys.contains("ContactCounty") && dict["ContactCounty"] != nil {
            self.contactCounty = dict["ContactCounty"] as! String
        }
        if dict.keys.contains("ContactDistrict") && dict["ContactDistrict"] != nil {
            self.contactDistrict = dict["ContactDistrict"] as! String
        }
        if dict.keys.contains("ContactEmail") && dict["ContactEmail"] != nil {
            self.contactEmail = dict["ContactEmail"] as! String
        }
        if dict.keys.contains("ContactName") && dict["ContactName"] != nil {
            self.contactName = dict["ContactName"] as! String
        }
        if dict.keys.contains("ContactNumber") && dict["ContactNumber"] != nil {
            self.contactNumber = dict["ContactNumber"] as! String
        }
        if dict.keys.contains("ContactProvince") && dict["ContactProvince"] != nil {
            self.contactProvince = dict["ContactProvince"] as! String
        }
        if dict.keys.contains("ContactZipcode") && dict["ContactZipcode"] != nil {
            self.contactZipcode = dict["ContactZipcode"] as! String
        }
        if dict.keys.contains("EAddress") && dict["EAddress"] != nil {
            self.EAddress = dict["EAddress"] as! String
        }
        if dict.keys.contains("EName") && dict["EName"] != nil {
            self.EName = dict["EName"] as! String
        }
        if dict.keys.contains("IdCardName") && dict["IdCardName"] != nil {
            self.idCardName = dict["IdCardName"] as! String
        }
        if dict.keys.contains("IdCardNumber") && dict["IdCardNumber"] != nil {
            self.idCardNumber = dict["IdCardNumber"] as! String
        }
        if dict.keys.contains("IdCardOssKey") && dict["IdCardOssKey"] != nil {
            self.idCardOssKey = dict["IdCardOssKey"] as! String
        }
        if dict.keys.contains("LegalNoticeOssKey") && dict["LegalNoticeOssKey"] != nil {
            self.legalNoticeOssKey = dict["LegalNoticeOssKey"] as! String
        }
        if dict.keys.contains("PassportOssKey") && dict["PassportOssKey"] != nil {
            self.passportOssKey = dict["PassportOssKey"] as! String
        }
        if dict.keys.contains("PersonalType") && dict["PersonalType"] != nil {
            self.personalType = dict["PersonalType"] as! Int64
        }
        if dict.keys.contains("Province") && dict["Province"] != nil {
            self.province = dict["Province"] as! String
        }
    }
}

public class UpdateApplicantResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class UpdateApplicantResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateApplicantResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateApplicantResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
