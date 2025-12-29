import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CertNoThreeElementVerificationRequest : Tea.TeaModel {
    public var authCode: String?

    public var certName: String?

    public var certNo: String?

    public var certPicture: String?

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
        if self.certName != nil {
            map["CertName"] = self.certName!
        }
        if self.certNo != nil {
            map["CertNo"] = self.certNo!
        }
        if self.certPicture != nil {
            map["CertPicture"] = self.certPicture!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["CertName"] as? String {
            self.certName = value
        }
        if let value = dict["CertNo"] as? String {
            self.certNo = value
        }
        if let value = dict["CertPicture"] as? String {
            self.certPicture = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CertNoThreeElementVerificationResponseBody : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IsConsistent"] as? String {
                self.isConsistent = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CertNoThreeElementVerificationResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CertNoThreeElementVerificationResponseBody.Data()
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

public class CertNoThreeElementVerificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CertNoThreeElementVerificationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CertNoThreeElementVerificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["CertName"] as? String {
            self.certName = value
        }
        if let value = dict["CertNo"] as? String {
            self.certNo = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IsConsistent"] as? String {
                self.isConsistent = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CertNoTwoElementVerificationResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CertNoTwoElementVerificationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["EpCertName"] as? String {
            self.epCertName = value
        }
        if let value = dict["EpCertNo"] as? String {
            self.epCertNo = value
        }
        if let value = dict["LegalPersonCertName"] as? String {
            self.legalPersonCertName = value
        }
        if let value = dict["LegalPersonCertNo"] as? String {
            self.legalPersonCertNo = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EnterpriseStatus"] as? String {
                    self.enterpriseStatus = value
                }
                if let value = dict["OpenTime"] as? String {
                    self.openTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DetailInfo"] as? [String: Any?] {
                var model = CompanyFourElementsVerificationResponseBody.Data.DetailInfo()
                model.fromMap(value)
                self.detailInfo = model
            }
            if let value = dict["InconsistentData"] as? [String] {
                self.inconsistentData = value
            }
            if let value = dict["ReasonCode"] as? Int64 {
                self.reasonCode = value
            }
            if let value = dict["VerifyResult"] as? String {
                self.verifyResult = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CompanyFourElementsVerificationResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CompanyFourElementsVerificationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["EpCertName"] as? String {
            self.epCertName = value
        }
        if let value = dict["EpCertNo"] as? String {
            self.epCertNo = value
        }
        if let value = dict["LegalPersonCertName"] as? String {
            self.legalPersonCertName = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EnterpriseStatus"] as? String {
                    self.enterpriseStatus = value
                }
                if let value = dict["OpenTime"] as? String {
                    self.openTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DetailInfo"] as? [String: Any?] {
                var model = CompanyThreeElementsVerificationResponseBody.Data.DetailInfo()
                model.fromMap(value)
                self.detailInfo = model
            }
            if let value = dict["InconsistentData"] as? [String] {
                self.inconsistentData = value
            }
            if let value = dict["ReasonCode"] as? Int64 {
                self.reasonCode = value
            }
            if let value = dict["VerifyResult"] as? String {
                self.verifyResult = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CompanyThreeElementsVerificationResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CompanyThreeElementsVerificationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["EpCertName"] as? String {
            self.epCertName = value
        }
        if let value = dict["EpCertNo"] as? String {
            self.epCertNo = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EnterpriseStatus"] as? String {
                    self.enterpriseStatus = value
                }
                if let value = dict["OpenTime"] as? String {
                    self.openTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DetailInfo"] as? [String: Any?] {
                var model = CompanyTwoElementsVerificationResponseBody.Data.DetailInfo()
                model.fromMap(value)
                self.detailInfo = model
            }
            if let value = dict["InconsistentData"] as? [String] {
                self.inconsistentData = value
            }
            if let value = dict["ReasonCode"] as? String {
                self.reasonCode = value
            }
            if let value = dict["VerifyResult"] as? String {
                self.verifyResult = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CompanyTwoElementsVerificationResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CompanyTwoElementsVerificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteContactsRequest : Tea.TeaModel {
    public var contactId: Int64?

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
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactId"] as? Int64 {
            self.contactId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DeleteContactsResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
        if let value = dict["Data"] as? Bool {
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

public class DeleteContactsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteContactsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteContactsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["InputNumber"] as? String {
            self.inputNumber = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Number"] as? String {
                self.number = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeEmptyNumberResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeEmptyNumberResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeMobileOperatorAttributeRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["InputNumber"] as? String {
            self.inputNumber = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DescribeMobileOperatorAttributeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var basicCarrier: String?

        public var carrier: String?

        public var city: String?

        public var isNumberPortability: Bool?

        public var province: String?

        public var realNumber: String?

        public var segmentCarrier: String?

        public override init() {
            super.init()
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
            if self.province != nil {
                map["Province"] = self.province!
            }
            if self.realNumber != nil {
                map["RealNumber"] = self.realNumber!
            }
            if self.segmentCarrier != nil {
                map["SegmentCarrier"] = self.segmentCarrier!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BasicCarrier"] as? String {
                self.basicCarrier = value
            }
            if let value = dict["Carrier"] as? String {
                self.carrier = value
            }
            if let value = dict["City"] as? String {
                self.city = value
            }
            if let value = dict["IsNumberPortability"] as? Bool {
                self.isNumberPortability = value
            }
            if let value = dict["Province"] as? String {
                self.province = value
            }
            if let value = dict["RealNumber"] as? String {
                self.realNumber = value
            }
            if let value = dict["SegmentCarrier"] as? String {
                self.segmentCarrier = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: DescribeMobileOperatorAttributeResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeMobileOperatorAttributeResponseBody.Data()
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

public class DescribeMobileOperatorAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMobileOperatorAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeMobileOperatorAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["InputNumber"] as? String {
            self.inputNumber = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["NumberType"] as? Int64 {
            self.numberType = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Rate"] as? Int64 {
            self.rate = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["Number"] as? String {
                    self.number = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [DescribePhoneNumberAnalysisResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = DescribePhoneNumberAnalysisResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribePhoneNumberAnalysisResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePhoneNumberAnalysisResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["InputNumber"] as? String {
            self.inputNumber = value
        }
        if let value = dict["ModelConfig"] as? String {
            self.modelConfig = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Rate"] as? Int64 {
            self.rate = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Number"] as? String {
                self.number = value
            }
        }
    }
    public var accessDeniedDetail: String?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribePhoneNumberAnalysisAIResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePhoneNumberAnalysisAIResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePhoneNumberAnalysisPaiRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["InputNumber"] as? String {
            self.inputNumber = value
        }
        if let value = dict["ModelConfig"] as? String {
            self.modelConfig = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Rate"] as? Int64 {
            self.rate = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DescribePhoneNumberAnalysisPaiResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [String]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String] {
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

public class DescribePhoneNumberAnalysisPaiResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePhoneNumberAnalysisPaiResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePhoneNumberAnalysisPaiResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["InputNumber"] as? String {
            self.inputNumber = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["NumberType"] as? String {
            self.numberType = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Device_risk"] as? String {
                self.deviceRisk = value
            }
            if let value = dict["Ip_risk"] as? String {
                self.ipRisk = value
            }
            if let value = dict["Score1"] as? String {
                self.score1 = value
            }
            if let value = dict["Score2"] as? String {
                self.score2 = value
            }
            if let value = dict["Score3"] as? String {
                self.score3 = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribePhoneNumberAnalysisTransparentResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePhoneNumberAnalysisTransparentResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BasicCarrier"] as? String {
                self.basicCarrier = value
            }
            if let value = dict["Carrier"] as? String {
                self.carrier = value
            }
            if let value = dict["City"] as? String {
                self.city = value
            }
            if let value = dict["IsNumberPortability"] as? Bool {
                self.isNumberPortability = value
            }
            if let value = dict["NumberSegment"] as? Int64 {
                self.numberSegment = value
            }
            if let value = dict["Province"] as? String {
                self.province = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PhoneNumberAttribute"] as? [String: Any?] {
            var model = DescribePhoneNumberAttributeResponseBody.PhoneNumberAttribute()
            model.fromMap(value)
            self.phoneNumberAttribute = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePhoneNumberAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["Carrier"] as? String {
            self.carrier = value
        }
        if let value = dict["InputNumber"] as? String {
            self.inputNumber = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CarrierCode"] as? String {
                self.carrierCode = value
            }
            if let value = dict["VerifyResult"] as? String {
                self.verifyResult = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribePhoneNumberOnlineTimeResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePhoneNumberOnlineTimeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePhoneNumberOperatorAttributeRequest : Tea.TeaModel {
    public var authCode: String?

    public var flowName: String?

    public var inputNumber: String?

    public var mask: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var resultCount: String?

    public override init() {
        super.init()
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
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
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
        if self.resultCount != nil {
            map["ResultCount"] = self.resultCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["InputNumber"] as? String {
            self.inputNumber = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ResultCount"] as? String {
            self.resultCount = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BasicCarrier"] as? String {
                self.basicCarrier = value
            }
            if let value = dict["Carrier"] as? String {
                self.carrier = value
            }
            if let value = dict["City"] as? String {
                self.city = value
            }
            if let value = dict["IsNumberPortability"] as? Bool {
                self.isNumberPortability = value
            }
            if let value = dict["NumberSegment"] as? Int64 {
                self.numberSegment = value
            }
            if let value = dict["Province"] as? String {
                self.province = value
            }
        }
    }
    public var accessDeniedDetail: String?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribePhoneNumberOperatorAttributeResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePhoneNumberOperatorAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePhoneNumberOperatorAttributeAnnualRequest : Tea.TeaModel {
    public var authCode: String?

    public var mask: String?

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
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.number != nil {
            map["Number"] = self.number!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["Number"] as? String {
            self.number = value
        }
    }
}

public class DescribePhoneNumberOperatorAttributeAnnualResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var basicCarrier: String?

        public var carrier: String?

        public var city: String?

        public var mts: String?

        public var numberPortability: Bool?

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
            if self.mts != nil {
                map["Mts"] = self.mts!
            }
            if self.numberPortability != nil {
                map["NumberPortability"] = self.numberPortability!
            }
            if self.province != nil {
                map["Province"] = self.province!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BasicCarrier"] as? String {
                self.basicCarrier = value
            }
            if let value = dict["Carrier"] as? String {
                self.carrier = value
            }
            if let value = dict["City"] as? String {
                self.city = value
            }
            if let value = dict["Mts"] as? String {
                self.mts = value
            }
            if let value = dict["NumberPortability"] as? Bool {
                self.numberPortability = value
            }
            if let value = dict["Province"] as? String {
                self.province = value
            }
        }
    }
    public var code: String?

    public var data: DescribePhoneNumberOperatorAttributeAnnualResponseBody.Data?

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
            var model = DescribePhoneNumberOperatorAttributeAnnualResponseBody.Data()
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

public class DescribePhoneNumberOperatorAttributeAnnualResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePhoneNumberOperatorAttributeAnnualResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePhoneNumberOperatorAttributeAnnualResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePhoneNumberOperatorAttributeAnnualUseRequest : Tea.TeaModel {
    public var authCode: String?

    public var inputNumber: String?

    public var mask: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["InputNumber"] as? String {
            self.inputNumber = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
    }
}

public class DescribePhoneNumberOperatorAttributeAnnualUseResponseBody : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BasicCarrier"] as? String {
                self.basicCarrier = value
            }
            if let value = dict["Carrier"] as? String {
                self.carrier = value
            }
            if let value = dict["City"] as? String {
                self.city = value
            }
            if let value = dict["IsNumberPortability"] as? Bool {
                self.isNumberPortability = value
            }
            if let value = dict["NumberSegment"] as? Int64 {
                self.numberSegment = value
            }
            if let value = dict["Province"] as? String {
                self.province = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: DescribePhoneNumberOperatorAttributeAnnualUseResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribePhoneNumberOperatorAttributeAnnualUseResponseBody.Data()
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

public class DescribePhoneNumberOperatorAttributeAnnualUseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePhoneNumberOperatorAttributeAnnualUseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePhoneNumberOperatorAttributeAnnualUseResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["InputNumber"] as? String {
            self.inputNumber = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VerifyResult"] as? String {
                self.verifyResult = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribePhoneNumberRiskResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePhoneNumberRiskResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["InputNumber"] as? String {
            self.inputNumber = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Carrier"] as? String {
                self.carrier = value
            }
            if let value = dict["VerifyResult"] as? String {
                self.verifyResult = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribePhoneTwiceTelVerifyResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePhoneTwiceTelVerifyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["Carrier"] as? String {
            self.carrier = value
        }
        if let value = dict["ClientType"] as? String {
            self.clientType = value
        }
        if let value = dict["Format"] as? String {
            self.format = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ParamKey"] as? String {
            self.paramKey = value
        }
        if let value = dict["ParamStr"] as? String {
            self.paramStr = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Time"] as? String {
            self.time = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Carrier"] as? String {
                self.carrier = value
            }
            if let value = dict["OutId"] as? String {
                self.outId = value
            }
            if let value = dict["Sign"] as? String {
                self.sign = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetUAIDApplyTokenSignResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetUAIDApplyTokenSignResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUAIDConversionSignRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["Carrier"] as? String {
            self.carrier = value
        }
        if let value = dict["ClientType"] as? String {
            self.clientType = value
        }
        if let value = dict["Format"] as? String {
            self.format = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ParamKey"] as? String {
            self.paramKey = value
        }
        if let value = dict["ParamStr"] as? String {
            self.paramStr = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Time"] as? String {
            self.time = value
        }
    }
}

public class GetUAIDConversionSignResponseBody : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Carrier"] as? String {
                self.carrier = value
            }
            if let value = dict["OutId"] as? String {
                self.outId = value
            }
            if let value = dict["Sign"] as? String {
                self.sign = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetUAIDConversionSignResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetUAIDConversionSignResponseBody.Data()
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

public class GetUAIDConversionSignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUAIDConversionSignResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetUAIDConversionSignResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["InputNumber"] as? String {
            self.inputNumber = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["EncryptedNumber"] as? String {
                self.encryptedNumber = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["OriginalNumber"] as? String {
                self.originalNumber = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [InvalidPhoneNumberFilterResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = InvalidPhoneNumberFilterResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = InvalidPhoneNumberFilterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListContactsRequest : Tea.TeaModel {
    public var bizType: String?

    public var contactId: Int64?

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
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["ContactId"] as? Int64 {
            self.contactId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ListContactsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var contactEmail: String?

        public var contactId: Int64?

        public var contactName: String?

        public var contactPhone: String?

        public var mailStatus: Int32?

        public var main: Int32?

        public var openStatusWarning: Bool?

        public var opentAttributionWarning: Bool?

        public var phoneStatus: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contactEmail != nil {
                map["ContactEmail"] = self.contactEmail!
            }
            if self.contactId != nil {
                map["ContactId"] = self.contactId!
            }
            if self.contactName != nil {
                map["ContactName"] = self.contactName!
            }
            if self.contactPhone != nil {
                map["ContactPhone"] = self.contactPhone!
            }
            if self.mailStatus != nil {
                map["MailStatus"] = self.mailStatus!
            }
            if self.main != nil {
                map["Main"] = self.main!
            }
            if self.openStatusWarning != nil {
                map["OpenStatusWarning"] = self.openStatusWarning!
            }
            if self.opentAttributionWarning != nil {
                map["OpentAttributionWarning"] = self.opentAttributionWarning!
            }
            if self.phoneStatus != nil {
                map["PhoneStatus"] = self.phoneStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContactEmail"] as? String {
                self.contactEmail = value
            }
            if let value = dict["ContactId"] as? Int64 {
                self.contactId = value
            }
            if let value = dict["ContactName"] as? String {
                self.contactName = value
            }
            if let value = dict["ContactPhone"] as? String {
                self.contactPhone = value
            }
            if let value = dict["MailStatus"] as? Int32 {
                self.mailStatus = value
            }
            if let value = dict["Main"] as? Int32 {
                self.main = value
            }
            if let value = dict["OpenStatusWarning"] as? Bool {
                self.openStatusWarning = value
            }
            if let value = dict["OpentAttributionWarning"] as? Bool {
                self.opentAttributionWarning = value
            }
            if let value = dict["PhoneStatus"] as? Int32 {
                self.phoneStatus = value
            }
        }
    }
    public var code: String?

    public var data: [ListContactsResponseBody.Data]?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListContactsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListContactsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListContactsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListContactsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListContactsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["InputNumber"] as? String {
            self.inputNumber = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConverResult"] as? Bool {
                self.converResult = value
            }
            if let value = dict["Number"] as? String {
                self.number = value
            }
            if let value = dict["NumberMd5"] as? String {
                self.numberMd5 = value
            }
            if let value = dict["NumberSha256"] as? String {
                self.numberSha256 = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [PhoneNumberConvertServiceResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = PhoneNumberConvertServiceResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PhoneNumberConvertServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PhoneNumberEncryptRequest : Tea.TeaModel {
    public var authCode: String?

    public var inputNumber: String?

    public var mask: String?

    public var outId: String?

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
        if self.outId != nil {
            map["OutId"] = self.outId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["InputNumber"] as? String {
            self.inputNumber = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class PhoneNumberEncryptResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var encryptedNumber: String?

        public var expireTime: String?

        public var originalNumber: String?

        public var outId: String?

        public override init() {
            super.init()
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
            if self.outId != nil {
                map["OutId"] = self.outId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EncryptedNumber"] as? String {
                self.encryptedNumber = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["OriginalNumber"] as? String {
                self.originalNumber = value
            }
            if let value = dict["OutId"] as? String {
                self.outId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [PhoneNumberEncryptResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = PhoneNumberEncryptResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PhoneNumberEncryptResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["InputNumber"] as? String {
            self.inputNumber = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Carrier"] as? String {
                self.carrier = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = PhoneNumberStatusForAccountResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PhoneNumberStatusForAccountResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["InputNumber"] as? String {
            self.inputNumber = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Carrier"] as? String {
                self.carrier = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = PhoneNumberStatusForPublicResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PhoneNumberStatusForPublicResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["InputNumber"] as? String {
            self.inputNumber = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Carrier"] as? String {
                self.carrier = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = PhoneNumberStatusForRealResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PhoneNumberStatusForRealResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["InputNumber"] as? String {
            self.inputNumber = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Carrier"] as? String {
                self.carrier = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = PhoneNumberStatusForSmsResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PhoneNumberStatusForSmsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["InputNumber"] as? String {
            self.inputNumber = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Carrier"] as? String {
                self.carrier = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = PhoneNumberStatusForVoiceResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PhoneNumberStatusForVoiceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TagId"] as? Int64 {
            self.tagId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String] {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryAvailableAuthCodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryPackageTypeInfoRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var productName: String?

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
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ProductName"] as? String {
            self.productName = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class QueryPackageTypeInfoResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: [String: Any]?

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
        if let value = dict["Data"] as? [String: Any] {
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

public class QueryPackageTypeInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPackageTypeInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryPackageTypeInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryPhoneNumberOnlineTimeRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["InputNumber"] as? String {
            self.inputNumber = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class QueryPhoneNumberOnlineTimeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var carrierCode: String?

        public var verifyResult: Int64?

        public override init() {
            super.init()
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CarrierCode"] as? String {
                self.carrierCode = value
            }
            if let value = dict["VerifyResult"] as? Int64 {
                self.verifyResult = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: QueryPhoneNumberOnlineTimeResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryPhoneNumberOnlineTimeResponseBody.Data()
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

public class QueryPhoneNumberOnlineTimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPhoneNumberOnlineTimeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryPhoneNumberOnlineTimeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryPhoneTwiceTelVerifyRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["InputNumber"] as? String {
            self.inputNumber = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class QueryPhoneTwiceTelVerifyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var carrierCode: String?

        public var verifyResult: Int64?

        public override init() {
            super.init()
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CarrierCode"] as? String {
                self.carrierCode = value
            }
            if let value = dict["VerifyResult"] as? Int64 {
                self.verifyResult = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: QueryPhoneTwiceTelVerifyResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryPhoneTwiceTelVerifyResponseBody.Data()
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

public class QueryPhoneTwiceTelVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPhoneTwiceTelVerifyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryPhoneTwiceTelVerifyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TagId"] as? Int64 {
            self.tagId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApplyMaterialDesc"] as? String {
                self.applyMaterialDesc = value
            }
            if let value = dict["AutoAudit"] as? Int64 {
                self.autoAudit = value
            }
            if let value = dict["ChargingStandardLink"] as? String {
                self.chargingStandardLink = value
            }
            if let value = dict["EncryptedQuery"] as? Int64 {
                self.encryptedQuery = value
            }
            if let value = dict["NeedApplyMaterial"] as? Int64 {
                self.needApplyMaterial = value
            }
            if let value = dict["SlaLink"] as? String {
                self.slaLink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryTagApplyRuleResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryTagApplyRuleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IndustryId"] as? Int64 {
            self.industryId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SceneId"] as? Int64 {
            self.sceneId = value
        }
        if let value = dict["TagId"] as? Int64 {
            self.tagId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Code"] as? String {
                        self.code = value
                    }
                    if let value = dict["Desc"] as? String {
                        self.desc = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["Hint"] as? String {
                    self.hint = value
                }
                if let value = dict["Must"] as? Bool {
                    self.must = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["ValueDict"] as? [Any?] {
                    var tmp : [QueryTagInfoBySelectionResponseBody.Data.ParamList.ValueDict] = []
                    for v in value {
                        if v != nil {
                            var model = QueryTagInfoBySelectionResponseBody.Data.ParamList.ValueDict()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthCodeList"] as? [String] {
                self.authCodeList = value
            }
            if let value = dict["ComplexityType"] as? String {
                self.complexityType = value
            }
            if let value = dict["DemoAddress"] as? String {
                self.demoAddress = value
            }
            if let value = dict["DocAddress"] as? String {
                self.docAddress = value
            }
            if let value = dict["EnumDefinitionAddress"] as? String {
                self.enumDefinitionAddress = value
            }
            if let value = dict["FlowName"] as? String {
                self.flowName = value
            }
            if let value = dict["IndustryId"] as? Int64 {
                self.industryId = value
            }
            if let value = dict["IndustryName"] as? String {
                self.industryName = value
            }
            if let value = dict["ParamList"] as? [Any?] {
                var tmp : [QueryTagInfoBySelectionResponseBody.Data.ParamList] = []
                for v in value {
                    if v != nil {
                        var model = QueryTagInfoBySelectionResponseBody.Data.ParamList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.paramList = tmp
            }
            if let value = dict["RichTextDescription"] as? String {
                self.richTextDescription = value
            }
            if let value = dict["SceneId"] as? Int64 {
                self.sceneId = value
            }
            if let value = dict["SceneName"] as? String {
                self.sceneName = value
            }
            if let value = dict["TagId"] as? Int64 {
                self.tagId = value
            }
            if let value = dict["TagName"] as? String {
                self.tagName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryTagInfoBySelectionResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryTagInfoBySelectionResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryTagInfoBySelectionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int64 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ApiName"] as? String {
                    self.apiName = value
                }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["DocAddress"] as? String {
                    self.docAddress = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["IndustryId"] as? Int64 {
                    self.industryId = value
                }
                if let value = dict["IndustryName"] as? String {
                    self.industryName = value
                }
                if let value = dict["Introduction"] as? String {
                    self.introduction = value
                }
                if let value = dict["IsOpen"] as? Int64 {
                    self.isOpen = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["SaleStatusStr"] as? String {
                    self.saleStatusStr = value
                }
                if let value = dict["SceneId"] as? Int64 {
                    self.sceneId = value
                }
                if let value = dict["SceneName"] as? String {
                    self.sceneName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageNo"] as? Int64 {
                self.pageNo = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["Records"] as? [Any?] {
                var tmp : [QueryTagListPageResponseBody.Data.Records] = []
                for v in value {
                    if v != nil {
                        var model = QueryTagListPageResponseBody.Data.Records()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.records = tmp
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["TotalPage"] as? Int64 {
                self.totalPage = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryTagListPageResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryTagListPageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryTaskListRequest : Tea.TeaModel {
    public var currentPage: Int64?

    public var ownerId: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var result: [Int64]?

    public var tagId: Int64?

    public var taskId: Int64?

    public var taskName: String?

    public var taskType: [Int64]?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.tagId != nil {
            map["TagId"] = self.tagId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Result"] as? [Int64] {
            self.result = value
        }
        if let value = dict["TagId"] as? Int64 {
            self.tagId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["TaskType"] as? [Int64] {
            self.taskType = value
        }
    }
}

public class QueryTaskListShrinkRequest : Tea.TeaModel {
    public var currentPage: Int64?

    public var ownerId: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var resultShrink: String?

    public var tagId: Int64?

    public var taskId: Int64?

    public var taskName: String?

    public var taskTypeShrink: String?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if self.resultShrink != nil {
            map["Result"] = self.resultShrink!
        }
        if self.tagId != nil {
            map["TagId"] = self.tagId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.taskTypeShrink != nil {
            map["TaskType"] = self.taskTypeShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Result"] as? String {
            self.resultShrink = value
        }
        if let value = dict["TagId"] as? Int64 {
            self.tagId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskTypeShrink = value
        }
    }
}

public class QueryTaskListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var data: [String]?

        public var pageNo: Int64?

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
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [String] {
                self.data = value
            }
            if let value = dict["PageNo"] as? Int64 {
                self.pageNo = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: QueryTaskListResponseBody.Data?

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
            var model = QueryTaskListResponseBody.Data()
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

public class QueryTaskListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTaskListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryTaskListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BeginTime"] as? String {
            self.beginTime = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int64 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TagId"] as? Int64 {
            self.tagId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthorizationCode"] as? String {
                self.authorizationCode = value
            }
            if let value = dict["FailTotal"] as? Int64 {
                self.failTotal = value
            }
            if let value = dict["GmtDateStr"] as? String {
                self.gmtDateStr = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["IndustryName"] as? String {
                self.industryName = value
            }
            if let value = dict["PartnerId"] as? Int64 {
                self.partnerId = value
            }
            if let value = dict["SceneName"] as? String {
                self.sceneName = value
            }
            if let value = dict["SuccessTotal"] as? Int64 {
                self.successTotal = value
            }
            if let value = dict["TagId"] as? Int64 {
                self.tagId = value
            }
            if let value = dict["TagName"] as? String {
                self.tagName = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [QueryUsageStatisticsByTagIdResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryUsageStatisticsByTagIdResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryUsageStatisticsByTagIdResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["CertCode"] as? String {
            self.certCode = value
        }
        if let value = dict["InputNumber"] as? String {
            self.inputNumber = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BasicCarrier"] as? String {
                self.basicCarrier = value
            }
            if let value = dict["IsConsistent"] as? Int32 {
                self.isConsistent = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ThreeElementsVerificationResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ThreeElementsVerificationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["InputNumber"] as? String {
            self.inputNumber = value
        }
        if let value = dict["Mask"] as? String {
            self.mask = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BasicCarrier"] as? String {
                self.basicCarrier = value
            }
            if let value = dict["IsConsistent"] as? Int32 {
                self.isConsistent = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = TwoElementsVerificationResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = TwoElementsVerificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UAIDCollectionRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["Carrier"] as? String {
            self.carrier = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Province"] as? String {
            self.province = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
        if let value = dict["UserGrantId"] as? String {
            self.userGrantId = value
        }
    }
}

public class UAIDCollectionResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Uaid"] as? String {
                self.uaid = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: UAIDCollectionResponseBody.Model?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = UAIDCollectionResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UAIDCollectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UAIDCollectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UAIDCollectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UAIDConversionRequest : Tea.TeaModel {
    public var authCode: String?

    public var carrier: String?

    public var outId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var uaidList: String?

    public override init() {
        super.init()
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
        if self.outId != nil {
            map["OutId"] = self.outId!
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
        if self.uaidList != nil {
            map["UaidList"] = self.uaidList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["Carrier"] as? String {
            self.carrier = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["UaidList"] as? String {
            self.uaidList = value
        }
    }
}

public class UAIDConversionResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var phoneList: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.phoneList != nil {
                map["PhoneList"] = self.phoneList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PhoneList"] as? String {
                self.phoneList = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: UAIDConversionResponseBody.Model?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = UAIDConversionResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UAIDConversionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UAIDConversionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UAIDConversionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["Carrier"] as? String {
            self.carrier = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Province"] as? String {
            self.province = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
        if let value = dict["UserGrantId"] as? String {
            self.userGrantId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Uaid"] as? String {
                self.uaid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UAIDVerificationResponseBody.Data()
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UAIDVerificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateContactsRequest : Tea.TeaModel {
    public var contactEmail: String?

    public var contactId: Int64?

    public var contactName: String?

    public var contactPhone: String?

    public var mailStatus: Int32?

    public var openStatusWarning: Bool?

    public var opentAttributionWarning: Bool?

    public var ownerId: Int64?

    public var phoneStatus: Int32?

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
        if self.contactEmail != nil {
            map["ContactEmail"] = self.contactEmail!
        }
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.contactName != nil {
            map["ContactName"] = self.contactName!
        }
        if self.contactPhone != nil {
            map["ContactPhone"] = self.contactPhone!
        }
        if self.mailStatus != nil {
            map["MailStatus"] = self.mailStatus!
        }
        if self.openStatusWarning != nil {
            map["OpenStatusWarning"] = self.openStatusWarning!
        }
        if self.opentAttributionWarning != nil {
            map["OpentAttributionWarning"] = self.opentAttributionWarning!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneStatus != nil {
            map["PhoneStatus"] = self.phoneStatus!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactEmail"] as? String {
            self.contactEmail = value
        }
        if let value = dict["ContactId"] as? Int64 {
            self.contactId = value
        }
        if let value = dict["ContactName"] as? String {
            self.contactName = value
        }
        if let value = dict["ContactPhone"] as? String {
            self.contactPhone = value
        }
        if let value = dict["MailStatus"] as? Int32 {
            self.mailStatus = value
        }
        if let value = dict["OpenStatusWarning"] as? Bool {
            self.openStatusWarning = value
        }
        if let value = dict["OpentAttributionWarning"] as? Bool {
            self.opentAttributionWarning = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneStatus"] as? Int32 {
            self.phoneStatus = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class UpdateContactsResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
        if let value = dict["Data"] as? Bool {
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

public class UpdateContactsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateContactsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateContactsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
