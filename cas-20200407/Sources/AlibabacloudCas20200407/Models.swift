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
        if dict.keys.contains("OrderId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("OrderId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("CompanyName") {
            self.companyName = dict["CompanyName"] as! String
        }
        if dict.keys.contains("Csr") {
            self.csr = dict["Csr"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Phone") {
            self.phone = dict["Phone"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
        if dict.keys.contains("ValidateType") {
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
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Phone") {
            self.phone = dict["Phone"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
        if dict.keys.contains("ValidateType") {
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
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("Csr") {
            self.csr = dict["Csr"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Phone") {
            self.phone = dict["Phone"] as! String
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("Username") {
            self.username = dict["Username"] as! String
        }
        if dict.keys.contains("ValidateType") {
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
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
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
            var model = CreateCertificateWithCsrRequestResponseBody()
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
        if dict.keys.contains("OrderId") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("Identifier") {
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
        if dict.keys.contains("RequestId") {
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
            var model = DeletePCACertResponseBody()
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
        if dict.keys.contains("OrderId") {
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
        if dict.keys.contains("Certificate") {
            self.certificate = dict["Certificate"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("PrivateKey") {
            self.privateKey = dict["PrivateKey"] as! String
        }
        if dict.keys.contains("RecordDomain") {
            self.recordDomain = dict["RecordDomain"] as! String
        }
        if dict.keys.contains("RecordType") {
            self.recordType = dict["RecordType"] as! String
        }
        if dict.keys.contains("RecordValue") {
            self.recordValue = dict["RecordValue"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("Uri") {
            self.uri = dict["Uri"] as! String
        }
        if dict.keys.contains("ValidateType") {
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
        if dict.keys.contains("ProductCode") {
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
        if dict.keys.contains("IssuedCount") {
            self.issuedCount = dict["IssuedCount"] as! Int64
        }
        if dict.keys.contains("ProductCode") {
            self.productCode = dict["ProductCode"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
        if dict.keys.contains("UsedCount") {
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
            var model = DescribePackageStateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCertRequest : Tea.TeaModel {
    public var currentPage: Int64?

    public var keyWord: String?

    public var showSize: Int64?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.keyWord != nil {
            map["KeyWord"] = self.keyWord!
        }
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
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
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("KeyWord") {
            self.keyWord = dict["KeyWord"] as! String
        }
        if dict.keys.contains("ShowSize") {
            self.showSize = dict["ShowSize"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("WarehouseId") {
            self.warehouseId = dict["WarehouseId"] as! Int64
        }
    }
}

public class ListCertResponseBody : Tea.TeaModel {
    public class CertList : Tea.TeaModel {
        public var afterDate: Int64?

        public var beforeDate: Int64?

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
            if dict.keys.contains("AfterDate") {
                self.afterDate = dict["AfterDate"] as! Int64
            }
            if dict.keys.contains("BeforeDate") {
                self.beforeDate = dict["BeforeDate"] as! Int64
            }
            if dict.keys.contains("CommonName") {
                self.commonName = dict["CommonName"] as! String
            }
            if dict.keys.contains("ExistPrivateKey") {
                self.existPrivateKey = dict["ExistPrivateKey"] as! Bool
            }
            if dict.keys.contains("Identifier") {
                self.identifier = dict["Identifier"] as! String
            }
            if dict.keys.contains("Issuer") {
                self.issuer = dict["Issuer"] as! String
            }
            if dict.keys.contains("Sans") {
                self.sans = dict["Sans"] as! String
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("WhId") {
                self.whId = dict["WhId"] as! Int64
            }
            if dict.keys.contains("WhInstanceId") {
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
        if dict.keys.contains("CertList") {
            self.certList = dict["CertList"] as! [ListCertResponseBody.CertList]
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ShowSize") {
            self.showSize = dict["ShowSize"] as! Int64
        }
        if dict.keys.contains("TotalCount") {
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
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("ShowSize") {
            self.showSize = dict["ShowSize"] as! Int64
        }
        if dict.keys.contains("Type") {
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
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("IsExpired") {
                self.isExpired = dict["IsExpired"] as! Bool
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PcaInstanceId") {
                self.pcaInstanceId = dict["PcaInstanceId"] as! String
            }
            if dict.keys.contains("Qps") {
                self.qps = dict["Qps"] as! Int64
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("WhId") {
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
        if dict.keys.contains("CertWarehouseList") {
            self.certWarehouseList = dict["CertWarehouseList"] as! [ListCertWarehouseResponseBody.CertWarehouseList]
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ShowSize") {
            self.showSize = dict["ShowSize"] as! Int64
        }
        if dict.keys.contains("TotalCount") {
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
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("OrderType") {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("ShowSize") {
            self.showSize = dict["ShowSize"] as! Int64
        }
        if dict.keys.contains("Status") {
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

        public var domain: String?

        public var domainCount: Int64?

        public var domainType: String?

        public var instanceId: String?

        public var orderId: Int64?

        public var partnerOrderId: String?

        public var productCode: String?

        public var productName: String?

        public var rootBrand: String?

        public var sourceType: String?

        public var status: String?

        public var trusteeStatus: String?

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
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.domainCount != nil {
                map["DomainCount"] = self.domainCount!
            }
            if self.domainType != nil {
                map["DomainType"] = self.domainType!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
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
            if self.rootBrand != nil {
                map["RootBrand"] = self.rootBrand!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.trusteeStatus != nil {
                map["TrusteeStatus"] = self.trusteeStatus!
            }
            if self.wildDomainCount != nil {
                map["WildDomainCount"] = self.wildDomainCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Algorithm") {
                self.algorithm = dict["Algorithm"] as! String
            }
            if dict.keys.contains("AliyunOrderId") {
                self.aliyunOrderId = dict["AliyunOrderId"] as! Int64
            }
            if dict.keys.contains("BuyDate") {
                self.buyDate = dict["BuyDate"] as! Int64
            }
            if dict.keys.contains("CertEndTime") {
                self.certEndTime = dict["CertEndTime"] as! Int64
            }
            if dict.keys.contains("CertStartTime") {
                self.certStartTime = dict["CertStartTime"] as! Int64
            }
            if dict.keys.contains("CertType") {
                self.certType = dict["CertType"] as! String
            }
            if dict.keys.contains("Domain") {
                self.domain = dict["Domain"] as! String
            }
            if dict.keys.contains("DomainCount") {
                self.domainCount = dict["DomainCount"] as! Int64
            }
            if dict.keys.contains("DomainType") {
                self.domainType = dict["DomainType"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! Int64
            }
            if dict.keys.contains("PartnerOrderId") {
                self.partnerOrderId = dict["PartnerOrderId"] as! String
            }
            if dict.keys.contains("ProductCode") {
                self.productCode = dict["ProductCode"] as! String
            }
            if dict.keys.contains("ProductName") {
                self.productName = dict["ProductName"] as! String
            }
            if dict.keys.contains("RootBrand") {
                self.rootBrand = dict["RootBrand"] as! String
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TrusteeStatus") {
                self.trusteeStatus = dict["TrusteeStatus"] as! String
            }
            if dict.keys.contains("WildDomainCount") {
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
        if dict.keys.contains("CertificateOrderList") {
            self.certificateOrderList = dict["CertificateOrderList"] as! [ListUserCertificateOrderResponseBody.CertificateOrderList]
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ShowSize") {
            self.showSize = dict["ShowSize"] as! Int64
        }
        if dict.keys.contains("TotalCount") {
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
        if dict.keys.contains("Csr") {
            self.csr = dict["Csr"] as! String
        }
        if dict.keys.contains("OrderId") {
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
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
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
            var model = RenewCertificateOrderForPackageRequestResponseBody()
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
        if dict.keys.contains("CertIdentifier") {
            self.certIdentifier = dict["CertIdentifier"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("MessageType") {
            self.messageType = dict["MessageType"] as! String
        }
        if dict.keys.contains("SigningAlgorithm") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Signature") {
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
        if dict.keys.contains("Cert") {
            self.cert = dict["Cert"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PrivateKey") {
            self.privateKey = dict["PrivateKey"] as! String
        }
        if dict.keys.contains("WarehouseId") {
            self.warehouseId = dict["WarehouseId"] as! Int64
        }
    }
}

public class UploadPCACertResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
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
            var model = UploadPCACertResponseBody()
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
        if dict.keys.contains("CertIdentifier") {
            self.certIdentifier = dict["CertIdentifier"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("MessageType") {
            self.messageType = dict["MessageType"] as! String
        }
        if dict.keys.contains("SignatureValue") {
            self.signatureValue = dict["SignatureValue"] as! String
        }
        if dict.keys.contains("SigningAlgorithm") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SignatureValid") {
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
            var model = VerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
