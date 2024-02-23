import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CancelCertificateForPackageRequestRequest : Tea.TeaModel {
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

public class CancelCertificateForPackageRequestResponseBody : Tea.TeaModel {
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

public class CancelCertificateForPackageRequestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelCertificateForPackageRequestResponseBody?

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
            var model = CancelCertificateForPackageRequestResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelOrderRequestRequest : Tea.TeaModel {
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

public class CancelOrderRequestResponseBody : Tea.TeaModel {
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

public class CancelOrderRequestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelOrderRequestResponseBody?

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
            var model = CancelOrderRequestResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCertificateForPackageRequestRequest : Tea.TeaModel {
    public var companyName: String?

    public var csr: String?

    public var domain: String?

    public var email: String?

    public var phone: String?

    public var productCode: String?

    public var username: String?

    public var validateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.companyName != nil {
            map["CompanyName"] = self.companyName!
        }
        if self.csr != nil {
            map["Csr"] = self.csr!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        if self.validateType != nil {
            map["ValidateType"] = self.validateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CompanyName") && dict["CompanyName"] != nil {
            self.companyName = dict["CompanyName"] as! String
        }
        if dict.keys.contains("Csr") && dict["Csr"] != nil {
            self.csr = dict["Csr"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Phone") && dict["Phone"] != nil {
            self.phone = dict["Phone"] as! String
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
        }
        if dict.keys.contains("ValidateType") && dict["ValidateType"] != nil {
            self.validateType = dict["ValidateType"] as! String
        }
    }
}

public class CreateCertificateForPackageRequestResponseBody : Tea.TeaModel {
    public var orderId: Int64?

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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateCertificateForPackageRequestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCertificateForPackageRequestResponseBody?

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
            var model = CreateCertificateForPackageRequestResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCertificateRequestRequest : Tea.TeaModel {
    public var domain: String?

    public var email: String?

    public var phone: String?

    public var productCode: String?

    public var username: String?

    public var validateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        if self.validateType != nil {
            map["ValidateType"] = self.validateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Phone") && dict["Phone"] != nil {
            self.phone = dict["Phone"] as! String
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
        }
        if dict.keys.contains("ValidateType") && dict["ValidateType"] != nil {
            self.validateType = dict["ValidateType"] as! String
        }
    }
}

public class CreateCertificateRequestResponseBody : Tea.TeaModel {
    public var orderId: Int64?

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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateCertificateRequestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCertificateRequestResponseBody?

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
            var model = CreateCertificateRequestResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCertificateWithCsrRequestRequest : Tea.TeaModel {
    public var csr: String?

    public var email: String?

    public var phone: String?

    public var productCode: String?

    public var username: String?

    public var validateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.csr != nil {
            map["Csr"] = self.csr!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        if self.validateType != nil {
            map["ValidateType"] = self.validateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Csr") && dict["Csr"] != nil {
            self.csr = dict["Csr"] as! String
        }
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Phone") && dict["Phone"] != nil {
            self.phone = dict["Phone"] as! String
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
        }
        if dict.keys.contains("ValidateType") && dict["ValidateType"] != nil {
            self.validateType = dict["ValidateType"] as! String
        }
    }
}

public class CreateCertificateWithCsrRequestResponseBody : Tea.TeaModel {
    public var orderId: Int64?

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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateCertificateWithCsrRequestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCertificateWithCsrRequestResponseBody?

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
            var model = CreateCertificateWithCsrRequestResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWHClientCertificateRequest : Tea.TeaModel {
    public var afterTime: Int64?

    public var algorithm: String?

    public var beforeTime: Int64?

    public var commonName: String?

    public var country: String?

    public var csr: String?

    public var days: Int64?

    public var immediately: Int64?

    public var locality: String?

    public var months: Int64?

    public var organization: String?

    public var organizationUnit: String?

    public var parentIdentifier: String?

    public var sanType: Int64?

    public var sanValue: String?

    public var state: String?

    public var years: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.afterTime != nil {
            map["AfterTime"] = self.afterTime!
        }
        if self.algorithm != nil {
            map["Algorithm"] = self.algorithm!
        }
        if self.beforeTime != nil {
            map["BeforeTime"] = self.beforeTime!
        }
        if self.commonName != nil {
            map["CommonName"] = self.commonName!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.csr != nil {
            map["Csr"] = self.csr!
        }
        if self.days != nil {
            map["Days"] = self.days!
        }
        if self.immediately != nil {
            map["Immediately"] = self.immediately!
        }
        if self.locality != nil {
            map["Locality"] = self.locality!
        }
        if self.months != nil {
            map["Months"] = self.months!
        }
        if self.organization != nil {
            map["Organization"] = self.organization!
        }
        if self.organizationUnit != nil {
            map["OrganizationUnit"] = self.organizationUnit!
        }
        if self.parentIdentifier != nil {
            map["ParentIdentifier"] = self.parentIdentifier!
        }
        if self.sanType != nil {
            map["SanType"] = self.sanType!
        }
        if self.sanValue != nil {
            map["SanValue"] = self.sanValue!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.years != nil {
            map["Years"] = self.years!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AfterTime") && dict["AfterTime"] != nil {
            self.afterTime = dict["AfterTime"] as! Int64
        }
        if dict.keys.contains("Algorithm") && dict["Algorithm"] != nil {
            self.algorithm = dict["Algorithm"] as! String
        }
        if dict.keys.contains("BeforeTime") && dict["BeforeTime"] != nil {
            self.beforeTime = dict["BeforeTime"] as! Int64
        }
        if dict.keys.contains("CommonName") && dict["CommonName"] != nil {
            self.commonName = dict["CommonName"] as! String
        }
        if dict.keys.contains("Country") && dict["Country"] != nil {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("Csr") && dict["Csr"] != nil {
            self.csr = dict["Csr"] as! String
        }
        if dict.keys.contains("Days") && dict["Days"] != nil {
            self.days = dict["Days"] as! Int64
        }
        if dict.keys.contains("Immediately") && dict["Immediately"] != nil {
            self.immediately = dict["Immediately"] as! Int64
        }
        if dict.keys.contains("Locality") && dict["Locality"] != nil {
            self.locality = dict["Locality"] as! String
        }
        if dict.keys.contains("Months") && dict["Months"] != nil {
            self.months = dict["Months"] as! Int64
        }
        if dict.keys.contains("Organization") && dict["Organization"] != nil {
            self.organization = dict["Organization"] as! String
        }
        if dict.keys.contains("OrganizationUnit") && dict["OrganizationUnit"] != nil {
            self.organizationUnit = dict["OrganizationUnit"] as! String
        }
        if dict.keys.contains("ParentIdentifier") && dict["ParentIdentifier"] != nil {
            self.parentIdentifier = dict["ParentIdentifier"] as! String
        }
        if dict.keys.contains("SanType") && dict["SanType"] != nil {
            self.sanType = dict["SanType"] as! Int64
        }
        if dict.keys.contains("SanValue") && dict["SanValue"] != nil {
            self.sanValue = dict["SanValue"] as! String
        }
        if dict.keys.contains("State") && dict["State"] != nil {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("Years") && dict["Years"] != nil {
            self.years = dict["Years"] as! Int64
        }
    }
}

public class CreateWHClientCertificateResponseBody : Tea.TeaModel {
    public var certificateChain: String?

    public var identifier: String?

    public var parentX509Certificate: String?

    public var requestId: String?

    public var rootX509Certificate: String?

    public var x509Certificate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateChain != nil {
            map["CertificateChain"] = self.certificateChain!
        }
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.parentX509Certificate != nil {
            map["ParentX509Certificate"] = self.parentX509Certificate!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rootX509Certificate != nil {
            map["RootX509Certificate"] = self.rootX509Certificate!
        }
        if self.x509Certificate != nil {
            map["X509Certificate"] = self.x509Certificate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateChain") && dict["CertificateChain"] != nil {
            self.certificateChain = dict["CertificateChain"] as! String
        }
        if dict.keys.contains("Identifier") && dict["Identifier"] != nil {
            self.identifier = dict["Identifier"] as! String
        }
        if dict.keys.contains("ParentX509Certificate") && dict["ParentX509Certificate"] != nil {
            self.parentX509Certificate = dict["ParentX509Certificate"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RootX509Certificate") && dict["RootX509Certificate"] != nil {
            self.rootX509Certificate = dict["RootX509Certificate"] as! String
        }
        if dict.keys.contains("X509Certificate") && dict["X509Certificate"] != nil {
            self.x509Certificate = dict["X509Certificate"] as! String
        }
    }
}

public class CreateWHClientCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWHClientCertificateResponseBody?

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
            var model = CreateWHClientCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DecryptRequest : Tea.TeaModel {
    public var algorithm: String?

    public var certIdentifier: String?

    public var ciphertextBlob: String?

    public var messageType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.algorithm != nil {
            map["Algorithm"] = self.algorithm!
        }
        if self.certIdentifier != nil {
            map["CertIdentifier"] = self.certIdentifier!
        }
        if self.ciphertextBlob != nil {
            map["CiphertextBlob"] = self.ciphertextBlob!
        }
        if self.messageType != nil {
            map["MessageType"] = self.messageType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Algorithm") && dict["Algorithm"] != nil {
            self.algorithm = dict["Algorithm"] as! String
        }
        if dict.keys.contains("CertIdentifier") && dict["CertIdentifier"] != nil {
            self.certIdentifier = dict["CertIdentifier"] as! String
        }
        if dict.keys.contains("CiphertextBlob") && dict["CiphertextBlob"] != nil {
            self.ciphertextBlob = dict["CiphertextBlob"] as! String
        }
        if dict.keys.contains("MessageType") && dict["MessageType"] != nil {
            self.messageType = dict["MessageType"] as! String
        }
    }
}

public class DecryptResponseBody : Tea.TeaModel {
    public var certIdentifier: String?

    public var plaintext: String?

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
        if self.certIdentifier != nil {
            map["CertIdentifier"] = self.certIdentifier!
        }
        if self.plaintext != nil {
            map["Plaintext"] = self.plaintext!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertIdentifier") && dict["CertIdentifier"] != nil {
            self.certIdentifier = dict["CertIdentifier"] as! String
        }
        if dict.keys.contains("Plaintext") && dict["Plaintext"] != nil {
            self.plaintext = dict["Plaintext"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DecryptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DecryptResponseBody?

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
            var model = DecryptResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCertificateRequestRequest : Tea.TeaModel {
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

public class DeleteCertificateRequestResponseBody : Tea.TeaModel {
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

public class DeleteCertificateRequestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCertificateRequestResponseBody?

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
            var model = DeleteCertificateRequestResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePCACertRequest : Tea.TeaModel {
    public var identifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Identifier") && dict["Identifier"] != nil {
            self.identifier = dict["Identifier"] as! String
        }
    }
}

public class DeletePCACertResponseBody : Tea.TeaModel {
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

public class DeletePCACertResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePCACertResponseBody?

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
            var model = DeletePCACertResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUserCertificateRequest : Tea.TeaModel {
    public var certId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certId != nil {
            map["CertId"] = self.certId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertId") && dict["CertId"] != nil {
            self.certId = dict["CertId"] as! Int64
        }
    }
}

public class DeleteUserCertificateResponseBody : Tea.TeaModel {
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

public class DeleteUserCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserCertificateResponseBody?

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
            var model = DeleteUserCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCertificateStateRequest : Tea.TeaModel {
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

public class DescribeCertificateStateResponseBody : Tea.TeaModel {
    public var certificate: String?

    public var content: String?

    public var domain: String?

    public var privateKey: String?

    public var recordDomain: String?

    public var recordType: String?

    public var recordValue: String?

    public var requestId: String?

    public var type: String?

    public var uri: String?

    public var validateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificate != nil {
            map["Certificate"] = self.certificate!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.privateKey != nil {
            map["PrivateKey"] = self.privateKey!
        }
        if self.recordDomain != nil {
            map["RecordDomain"] = self.recordDomain!
        }
        if self.recordType != nil {
            map["RecordType"] = self.recordType!
        }
        if self.recordValue != nil {
            map["RecordValue"] = self.recordValue!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.uri != nil {
            map["Uri"] = self.uri!
        }
        if self.validateType != nil {
            map["ValidateType"] = self.validateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Certificate") && dict["Certificate"] != nil {
            self.certificate = dict["Certificate"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Domain") && dict["Domain"] != nil {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("PrivateKey") && dict["PrivateKey"] != nil {
            self.privateKey = dict["PrivateKey"] as! String
        }
        if dict.keys.contains("RecordDomain") && dict["RecordDomain"] != nil {
            self.recordDomain = dict["RecordDomain"] as! String
        }
        if dict.keys.contains("RecordType") && dict["RecordType"] != nil {
            self.recordType = dict["RecordType"] as! String
        }
        if dict.keys.contains("RecordValue") && dict["RecordValue"] != nil {
            self.recordValue = dict["RecordValue"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Uri") && dict["Uri"] != nil {
            self.uri = dict["Uri"] as! String
        }
        if dict.keys.contains("ValidateType") && dict["ValidateType"] != nil {
            self.validateType = dict["ValidateType"] as! String
        }
    }
}

public class DescribeCertificateStateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCertificateStateResponseBody?

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
            var model = DescribeCertificateStateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePackageStateRequest : Tea.TeaModel {
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
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
    }
}

public class DescribePackageStateResponseBody : Tea.TeaModel {
    public var issuedCount: Int64?

    public var productCode: String?

    public var requestId: String?

    public var totalCount: Int64?

    public var usedCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.issuedCount != nil {
            map["IssuedCount"] = self.issuedCount!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.usedCount != nil {
            map["UsedCount"] = self.usedCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IssuedCount") && dict["IssuedCount"] != nil {
            self.issuedCount = dict["IssuedCount"] as! Int64
        }
        if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
        if dict.keys.contains("UsedCount") && dict["UsedCount"] != nil {
            self.usedCount = dict["UsedCount"] as! Int64
        }
    }
}

public class DescribePackageStateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePackageStateResponseBody?

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
            var model = DescribePackageStateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EncryptRequest : Tea.TeaModel {
    public var algorithm: String?

    public var certIdentifier: String?

    public var messageType: String?

    public var plaintext: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.algorithm != nil {
            map["Algorithm"] = self.algorithm!
        }
        if self.certIdentifier != nil {
            map["CertIdentifier"] = self.certIdentifier!
        }
        if self.messageType != nil {
            map["MessageType"] = self.messageType!
        }
        if self.plaintext != nil {
            map["Plaintext"] = self.plaintext!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Algorithm") && dict["Algorithm"] != nil {
            self.algorithm = dict["Algorithm"] as! String
        }
        if dict.keys.contains("CertIdentifier") && dict["CertIdentifier"] != nil {
            self.certIdentifier = dict["CertIdentifier"] as! String
        }
        if dict.keys.contains("MessageType") && dict["MessageType"] != nil {
            self.messageType = dict["MessageType"] as! String
        }
        if dict.keys.contains("Plaintext") && dict["Plaintext"] != nil {
            self.plaintext = dict["Plaintext"] as! String
        }
    }
}

public class EncryptResponseBody : Tea.TeaModel {
    public var certIdentifier: String?

    public var ciphertextBlob: String?

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
        if self.certIdentifier != nil {
            map["CertIdentifier"] = self.certIdentifier!
        }
        if self.ciphertextBlob != nil {
            map["CiphertextBlob"] = self.ciphertextBlob!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertIdentifier") && dict["CertIdentifier"] != nil {
            self.certIdentifier = dict["CertIdentifier"] as! String
        }
        if dict.keys.contains("CiphertextBlob") && dict["CiphertextBlob"] != nil {
            self.ciphertextBlob = dict["CiphertextBlob"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class EncryptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EncryptResponseBody?

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
            var model = EncryptResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCertWarehouseQuotaResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var totalQuota: Int64?

    public var useCount: Int64?

    public override init() {
        super.init()
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
        if self.totalQuota != nil {
            map["TotalQuota"] = self.totalQuota!
        }
        if self.useCount != nil {
            map["UseCount"] = self.useCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalQuota") && dict["TotalQuota"] != nil {
            self.totalQuota = dict["TotalQuota"] as! Int64
        }
        if dict.keys.contains("UseCount") && dict["UseCount"] != nil {
            self.useCount = dict["UseCount"] as! Int64
        }
    }
}

public class GetCertWarehouseQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCertWarehouseQuotaResponseBody?

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
            var model = GetCertWarehouseQuotaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserCertificateDetailRequest : Tea.TeaModel {
    public var certFilter: Bool?

    public var certId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certFilter != nil {
            map["CertFilter"] = self.certFilter!
        }
        if self.certId != nil {
            map["CertId"] = self.certId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertFilter") && dict["CertFilter"] != nil {
            self.certFilter = dict["CertFilter"] as! Bool
        }
        if dict.keys.contains("CertId") && dict["CertId"] != nil {
            self.certId = dict["CertId"] as! Int64
        }
    }
}

public class GetUserCertificateDetailResponseBody : Tea.TeaModel {
    public var algorithm: String?

    public var buyInAliyun: Bool?

    public var cert: String?

    public var city: String?

    public var common: String?

    public var country: String?

    public var encryptCert: String?

    public var encryptPrivateKey: String?

    public var endDate: String?

    public var expired: Bool?

    public var fingerprint: String?

    public var id: Int64?

    public var issuer: String?

    public var key: String?

    public var name: String?

    public var orderId: Int64?

    public var orgName: String?

    public var province: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var sans: String?

    public var signCert: String?

    public var signPrivateKey: String?

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
        if self.algorithm != nil {
            map["Algorithm"] = self.algorithm!
        }
        if self.buyInAliyun != nil {
            map["BuyInAliyun"] = self.buyInAliyun!
        }
        if self.cert != nil {
            map["Cert"] = self.cert!
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.common != nil {
            map["Common"] = self.common!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.encryptCert != nil {
            map["EncryptCert"] = self.encryptCert!
        }
        if self.encryptPrivateKey != nil {
            map["EncryptPrivateKey"] = self.encryptPrivateKey!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.expired != nil {
            map["Expired"] = self.expired!
        }
        if self.fingerprint != nil {
            map["Fingerprint"] = self.fingerprint!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.issuer != nil {
            map["Issuer"] = self.issuer!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sans != nil {
            map["Sans"] = self.sans!
        }
        if self.signCert != nil {
            map["SignCert"] = self.signCert!
        }
        if self.signPrivateKey != nil {
            map["SignPrivateKey"] = self.signPrivateKey!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Algorithm") && dict["Algorithm"] != nil {
            self.algorithm = dict["Algorithm"] as! String
        }
        if dict.keys.contains("BuyInAliyun") && dict["BuyInAliyun"] != nil {
            self.buyInAliyun = dict["BuyInAliyun"] as! Bool
        }
        if dict.keys.contains("Cert") && dict["Cert"] != nil {
            self.cert = dict["Cert"] as! String
        }
        if dict.keys.contains("City") && dict["City"] != nil {
            self.city = dict["City"] as! String
        }
        if dict.keys.contains("Common") && dict["Common"] != nil {
            self.common = dict["Common"] as! String
        }
        if dict.keys.contains("Country") && dict["Country"] != nil {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("EncryptCert") && dict["EncryptCert"] != nil {
            self.encryptCert = dict["EncryptCert"] as! String
        }
        if dict.keys.contains("EncryptPrivateKey") && dict["EncryptPrivateKey"] != nil {
            self.encryptPrivateKey = dict["EncryptPrivateKey"] as! String
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("Expired") && dict["Expired"] != nil {
            self.expired = dict["Expired"] as! Bool
        }
        if dict.keys.contains("Fingerprint") && dict["Fingerprint"] != nil {
            self.fingerprint = dict["Fingerprint"] as! String
        }
        if dict.keys.contains("Id") && dict["Id"] != nil {
            self.id = dict["Id"] as! Int64
        }
        if dict.keys.contains("Issuer") && dict["Issuer"] != nil {
            self.issuer = dict["Issuer"] as! String
        }
        if dict.keys.contains("Key") && dict["Key"] != nil {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("OrgName") && dict["OrgName"] != nil {
            self.orgName = dict["OrgName"] as! String
        }
        if dict.keys.contains("Province") && dict["Province"] != nil {
            self.province = dict["Province"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Sans") && dict["Sans"] != nil {
            self.sans = dict["Sans"] as! String
        }
        if dict.keys.contains("SignCert") && dict["SignCert"] != nil {
            self.signCert = dict["SignCert"] as! String
        }
        if dict.keys.contains("SignPrivateKey") && dict["SignPrivateKey"] != nil {
            self.signPrivateKey = dict["SignPrivateKey"] as! String
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
    }
}

public class GetUserCertificateDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserCertificateDetailResponseBody?

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
            var model = GetUserCertificateDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCertRequest : Tea.TeaModel {
    public var certType: String?

    public var currentPage: Int64?

    public var keyWord: String?

    public var showSize: Int64?

    public var sourceType: String?

    public var status: String?

    public var warehouseId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certType != nil {
            map["CertType"] = self.certType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.keyWord != nil {
            map["KeyWord"] = self.keyWord!
        }
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.warehouseId != nil {
            map["WarehouseId"] = self.warehouseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertType") && dict["CertType"] != nil {
            self.certType = dict["CertType"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("KeyWord") && dict["KeyWord"] != nil {
            self.keyWord = dict["KeyWord"] as! String
        }
        if dict.keys.contains("ShowSize") && dict["ShowSize"] != nil {
            self.showSize = dict["ShowSize"] as! Int64
        }
        if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("WarehouseId") && dict["WarehouseId"] != nil {
            self.warehouseId = dict["WarehouseId"] as! Int64
        }
    }
}

public class ListCertResponseBody : Tea.TeaModel {
    public class CertList : Tea.TeaModel {
        public var afterDate: Int64?

        public var beforeDate: Int64?

        public var certType: String?

        public var commonName: String?

        public var existPrivateKey: Bool?

        public var identifier: String?

        public var issuer: String?

        public var sans: String?

        public var sourceType: String?

        public var status: String?

        public var whId: Int64?

        public var whInstanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.afterDate != nil {
                map["AfterDate"] = self.afterDate!
            }
            if self.beforeDate != nil {
                map["BeforeDate"] = self.beforeDate!
            }
            if self.certType != nil {
                map["CertType"] = self.certType!
            }
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.existPrivateKey != nil {
                map["ExistPrivateKey"] = self.existPrivateKey!
            }
            if self.identifier != nil {
                map["Identifier"] = self.identifier!
            }
            if self.issuer != nil {
                map["Issuer"] = self.issuer!
            }
            if self.sans != nil {
                map["Sans"] = self.sans!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.whId != nil {
                map["WhId"] = self.whId!
            }
            if self.whInstanceId != nil {
                map["WhInstanceId"] = self.whInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AfterDate") && dict["AfterDate"] != nil {
                self.afterDate = dict["AfterDate"] as! Int64
            }
            if dict.keys.contains("BeforeDate") && dict["BeforeDate"] != nil {
                self.beforeDate = dict["BeforeDate"] as! Int64
            }
            if dict.keys.contains("CertType") && dict["CertType"] != nil {
                self.certType = dict["CertType"] as! String
            }
            if dict.keys.contains("CommonName") && dict["CommonName"] != nil {
                self.commonName = dict["CommonName"] as! String
            }
            if dict.keys.contains("ExistPrivateKey") && dict["ExistPrivateKey"] != nil {
                self.existPrivateKey = dict["ExistPrivateKey"] as! Bool
            }
            if dict.keys.contains("Identifier") && dict["Identifier"] != nil {
                self.identifier = dict["Identifier"] as! String
            }
            if dict.keys.contains("Issuer") && dict["Issuer"] != nil {
                self.issuer = dict["Issuer"] as! String
            }
            if dict.keys.contains("Sans") && dict["Sans"] != nil {
                self.sans = dict["Sans"] as! String
            }
            if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("WhId") && dict["WhId"] != nil {
                self.whId = dict["WhId"] as! Int64
            }
            if dict.keys.contains("WhInstanceId") && dict["WhInstanceId"] != nil {
                self.whInstanceId = dict["WhInstanceId"] as! String
            }
        }
    }
    public var certList: [ListCertResponseBody.CertList]?

    public var currentPage: Int64?

    public var requestId: String?

    public var showSize: Int64?

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
        if self.certList != nil {
            var tmp : [Any] = []
            for k in self.certList! {
                tmp.append(k.toMap())
            }
            map["CertList"] = tmp
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertList") && dict["CertList"] != nil {
            var tmp : [ListCertResponseBody.CertList] = []
            for v in dict["CertList"] as! [Any] {
                var model = ListCertResponseBody.CertList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.certList = tmp
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ShowSize") && dict["ShowSize"] != nil {
            self.showSize = dict["ShowSize"] as! Int64
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListCertResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCertResponseBody?

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
            var model = ListCertResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCertWarehouseRequest : Tea.TeaModel {
    public var currentPage: Int64?

    public var instanceId: String?

    public var name: String?

    public var showSize: Int64?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ShowSize") && dict["ShowSize"] != nil {
            self.showSize = dict["ShowSize"] as! Int64
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
    }
}

public class ListCertWarehouseResponseBody : Tea.TeaModel {
    public class CertWarehouseList : Tea.TeaModel {
        public var endTime: Int64?

        public var instanceId: String?

        public var isExpired: Bool?

        public var name: String?

        public var pcaInstanceId: String?

        public var qps: Int64?

        public var type: String?

        public var whId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.isExpired != nil {
                map["IsExpired"] = self.isExpired!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.pcaInstanceId != nil {
                map["PcaInstanceId"] = self.pcaInstanceId!
            }
            if self.qps != nil {
                map["Qps"] = self.qps!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.whId != nil {
                map["WhId"] = self.whId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("IsExpired") && dict["IsExpired"] != nil {
                self.isExpired = dict["IsExpired"] as! Bool
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PcaInstanceId") && dict["PcaInstanceId"] != nil {
                self.pcaInstanceId = dict["PcaInstanceId"] as! String
            }
            if dict.keys.contains("Qps") && dict["Qps"] != nil {
                self.qps = dict["Qps"] as! Int64
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("WhId") && dict["WhId"] != nil {
                self.whId = dict["WhId"] as! Int64
            }
        }
    }
    public var certWarehouseList: [ListCertWarehouseResponseBody.CertWarehouseList]?

    public var currentPage: Int64?

    public var requestId: String?

    public var showSize: Int64?

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
        if self.certWarehouseList != nil {
            var tmp : [Any] = []
            for k in self.certWarehouseList! {
                tmp.append(k.toMap())
            }
            map["CertWarehouseList"] = tmp
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertWarehouseList") && dict["CertWarehouseList"] != nil {
            var tmp : [ListCertWarehouseResponseBody.CertWarehouseList] = []
            for v in dict["CertWarehouseList"] as! [Any] {
                var model = ListCertWarehouseResponseBody.CertWarehouseList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.certWarehouseList = tmp
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ShowSize") && dict["ShowSize"] != nil {
            self.showSize = dict["ShowSize"] as! Int64
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListCertWarehouseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCertWarehouseResponseBody?

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
            var model = ListCertWarehouseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserCertificateOrderRequest : Tea.TeaModel {
    public var currentPage: Int64?

    public var keyword: String?

    public var orderType: String?

    public var resourceGroupId: String?

    public var showSize: Int64?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("OrderType") && dict["OrderType"] != nil {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ShowSize") && dict["ShowSize"] != nil {
            self.showSize = dict["ShowSize"] as! Int64
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListUserCertificateOrderResponseBody : Tea.TeaModel {
    public class CertificateOrderList : Tea.TeaModel {
        public var algorithm: String?

        public var aliyunOrderId: Int64?

        public var buyDate: Int64?

        public var certEndTime: Int64?

        public var certStartTime: Int64?

        public var certType: String?

        public var certificateId: Int64?

        public var city: String?

        public var commonName: String?

        public var country: String?

        public var domain: String?

        public var domainCount: Int64?

        public var domainType: String?

        public var endDate: String?

        public var expired: Bool?

        public var fingerprint: String?

        public var instanceId: String?

        public var issuer: String?

        public var name: String?

        public var orderId: Int64?

        public var orgName: String?

        public var partnerOrderId: String?

        public var productCode: String?

        public var productName: String?

        public var province: String?

        public var resourceGroupId: String?

        public var rootBrand: String?

        public var sans: String?

        public var serialNo: String?

        public var sha2: String?

        public var sourceType: String?

        public var startDate: String?

        public var status: String?

        public var trusteeStatus: String?

        public var upload: Bool?

        public var wildDomainCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.algorithm != nil {
                map["Algorithm"] = self.algorithm!
            }
            if self.aliyunOrderId != nil {
                map["AliyunOrderId"] = self.aliyunOrderId!
            }
            if self.buyDate != nil {
                map["BuyDate"] = self.buyDate!
            }
            if self.certEndTime != nil {
                map["CertEndTime"] = self.certEndTime!
            }
            if self.certStartTime != nil {
                map["CertStartTime"] = self.certStartTime!
            }
            if self.certType != nil {
                map["CertType"] = self.certType!
            }
            if self.certificateId != nil {
                map["CertificateId"] = self.certificateId!
            }
            if self.city != nil {
                map["City"] = self.city!
            }
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.country != nil {
                map["Country"] = self.country!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.domainCount != nil {
                map["DomainCount"] = self.domainCount!
            }
            if self.domainType != nil {
                map["DomainType"] = self.domainType!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.expired != nil {
                map["Expired"] = self.expired!
            }
            if self.fingerprint != nil {
                map["Fingerprint"] = self.fingerprint!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.issuer != nil {
                map["Issuer"] = self.issuer!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.orgName != nil {
                map["OrgName"] = self.orgName!
            }
            if self.partnerOrderId != nil {
                map["PartnerOrderId"] = self.partnerOrderId!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.province != nil {
                map["Province"] = self.province!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.rootBrand != nil {
                map["RootBrand"] = self.rootBrand!
            }
            if self.sans != nil {
                map["Sans"] = self.sans!
            }
            if self.serialNo != nil {
                map["SerialNo"] = self.serialNo!
            }
            if self.sha2 != nil {
                map["Sha2"] = self.sha2!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.startDate != nil {
                map["StartDate"] = self.startDate!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.trusteeStatus != nil {
                map["TrusteeStatus"] = self.trusteeStatus!
            }
            if self.upload != nil {
                map["Upload"] = self.upload!
            }
            if self.wildDomainCount != nil {
                map["WildDomainCount"] = self.wildDomainCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Algorithm") && dict["Algorithm"] != nil {
                self.algorithm = dict["Algorithm"] as! String
            }
            if dict.keys.contains("AliyunOrderId") && dict["AliyunOrderId"] != nil {
                self.aliyunOrderId = dict["AliyunOrderId"] as! Int64
            }
            if dict.keys.contains("BuyDate") && dict["BuyDate"] != nil {
                self.buyDate = dict["BuyDate"] as! Int64
            }
            if dict.keys.contains("CertEndTime") && dict["CertEndTime"] != nil {
                self.certEndTime = dict["CertEndTime"] as! Int64
            }
            if dict.keys.contains("CertStartTime") && dict["CertStartTime"] != nil {
                self.certStartTime = dict["CertStartTime"] as! Int64
            }
            if dict.keys.contains("CertType") && dict["CertType"] != nil {
                self.certType = dict["CertType"] as! String
            }
            if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
                self.certificateId = dict["CertificateId"] as! Int64
            }
            if dict.keys.contains("City") && dict["City"] != nil {
                self.city = dict["City"] as! String
            }
            if dict.keys.contains("CommonName") && dict["CommonName"] != nil {
                self.commonName = dict["CommonName"] as! String
            }
            if dict.keys.contains("Country") && dict["Country"] != nil {
                self.country = dict["Country"] as! String
            }
            if dict.keys.contains("Domain") && dict["Domain"] != nil {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("DomainCount") && dict["DomainCount"] != nil {
                self.domainCount = dict["DomainCount"] as! Int64
            }
            if dict.keys.contains("DomainType") && dict["DomainType"] != nil {
                self.domainType = dict["DomainType"] as! String
            }
            if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
                self.endDate = dict["EndDate"] as! String
            }
            if dict.keys.contains("Expired") && dict["Expired"] != nil {
                self.expired = dict["Expired"] as! Bool
            }
            if dict.keys.contains("Fingerprint") && dict["Fingerprint"] != nil {
                self.fingerprint = dict["Fingerprint"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("Issuer") && dict["Issuer"] != nil {
                self.issuer = dict["Issuer"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                self.orderId = dict["OrderId"] as! Int64
            }
            if dict.keys.contains("OrgName") && dict["OrgName"] != nil {
                self.orgName = dict["OrgName"] as! String
            }
            if dict.keys.contains("PartnerOrderId") && dict["PartnerOrderId"] != nil {
                self.partnerOrderId = dict["PartnerOrderId"] as! String
            }
            if dict.keys.contains("ProductCode") && dict["ProductCode"] != nil {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("ProductName") && dict["ProductName"] != nil {
                self.productName = dict["ProductName"] as! String
            }
            if dict.keys.contains("Province") && dict["Province"] != nil {
                self.province = dict["Province"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("RootBrand") && dict["RootBrand"] != nil {
                self.rootBrand = dict["RootBrand"] as! String
            }
            if dict.keys.contains("Sans") && dict["Sans"] != nil {
                self.sans = dict["Sans"] as! String
            }
            if dict.keys.contains("SerialNo") && dict["SerialNo"] != nil {
                self.serialNo = dict["SerialNo"] as! String
            }
            if dict.keys.contains("Sha2") && dict["Sha2"] != nil {
                self.sha2 = dict["Sha2"] as! String
            }
            if dict.keys.contains("SourceType") && dict["SourceType"] != nil {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
                self.startDate = dict["StartDate"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TrusteeStatus") && dict["TrusteeStatus"] != nil {
                self.trusteeStatus = dict["TrusteeStatus"] as! String
            }
            if dict.keys.contains("Upload") && dict["Upload"] != nil {
                self.upload = dict["Upload"] as! Bool
            }
            if dict.keys.contains("WildDomainCount") && dict["WildDomainCount"] != nil {
                self.wildDomainCount = dict["WildDomainCount"] as! Int64
            }
        }
    }
    public var certificateOrderList: [ListUserCertificateOrderResponseBody.CertificateOrderList]?

    public var currentPage: Int64?

    public var requestId: String?

    public var showSize: Int64?

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
        if self.certificateOrderList != nil {
            var tmp : [Any] = []
            for k in self.certificateOrderList! {
                tmp.append(k.toMap())
            }
            map["CertificateOrderList"] = tmp
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateOrderList") && dict["CertificateOrderList"] != nil {
            var tmp : [ListUserCertificateOrderResponseBody.CertificateOrderList] = []
            for v in dict["CertificateOrderList"] as! [Any] {
                var model = ListUserCertificateOrderResponseBody.CertificateOrderList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.certificateOrderList = tmp
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ShowSize") && dict["ShowSize"] != nil {
            self.showSize = dict["ShowSize"] as! Int64
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListUserCertificateOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserCertificateOrderResponseBody?

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
            var model = ListUserCertificateOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenewCertificateOrderForPackageRequestRequest : Tea.TeaModel {
    public var csr: String?

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
        if self.csr != nil {
            map["Csr"] = self.csr!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Csr") && dict["Csr"] != nil {
            self.csr = dict["Csr"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! Int64
        }
    }
}

public class RenewCertificateOrderForPackageRequestResponseBody : Tea.TeaModel {
    public var orderId: Int64?

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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RenewCertificateOrderForPackageRequestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewCertificateOrderForPackageRequestResponseBody?

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
            var model = RenewCertificateOrderForPackageRequestResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RevokeWHClientCertificateRequest : Tea.TeaModel {
    public var identifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Identifier") && dict["Identifier"] != nil {
            self.identifier = dict["Identifier"] as! String
        }
    }
}

public class RevokeWHClientCertificateResponseBody : Tea.TeaModel {
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

public class RevokeWHClientCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokeWHClientCertificateResponseBody?

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
            var model = RevokeWHClientCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SignRequest : Tea.TeaModel {
    public var certIdentifier: String?

    public var message: String?

    public var messageType: String?

    public var signingAlgorithm: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certIdentifier != nil {
            map["CertIdentifier"] = self.certIdentifier!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.messageType != nil {
            map["MessageType"] = self.messageType!
        }
        if self.signingAlgorithm != nil {
            map["SigningAlgorithm"] = self.signingAlgorithm!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertIdentifier") && dict["CertIdentifier"] != nil {
            self.certIdentifier = dict["CertIdentifier"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("MessageType") && dict["MessageType"] != nil {
            self.messageType = dict["MessageType"] as! String
        }
        if dict.keys.contains("SigningAlgorithm") && dict["SigningAlgorithm"] != nil {
            self.signingAlgorithm = dict["SigningAlgorithm"] as! String
        }
    }
}

public class SignResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.signature != nil {
            map["Signature"] = self.signature!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Signature") && dict["Signature"] != nil {
            self.signature = dict["Signature"] as! String
        }
    }
}

public class SignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SignResponseBody?

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
            var model = SignResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UploadPCACertRequest : Tea.TeaModel {
    public var cert: String?

    public var name: String?

    public var privateKey: String?

    public var warehouseId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cert != nil {
            map["Cert"] = self.cert!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.privateKey != nil {
            map["PrivateKey"] = self.privateKey!
        }
        if self.warehouseId != nil {
            map["WarehouseId"] = self.warehouseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cert") && dict["Cert"] != nil {
            self.cert = dict["Cert"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PrivateKey") && dict["PrivateKey"] != nil {
            self.privateKey = dict["PrivateKey"] as! String
        }
        if dict.keys.contains("WarehouseId") && dict["WarehouseId"] != nil {
            self.warehouseId = dict["WarehouseId"] as! Int64
        }
    }
}

public class UploadPCACertResponseBody : Tea.TeaModel {
    public var identifier: String?

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
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Identifier") && dict["Identifier"] != nil {
            self.identifier = dict["Identifier"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UploadPCACertResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadPCACertResponseBody?

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
            var model = UploadPCACertResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UploadUserCertificateRequest : Tea.TeaModel {
    public var cert: String?

    public var encryptCert: String?

    public var encryptPrivateKey: String?

    public var key: String?

    public var name: String?

    public var resourceGroupId: String?

    public var signCert: String?

    public var signPrivateKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cert != nil {
            map["Cert"] = self.cert!
        }
        if self.encryptCert != nil {
            map["EncryptCert"] = self.encryptCert!
        }
        if self.encryptPrivateKey != nil {
            map["EncryptPrivateKey"] = self.encryptPrivateKey!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.signCert != nil {
            map["SignCert"] = self.signCert!
        }
        if self.signPrivateKey != nil {
            map["SignPrivateKey"] = self.signPrivateKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cert") && dict["Cert"] != nil {
            self.cert = dict["Cert"] as! String
        }
        if dict.keys.contains("EncryptCert") && dict["EncryptCert"] != nil {
            self.encryptCert = dict["EncryptCert"] as! String
        }
        if dict.keys.contains("EncryptPrivateKey") && dict["EncryptPrivateKey"] != nil {
            self.encryptPrivateKey = dict["EncryptPrivateKey"] as! String
        }
        if dict.keys.contains("Key") && dict["Key"] != nil {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SignCert") && dict["SignCert"] != nil {
            self.signCert = dict["SignCert"] as! String
        }
        if dict.keys.contains("SignPrivateKey") && dict["SignPrivateKey"] != nil {
            self.signPrivateKey = dict["SignPrivateKey"] as! String
        }
    }
}

public class UploadUserCertificateResponseBody : Tea.TeaModel {
    public var certId: Int64?

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
        if self.certId != nil {
            map["CertId"] = self.certId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertId") && dict["CertId"] != nil {
            self.certId = dict["CertId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UploadUserCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadUserCertificateResponseBody?

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
            var model = UploadUserCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyRequest : Tea.TeaModel {
    public var certIdentifier: String?

    public var message: String?

    public var messageType: String?

    public var signatureValue: String?

    public var signingAlgorithm: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certIdentifier != nil {
            map["CertIdentifier"] = self.certIdentifier!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.messageType != nil {
            map["MessageType"] = self.messageType!
        }
        if self.signatureValue != nil {
            map["SignatureValue"] = self.signatureValue!
        }
        if self.signingAlgorithm != nil {
            map["SigningAlgorithm"] = self.signingAlgorithm!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertIdentifier") && dict["CertIdentifier"] != nil {
            self.certIdentifier = dict["CertIdentifier"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("MessageType") && dict["MessageType"] != nil {
            self.messageType = dict["MessageType"] as! String
        }
        if dict.keys.contains("SignatureValue") && dict["SignatureValue"] != nil {
            self.signatureValue = dict["SignatureValue"] as! String
        }
        if dict.keys.contains("SigningAlgorithm") && dict["SigningAlgorithm"] != nil {
            self.signingAlgorithm = dict["SigningAlgorithm"] as! String
        }
    }
}

public class VerifyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var signatureValid: Bool?

    public override init() {
        super.init()
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
        if self.signatureValid != nil {
            map["SignatureValid"] = self.signatureValid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SignatureValid") && dict["SignatureValid"] != nil {
            self.signatureValid = dict["SignatureValid"] as! Bool
        }
    }
}

public class VerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyResponseBody?

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
            var model = VerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
