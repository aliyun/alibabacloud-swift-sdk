import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class EntElementVerifyRequest : Tea.TeaModel {
    public var entName: String?

    public var infoVerifyType: String?

    public var legalPersonCertNo: String?

    public var legalPersonName: String?

    public var licenseNo: String?

    public var merchantBizId: String?

    public var merchantUserId: String?

    public var sceneCode: String?

    public var userAuthorization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entName != nil {
            map["EntName"] = self.entName!
        }
        if self.infoVerifyType != nil {
            map["InfoVerifyType"] = self.infoVerifyType!
        }
        if self.legalPersonCertNo != nil {
            map["LegalPersonCertNo"] = self.legalPersonCertNo!
        }
        if self.legalPersonName != nil {
            map["LegalPersonName"] = self.legalPersonName!
        }
        if self.licenseNo != nil {
            map["LicenseNo"] = self.licenseNo!
        }
        if self.merchantBizId != nil {
            map["MerchantBizId"] = self.merchantBizId!
        }
        if self.merchantUserId != nil {
            map["MerchantUserId"] = self.merchantUserId!
        }
        if self.sceneCode != nil {
            map["SceneCode"] = self.sceneCode!
        }
        if self.userAuthorization != nil {
            map["UserAuthorization"] = self.userAuthorization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntName") {
            self.entName = dict["EntName"] as! String
        }
        if dict.keys.contains("InfoVerifyType") {
            self.infoVerifyType = dict["InfoVerifyType"] as! String
        }
        if dict.keys.contains("LegalPersonCertNo") {
            self.legalPersonCertNo = dict["LegalPersonCertNo"] as! String
        }
        if dict.keys.contains("LegalPersonName") {
            self.legalPersonName = dict["LegalPersonName"] as! String
        }
        if dict.keys.contains("LicenseNo") {
            self.licenseNo = dict["LicenseNo"] as! String
        }
        if dict.keys.contains("MerchantBizId") {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("MerchantUserId") {
            self.merchantUserId = dict["MerchantUserId"] as! String
        }
        if dict.keys.contains("SceneCode") {
            self.sceneCode = dict["SceneCode"] as! String
        }
        if dict.keys.contains("UserAuthorization") {
            self.userAuthorization = dict["UserAuthorization"] as! String
        }
    }
}

public class EntElementVerifyResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var bizCode: String?

        public var openTime: String?

        public var reasonCode: String?

        public var reasonDetail: String?

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
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            if self.openTime != nil {
                map["OpenTime"] = self.openTime!
            }
            if self.reasonCode != nil {
                map["ReasonCode"] = self.reasonCode!
            }
            if self.reasonDetail != nil {
                map["ReasonDetail"] = self.reasonDetail!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizCode") {
                self.bizCode = dict["BizCode"] as! String
            }
            if dict.keys.contains("OpenTime") {
                self.openTime = dict["OpenTime"] as! String
            }
            if dict.keys.contains("ReasonCode") {
                self.reasonCode = dict["ReasonCode"] as! String
            }
            if dict.keys.contains("ReasonDetail") {
                self.reasonDetail = dict["ReasonDetail"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: EntElementVerifyResponseBody.Result?

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
            var model = EntElementVerifyResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class EntElementVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EntElementVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EntElementVerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EntElementVerifyV2Request : Tea.TeaModel {
    public var entName: String?

    public var infoVerifyType: String?

    public var legalPersonCertNo: String?

    public var legalPersonName: String?

    public var licenseNo: String?

    public var merchantBizId: String?

    public var merchantUserId: String?

    public var sceneCode: String?

    public var userAuthorization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entName != nil {
            map["EntName"] = self.entName!
        }
        if self.infoVerifyType != nil {
            map["InfoVerifyType"] = self.infoVerifyType!
        }
        if self.legalPersonCertNo != nil {
            map["LegalPersonCertNo"] = self.legalPersonCertNo!
        }
        if self.legalPersonName != nil {
            map["LegalPersonName"] = self.legalPersonName!
        }
        if self.licenseNo != nil {
            map["LicenseNo"] = self.licenseNo!
        }
        if self.merchantBizId != nil {
            map["MerchantBizId"] = self.merchantBizId!
        }
        if self.merchantUserId != nil {
            map["MerchantUserId"] = self.merchantUserId!
        }
        if self.sceneCode != nil {
            map["SceneCode"] = self.sceneCode!
        }
        if self.userAuthorization != nil {
            map["UserAuthorization"] = self.userAuthorization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EntName") {
            self.entName = dict["EntName"] as! String
        }
        if dict.keys.contains("InfoVerifyType") {
            self.infoVerifyType = dict["InfoVerifyType"] as! String
        }
        if dict.keys.contains("LegalPersonCertNo") {
            self.legalPersonCertNo = dict["LegalPersonCertNo"] as! String
        }
        if dict.keys.contains("LegalPersonName") {
            self.legalPersonName = dict["LegalPersonName"] as! String
        }
        if dict.keys.contains("LicenseNo") {
            self.licenseNo = dict["LicenseNo"] as! String
        }
        if dict.keys.contains("MerchantBizId") {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("MerchantUserId") {
            self.merchantUserId = dict["MerchantUserId"] as! String
        }
        if dict.keys.contains("SceneCode") {
            self.sceneCode = dict["SceneCode"] as! String
        }
        if dict.keys.contains("UserAuthorization") {
            self.userAuthorization = dict["UserAuthorization"] as! String
        }
    }
}

public class EntElementVerifyV2ResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var bizCode: String?

        public var openTime: String?

        public var reasonDetail: String?

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
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            if self.openTime != nil {
                map["OpenTime"] = self.openTime!
            }
            if self.reasonDetail != nil {
                map["ReasonDetail"] = self.reasonDetail!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizCode") {
                self.bizCode = dict["BizCode"] as! String
            }
            if dict.keys.contains("OpenTime") {
                self.openTime = dict["OpenTime"] as! String
            }
            if dict.keys.contains("ReasonDetail") {
                self.reasonDetail = dict["ReasonDetail"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: EntElementVerifyV2ResponseBody.Result?

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
            var model = EntElementVerifyV2ResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class EntElementVerifyV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EntElementVerifyV2ResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EntElementVerifyV2ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EntRiskQueryRequest : Tea.TeaModel {
    public var merchantBizId: String?

    public var merchantUserId: String?

    public var paramType: String?

    public var paramValue: String?

    public var sceneCode: String?

    public var userAuthorization: String?

    public override init() {
        super.init()
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
        if self.merchantUserId != nil {
            map["MerchantUserId"] = self.merchantUserId!
        }
        if self.paramType != nil {
            map["ParamType"] = self.paramType!
        }
        if self.paramValue != nil {
            map["ParamValue"] = self.paramValue!
        }
        if self.sceneCode != nil {
            map["SceneCode"] = self.sceneCode!
        }
        if self.userAuthorization != nil {
            map["UserAuthorization"] = self.userAuthorization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MerchantBizId") {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("MerchantUserId") {
            self.merchantUserId = dict["MerchantUserId"] as! String
        }
        if dict.keys.contains("ParamType") {
            self.paramType = dict["ParamType"] as! String
        }
        if dict.keys.contains("ParamValue") {
            self.paramValue = dict["ParamValue"] as! String
        }
        if dict.keys.contains("SceneCode") {
            self.sceneCode = dict["SceneCode"] as! String
        }
        if dict.keys.contains("UserAuthorization") {
            self.userAuthorization = dict["UserAuthorization"] as! String
        }
    }
}

public class EntRiskQueryResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class RiskList : Tea.TeaModel {
            public var creditCode: String?

            public var entName: String?

            public var listedDate: String?

            public var listedReason: String?

            public var operationOrg: String?

            public var regNo: String?

            public var removedDate: String?

            public var removedOrg: String?

            public var removedReason: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.creditCode != nil {
                    map["CreditCode"] = self.creditCode!
                }
                if self.entName != nil {
                    map["EntName"] = self.entName!
                }
                if self.listedDate != nil {
                    map["ListedDate"] = self.listedDate!
                }
                if self.listedReason != nil {
                    map["ListedReason"] = self.listedReason!
                }
                if self.operationOrg != nil {
                    map["OperationOrg"] = self.operationOrg!
                }
                if self.regNo != nil {
                    map["RegNo"] = self.regNo!
                }
                if self.removedDate != nil {
                    map["RemovedDate"] = self.removedDate!
                }
                if self.removedOrg != nil {
                    map["RemovedOrg"] = self.removedOrg!
                }
                if self.removedReason != nil {
                    map["RemovedReason"] = self.removedReason!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreditCode") {
                    self.creditCode = dict["CreditCode"] as! String
                }
                if dict.keys.contains("EntName") {
                    self.entName = dict["EntName"] as! String
                }
                if dict.keys.contains("ListedDate") {
                    self.listedDate = dict["ListedDate"] as! String
                }
                if dict.keys.contains("ListedReason") {
                    self.listedReason = dict["ListedReason"] as! String
                }
                if dict.keys.contains("OperationOrg") {
                    self.operationOrg = dict["OperationOrg"] as! String
                }
                if dict.keys.contains("RegNo") {
                    self.regNo = dict["RegNo"] as! String
                }
                if dict.keys.contains("RemovedDate") {
                    self.removedDate = dict["RemovedDate"] as! String
                }
                if dict.keys.contains("RemovedOrg") {
                    self.removedOrg = dict["RemovedOrg"] as! String
                }
                if dict.keys.contains("RemovedReason") {
                    self.removedReason = dict["RemovedReason"] as! String
                }
            }
        }
        public var bizCode: String?

        public var riskList: [EntRiskQueryResponseBody.Result.RiskList]?

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
            if self.bizCode != nil {
                map["BizCode"] = self.bizCode!
            }
            if self.riskList != nil {
                var tmp : [Any] = []
                for k in self.riskList! {
                    tmp.append(k.toMap())
                }
                map["RiskList"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizCode") {
                self.bizCode = dict["BizCode"] as! String
            }
            if dict.keys.contains("RiskList") {
                var tmp : [EntRiskQueryResponseBody.Result.RiskList] = []
                for v in dict["RiskList"] as! [Any] {
                    var model = EntRiskQueryResponseBody.Result.RiskList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.riskList = tmp
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: EntRiskQueryResponseBody.Result?

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
            var model = EntRiskQueryResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class EntRiskQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EntRiskQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EntRiskQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EntVerifyRequest : Tea.TeaModel {
    public var accountNo: String?

    public var entName: String?

    public var infoVerifyType: String?

    public var legalPersonCertNo: String?

    public var legalPersonMobile: String?

    public var legalPersonName: String?

    public var licenseNo: String?

    public var merchantBizId: String?

    public var merchantUserId: String?

    public var riskModelVersion: String?

    public var riskVerifyType: String?

    public var sceneCode: String?

    public var userAuthorization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountNo != nil {
            map["AccountNo"] = self.accountNo!
        }
        if self.entName != nil {
            map["EntName"] = self.entName!
        }
        if self.infoVerifyType != nil {
            map["InfoVerifyType"] = self.infoVerifyType!
        }
        if self.legalPersonCertNo != nil {
            map["LegalPersonCertNo"] = self.legalPersonCertNo!
        }
        if self.legalPersonMobile != nil {
            map["LegalPersonMobile"] = self.legalPersonMobile!
        }
        if self.legalPersonName != nil {
            map["LegalPersonName"] = self.legalPersonName!
        }
        if self.licenseNo != nil {
            map["LicenseNo"] = self.licenseNo!
        }
        if self.merchantBizId != nil {
            map["MerchantBizId"] = self.merchantBizId!
        }
        if self.merchantUserId != nil {
            map["MerchantUserId"] = self.merchantUserId!
        }
        if self.riskModelVersion != nil {
            map["RiskModelVersion"] = self.riskModelVersion!
        }
        if self.riskVerifyType != nil {
            map["RiskVerifyType"] = self.riskVerifyType!
        }
        if self.sceneCode != nil {
            map["SceneCode"] = self.sceneCode!
        }
        if self.userAuthorization != nil {
            map["UserAuthorization"] = self.userAuthorization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountNo") {
            self.accountNo = dict["AccountNo"] as! String
        }
        if dict.keys.contains("EntName") {
            self.entName = dict["EntName"] as! String
        }
        if dict.keys.contains("InfoVerifyType") {
            self.infoVerifyType = dict["InfoVerifyType"] as! String
        }
        if dict.keys.contains("LegalPersonCertNo") {
            self.legalPersonCertNo = dict["LegalPersonCertNo"] as! String
        }
        if dict.keys.contains("LegalPersonMobile") {
            self.legalPersonMobile = dict["LegalPersonMobile"] as! String
        }
        if dict.keys.contains("LegalPersonName") {
            self.legalPersonName = dict["LegalPersonName"] as! String
        }
        if dict.keys.contains("LicenseNo") {
            self.licenseNo = dict["LicenseNo"] as! String
        }
        if dict.keys.contains("MerchantBizId") {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("MerchantUserId") {
            self.merchantUserId = dict["MerchantUserId"] as! String
        }
        if dict.keys.contains("RiskModelVersion") {
            self.riskModelVersion = dict["RiskModelVersion"] as! String
        }
        if dict.keys.contains("RiskVerifyType") {
            self.riskVerifyType = dict["RiskVerifyType"] as! String
        }
        if dict.keys.contains("SceneCode") {
            self.sceneCode = dict["SceneCode"] as! String
        }
        if dict.keys.contains("UserAuthorization") {
            self.userAuthorization = dict["UserAuthorization"] as! String
        }
    }
}

public class EntVerifyResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class RiskVerifyResult : Tea.TeaModel {
            public class ModelResults : Tea.TeaModel {
                public var modelName: String?

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
                    if self.modelName != nil {
                        map["ModelName"] = self.modelName!
                    }
                    if self.result != nil {
                        map["Result"] = self.result!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ModelName") {
                        self.modelName = dict["ModelName"] as! String
                    }
                    if dict.keys.contains("Result") {
                        self.result = dict["Result"] as! String
                    }
                }
            }
            public var found: Bool?

            public var modelResults: [EntVerifyResponseBody.Result.RiskVerifyResult.ModelResults]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.found != nil {
                    map["Found"] = self.found!
                }
                if self.modelResults != nil {
                    var tmp : [Any] = []
                    for k in self.modelResults! {
                        tmp.append(k.toMap())
                    }
                    map["ModelResults"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Found") {
                    self.found = dict["Found"] as! Bool
                }
                if dict.keys.contains("ModelResults") {
                    var tmp : [EntVerifyResponseBody.Result.RiskVerifyResult.ModelResults] = []
                    for v in dict["ModelResults"] as! [Any] {
                        var model = EntVerifyResponseBody.Result.RiskVerifyResult.ModelResults()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.modelResults = tmp
                }
            }
        }
        public var riskVerifyResult: EntVerifyResponseBody.Result.RiskVerifyResult?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.riskVerifyResult?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.riskVerifyResult != nil {
                map["RiskVerifyResult"] = self.riskVerifyResult?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RiskVerifyResult") {
                var model = EntVerifyResponseBody.Result.RiskVerifyResult()
                model.fromMap(dict["RiskVerifyResult"] as! [String: Any])
                self.riskVerifyResult = model
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: EntVerifyResponseBody.Result?

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
            var model = EntVerifyResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
    }
}

public class EntVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EntVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EntVerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
