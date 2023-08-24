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
        if dict.keys.contains("EntName") && dict["EntName"] != nil {
            self.entName = dict["EntName"] as! String
        }
        if dict.keys.contains("InfoVerifyType") && dict["InfoVerifyType"] != nil {
            self.infoVerifyType = dict["InfoVerifyType"] as! String
        }
        if dict.keys.contains("LegalPersonCertNo") && dict["LegalPersonCertNo"] != nil {
            self.legalPersonCertNo = dict["LegalPersonCertNo"] as! String
        }
        if dict.keys.contains("LegalPersonName") && dict["LegalPersonName"] != nil {
            self.legalPersonName = dict["LegalPersonName"] as! String
        }
        if dict.keys.contains("LicenseNo") && dict["LicenseNo"] != nil {
            self.licenseNo = dict["LicenseNo"] as! String
        }
        if dict.keys.contains("MerchantBizId") && dict["MerchantBizId"] != nil {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("MerchantUserId") && dict["MerchantUserId"] != nil {
            self.merchantUserId = dict["MerchantUserId"] as! String
        }
        if dict.keys.contains("SceneCode") && dict["SceneCode"] != nil {
            self.sceneCode = dict["SceneCode"] as! String
        }
        if dict.keys.contains("UserAuthorization") && dict["UserAuthorization"] != nil {
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
            if dict.keys.contains("BizCode") && dict["BizCode"] != nil {
                self.bizCode = dict["BizCode"] as! String
            }
            if dict.keys.contains("OpenTime") && dict["OpenTime"] != nil {
                self.openTime = dict["OpenTime"] as! String
            }
            if dict.keys.contains("ReasonCode") && dict["ReasonCode"] != nil {
                self.reasonCode = dict["ReasonCode"] as! String
            }
            if dict.keys.contains("ReasonDetail") && dict["ReasonDetail"] != nil {
                self.reasonDetail = dict["ReasonDetail"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EntElementVerifyResponseBody()
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
        if dict.keys.contains("MerchantBizId") && dict["MerchantBizId"] != nil {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("MerchantUserId") && dict["MerchantUserId"] != nil {
            self.merchantUserId = dict["MerchantUserId"] as! String
        }
        if dict.keys.contains("ParamType") && dict["ParamType"] != nil {
            self.paramType = dict["ParamType"] as! String
        }
        if dict.keys.contains("ParamValue") && dict["ParamValue"] != nil {
            self.paramValue = dict["ParamValue"] as! String
        }
        if dict.keys.contains("SceneCode") && dict["SceneCode"] != nil {
            self.sceneCode = dict["SceneCode"] as! String
        }
        if dict.keys.contains("UserAuthorization") && dict["UserAuthorization"] != nil {
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
                if dict.keys.contains("CreditCode") && dict["CreditCode"] != nil {
                    self.creditCode = dict["CreditCode"] as! String
                }
                if dict.keys.contains("EntName") && dict["EntName"] != nil {
                    self.entName = dict["EntName"] as! String
                }
                if dict.keys.contains("ListedDate") && dict["ListedDate"] != nil {
                    self.listedDate = dict["ListedDate"] as! String
                }
                if dict.keys.contains("ListedReason") && dict["ListedReason"] != nil {
                    self.listedReason = dict["ListedReason"] as! String
                }
                if dict.keys.contains("OperationOrg") && dict["OperationOrg"] != nil {
                    self.operationOrg = dict["OperationOrg"] as! String
                }
                if dict.keys.contains("RegNo") && dict["RegNo"] != nil {
                    self.regNo = dict["RegNo"] as! String
                }
                if dict.keys.contains("RemovedDate") && dict["RemovedDate"] != nil {
                    self.removedDate = dict["RemovedDate"] as! String
                }
                if dict.keys.contains("RemovedOrg") && dict["RemovedOrg"] != nil {
                    self.removedOrg = dict["RemovedOrg"] as! String
                }
                if dict.keys.contains("RemovedReason") && dict["RemovedReason"] != nil {
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
            if dict.keys.contains("BizCode") && dict["BizCode"] != nil {
                self.bizCode = dict["BizCode"] as! String
            }
            if dict.keys.contains("RiskList") && dict["RiskList"] != nil {
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
            if dict.keys.contains("Status") && dict["Status"] != nil {
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("AccountNo") && dict["AccountNo"] != nil {
            self.accountNo = dict["AccountNo"] as! String
        }
        if dict.keys.contains("EntName") && dict["EntName"] != nil {
            self.entName = dict["EntName"] as! String
        }
        if dict.keys.contains("InfoVerifyType") && dict["InfoVerifyType"] != nil {
            self.infoVerifyType = dict["InfoVerifyType"] as! String
        }
        if dict.keys.contains("LegalPersonCertNo") && dict["LegalPersonCertNo"] != nil {
            self.legalPersonCertNo = dict["LegalPersonCertNo"] as! String
        }
        if dict.keys.contains("LegalPersonMobile") && dict["LegalPersonMobile"] != nil {
            self.legalPersonMobile = dict["LegalPersonMobile"] as! String
        }
        if dict.keys.contains("LegalPersonName") && dict["LegalPersonName"] != nil {
            self.legalPersonName = dict["LegalPersonName"] as! String
        }
        if dict.keys.contains("LicenseNo") && dict["LicenseNo"] != nil {
            self.licenseNo = dict["LicenseNo"] as! String
        }
        if dict.keys.contains("MerchantBizId") && dict["MerchantBizId"] != nil {
            self.merchantBizId = dict["MerchantBizId"] as! String
        }
        if dict.keys.contains("MerchantUserId") && dict["MerchantUserId"] != nil {
            self.merchantUserId = dict["MerchantUserId"] as! String
        }
        if dict.keys.contains("RiskModelVersion") && dict["RiskModelVersion"] != nil {
            self.riskModelVersion = dict["RiskModelVersion"] as! String
        }
        if dict.keys.contains("RiskVerifyType") && dict["RiskVerifyType"] != nil {
            self.riskVerifyType = dict["RiskVerifyType"] as! String
        }
        if dict.keys.contains("SceneCode") && dict["SceneCode"] != nil {
            self.sceneCode = dict["SceneCode"] as! String
        }
        if dict.keys.contains("UserAuthorization") && dict["UserAuthorization"] != nil {
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
                    if dict.keys.contains("ModelName") && dict["ModelName"] != nil {
                        self.modelName = dict["ModelName"] as! String
                    }
                    if dict.keys.contains("Result") && dict["Result"] != nil {
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
                if dict.keys.contains("Found") && dict["Found"] != nil {
                    self.found = dict["Found"] as! Bool
                }
                if dict.keys.contains("ModelResults") && dict["ModelResults"] != nil {
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
            if dict.keys.contains("RiskVerifyResult") && dict["RiskVerifyResult"] != nil {
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EntVerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
