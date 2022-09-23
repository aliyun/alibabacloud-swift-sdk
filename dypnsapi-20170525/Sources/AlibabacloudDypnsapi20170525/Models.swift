import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateVerifySchemeRequest : Tea.TeaModel {
    public var appName: String?

    public var bundleId: String?

    public var osType: String?

    public var ownerId: Int64?

    public var packName: String?

    public var packSign: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var schemeName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bundleId != nil {
            map["BundleId"] = self.bundleId!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.packName != nil {
            map["PackName"] = self.packName!
        }
        if self.packSign != nil {
            map["PackSign"] = self.packSign!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.schemeName != nil {
            map["SchemeName"] = self.schemeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("BundleId") {
            self.bundleId = dict["BundleId"] as! String
        }
        if dict.keys.contains("OsType") {
            self.osType = dict["OsType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PackName") {
            self.packName = dict["PackName"] as! String
        }
        if dict.keys.contains("PackSign") {
            self.packSign = dict["PackSign"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SchemeName") {
            self.schemeName = dict["SchemeName"] as! String
        }
    }
}

public class CreateVerifySchemeResponseBody : Tea.TeaModel {
    public class GateVerifySchemeDTO : Tea.TeaModel {
        public var schemeCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.schemeCode != nil {
                map["SchemeCode"] = self.schemeCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SchemeCode") {
                self.schemeCode = dict["SchemeCode"] as! String
            }
        }
    }
    public var code: String?

    public var gateVerifySchemeDTO: CreateVerifySchemeResponseBody.GateVerifySchemeDTO?

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
        try self.gateVerifySchemeDTO?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.gateVerifySchemeDTO != nil {
            map["GateVerifySchemeDTO"] = self.gateVerifySchemeDTO?.toMap()
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("GateVerifySchemeDTO") {
            var model = CreateVerifySchemeResponseBody.GateVerifySchemeDTO()
            model.fromMap(dict["GateVerifySchemeDTO"] as! [String: Any])
            self.gateVerifySchemeDTO = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateVerifySchemeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVerifySchemeResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateVerifySchemeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVerifySchemeRequest : Tea.TeaModel {
    public var customerId: Int64?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var schemeCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customerId != nil {
            map["CustomerId"] = self.customerId!
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
        if self.schemeCode != nil {
            map["SchemeCode"] = self.schemeCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomerId") {
            self.customerId = dict["CustomerId"] as! Int64
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SchemeCode") {
            self.schemeCode = dict["SchemeCode"] as! String
        }
    }
}

public class DeleteVerifySchemeResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
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
        if self.result != nil {
            map["Result"] = self.result!
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
            self.result = dict["Result"] as! Bool
        }
    }
}

public class DeleteVerifySchemeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVerifySchemeResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteVerifySchemeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVerifySchemeRequest : Tea.TeaModel {
    public var customerId: Int64?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var schemeCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customerId != nil {
            map["CustomerId"] = self.customerId!
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
        if self.schemeCode != nil {
            map["SchemeCode"] = self.schemeCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomerId") {
            self.customerId = dict["CustomerId"] as! Int64
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SchemeCode") {
            self.schemeCode = dict["SchemeCode"] as! String
        }
    }
}

public class DescribeVerifySchemeResponseBody : Tea.TeaModel {
    public class SchemeQueryResultDTO : Tea.TeaModel {
        public var appEncryptInfo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appEncryptInfo != nil {
                map["AppEncryptInfo"] = self.appEncryptInfo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppEncryptInfo") {
                self.appEncryptInfo = dict["AppEncryptInfo"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var schemeQueryResultDTO: DescribeVerifySchemeResponseBody.SchemeQueryResultDTO?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.schemeQueryResultDTO?.validate()
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
        if self.schemeQueryResultDTO != nil {
            map["SchemeQueryResultDTO"] = self.schemeQueryResultDTO?.toMap()
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
        if dict.keys.contains("SchemeQueryResultDTO") {
            var model = DescribeVerifySchemeResponseBody.SchemeQueryResultDTO()
            model.fromMap(dict["SchemeQueryResultDTO"] as! [String: Any])
            self.schemeQueryResultDTO = model
        }
    }
}

public class DescribeVerifySchemeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVerifySchemeResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeVerifySchemeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAuthTokenRequest : Tea.TeaModel {
    public var origin: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.origin != nil {
            map["Origin"] = self.origin!
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
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Origin") {
            self.origin = dict["Origin"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
    }
}

public class GetAuthTokenResponseBody : Tea.TeaModel {
    public class TokenInfo : Tea.TeaModel {
        public var accessToken: String?

        public var jwtToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessToken != nil {
                map["AccessToken"] = self.accessToken!
            }
            if self.jwtToken != nil {
                map["JwtToken"] = self.jwtToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessToken") {
                self.accessToken = dict["AccessToken"] as! String
            }
            if dict.keys.contains("JwtToken") {
                self.jwtToken = dict["JwtToken"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var tokenInfo: GetAuthTokenResponseBody.TokenInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tokenInfo?.validate()
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
        if self.tokenInfo != nil {
            map["TokenInfo"] = self.tokenInfo?.toMap()
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
        if dict.keys.contains("TokenInfo") {
            var model = GetAuthTokenResponseBody.TokenInfo()
            model.fromMap(dict["TokenInfo"] as! [String: Any])
            self.tokenInfo = model
        }
    }
}

public class GetAuthTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAuthTokenResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAuthTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAuthorizationUrlRequest : Tea.TeaModel {
    public var endDate: String?

    public var ownerId: Int64?

    public var phoneNo: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var schemeId: Int64?

    public override init() {
        super.init()
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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNo != nil {
            map["PhoneNo"] = self.phoneNo!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.schemeId != nil {
            map["SchemeId"] = self.schemeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNo") {
            self.phoneNo = dict["PhoneNo"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SchemeId") {
            self.schemeId = dict["SchemeId"] as! Int64
        }
    }
}

public class GetAuthorizationUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var authorizationUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authorizationUrl != nil {
                map["AuthorizationUrl"] = self.authorizationUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthorizationUrl") {
                self.authorizationUrl = dict["AuthorizationUrl"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetAuthorizationUrlResponseBody.Data?

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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetAuthorizationUrlResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAuthorizationUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAuthorizationUrlResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAuthorizationUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCertifyResultRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
        }
    }
}

public class GetCertifyResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deviceToken: String?

        public var identityInfo: String?

        public var materialInfo: String?

        public var verifyDesc: String?

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
            if self.deviceToken != nil {
                map["DeviceToken"] = self.deviceToken!
            }
            if self.identityInfo != nil {
                map["IdentityInfo"] = self.identityInfo!
            }
            if self.materialInfo != nil {
                map["MaterialInfo"] = self.materialInfo!
            }
            if self.verifyDesc != nil {
                map["VerifyDesc"] = self.verifyDesc!
            }
            if self.verifyResult != nil {
                map["VerifyResult"] = self.verifyResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceToken") {
                self.deviceToken = dict["DeviceToken"] as! String
            }
            if dict.keys.contains("IdentityInfo") {
                self.identityInfo = dict["IdentityInfo"] as! String
            }
            if dict.keys.contains("MaterialInfo") {
                self.materialInfo = dict["MaterialInfo"] as! String
            }
            if dict.keys.contains("VerifyDesc") {
                self.verifyDesc = dict["VerifyDesc"] as! String
            }
            if dict.keys.contains("VerifyResult") {
                self.verifyResult = dict["VerifyResult"] as! String
            }
        }
    }
    public var code: String?

    public var data: [GetCertifyResultResponseBody.Data]?

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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! [GetCertifyResultResponseBody.Data]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetCertifyResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCertifyResultResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetCertifyResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMobileRequest : Tea.TeaModel {
    public var accessToken: String?

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
        if self.accessToken != nil {
            map["AccessToken"] = self.accessToken!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("OutId") {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class GetMobileResponseBody : Tea.TeaModel {
    public class GetMobileResultDTO : Tea.TeaModel {
        public var mobile: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Mobile") {
                self.mobile = dict["Mobile"] as! String
            }
        }
    }
    public var code: String?

    public var getMobileResultDTO: GetMobileResponseBody.GetMobileResultDTO?

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
        try self.getMobileResultDTO?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.getMobileResultDTO != nil {
            map["GetMobileResultDTO"] = self.getMobileResultDTO?.toMap()
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("GetMobileResultDTO") {
            var model = GetMobileResponseBody.GetMobileResultDTO()
            model.fromMap(dict["GetMobileResultDTO"] as! [String: Any])
            self.getMobileResultDTO = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetMobileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMobileResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetMobileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSmsAuthTokensRequest : Tea.TeaModel {
    public var bundleId: String?

    public var expire: Int64?

    public var osType: String?

    public var ownerId: Int64?

    public var packageName: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sceneCode: String?

    public var signName: String?

    public var smsCodeExpire: Int32?

    public var smsTemplateCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bundleId != nil {
            map["BundleId"] = self.bundleId!
        }
        if self.expire != nil {
            map["Expire"] = self.expire!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.packageName != nil {
            map["PackageName"] = self.packageName!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sceneCode != nil {
            map["SceneCode"] = self.sceneCode!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        if self.smsCodeExpire != nil {
            map["SmsCodeExpire"] = self.smsCodeExpire!
        }
        if self.smsTemplateCode != nil {
            map["SmsTemplateCode"] = self.smsTemplateCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BundleId") {
            self.bundleId = dict["BundleId"] as! String
        }
        if dict.keys.contains("Expire") {
            self.expire = dict["Expire"] as! Int64
        }
        if dict.keys.contains("OsType") {
            self.osType = dict["OsType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PackageName") {
            self.packageName = dict["PackageName"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SceneCode") {
            self.sceneCode = dict["SceneCode"] as! String
        }
        if dict.keys.contains("SignName") {
            self.signName = dict["SignName"] as! String
        }
        if dict.keys.contains("SmsCodeExpire") {
            self.smsCodeExpire = dict["SmsCodeExpire"] as! Int32
        }
        if dict.keys.contains("SmsTemplateCode") {
            self.smsTemplateCode = dict["SmsTemplateCode"] as! String
        }
    }
}

public class GetSmsAuthTokensResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bizToken: String?

        public var expireTime: Int64?

        public var stsAccessKeyId: String?

        public var stsAccessKeySecret: String?

        public var stsToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizToken != nil {
                map["BizToken"] = self.bizToken!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.stsAccessKeyId != nil {
                map["StsAccessKeyId"] = self.stsAccessKeyId!
            }
            if self.stsAccessKeySecret != nil {
                map["StsAccessKeySecret"] = self.stsAccessKeySecret!
            }
            if self.stsToken != nil {
                map["StsToken"] = self.stsToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizToken") {
                self.bizToken = dict["BizToken"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! Int64
            }
            if dict.keys.contains("StsAccessKeyId") {
                self.stsAccessKeyId = dict["StsAccessKeyId"] as! String
            }
            if dict.keys.contains("StsAccessKeySecret") {
                self.stsAccessKeySecret = dict["StsAccessKeySecret"] as! String
            }
            if dict.keys.contains("StsToken") {
                self.stsToken = dict["StsToken"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetSmsAuthTokensResponseBody.Data?

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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = GetSmsAuthTokensResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetSmsAuthTokensResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSmsAuthTokensResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetSmsAuthTokensResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryGateVerifyBillingPublicRequest : Tea.TeaModel {
    public var authenticationType: Int32?

    public var month: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authenticationType != nil {
            map["AuthenticationType"] = self.authenticationType!
        }
        if self.month != nil {
            map["Month"] = self.month!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthenticationType") {
            self.authenticationType = dict["AuthenticationType"] as! Int32
        }
        if dict.keys.contains("Month") {
            self.month = dict["Month"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
    }
}

public class QueryGateVerifyBillingPublicResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SceneBillingList : Tea.TeaModel {
            public var add: String?

            public var amount: String?

            public var appName: String?

            public var itemName: String?

            public var sceneCode: String?

            public var sceneName: String?

            public var singlePrice: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.add != nil {
                    map["Add"] = self.add!
                }
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.itemName != nil {
                    map["ItemName"] = self.itemName!
                }
                if self.sceneCode != nil {
                    map["SceneCode"] = self.sceneCode!
                }
                if self.sceneName != nil {
                    map["SceneName"] = self.sceneName!
                }
                if self.singlePrice != nil {
                    map["SinglePrice"] = self.singlePrice!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Add") {
                    self.add = dict["Add"] as! String
                }
                if dict.keys.contains("Amount") {
                    self.amount = dict["Amount"] as! String
                }
                if dict.keys.contains("AppName") {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("ItemName") {
                    self.itemName = dict["ItemName"] as! String
                }
                if dict.keys.contains("SceneCode") {
                    self.sceneCode = dict["SceneCode"] as! String
                }
                if dict.keys.contains("SceneName") {
                    self.sceneName = dict["SceneName"] as! String
                }
                if dict.keys.contains("SinglePrice") {
                    self.singlePrice = dict["SinglePrice"] as! String
                }
            }
        }
        public var amountSum: String?

        public var sceneBillingList: [QueryGateVerifyBillingPublicResponseBody.Data.SceneBillingList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.amountSum != nil {
                map["AmountSum"] = self.amountSum!
            }
            if self.sceneBillingList != nil {
                var tmp : [Any] = []
                for k in self.sceneBillingList! {
                    tmp.append(k.toMap())
                }
                map["SceneBillingList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AmountSum") {
                self.amountSum = dict["AmountSum"] as! String
            }
            if dict.keys.contains("SceneBillingList") {
                self.sceneBillingList = dict["SceneBillingList"] as! [QueryGateVerifyBillingPublicResponseBody.Data.SceneBillingList]
            }
        }
    }
    public var code: String?

    public var data: QueryGateVerifyBillingPublicResponseBody.Data?

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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryGateVerifyBillingPublicResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryGateVerifyBillingPublicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryGateVerifyBillingPublicResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryGateVerifyBillingPublicResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryGateVerifyStatisticPublicRequest : Tea.TeaModel {
    public var authenticationType: Int32?

    public var endDate: String?

    public var osType: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var sceneCode: String?

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
        if self.authenticationType != nil {
            map["AuthenticationType"] = self.authenticationType!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.sceneCode != nil {
            map["SceneCode"] = self.sceneCode!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthenticationType") {
            self.authenticationType = dict["AuthenticationType"] as! Int32
        }
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("OsType") {
            self.osType = dict["OsType"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("SceneCode") {
            self.sceneCode = dict["SceneCode"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
    }
}

public class QueryGateVerifyStatisticPublicResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DayStatistic : Tea.TeaModel {
            public var statisticDateStr: String?

            public var totalFail: Int64?

            public var totalSuccess: Int64?

            public var totalUnknown: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.statisticDateStr != nil {
                    map["StatisticDateStr"] = self.statisticDateStr!
                }
                if self.totalFail != nil {
                    map["TotalFail"] = self.totalFail!
                }
                if self.totalSuccess != nil {
                    map["TotalSuccess"] = self.totalSuccess!
                }
                if self.totalUnknown != nil {
                    map["TotalUnknown"] = self.totalUnknown!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("StatisticDateStr") {
                    self.statisticDateStr = dict["StatisticDateStr"] as! String
                }
                if dict.keys.contains("TotalFail") {
                    self.totalFail = dict["TotalFail"] as! Int64
                }
                if dict.keys.contains("TotalSuccess") {
                    self.totalSuccess = dict["TotalSuccess"] as! Int64
                }
                if dict.keys.contains("TotalUnknown") {
                    self.totalUnknown = dict["TotalUnknown"] as! Int64
                }
            }
        }
        public var dayStatistic: [QueryGateVerifyStatisticPublicResponseBody.Data.DayStatistic]?

        public var total: Int64?

        public var totalFail: Int64?

        public var totalSuccess: Int64?

        public var totalUnknown: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dayStatistic != nil {
                var tmp : [Any] = []
                for k in self.dayStatistic! {
                    tmp.append(k.toMap())
                }
                map["DayStatistic"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            if self.totalFail != nil {
                map["TotalFail"] = self.totalFail!
            }
            if self.totalSuccess != nil {
                map["TotalSuccess"] = self.totalSuccess!
            }
            if self.totalUnknown != nil {
                map["TotalUnknown"] = self.totalUnknown!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DayStatistic") {
                self.dayStatistic = dict["DayStatistic"] as! [QueryGateVerifyStatisticPublicResponseBody.Data.DayStatistic]
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int64
            }
            if dict.keys.contains("TotalFail") {
                self.totalFail = dict["TotalFail"] as! Int64
            }
            if dict.keys.contains("TotalSuccess") {
                self.totalSuccess = dict["TotalSuccess"] as! Int64
            }
            if dict.keys.contains("TotalUnknown") {
                self.totalUnknown = dict["TotalUnknown"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: QueryGateVerifyStatisticPublicResponseBody.Data?

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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QueryGateVerifyStatisticPublicResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryGateVerifyStatisticPublicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryGateVerifyStatisticPublicResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryGateVerifyStatisticPublicResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyMobileRequest : Tea.TeaModel {
    public var accessCode: String?

    public var outId: String?

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
        if self.accessCode != nil {
            map["AccessCode"] = self.accessCode!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
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
        if dict.keys.contains("AccessCode") {
            self.accessCode = dict["AccessCode"] as! String
        }
        if dict.keys.contains("OutId") {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class VerifyMobileResponseBody : Tea.TeaModel {
    public class GateVerifyResultDTO : Tea.TeaModel {
        public var verifyId: String?

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
            if self.verifyId != nil {
                map["VerifyId"] = self.verifyId!
            }
            if self.verifyResult != nil {
                map["VerifyResult"] = self.verifyResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VerifyId") {
                self.verifyId = dict["VerifyId"] as! String
            }
            if dict.keys.contains("VerifyResult") {
                self.verifyResult = dict["VerifyResult"] as! String
            }
        }
    }
    public var code: String?

    public var gateVerifyResultDTO: VerifyMobileResponseBody.GateVerifyResultDTO?

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
        try self.gateVerifyResultDTO?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.gateVerifyResultDTO != nil {
            map["GateVerifyResultDTO"] = self.gateVerifyResultDTO?.toMap()
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("GateVerifyResultDTO") {
            var model = VerifyMobileResponseBody.GateVerifyResultDTO()
            model.fromMap(dict["GateVerifyResultDTO"] as! [String: Any])
            self.gateVerifyResultDTO = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VerifyMobileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyMobileResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = VerifyMobileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyPhoneWithTokenRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var spToken: String?

    public override init() {
        super.init()
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
        if self.spToken != nil {
            map["SpToken"] = self.spToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SpToken") {
            self.spToken = dict["SpToken"] as! String
        }
    }
}

public class VerifyPhoneWithTokenResponseBody : Tea.TeaModel {
    public class GateVerify : Tea.TeaModel {
        public var verifyId: String?

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
            if self.verifyId != nil {
                map["VerifyId"] = self.verifyId!
            }
            if self.verifyResult != nil {
                map["VerifyResult"] = self.verifyResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VerifyId") {
                self.verifyId = dict["VerifyId"] as! String
            }
            if dict.keys.contains("VerifyResult") {
                self.verifyResult = dict["VerifyResult"] as! String
            }
        }
    }
    public var code: String?

    public var gateVerify: VerifyPhoneWithTokenResponseBody.GateVerify?

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
        try self.gateVerify?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.gateVerify != nil {
            map["GateVerify"] = self.gateVerify?.toMap()
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("GateVerify") {
            var model = VerifyPhoneWithTokenResponseBody.GateVerify()
            model.fromMap(dict["GateVerify"] as! [String: Any])
            self.gateVerify = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VerifyPhoneWithTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyPhoneWithTokenResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = VerifyPhoneWithTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifySmsCodeRequest : Tea.TeaModel {
    public var phoneNumber: String?

    public var smsCode: String?

    public var smsToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.smsCode != nil {
            map["SmsCode"] = self.smsCode!
        }
        if self.smsToken != nil {
            map["SmsToken"] = self.smsToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PhoneNumber") {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("SmsCode") {
            self.smsCode = dict["SmsCode"] as! String
        }
        if dict.keys.contains("SmsToken") {
            self.smsToken = dict["SmsToken"] as! String
        }
    }
}

public class VerifySmsCodeResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VerifySmsCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifySmsCodeResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = VerifySmsCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
