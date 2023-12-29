import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CertNoTwoElementVerificationRequest : Tea.TeaModel {
    public var authCode: String?

    public var certName: String?

    public var certNo: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.certName != nil {
            map["CertName"] = self.certName!
        }
        if self.certNo != nil {
            map["CertNo"] = self.certNo!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("CertName") && dict["CertName"] != nil {
            self.certName = dict["CertName"] as! String
        }
        if dict.keys.contains("CertNo") && dict["CertNo"] != nil {
            self.certNo = dict["CertNo"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CertNoTwoElementVerificationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var isConsistent: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isConsistent != nil {
                map["IsConsistent"] = self.isConsistent!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsConsistent") && dict["IsConsistent"] != nil {
                self.isConsistent = dict["IsConsistent"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CertNoTwoElementVerificationResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if dict.keys.contains("AccessDeniedDetail") && dict["AccessDeniedDetail"] != nil {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CertNoTwoElementVerificationResponseBody.Data()
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

public class CertNoTwoElementVerificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CertNoTwoElementVerificationResponseBody?

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
            var model = CertNoTwoElementVerificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CompanyFourElementsVerificationRequest : Tea.TeaModel {
    public var authCode: String?

    public var epCertName: String?

    public var epCertNo: String?

    public var legalPersonCertName: String?

    public var legalPersonCertNo: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.epCertName != nil {
            map["EpCertName"] = self.epCertName!
        }
        if self.epCertNo != nil {
            map["EpCertNo"] = self.epCertNo!
        }
        if self.legalPersonCertName != nil {
            map["LegalPersonCertName"] = self.legalPersonCertName!
        }
        if self.legalPersonCertNo != nil {
            map["LegalPersonCertNo"] = self.legalPersonCertNo!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("EpCertName") && dict["EpCertName"] != nil {
            self.epCertName = dict["EpCertName"] as! String
        }
        if dict.keys.contains("EpCertNo") && dict["EpCertNo"] != nil {
            self.epCertNo = dict["EpCertNo"] as! String
        }
        if dict.keys.contains("LegalPersonCertName") && dict["LegalPersonCertName"] != nil {
            self.legalPersonCertName = dict["LegalPersonCertName"] as! String
        }
        if dict.keys.contains("LegalPersonCertNo") && dict["LegalPersonCertNo"] != nil {
            self.legalPersonCertNo = dict["LegalPersonCertNo"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CompanyFourElementsVerificationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DetailInfo : Tea.TeaModel {
            public var enterpriseStatus: String?

            public var openTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enterpriseStatus != nil {
                    map["EnterpriseStatus"] = self.enterpriseStatus!
                }
                if self.openTime != nil {
                    map["OpenTime"] = self.openTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnterpriseStatus") && dict["EnterpriseStatus"] != nil {
                    self.enterpriseStatus = dict["EnterpriseStatus"] as! String
                }
                if dict.keys.contains("OpenTime") && dict["OpenTime"] != nil {
                    self.openTime = dict["OpenTime"] as! String
                }
            }
        }
        public var detailInfo: CompanyFourElementsVerificationResponseBody.Data.DetailInfo?

        public var inconsistentData: [String]?

        public var reasonCode: Int64?

        public var verifyResult: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.detailInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detailInfo != nil {
                map["DetailInfo"] = self.detailInfo?.toMap()
            }
            if self.inconsistentData != nil {
                map["InconsistentData"] = self.inconsistentData!
            }
            if self.reasonCode != nil {
                map["ReasonCode"] = self.reasonCode!
            }
            if self.verifyResult != nil {
                map["VerifyResult"] = self.verifyResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DetailInfo") && dict["DetailInfo"] != nil {
                var model = CompanyFourElementsVerificationResponseBody.Data.DetailInfo()
                model.fromMap(dict["DetailInfo"] as! [String: Any])
                self.detailInfo = model
            }
            if dict.keys.contains("InconsistentData") && dict["InconsistentData"] != nil {
                self.inconsistentData = dict["InconsistentData"] as! [String]
            }
            if dict.keys.contains("ReasonCode") && dict["ReasonCode"] != nil {
                self.reasonCode = dict["ReasonCode"] as! Int64
            }
            if dict.keys.contains("VerifyResult") && dict["VerifyResult"] != nil {
                self.verifyResult = dict["VerifyResult"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CompanyFourElementsVerificationResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if dict.keys.contains("AccessDeniedDetail") && dict["AccessDeniedDetail"] != nil {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CompanyFourElementsVerificationResponseBody.Data()
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

public class CompanyFourElementsVerificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CompanyFourElementsVerificationResponseBody?

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
            var model = CompanyFourElementsVerificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CompanyThreeElementsVerificationRequest : Tea.TeaModel {
    public var authCode: String?

    public var epCertName: String?

    public var epCertNo: String?

    public var legalPersonCertName: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.epCertName != nil {
            map["EpCertName"] = self.epCertName!
        }
        if self.epCertNo != nil {
            map["EpCertNo"] = self.epCertNo!
        }
        if self.legalPersonCertName != nil {
            map["LegalPersonCertName"] = self.legalPersonCertName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("EpCertName") && dict["EpCertName"] != nil {
            self.epCertName = dict["EpCertName"] as! String
        }
        if dict.keys.contains("EpCertNo") && dict["EpCertNo"] != nil {
            self.epCertNo = dict["EpCertNo"] as! String
        }
        if dict.keys.contains("LegalPersonCertName") && dict["LegalPersonCertName"] != nil {
            self.legalPersonCertName = dict["LegalPersonCertName"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CompanyThreeElementsVerificationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DetailInfo : Tea.TeaModel {
            public var enterpriseStatus: String?

            public var openTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enterpriseStatus != nil {
                    map["EnterpriseStatus"] = self.enterpriseStatus!
                }
                if self.openTime != nil {
                    map["OpenTime"] = self.openTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnterpriseStatus") && dict["EnterpriseStatus"] != nil {
                    self.enterpriseStatus = dict["EnterpriseStatus"] as! String
                }
                if dict.keys.contains("OpenTime") && dict["OpenTime"] != nil {
                    self.openTime = dict["OpenTime"] as! String
                }
            }
        }
        public var detailInfo: CompanyThreeElementsVerificationResponseBody.Data.DetailInfo?

        public var inconsistentData: [String]?

        public var reasonCode: Int64?

        public var verifyResult: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.detailInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detailInfo != nil {
                map["DetailInfo"] = self.detailInfo?.toMap()
            }
            if self.inconsistentData != nil {
                map["InconsistentData"] = self.inconsistentData!
            }
            if self.reasonCode != nil {
                map["ReasonCode"] = self.reasonCode!
            }
            if self.verifyResult != nil {
                map["VerifyResult"] = self.verifyResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DetailInfo") && dict["DetailInfo"] != nil {
                var model = CompanyThreeElementsVerificationResponseBody.Data.DetailInfo()
                model.fromMap(dict["DetailInfo"] as! [String: Any])
                self.detailInfo = model
            }
            if dict.keys.contains("InconsistentData") && dict["InconsistentData"] != nil {
                self.inconsistentData = dict["InconsistentData"] as! [String]
            }
            if dict.keys.contains("ReasonCode") && dict["ReasonCode"] != nil {
                self.reasonCode = dict["ReasonCode"] as! Int64
            }
            if dict.keys.contains("VerifyResult") && dict["VerifyResult"] != nil {
                self.verifyResult = dict["VerifyResult"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CompanyThreeElementsVerificationResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if dict.keys.contains("AccessDeniedDetail") && dict["AccessDeniedDetail"] != nil {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CompanyThreeElementsVerificationResponseBody.Data()
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

public class CompanyThreeElementsVerificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CompanyThreeElementsVerificationResponseBody?

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
            var model = CompanyThreeElementsVerificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CompanyTwoElementsVerificationRequest : Tea.TeaModel {
    public var authCode: String?

    public var epCertName: String?

    public var epCertNo: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.epCertName != nil {
            map["EpCertName"] = self.epCertName!
        }
        if self.epCertNo != nil {
            map["EpCertNo"] = self.epCertNo!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("EpCertName") && dict["EpCertName"] != nil {
            self.epCertName = dict["EpCertName"] as! String
        }
        if dict.keys.contains("EpCertNo") && dict["EpCertNo"] != nil {
            self.epCertNo = dict["EpCertNo"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CompanyTwoElementsVerificationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DetailInfo : Tea.TeaModel {
            public var enterpriseStatus: String?

            public var openTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enterpriseStatus != nil {
                    map["EnterpriseStatus"] = self.enterpriseStatus!
                }
                if self.openTime != nil {
                    map["OpenTime"] = self.openTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnterpriseStatus") && dict["EnterpriseStatus"] != nil {
                    self.enterpriseStatus = dict["EnterpriseStatus"] as! String
                }
                if dict.keys.contains("OpenTime") && dict["OpenTime"] != nil {
                    self.openTime = dict["OpenTime"] as! String
                }
            }
        }
        public var detailInfo: CompanyTwoElementsVerificationResponseBody.Data.DetailInfo?

        public var inconsistentData: [String]?

        public var reasonCode: String?

        public var verifyResult: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.detailInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detailInfo != nil {
                map["DetailInfo"] = self.detailInfo?.toMap()
            }
            if self.inconsistentData != nil {
                map["InconsistentData"] = self.inconsistentData!
            }
            if self.reasonCode != nil {
                map["ReasonCode"] = self.reasonCode!
            }
            if self.verifyResult != nil {
                map["VerifyResult"] = self.verifyResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DetailInfo") && dict["DetailInfo"] != nil {
                var model = CompanyTwoElementsVerificationResponseBody.Data.DetailInfo()
                model.fromMap(dict["DetailInfo"] as! [String: Any])
                self.detailInfo = model
            }
            if dict.keys.contains("InconsistentData") && dict["InconsistentData"] != nil {
                self.inconsistentData = dict["InconsistentData"] as! [String]
            }
            if dict.keys.contains("ReasonCode") && dict["ReasonCode"] != nil {
                self.reasonCode = dict["ReasonCode"] as! String
            }
            if dict.keys.contains("VerifyResult") && dict["VerifyResult"] != nil {
                self.verifyResult = dict["VerifyResult"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CompanyTwoElementsVerificationResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if dict.keys.contains("AccessDeniedDetail") && dict["AccessDeniedDetail"] != nil {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CompanyTwoElementsVerificationResponseBody.Data()
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

public class CompanyTwoElementsVerificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CompanyTwoElementsVerificationResponseBody?

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
            var model = CompanyTwoElementsVerificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEmptyNumberRequest : Tea.TeaModel {
    public var authCode: String?

    public var inputNumber: String?

    public var mask: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.inputNumber != nil {
            map["InputNumber"] = self.inputNumber!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("InputNumber") && dict["InputNumber"] != nil {
            self.inputNumber = dict["InputNumber"] as! String
        }
        if dict.keys.contains("Mask") && dict["Mask"] != nil {
            self.mask = dict["Mask"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeEmptyNumberResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var number: String?

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
            if self.number != nil {
                map["Number"] = self.number!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Number") && dict["Number"] != nil {
                self.number = dict["Number"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: DescribeEmptyNumberResponseBody.Data?

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
            var model = DescribeEmptyNumberResponseBody.Data()
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

public class DescribeEmptyNumberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEmptyNumberResponseBody?

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
            var model = DescribeEmptyNumberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePhoneNumberAnalysisRequest : Tea.TeaModel {
    public var authCode: String?

    public var inputNumber: String?

    public var mask: String?

    public var numberType: Int64?

    public var ownerId: Int64?

    public var rate: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.inputNumber != nil {
            map["InputNumber"] = self.inputNumber!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.numberType != nil {
            map["NumberType"] = self.numberType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.rate != nil {
            map["Rate"] = self.rate!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("InputNumber") && dict["InputNumber"] != nil {
            self.inputNumber = dict["InputNumber"] as! String
        }
        if dict.keys.contains("Mask") && dict["Mask"] != nil {
            self.mask = dict["Mask"] as! String
        }
        if dict.keys.contains("NumberType") && dict["NumberType"] != nil {
            self.numberType = dict["NumberType"] as! Int64
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Rate") && dict["Rate"] != nil {
            self.rate = dict["Rate"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribePhoneNumberAnalysisResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var code: String?

            public var number: String?

            public override init() {
                super.init()
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
                if self.number != nil {
                    map["Number"] = self.number!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Number") && dict["Number"] != nil {
                    self.number = dict["Number"] as! String
                }
            }
        }
        public var list: [DescribePhoneNumberAnalysisResponseBody.Data.List]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [DescribePhoneNumberAnalysisResponseBody.Data.List] = []
                for v in dict["List"] as! [Any] {
                    var model = DescribePhoneNumberAnalysisResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
        }
    }
    public var code: String?

    public var data: DescribePhoneNumberAnalysisResponseBody.Data?

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
            var model = DescribePhoneNumberAnalysisResponseBody.Data()
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

public class DescribePhoneNumberAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePhoneNumberAnalysisResponseBody?

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
            var model = DescribePhoneNumberAnalysisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePhoneNumberAnalysisAIRequest : Tea.TeaModel {
    public var authCode: String?

    public var inputNumber: String?

    public var modelConfig: String?

    public var ownerId: Int64?

    public var rate: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.inputNumber != nil {
            map["InputNumber"] = self.inputNumber!
        }
        if self.modelConfig != nil {
            map["ModelConfig"] = self.modelConfig!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.rate != nil {
            map["Rate"] = self.rate!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("InputNumber") && dict["InputNumber"] != nil {
            self.inputNumber = dict["InputNumber"] as! String
        }
        if dict.keys.contains("ModelConfig") && dict["ModelConfig"] != nil {
            self.modelConfig = dict["ModelConfig"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Rate") && dict["Rate"] != nil {
            self.rate = dict["Rate"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribePhoneNumberAnalysisAIResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: String?

        public var number: String?

        public override init() {
            super.init()
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
            if self.number != nil {
                map["Number"] = self.number!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Number") && dict["Number"] != nil {
                self.number = dict["Number"] as! String
            }
        }
    }
    public var code: String?

    public var data: DescribePhoneNumberAnalysisAIResponseBody.Data?

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
            var model = DescribePhoneNumberAnalysisAIResponseBody.Data()
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

public class DescribePhoneNumberAnalysisAIResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePhoneNumberAnalysisAIResponseBody?

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
            var model = DescribePhoneNumberAnalysisAIResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePhoneNumberAnalysisTransparentRequest : Tea.TeaModel {
    public var authCode: String?

    public var inputNumber: String?

    public var ip: String?

    public var numberType: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.inputNumber != nil {
            map["InputNumber"] = self.inputNumber!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.numberType != nil {
            map["NumberType"] = self.numberType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("InputNumber") && dict["InputNumber"] != nil {
            self.inputNumber = dict["InputNumber"] as! String
        }
        if dict.keys.contains("Ip") && dict["Ip"] != nil {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("NumberType") && dict["NumberType"] != nil {
            self.numberType = dict["NumberType"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribePhoneNumberAnalysisTransparentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deviceRisk: String?

        public var ipRisk: String?

        public var score1: String?

        public var score2: String?

        public var score3: String?

        public override init() {
            super.init()
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
                map["Device_risk"] = self.deviceRisk!
            }
            if self.ipRisk != nil {
                map["Ip_risk"] = self.ipRisk!
            }
            if self.score1 != nil {
                map["Score1"] = self.score1!
            }
            if self.score2 != nil {
                map["Score2"] = self.score2!
            }
            if self.score3 != nil {
                map["Score3"] = self.score3!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Device_risk") && dict["Device_risk"] != nil {
                self.deviceRisk = dict["Device_risk"] as! String
            }
            if dict.keys.contains("Ip_risk") && dict["Ip_risk"] != nil {
                self.ipRisk = dict["Ip_risk"] as! String
            }
            if dict.keys.contains("Score1") && dict["Score1"] != nil {
                self.score1 = dict["Score1"] as! String
            }
            if dict.keys.contains("Score2") && dict["Score2"] != nil {
                self.score2 = dict["Score2"] as! String
            }
            if dict.keys.contains("Score3") && dict["Score3"] != nil {
                self.score3 = dict["Score3"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: DescribePhoneNumberAnalysisTransparentResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if dict.keys.contains("AccessDeniedDetail") && dict["AccessDeniedDetail"] != nil {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribePhoneNumberAnalysisTransparentResponseBody.Data()
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

public class DescribePhoneNumberAnalysisTransparentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePhoneNumberAnalysisTransparentResponseBody?

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
            var model = DescribePhoneNumberAnalysisTransparentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePhoneNumberAttributeRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribePhoneNumberAttributeResponseBody : Tea.TeaModel {
    public class PhoneNumberAttribute : Tea.TeaModel {
        public var basicCarrier: String?

        public var carrier: String?

        public var city: String?

        public var isNumberPortability: Bool?

        public var numberSegment: Int64?

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
            if self.basicCarrier != nil {
                map["BasicCarrier"] = self.basicCarrier!
            }
            if self.carrier != nil {
                map["Carrier"] = self.carrier!
            }
            if self.city != nil {
                map["City"] = self.city!
            }
            if self.isNumberPortability != nil {
                map["IsNumberPortability"] = self.isNumberPortability!
            }
            if self.numberSegment != nil {
                map["NumberSegment"] = self.numberSegment!
            }
            if self.province != nil {
                map["Province"] = self.province!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BasicCarrier") && dict["BasicCarrier"] != nil {
                self.basicCarrier = dict["BasicCarrier"] as! String
            }
            if dict.keys.contains("Carrier") && dict["Carrier"] != nil {
                self.carrier = dict["Carrier"] as! String
            }
            if dict.keys.contains("City") && dict["City"] != nil {
                self.city = dict["City"] as! String
            }
            if dict.keys.contains("IsNumberPortability") && dict["IsNumberPortability"] != nil {
                self.isNumberPortability = dict["IsNumberPortability"] as! Bool
            }
            if dict.keys.contains("NumberSegment") && dict["NumberSegment"] != nil {
                self.numberSegment = dict["NumberSegment"] as! Int64
            }
            if dict.keys.contains("Province") && dict["Province"] != nil {
                self.province = dict["Province"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var phoneNumberAttribute: DescribePhoneNumberAttributeResponseBody.PhoneNumberAttribute?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.phoneNumberAttribute?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.phoneNumberAttribute != nil {
            map["PhoneNumberAttribute"] = self.phoneNumberAttribute?.toMap()
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
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PhoneNumberAttribute") && dict["PhoneNumberAttribute"] != nil {
            var model = DescribePhoneNumberAttributeResponseBody.PhoneNumberAttribute()
            model.fromMap(dict["PhoneNumberAttribute"] as! [String: Any])
            self.phoneNumberAttribute = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribePhoneNumberAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePhoneNumberAttributeResponseBody?

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
            var model = DescribePhoneNumberAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePhoneNumberOnlineTimeRequest : Tea.TeaModel {
    public var authCode: String?

    public var carrier: String?

    public var inputNumber: String?

    public var mask: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.carrier != nil {
            map["Carrier"] = self.carrier!
        }
        if self.inputNumber != nil {
            map["InputNumber"] = self.inputNumber!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("Carrier") && dict["Carrier"] != nil {
            self.carrier = dict["Carrier"] as! String
        }
        if dict.keys.contains("InputNumber") && dict["InputNumber"] != nil {
            self.inputNumber = dict["InputNumber"] as! String
        }
        if dict.keys.contains("Mask") && dict["Mask"] != nil {
            self.mask = dict["Mask"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribePhoneNumberOnlineTimeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var carrierCode: String?

        public var verifyResult: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.carrierCode != nil {
                map["CarrierCode"] = self.carrierCode!
            }
            if self.verifyResult != nil {
                map["VerifyResult"] = self.verifyResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CarrierCode") && dict["CarrierCode"] != nil {
                self.carrierCode = dict["CarrierCode"] as! String
            }
            if dict.keys.contains("VerifyResult") && dict["VerifyResult"] != nil {
                self.verifyResult = dict["VerifyResult"] as! String
            }
        }
    }
    public var code: String?

    public var data: DescribePhoneNumberOnlineTimeResponseBody.Data?

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
            var model = DescribePhoneNumberOnlineTimeResponseBody.Data()
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

public class DescribePhoneNumberOnlineTimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePhoneNumberOnlineTimeResponseBody?

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
            var model = DescribePhoneNumberOnlineTimeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePhoneNumberOperatorAttributeRequest : Tea.TeaModel {
    public var authCode: String?

    public var inputNumber: String?

    public var mask: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.inputNumber != nil {
            map["InputNumber"] = self.inputNumber!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("InputNumber") && dict["InputNumber"] != nil {
            self.inputNumber = dict["InputNumber"] as! String
        }
        if dict.keys.contains("Mask") && dict["Mask"] != nil {
            self.mask = dict["Mask"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribePhoneNumberOperatorAttributeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var basicCarrier: String?

        public var carrier: String?

        public var city: String?

        public var isNumberPortability: Bool?

        public var numberSegment: Int64?

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
            if self.basicCarrier != nil {
                map["BasicCarrier"] = self.basicCarrier!
            }
            if self.carrier != nil {
                map["Carrier"] = self.carrier!
            }
            if self.city != nil {
                map["City"] = self.city!
            }
            if self.isNumberPortability != nil {
                map["IsNumberPortability"] = self.isNumberPortability!
            }
            if self.numberSegment != nil {
                map["NumberSegment"] = self.numberSegment!
            }
            if self.province != nil {
                map["Province"] = self.province!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BasicCarrier") && dict["BasicCarrier"] != nil {
                self.basicCarrier = dict["BasicCarrier"] as! String
            }
            if dict.keys.contains("Carrier") && dict["Carrier"] != nil {
                self.carrier = dict["Carrier"] as! String
            }
            if dict.keys.contains("City") && dict["City"] != nil {
                self.city = dict["City"] as! String
            }
            if dict.keys.contains("IsNumberPortability") && dict["IsNumberPortability"] != nil {
                self.isNumberPortability = dict["IsNumberPortability"] as! Bool
            }
            if dict.keys.contains("NumberSegment") && dict["NumberSegment"] != nil {
                self.numberSegment = dict["NumberSegment"] as! Int64
            }
            if dict.keys.contains("Province") && dict["Province"] != nil {
                self.province = dict["Province"] as! String
            }
        }
    }
    public var code: String?

    public var data: DescribePhoneNumberOperatorAttributeResponseBody.Data?

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
            var model = DescribePhoneNumberOperatorAttributeResponseBody.Data()
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

public class DescribePhoneNumberOperatorAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePhoneNumberOperatorAttributeResponseBody?

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
            var model = DescribePhoneNumberOperatorAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePhoneNumberRiskRequest : Tea.TeaModel {
    public var authCode: String?

    public var inputNumber: String?

    public var mask: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.inputNumber != nil {
            map["InputNumber"] = self.inputNumber!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("InputNumber") && dict["InputNumber"] != nil {
            self.inputNumber = dict["InputNumber"] as! String
        }
        if dict.keys.contains("Mask") && dict["Mask"] != nil {
            self.mask = dict["Mask"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribePhoneNumberRiskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var verifyResult: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.verifyResult != nil {
                map["VerifyResult"] = self.verifyResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VerifyResult") && dict["VerifyResult"] != nil {
                self.verifyResult = dict["VerifyResult"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: DescribePhoneNumberRiskResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if dict.keys.contains("AccessDeniedDetail") && dict["AccessDeniedDetail"] != nil {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribePhoneNumberRiskResponseBody.Data()
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

public class DescribePhoneNumberRiskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePhoneNumberRiskResponseBody?

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
            var model = DescribePhoneNumberRiskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePhoneTwiceTelVerifyRequest : Tea.TeaModel {
    public var authCode: String?

    public var inputNumber: String?

    public var mask: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.inputNumber != nil {
            map["InputNumber"] = self.inputNumber!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("InputNumber") && dict["InputNumber"] != nil {
            self.inputNumber = dict["InputNumber"] as! String
        }
        if dict.keys.contains("Mask") && dict["Mask"] != nil {
            self.mask = dict["Mask"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribePhoneTwiceTelVerifyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var carrier: String?

        public var verifyResult: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.carrier != nil {
                map["Carrier"] = self.carrier!
            }
            if self.verifyResult != nil {
                map["VerifyResult"] = self.verifyResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Carrier") && dict["Carrier"] != nil {
                self.carrier = dict["Carrier"] as! String
            }
            if dict.keys.contains("VerifyResult") && dict["VerifyResult"] != nil {
                self.verifyResult = dict["VerifyResult"] as! String
            }
        }
    }
    public var code: String?

    public var data: DescribePhoneTwiceTelVerifyResponseBody.Data?

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
            var model = DescribePhoneTwiceTelVerifyResponseBody.Data()
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

public class DescribePhoneTwiceTelVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePhoneTwiceTelVerifyResponseBody?

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
            var model = DescribePhoneTwiceTelVerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUAIDApplyTokenSignRequest : Tea.TeaModel {
    public var authCode: String?

    public var carrier: String?

    public var clientType: String?

    public var format: String?

    public var outId: String?

    public var ownerId: Int64?

    public var paramKey: String?

    public var paramStr: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var time: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.carrier != nil {
            map["Carrier"] = self.carrier!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.format != nil {
            map["Format"] = self.format!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.paramKey != nil {
            map["ParamKey"] = self.paramKey!
        }
        if self.paramStr != nil {
            map["ParamStr"] = self.paramStr!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.time != nil {
            map["Time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("Carrier") && dict["Carrier"] != nil {
            self.carrier = dict["Carrier"] as! String
        }
        if dict.keys.contains("ClientType") && dict["ClientType"] != nil {
            self.clientType = dict["ClientType"] as! String
        }
        if dict.keys.contains("Format") && dict["Format"] != nil {
            self.format = dict["Format"] as! String
        }
        if dict.keys.contains("OutId") && dict["OutId"] != nil {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ParamKey") && dict["ParamKey"] != nil {
            self.paramKey = dict["ParamKey"] as! String
        }
        if dict.keys.contains("ParamStr") && dict["ParamStr"] != nil {
            self.paramStr = dict["ParamStr"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Time") && dict["Time"] != nil {
            self.time = dict["Time"] as! String
        }
    }
}

public class GetUAIDApplyTokenSignResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var carrier: String?

        public var outId: String?

        public var sign: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.carrier != nil {
                map["Carrier"] = self.carrier!
            }
            if self.outId != nil {
                map["OutId"] = self.outId!
            }
            if self.sign != nil {
                map["Sign"] = self.sign!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Carrier") && dict["Carrier"] != nil {
                self.carrier = dict["Carrier"] as! String
            }
            if dict.keys.contains("OutId") && dict["OutId"] != nil {
                self.outId = dict["OutId"] as! String
            }
            if dict.keys.contains("Sign") && dict["Sign"] != nil {
                self.sign = dict["Sign"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetUAIDApplyTokenSignResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if dict.keys.contains("AccessDeniedDetail") && dict["AccessDeniedDetail"] != nil {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetUAIDApplyTokenSignResponseBody.Data()
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

public class GetUAIDApplyTokenSignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUAIDApplyTokenSignResponseBody?

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
            var model = GetUAIDApplyTokenSignResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InvalidPhoneNumberFilterRequest : Tea.TeaModel {
    public var authCode: String?

    public var inputNumber: String?

    public var mask: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.inputNumber != nil {
            map["InputNumber"] = self.inputNumber!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("InputNumber") && dict["InputNumber"] != nil {
            self.inputNumber = dict["InputNumber"] as! String
        }
        if dict.keys.contains("Mask") && dict["Mask"] != nil {
            self.mask = dict["Mask"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class InvalidPhoneNumberFilterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: String?

        public var encryptedNumber: String?

        public var expireTime: String?

        public var originalNumber: String?

        public override init() {
            super.init()
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
            if self.encryptedNumber != nil {
                map["EncryptedNumber"] = self.encryptedNumber!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.originalNumber != nil {
                map["OriginalNumber"] = self.originalNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("EncryptedNumber") && dict["EncryptedNumber"] != nil {
                self.encryptedNumber = dict["EncryptedNumber"] as! String
            }
            if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("OriginalNumber") && dict["OriginalNumber"] != nil {
                self.originalNumber = dict["OriginalNumber"] as! String
            }
        }
    }
    public var code: String?

    public var data: [InvalidPhoneNumberFilterResponseBody.Data]?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [InvalidPhoneNumberFilterResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = InvalidPhoneNumberFilterResponseBody.Data()
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
    }
}

public class InvalidPhoneNumberFilterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InvalidPhoneNumberFilterResponseBody?

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
            var model = InvalidPhoneNumberFilterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PhoneNumberConvertServiceRequest : Tea.TeaModel {
    public var authCode: String?

    public var inputNumber: String?

    public var mask: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.inputNumber != nil {
            map["InputNumber"] = self.inputNumber!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("InputNumber") && dict["InputNumber"] != nil {
            self.inputNumber = dict["InputNumber"] as! String
        }
        if dict.keys.contains("Mask") && dict["Mask"] != nil {
            self.mask = dict["Mask"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class PhoneNumberConvertServiceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var converResult: Bool?

        public var number: String?

        public var numberMd5: String?

        public var numberSha256: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.converResult != nil {
                map["ConverResult"] = self.converResult!
            }
            if self.number != nil {
                map["Number"] = self.number!
            }
            if self.numberMd5 != nil {
                map["NumberMd5"] = self.numberMd5!
            }
            if self.numberSha256 != nil {
                map["NumberSha256"] = self.numberSha256!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConverResult") && dict["ConverResult"] != nil {
                self.converResult = dict["ConverResult"] as! Bool
            }
            if dict.keys.contains("Number") && dict["Number"] != nil {
                self.number = dict["Number"] as! String
            }
            if dict.keys.contains("NumberMd5") && dict["NumberMd5"] != nil {
                self.numberMd5 = dict["NumberMd5"] as! String
            }
            if dict.keys.contains("NumberSha256") && dict["NumberSha256"] != nil {
                self.numberSha256 = dict["NumberSha256"] as! String
            }
        }
    }
    public var code: String?

    public var data: [PhoneNumberConvertServiceResponseBody.Data]?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [PhoneNumberConvertServiceResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = PhoneNumberConvertServiceResponseBody.Data()
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
    }
}

public class PhoneNumberConvertServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PhoneNumberConvertServiceResponseBody?

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
            var model = PhoneNumberConvertServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PhoneNumberEncryptRequest : Tea.TeaModel {
    public var authCode: String?

    public var inputNumber: String?

    public var mask: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.inputNumber != nil {
            map["InputNumber"] = self.inputNumber!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("InputNumber") && dict["InputNumber"] != nil {
            self.inputNumber = dict["InputNumber"] as! String
        }
        if dict.keys.contains("Mask") && dict["Mask"] != nil {
            self.mask = dict["Mask"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class PhoneNumberEncryptResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var encryptedNumber: String?

        public var expireTime: String?

        public var originalNumber: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.encryptedNumber != nil {
                map["EncryptedNumber"] = self.encryptedNumber!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.originalNumber != nil {
                map["OriginalNumber"] = self.originalNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EncryptedNumber") && dict["EncryptedNumber"] != nil {
                self.encryptedNumber = dict["EncryptedNumber"] as! String
            }
            if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("OriginalNumber") && dict["OriginalNumber"] != nil {
                self.originalNumber = dict["OriginalNumber"] as! String
            }
        }
    }
    public var code: String?

    public var data: [PhoneNumberEncryptResponseBody.Data]?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [PhoneNumberEncryptResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = PhoneNumberEncryptResponseBody.Data()
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
    }
}

public class PhoneNumberEncryptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PhoneNumberEncryptResponseBody?

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
            var model = PhoneNumberEncryptResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PhoneNumberStatusForAccountRequest : Tea.TeaModel {
    public var authCode: String?

    public var inputNumber: String?

    public var mask: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.inputNumber != nil {
            map["InputNumber"] = self.inputNumber!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("InputNumber") && dict["InputNumber"] != nil {
            self.inputNumber = dict["InputNumber"] as! String
        }
        if dict.keys.contains("Mask") && dict["Mask"] != nil {
            self.mask = dict["Mask"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class PhoneNumberStatusForAccountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var carrier: String?

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
            if self.carrier != nil {
                map["Carrier"] = self.carrier!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Carrier") && dict["Carrier"] != nil {
                self.carrier = dict["Carrier"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: PhoneNumberStatusForAccountResponseBody.Data?

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
            var model = PhoneNumberStatusForAccountResponseBody.Data()
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

public class PhoneNumberStatusForAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PhoneNumberStatusForAccountResponseBody?

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
            var model = PhoneNumberStatusForAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PhoneNumberStatusForPublicRequest : Tea.TeaModel {
    public var authCode: String?

    public var inputNumber: String?

    public var mask: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.inputNumber != nil {
            map["InputNumber"] = self.inputNumber!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("InputNumber") && dict["InputNumber"] != nil {
            self.inputNumber = dict["InputNumber"] as! String
        }
        if dict.keys.contains("Mask") && dict["Mask"] != nil {
            self.mask = dict["Mask"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class PhoneNumberStatusForPublicResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var carrier: String?

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
            if self.carrier != nil {
                map["Carrier"] = self.carrier!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Carrier") && dict["Carrier"] != nil {
                self.carrier = dict["Carrier"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: PhoneNumberStatusForPublicResponseBody.Data?

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
            var model = PhoneNumberStatusForPublicResponseBody.Data()
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

public class PhoneNumberStatusForPublicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PhoneNumberStatusForPublicResponseBody?

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
            var model = PhoneNumberStatusForPublicResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PhoneNumberStatusForRealRequest : Tea.TeaModel {
    public var authCode: String?

    public var inputNumber: String?

    public var mask: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.inputNumber != nil {
            map["InputNumber"] = self.inputNumber!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("InputNumber") && dict["InputNumber"] != nil {
            self.inputNumber = dict["InputNumber"] as! String
        }
        if dict.keys.contains("Mask") && dict["Mask"] != nil {
            self.mask = dict["Mask"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class PhoneNumberStatusForRealResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var carrier: String?

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
            if self.carrier != nil {
                map["Carrier"] = self.carrier!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Carrier") && dict["Carrier"] != nil {
                self.carrier = dict["Carrier"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: PhoneNumberStatusForRealResponseBody.Data?

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
            var model = PhoneNumberStatusForRealResponseBody.Data()
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

public class PhoneNumberStatusForRealResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PhoneNumberStatusForRealResponseBody?

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
            var model = PhoneNumberStatusForRealResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PhoneNumberStatusForSmsRequest : Tea.TeaModel {
    public var authCode: String?

    public var inputNumber: String?

    public var mask: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.inputNumber != nil {
            map["InputNumber"] = self.inputNumber!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("InputNumber") && dict["InputNumber"] != nil {
            self.inputNumber = dict["InputNumber"] as! String
        }
        if dict.keys.contains("Mask") && dict["Mask"] != nil {
            self.mask = dict["Mask"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class PhoneNumberStatusForSmsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var carrier: String?

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
            if self.carrier != nil {
                map["Carrier"] = self.carrier!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Carrier") && dict["Carrier"] != nil {
                self.carrier = dict["Carrier"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: PhoneNumberStatusForSmsResponseBody.Data?

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
            var model = PhoneNumberStatusForSmsResponseBody.Data()
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

public class PhoneNumberStatusForSmsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PhoneNumberStatusForSmsResponseBody?

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
            var model = PhoneNumberStatusForSmsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PhoneNumberStatusForVirtualRequest : Tea.TeaModel {
    public var authCode: String?

    public var inputNumber: String?

    public var mask: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.inputNumber != nil {
            map["InputNumber"] = self.inputNumber!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("InputNumber") && dict["InputNumber"] != nil {
            self.inputNumber = dict["InputNumber"] as! String
        }
        if dict.keys.contains("Mask") && dict["Mask"] != nil {
            self.mask = dict["Mask"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class PhoneNumberStatusForVirtualResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var isPrivacyNumber: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isPrivacyNumber != nil {
                map["IsPrivacyNumber"] = self.isPrivacyNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsPrivacyNumber") && dict["IsPrivacyNumber"] != nil {
                self.isPrivacyNumber = dict["IsPrivacyNumber"] as! Bool
            }
        }
    }
    public var code: String?

    public var data: PhoneNumberStatusForVirtualResponseBody.Data?

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
            var model = PhoneNumberStatusForVirtualResponseBody.Data()
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

public class PhoneNumberStatusForVirtualResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PhoneNumberStatusForVirtualResponseBody?

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
            var model = PhoneNumberStatusForVirtualResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PhoneNumberStatusForVoiceRequest : Tea.TeaModel {
    public var authCode: String?

    public var inputNumber: String?

    public var mask: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.inputNumber != nil {
            map["InputNumber"] = self.inputNumber!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("InputNumber") && dict["InputNumber"] != nil {
            self.inputNumber = dict["InputNumber"] as! String
        }
        if dict.keys.contains("Mask") && dict["Mask"] != nil {
            self.mask = dict["Mask"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class PhoneNumberStatusForVoiceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var carrier: String?

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
            if self.carrier != nil {
                map["Carrier"] = self.carrier!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Carrier") && dict["Carrier"] != nil {
                self.carrier = dict["Carrier"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: PhoneNumberStatusForVoiceResponseBody.Data?

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
            var model = PhoneNumberStatusForVoiceResponseBody.Data()
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

public class PhoneNumberStatusForVoiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PhoneNumberStatusForVoiceResponseBody?

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
            var model = PhoneNumberStatusForVoiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAvailableAuthCodeRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tagId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.tagId != nil {
            map["TagId"] = self.tagId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TagId") && dict["TagId"] != nil {
            self.tagId = dict["TagId"] as! Int64
        }
    }
}

public class QueryAvailableAuthCodeResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [String]?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! [String]
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

public class QueryAvailableAuthCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAvailableAuthCodeResponseBody?

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
            var model = QueryAvailableAuthCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryTagApplyRuleRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tagId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.tagId != nil {
            map["TagId"] = self.tagId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TagId") && dict["TagId"] != nil {
            self.tagId = dict["TagId"] as! Int64
        }
    }
}

public class QueryTagApplyRuleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var applyMaterialDesc: String?

        public var autoAudit: Int64?

        public var chargingStandardLink: String?

        public var encryptedQuery: Int64?

        public var needApplyMaterial: Int64?

        public var slaLink: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applyMaterialDesc != nil {
                map["ApplyMaterialDesc"] = self.applyMaterialDesc!
            }
            if self.autoAudit != nil {
                map["AutoAudit"] = self.autoAudit!
            }
            if self.chargingStandardLink != nil {
                map["ChargingStandardLink"] = self.chargingStandardLink!
            }
            if self.encryptedQuery != nil {
                map["EncryptedQuery"] = self.encryptedQuery!
            }
            if self.needApplyMaterial != nil {
                map["NeedApplyMaterial"] = self.needApplyMaterial!
            }
            if self.slaLink != nil {
                map["SlaLink"] = self.slaLink!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplyMaterialDesc") && dict["ApplyMaterialDesc"] != nil {
                self.applyMaterialDesc = dict["ApplyMaterialDesc"] as! String
            }
            if dict.keys.contains("AutoAudit") && dict["AutoAudit"] != nil {
                self.autoAudit = dict["AutoAudit"] as! Int64
            }
            if dict.keys.contains("ChargingStandardLink") && dict["ChargingStandardLink"] != nil {
                self.chargingStandardLink = dict["ChargingStandardLink"] as! String
            }
            if dict.keys.contains("EncryptedQuery") && dict["EncryptedQuery"] != nil {
                self.encryptedQuery = dict["EncryptedQuery"] as! Int64
            }
            if dict.keys.contains("NeedApplyMaterial") && dict["NeedApplyMaterial"] != nil {
                self.needApplyMaterial = dict["NeedApplyMaterial"] as! Int64
            }
            if dict.keys.contains("SlaLink") && dict["SlaLink"] != nil {
                self.slaLink = dict["SlaLink"] as! String
            }
        }
    }
    public var code: String?

    public var data: QueryTagApplyRuleResponseBody.Data?

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
            var model = QueryTagApplyRuleResponseBody.Data()
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

public class QueryTagApplyRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTagApplyRuleResponseBody?

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
            var model = QueryTagApplyRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryTagInfoBySelectionRequest : Tea.TeaModel {
    public var industryId: Int64?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sceneId: Int64?

    public var tagId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.industryId != nil {
            map["IndustryId"] = self.industryId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sceneId != nil {
            map["SceneId"] = self.sceneId!
        }
        if self.tagId != nil {
            map["TagId"] = self.tagId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IndustryId") && dict["IndustryId"] != nil {
            self.industryId = dict["IndustryId"] as! Int64
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
            self.sceneId = dict["SceneId"] as! Int64
        }
        if dict.keys.contains("TagId") && dict["TagId"] != nil {
            self.tagId = dict["TagId"] as! Int64
        }
    }
}

public class QueryTagInfoBySelectionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ParamList : Tea.TeaModel {
            public class ValueDict : Tea.TeaModel {
                public var code: String?

                public var desc: String?

                public override init() {
                    super.init()
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
                    if self.desc != nil {
                        map["Desc"] = self.desc!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Code") && dict["Code"] != nil {
                        self.code = dict["Code"] as! String
                    }
                    if dict.keys.contains("Desc") && dict["Desc"] != nil {
                        self.desc = dict["Desc"] as! String
                    }
                }
            }
            public var code: String?

            public var hint: String?

            public var must: Bool?

            public var name: String?

            public var type: String?

            public var valueDict: [QueryTagInfoBySelectionResponseBody.Data.ParamList.ValueDict]?

            public override init() {
                super.init()
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
                if self.hint != nil {
                    map["Hint"] = self.hint!
                }
                if self.must != nil {
                    map["Must"] = self.must!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.valueDict != nil {
                    var tmp : [Any] = []
                    for k in self.valueDict! {
                        tmp.append(k.toMap())
                    }
                    map["ValueDict"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Hint") && dict["Hint"] != nil {
                    self.hint = dict["Hint"] as! String
                }
                if dict.keys.contains("Must") && dict["Must"] != nil {
                    self.must = dict["Must"] as! Bool
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("ValueDict") && dict["ValueDict"] != nil {
                    var tmp : [QueryTagInfoBySelectionResponseBody.Data.ParamList.ValueDict] = []
                    for v in dict["ValueDict"] as! [Any] {
                        var model = QueryTagInfoBySelectionResponseBody.Data.ParamList.ValueDict()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.valueDict = tmp
                }
            }
        }
        public var authCodeList: [String]?

        public var complexityType: String?

        public var demoAddress: String?

        public var docAddress: String?

        public var enumDefinitionAddress: String?

        public var flowName: String?

        public var industryId: Int64?

        public var industryName: String?

        public var paramList: [QueryTagInfoBySelectionResponseBody.Data.ParamList]?

        public var richTextDescription: String?

        public var sceneId: Int64?

        public var sceneName: String?

        public var tagId: Int64?

        public var tagName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authCodeList != nil {
                map["AuthCodeList"] = self.authCodeList!
            }
            if self.complexityType != nil {
                map["ComplexityType"] = self.complexityType!
            }
            if self.demoAddress != nil {
                map["DemoAddress"] = self.demoAddress!
            }
            if self.docAddress != nil {
                map["DocAddress"] = self.docAddress!
            }
            if self.enumDefinitionAddress != nil {
                map["EnumDefinitionAddress"] = self.enumDefinitionAddress!
            }
            if self.flowName != nil {
                map["FlowName"] = self.flowName!
            }
            if self.industryId != nil {
                map["IndustryId"] = self.industryId!
            }
            if self.industryName != nil {
                map["IndustryName"] = self.industryName!
            }
            if self.paramList != nil {
                var tmp : [Any] = []
                for k in self.paramList! {
                    tmp.append(k.toMap())
                }
                map["ParamList"] = tmp
            }
            if self.richTextDescription != nil {
                map["RichTextDescription"] = self.richTextDescription!
            }
            if self.sceneId != nil {
                map["SceneId"] = self.sceneId!
            }
            if self.sceneName != nil {
                map["SceneName"] = self.sceneName!
            }
            if self.tagId != nil {
                map["TagId"] = self.tagId!
            }
            if self.tagName != nil {
                map["TagName"] = self.tagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthCodeList") && dict["AuthCodeList"] != nil {
                self.authCodeList = dict["AuthCodeList"] as! [String]
            }
            if dict.keys.contains("ComplexityType") && dict["ComplexityType"] != nil {
                self.complexityType = dict["ComplexityType"] as! String
            }
            if dict.keys.contains("DemoAddress") && dict["DemoAddress"] != nil {
                self.demoAddress = dict["DemoAddress"] as! String
            }
            if dict.keys.contains("DocAddress") && dict["DocAddress"] != nil {
                self.docAddress = dict["DocAddress"] as! String
            }
            if dict.keys.contains("EnumDefinitionAddress") && dict["EnumDefinitionAddress"] != nil {
                self.enumDefinitionAddress = dict["EnumDefinitionAddress"] as! String
            }
            if dict.keys.contains("FlowName") && dict["FlowName"] != nil {
                self.flowName = dict["FlowName"] as! String
            }
            if dict.keys.contains("IndustryId") && dict["IndustryId"] != nil {
                self.industryId = dict["IndustryId"] as! Int64
            }
            if dict.keys.contains("IndustryName") && dict["IndustryName"] != nil {
                self.industryName = dict["IndustryName"] as! String
            }
            if dict.keys.contains("ParamList") && dict["ParamList"] != nil {
                var tmp : [QueryTagInfoBySelectionResponseBody.Data.ParamList] = []
                for v in dict["ParamList"] as! [Any] {
                    var model = QueryTagInfoBySelectionResponseBody.Data.ParamList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.paramList = tmp
            }
            if dict.keys.contains("RichTextDescription") && dict["RichTextDescription"] != nil {
                self.richTextDescription = dict["RichTextDescription"] as! String
            }
            if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
                self.sceneId = dict["SceneId"] as! Int64
            }
            if dict.keys.contains("SceneName") && dict["SceneName"] != nil {
                self.sceneName = dict["SceneName"] as! String
            }
            if dict.keys.contains("TagId") && dict["TagId"] != nil {
                self.tagId = dict["TagId"] as! Int64
            }
            if dict.keys.contains("TagName") && dict["TagName"] != nil {
                self.tagName = dict["TagName"] as! String
            }
        }
    }
    public var code: String?

    public var data: [QueryTagInfoBySelectionResponseBody.Data]?

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
            var tmp : [QueryTagInfoBySelectionResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QueryTagInfoBySelectionResponseBody.Data()
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

public class QueryTagInfoBySelectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTagInfoBySelectionResponseBody?

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
            var model = QueryTagInfoBySelectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryTagListPageRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryTagListPageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public var apiName: String?

            public var code: String?

            public var docAddress: String?

            public var id: Int64?

            public var industryId: Int64?

            public var industryName: String?

            public var introduction: String?

            public var isOpen: Int64?

            public var name: String?

            public var saleStatusStr: String?

            public var sceneId: Int64?

            public var sceneName: String?

            public override init() {
                super.init()
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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.docAddress != nil {
                    map["DocAddress"] = self.docAddress!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.industryId != nil {
                    map["IndustryId"] = self.industryId!
                }
                if self.industryName != nil {
                    map["IndustryName"] = self.industryName!
                }
                if self.introduction != nil {
                    map["Introduction"] = self.introduction!
                }
                if self.isOpen != nil {
                    map["IsOpen"] = self.isOpen!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.saleStatusStr != nil {
                    map["SaleStatusStr"] = self.saleStatusStr!
                }
                if self.sceneId != nil {
                    map["SceneId"] = self.sceneId!
                }
                if self.sceneName != nil {
                    map["SceneName"] = self.sceneName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiName") && dict["ApiName"] != nil {
                    self.apiName = dict["ApiName"] as! String
                }
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("DocAddress") && dict["DocAddress"] != nil {
                    self.docAddress = dict["DocAddress"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("IndustryId") && dict["IndustryId"] != nil {
                    self.industryId = dict["IndustryId"] as! Int64
                }
                if dict.keys.contains("IndustryName") && dict["IndustryName"] != nil {
                    self.industryName = dict["IndustryName"] as! String
                }
                if dict.keys.contains("Introduction") && dict["Introduction"] != nil {
                    self.introduction = dict["Introduction"] as! String
                }
                if dict.keys.contains("IsOpen") && dict["IsOpen"] != nil {
                    self.isOpen = dict["IsOpen"] as! Int64
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("SaleStatusStr") && dict["SaleStatusStr"] != nil {
                    self.saleStatusStr = dict["SaleStatusStr"] as! String
                }
                if dict.keys.contains("SceneId") && dict["SceneId"] != nil {
                    self.sceneId = dict["SceneId"] as! Int64
                }
                if dict.keys.contains("SceneName") && dict["SceneName"] != nil {
                    self.sceneName = dict["SceneName"] as! String
                }
            }
        }
        public var pageNo: Int64?

        public var pageSize: Int64?

        public var records: [QueryTagListPageResponseBody.Data.Records]?

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
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.records != nil {
                var tmp : [Any] = []
                for k in self.records! {
                    tmp.append(k.toMap())
                }
                map["Records"] = tmp
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
            if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
                self.pageNo = dict["PageNo"] as! Int64
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("Records") && dict["Records"] != nil {
                var tmp : [QueryTagListPageResponseBody.Data.Records] = []
                for v in dict["Records"] as! [Any] {
                    var model = QueryTagListPageResponseBody.Data.Records()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.records = tmp
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int64
            }
            if dict.keys.contains("TotalPage") && dict["TotalPage"] != nil {
                self.totalPage = dict["TotalPage"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: QueryTagListPageResponseBody.Data?

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
            var model = QueryTagListPageResponseBody.Data()
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

public class QueryTagListPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTagListPageResponseBody?

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
            var model = QueryTagListPageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryUsageStatisticsByTagIdRequest : Tea.TeaModel {
    public var beginTime: String?

    public var endTime: String?

    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tagId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.beginTime != nil {
            map["BeginTime"] = self.beginTime!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.tagId != nil {
            map["TagId"] = self.tagId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TagId") && dict["TagId"] != nil {
            self.tagId = dict["TagId"] as! Int64
        }
    }
}

public class QueryUsageStatisticsByTagIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var authorizationCode: String?

        public var failTotal: Int64?

        public var gmtDateStr: String?

        public var id: Int64?

        public var industryName: String?

        public var partnerId: Int64?

        public var sceneName: String?

        public var successTotal: Int64?

        public var tagId: Int64?

        public var tagName: String?

        public var total: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authorizationCode != nil {
                map["AuthorizationCode"] = self.authorizationCode!
            }
            if self.failTotal != nil {
                map["FailTotal"] = self.failTotal!
            }
            if self.gmtDateStr != nil {
                map["GmtDateStr"] = self.gmtDateStr!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.industryName != nil {
                map["IndustryName"] = self.industryName!
            }
            if self.partnerId != nil {
                map["PartnerId"] = self.partnerId!
            }
            if self.sceneName != nil {
                map["SceneName"] = self.sceneName!
            }
            if self.successTotal != nil {
                map["SuccessTotal"] = self.successTotal!
            }
            if self.tagId != nil {
                map["TagId"] = self.tagId!
            }
            if self.tagName != nil {
                map["TagName"] = self.tagName!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthorizationCode") && dict["AuthorizationCode"] != nil {
                self.authorizationCode = dict["AuthorizationCode"] as! String
            }
            if dict.keys.contains("FailTotal") && dict["FailTotal"] != nil {
                self.failTotal = dict["FailTotal"] as! Int64
            }
            if dict.keys.contains("GmtDateStr") && dict["GmtDateStr"] != nil {
                self.gmtDateStr = dict["GmtDateStr"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("IndustryName") && dict["IndustryName"] != nil {
                self.industryName = dict["IndustryName"] as! String
            }
            if dict.keys.contains("PartnerId") && dict["PartnerId"] != nil {
                self.partnerId = dict["PartnerId"] as! Int64
            }
            if dict.keys.contains("SceneName") && dict["SceneName"] != nil {
                self.sceneName = dict["SceneName"] as! String
            }
            if dict.keys.contains("SuccessTotal") && dict["SuccessTotal"] != nil {
                self.successTotal = dict["SuccessTotal"] as! Int64
            }
            if dict.keys.contains("TagId") && dict["TagId"] != nil {
                self.tagId = dict["TagId"] as! Int64
            }
            if dict.keys.contains("TagName") && dict["TagName"] != nil {
                self.tagName = dict["TagName"] as! String
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: [QueryUsageStatisticsByTagIdResponseBody.Data]?

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
            var tmp : [QueryUsageStatisticsByTagIdResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QueryUsageStatisticsByTagIdResponseBody.Data()
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

public class QueryUsageStatisticsByTagIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryUsageStatisticsByTagIdResponseBody?

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
            var model = QueryUsageStatisticsByTagIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ThreeElementsVerificationRequest : Tea.TeaModel {
    public var authCode: String?

    public var certCode: String?

    public var inputNumber: String?

    public var mask: String?

    public var name: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.certCode != nil {
            map["CertCode"] = self.certCode!
        }
        if self.inputNumber != nil {
            map["InputNumber"] = self.inputNumber!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("CertCode") && dict["CertCode"] != nil {
            self.certCode = dict["CertCode"] as! String
        }
        if dict.keys.contains("InputNumber") && dict["InputNumber"] != nil {
            self.inputNumber = dict["InputNumber"] as! String
        }
        if dict.keys.contains("Mask") && dict["Mask"] != nil {
            self.mask = dict["Mask"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ThreeElementsVerificationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var basicCarrier: String?

        public var isConsistent: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.basicCarrier != nil {
                map["BasicCarrier"] = self.basicCarrier!
            }
            if self.isConsistent != nil {
                map["IsConsistent"] = self.isConsistent!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BasicCarrier") && dict["BasicCarrier"] != nil {
                self.basicCarrier = dict["BasicCarrier"] as! String
            }
            if dict.keys.contains("IsConsistent") && dict["IsConsistent"] != nil {
                self.isConsistent = dict["IsConsistent"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: ThreeElementsVerificationResponseBody.Data?

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
            var model = ThreeElementsVerificationResponseBody.Data()
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

public class ThreeElementsVerificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ThreeElementsVerificationResponseBody?

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
            var model = ThreeElementsVerificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TwoElementsVerificationRequest : Tea.TeaModel {
    public var authCode: String?

    public var inputNumber: String?

    public var mask: String?

    public var name: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.inputNumber != nil {
            map["InputNumber"] = self.inputNumber!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("InputNumber") && dict["InputNumber"] != nil {
            self.inputNumber = dict["InputNumber"] as! String
        }
        if dict.keys.contains("Mask") && dict["Mask"] != nil {
            self.mask = dict["Mask"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class TwoElementsVerificationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var basicCarrier: String?

        public var isConsistent: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.basicCarrier != nil {
                map["BasicCarrier"] = self.basicCarrier!
            }
            if self.isConsistent != nil {
                map["IsConsistent"] = self.isConsistent!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BasicCarrier") && dict["BasicCarrier"] != nil {
                self.basicCarrier = dict["BasicCarrier"] as! String
            }
            if dict.keys.contains("IsConsistent") && dict["IsConsistent"] != nil {
                self.isConsistent = dict["IsConsistent"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: TwoElementsVerificationResponseBody.Data?

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
            var model = TwoElementsVerificationResponseBody.Data()
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

public class TwoElementsVerificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TwoElementsVerificationResponseBody?

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
            var model = TwoElementsVerificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UAIDVerificationRequest : Tea.TeaModel {
    public var authCode: String?

    public var carrier: String?

    public var ip: String?

    public var outId: String?

    public var ownerId: Int64?

    public var province: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var token: String?

    public var userGrantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.carrier != nil {
            map["Carrier"] = self.carrier!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.userGrantId != nil {
            map["UserGrantId"] = self.userGrantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") && dict["AuthCode"] != nil {
            self.authCode = dict["AuthCode"] as! String
        }
        if dict.keys.contains("Carrier") && dict["Carrier"] != nil {
            self.carrier = dict["Carrier"] as! String
        }
        if dict.keys.contains("Ip") && dict["Ip"] != nil {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("OutId") && dict["OutId"] != nil {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Province") && dict["Province"] != nil {
            self.province = dict["Province"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
            self.token = dict["Token"] as! String
        }
        if dict.keys.contains("UserGrantId") && dict["UserGrantId"] != nil {
            self.userGrantId = dict["UserGrantId"] as! String
        }
    }
}

public class UAIDVerificationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var uaid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.uaid != nil {
                map["Uaid"] = self.uaid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Uaid") && dict["Uaid"] != nil {
                self.uaid = dict["Uaid"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: UAIDVerificationResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if dict.keys.contains("AccessDeniedDetail") && dict["AccessDeniedDetail"] != nil {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = UAIDVerificationResponseBody.Data()
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

public class UAIDVerificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UAIDVerificationResponseBody?

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
            var model = UAIDVerificationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
