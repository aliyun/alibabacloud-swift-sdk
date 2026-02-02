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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EntName"] as? String {
            self.entName = value
        }
        if let value = dict["InfoVerifyType"] as? String {
            self.infoVerifyType = value
        }
        if let value = dict["LegalPersonCertNo"] as? String {
            self.legalPersonCertNo = value
        }
        if let value = dict["LegalPersonName"] as? String {
            self.legalPersonName = value
        }
        if let value = dict["LicenseNo"] as? String {
            self.licenseNo = value
        }
        if let value = dict["MerchantBizId"] as? String {
            self.merchantBizId = value
        }
        if let value = dict["MerchantUserId"] as? String {
            self.merchantUserId = value
        }
        if let value = dict["SceneCode"] as? String {
            self.sceneCode = value
        }
        if let value = dict["UserAuthorization"] as? String {
            self.userAuthorization = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["OpenTime"] as? String {
                self.openTime = value
            }
            if let value = dict["ReasonCode"] as? String {
                self.reasonCode = value
            }
            if let value = dict["ReasonDetail"] as? String {
                self.reasonDetail = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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
            var model = EntElementVerifyResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EntElementVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EntElementVerifyPRORequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EntName"] as? String {
            self.entName = value
        }
        if let value = dict["InfoVerifyType"] as? String {
            self.infoVerifyType = value
        }
        if let value = dict["LegalPersonCertNo"] as? String {
            self.legalPersonCertNo = value
        }
        if let value = dict["LegalPersonName"] as? String {
            self.legalPersonName = value
        }
        if let value = dict["LicenseNo"] as? String {
            self.licenseNo = value
        }
        if let value = dict["MerchantBizId"] as? String {
            self.merchantBizId = value
        }
        if let value = dict["MerchantUserId"] as? String {
            self.merchantUserId = value
        }
        if let value = dict["SceneCode"] as? String {
            self.sceneCode = value
        }
        if let value = dict["UserAuthorization"] as? String {
            self.userAuthorization = value
        }
    }
}

public class EntElementVerifyPROResponseBody : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["OpenTime"] as? String {
                self.openTime = value
            }
            if let value = dict["ReasonDetail"] as? String {
                self.reasonDetail = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: EntElementVerifyPROResponseBody.Result?

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
            var model = EntElementVerifyPROResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class EntElementVerifyPROResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EntElementVerifyPROResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EntElementVerifyPROResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EntName"] as? String {
            self.entName = value
        }
        if let value = dict["InfoVerifyType"] as? String {
            self.infoVerifyType = value
        }
        if let value = dict["LegalPersonCertNo"] as? String {
            self.legalPersonCertNo = value
        }
        if let value = dict["LegalPersonName"] as? String {
            self.legalPersonName = value
        }
        if let value = dict["LicenseNo"] as? String {
            self.licenseNo = value
        }
        if let value = dict["MerchantBizId"] as? String {
            self.merchantBizId = value
        }
        if let value = dict["MerchantUserId"] as? String {
            self.merchantUserId = value
        }
        if let value = dict["SceneCode"] as? String {
            self.sceneCode = value
        }
        if let value = dict["UserAuthorization"] as? String {
            self.userAuthorization = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["OpenTime"] as? String {
                self.openTime = value
            }
            if let value = dict["ReasonDetail"] as? String {
                self.reasonDetail = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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
            var model = EntElementVerifyV2ResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EntElementVerifyV2ResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MerchantBizId"] as? String {
            self.merchantBizId = value
        }
        if let value = dict["MerchantUserId"] as? String {
            self.merchantUserId = value
        }
        if let value = dict["ParamType"] as? String {
            self.paramType = value
        }
        if let value = dict["ParamValue"] as? String {
            self.paramValue = value
        }
        if let value = dict["SceneCode"] as? String {
            self.sceneCode = value
        }
        if let value = dict["UserAuthorization"] as? String {
            self.userAuthorization = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreditCode"] as? String {
                    self.creditCode = value
                }
                if let value = dict["EntName"] as? String {
                    self.entName = value
                }
                if let value = dict["ListedDate"] as? String {
                    self.listedDate = value
                }
                if let value = dict["ListedReason"] as? String {
                    self.listedReason = value
                }
                if let value = dict["OperationOrg"] as? String {
                    self.operationOrg = value
                }
                if let value = dict["RegNo"] as? String {
                    self.regNo = value
                }
                if let value = dict["RemovedDate"] as? String {
                    self.removedDate = value
                }
                if let value = dict["RemovedOrg"] as? String {
                    self.removedOrg = value
                }
                if let value = dict["RemovedReason"] as? String {
                    self.removedReason = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCode"] as? String {
                self.bizCode = value
            }
            if let value = dict["RiskList"] as? [Any?] {
                var tmp : [EntRiskQueryResponseBody.Result.RiskList] = []
                for v in value {
                    if v != nil {
                        var model = EntRiskQueryResponseBody.Result.RiskList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.riskList = tmp
            }
            if let value = dict["Status"] as? String {
                self.status = value
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
            var model = EntRiskQueryResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EntRiskQueryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountNo"] as? String {
            self.accountNo = value
        }
        if let value = dict["EntName"] as? String {
            self.entName = value
        }
        if let value = dict["InfoVerifyType"] as? String {
            self.infoVerifyType = value
        }
        if let value = dict["LegalPersonCertNo"] as? String {
            self.legalPersonCertNo = value
        }
        if let value = dict["LegalPersonMobile"] as? String {
            self.legalPersonMobile = value
        }
        if let value = dict["LegalPersonName"] as? String {
            self.legalPersonName = value
        }
        if let value = dict["LicenseNo"] as? String {
            self.licenseNo = value
        }
        if let value = dict["MerchantBizId"] as? String {
            self.merchantBizId = value
        }
        if let value = dict["MerchantUserId"] as? String {
            self.merchantUserId = value
        }
        if let value = dict["RiskModelVersion"] as? String {
            self.riskModelVersion = value
        }
        if let value = dict["RiskVerifyType"] as? String {
            self.riskVerifyType = value
        }
        if let value = dict["SceneCode"] as? String {
            self.sceneCode = value
        }
        if let value = dict["UserAuthorization"] as? String {
            self.userAuthorization = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ModelName"] as? String {
                        self.modelName = value
                    }
                    if let value = dict["Result"] as? String {
                        self.result = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Found"] as? Bool {
                    self.found = value
                }
                if let value = dict["ModelResults"] as? [Any?] {
                    var tmp : [EntVerifyResponseBody.Result.RiskVerifyResult.ModelResults] = []
                    for v in value {
                        if v != nil {
                            var model = EntVerifyResponseBody.Result.RiskVerifyResult.ModelResults()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RiskVerifyResult"] as? [String: Any?] {
                var model = EntVerifyResponseBody.Result.RiskVerifyResult()
                model.fromMap(value)
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
            var model = EntVerifyResponseBody.Result()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EntVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
