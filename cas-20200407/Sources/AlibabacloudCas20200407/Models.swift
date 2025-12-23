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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CancelCertificateForPackageRequestResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CancelOrderRequestResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCertificateForPackageRequestRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var key: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var companyName: String?

    public var csr: String?

    public var domain: String?

    public var email: String?

    public var phone: String?

    public var productCode: String?

    public var tags: [CreateCertificateForPackageRequestRequest.Tags]?

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
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        if self.validateType != nil {
            map["ValidateType"] = self.validateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CompanyName"] as? String {
            self.companyName = value
        }
        if let value = dict["Csr"] as? String {
            self.csr = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["Phone"] as? String {
            self.phone = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateCertificateForPackageRequestRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateCertificateForPackageRequestRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["Username"] as? String {
            self.username = value
        }
        if let value = dict["ValidateType"] as? String {
            self.validateType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateCertificateForPackageRequestResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCertificateRequestRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var key: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var domain: String?

    public var email: String?

    public var phone: String?

    public var productCode: String?

    public var tags: [CreateCertificateRequestRequest.Tags]?

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
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        if self.validateType != nil {
            map["ValidateType"] = self.validateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["Phone"] as? String {
            self.phone = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateCertificateRequestRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateCertificateRequestRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["Username"] as? String {
            self.username = value
        }
        if let value = dict["ValidateType"] as? String {
            self.validateType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateCertificateRequestResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCertificateWithCsrRequestRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var key: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var csr: String?

    public var email: String?

    public var phone: String?

    public var productCode: String?

    public var tags: [CreateCertificateWithCsrRequestRequest.Tags]?

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
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        if self.validateType != nil {
            map["ValidateType"] = self.validateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Csr"] as? String {
            self.csr = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["Phone"] as? String {
            self.phone = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateCertificateWithCsrRequestRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateCertificateWithCsrRequestRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["Username"] as? String {
            self.username = value
        }
        if let value = dict["ValidateType"] as? String {
            self.validateType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateCertificateWithCsrRequestResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCsrRequest : Tea.TeaModel {
    public var algorithm: String?

    public var commonName: String?

    public var corpName: String?

    public var countryCode: String?

    public var department: String?

    public var keySize: Int32?

    public var locality: String?

    public var name: String?

    public var province: String?

    public var sans: String?

    public override init() {
        super.init()
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
        if self.commonName != nil {
            map["CommonName"] = self.commonName!
        }
        if self.corpName != nil {
            map["CorpName"] = self.corpName!
        }
        if self.countryCode != nil {
            map["CountryCode"] = self.countryCode!
        }
        if self.department != nil {
            map["Department"] = self.department!
        }
        if self.keySize != nil {
            map["KeySize"] = self.keySize!
        }
        if self.locality != nil {
            map["Locality"] = self.locality!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        if self.sans != nil {
            map["Sans"] = self.sans!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Algorithm"] as? String {
            self.algorithm = value
        }
        if let value = dict["CommonName"] as? String {
            self.commonName = value
        }
        if let value = dict["CorpName"] as? String {
            self.corpName = value
        }
        if let value = dict["CountryCode"] as? String {
            self.countryCode = value
        }
        if let value = dict["Department"] as? String {
            self.department = value
        }
        if let value = dict["KeySize"] as? Int32 {
            self.keySize = value
        }
        if let value = dict["Locality"] as? String {
            self.locality = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Province"] as? String {
            self.province = value
        }
        if let value = dict["Sans"] as? String {
            self.sans = value
        }
    }
}

public class CreateCsrResponseBody : Tea.TeaModel {
    public var csr: String?

    public var csrId: Int64?

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
        if self.csr != nil {
            map["Csr"] = self.csr!
        }
        if self.csrId != nil {
            map["CsrId"] = self.csrId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Csr"] as? String {
            self.csr = value
        }
        if let value = dict["CsrId"] as? Int64 {
            self.csrId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateCsrResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCsrResponseBody?

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
            var model = CreateCsrResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDeploymentJobRequest : Tea.TeaModel {
    public var certIds: String?

    public var contactIds: String?

    public var jobType: String?

    public var name: String?

    public var resourceIds: String?

    public var scheduleTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certIds != nil {
            map["CertIds"] = self.certIds!
        }
        if self.contactIds != nil {
            map["ContactIds"] = self.contactIds!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.scheduleTime != nil {
            map["ScheduleTime"] = self.scheduleTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertIds"] as? String {
            self.certIds = value
        }
        if let value = dict["ContactIds"] as? String {
            self.contactIds = value
        }
        if let value = dict["JobType"] as? String {
            self.jobType = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ResourceIds"] as? String {
            self.resourceIds = value
        }
        if let value = dict["ScheduleTime"] as? Int64 {
            self.scheduleTime = value
        }
    }
}

public class CreateDeploymentJobResponseBody : Tea.TeaModel {
    public var jobId: Int64?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDeploymentJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDeploymentJobResponseBody?

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
            var model = CreateDeploymentJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DecryptRequest : Tea.TeaModel {
    public var algorithm: String?

    public var certIdentifier: String?

    public var ciphertextBlob: String?

    public var customIdentifier: String?

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
        if self.customIdentifier != nil {
            map["CustomIdentifier"] = self.customIdentifier!
        }
        if self.messageType != nil {
            map["MessageType"] = self.messageType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Algorithm"] as? String {
            self.algorithm = value
        }
        if let value = dict["CertIdentifier"] as? String {
            self.certIdentifier = value
        }
        if let value = dict["CiphertextBlob"] as? String {
            self.ciphertextBlob = value
        }
        if let value = dict["CustomIdentifier"] as? String {
            self.customIdentifier = value
        }
        if let value = dict["MessageType"] as? String {
            self.messageType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertIdentifier"] as? String {
            self.certIdentifier = value
        }
        if let value = dict["Plaintext"] as? String {
            self.plaintext = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DecryptResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteCertificateRequestResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCsrRequest : Tea.TeaModel {
    public var csrId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.csrId != nil {
            map["CsrId"] = self.csrId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CsrId"] as? Int64 {
            self.csrId = value
        }
    }
}

public class DeleteCsrResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteCsrResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCsrResponseBody?

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
            var model = DeleteCsrResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDeploymentJobRequest : Tea.TeaModel {
    public var jobId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
    }
}

public class DeleteDeploymentJobResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteDeploymentJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDeploymentJobResponseBody?

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
            var model = DeleteDeploymentJobResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Identifier"] as? String {
            self.identifier = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeletePCACertResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertId"] as? Int64 {
            self.certId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteUserCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteWorkerResourceRequest : Tea.TeaModel {
    public var jobId: Int64?

    public var workerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.workerId != nil {
            map["WorkerId"] = self.workerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["WorkerId"] as? Int64 {
            self.workerId = value
        }
    }
}

public class DeleteWorkerResourceResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteWorkerResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWorkerResourceResponseBody?

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
            var model = DeleteWorkerResourceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
    }
}

public class DescribeCertificateStateResponseBody : Tea.TeaModel {
    public var certId: String?

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
        if self.certId != nil {
            map["CertId"] = self.certId!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertId"] as? String {
            self.certId = value
        }
        if let value = dict["Certificate"] as? String {
            self.certificate = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["PrivateKey"] as? String {
            self.privateKey = value
        }
        if let value = dict["RecordDomain"] as? String {
            self.recordDomain = value
        }
        if let value = dict["RecordType"] as? String {
            self.recordType = value
        }
        if let value = dict["RecordValue"] as? String {
            self.recordValue = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["Uri"] as? String {
            self.uri = value
        }
        if let value = dict["ValidateType"] as? String {
            self.validateType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeCertificateStateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCloudResourceStatusRequest : Tea.TeaModel {
    public var secretId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.secretId != nil {
            map["SecretId"] = self.secretId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SecretId"] as? String {
            self.secretId = value
        }
    }
}

public class DescribeCloudResourceStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cloudName: String?

        public var cloudProduct: String?

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
            if self.cloudName != nil {
                map["CloudName"] = self.cloudName!
            }
            if self.cloudProduct != nil {
                map["CloudProduct"] = self.cloudProduct!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CloudName"] as? String {
                self.cloudName = value
            }
            if let value = dict["CloudProduct"] as? String {
                self.cloudProduct = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var data: [DescribeCloudResourceStatusResponseBody.Data]?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeCloudResourceStatusResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeCloudResourceStatusResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeCloudResourceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCloudResourceStatusResponseBody?

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
            var model = DescribeCloudResourceStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDeploymentJobRequest : Tea.TeaModel {
    public var jobId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
    }
}

public class DescribeDeploymentJobResponseBody : Tea.TeaModel {
    public class CasContacts : Tea.TeaModel {
        public var email: String?

        public var id: String?

        public var mobile: String?

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
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Mobile"] as? String {
                self.mobile = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public var casContacts: [DescribeDeploymentJobResponseBody.CasContacts]?

    public var certDomain: String?

    public var certType: String?

    public var config: String?

    public var del: Int32?

    public var endTime: String?

    public var gmtCreate: String?

    public var gmtModified: String?

    public var id: Int64?

    public var instanceId: String?

    public var jobType: String?

    public var name: String?

    public var productName: String?

    public var requestId: String?

    public var rollback: Int32?

    public var scheduleTime: String?

    public var startTime: String?

    public var status: String?

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
        if self.casContacts != nil {
            var tmp : [Any] = []
            for k in self.casContacts! {
                tmp.append(k.toMap())
            }
            map["CasContacts"] = tmp
        }
        if self.certDomain != nil {
            map["CertDomain"] = self.certDomain!
        }
        if self.certType != nil {
            map["CertType"] = self.certType!
        }
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.del != nil {
            map["Del"] = self.del!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.gmtCreate != nil {
            map["GmtCreate"] = self.gmtCreate!
        }
        if self.gmtModified != nil {
            map["GmtModified"] = self.gmtModified!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.productName != nil {
            map["ProductName"] = self.productName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rollback != nil {
            map["Rollback"] = self.rollback!
        }
        if self.scheduleTime != nil {
            map["ScheduleTime"] = self.scheduleTime!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CasContacts"] as? [Any?] {
            var tmp : [DescribeDeploymentJobResponseBody.CasContacts] = []
            for v in value {
                if v != nil {
                    var model = DescribeDeploymentJobResponseBody.CasContacts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.casContacts = tmp
        }
        if let value = dict["CertDomain"] as? String {
            self.certDomain = value
        }
        if let value = dict["CertType"] as? String {
            self.certType = value
        }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["Del"] as? Int32 {
            self.del = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["GmtCreate"] as? String {
            self.gmtCreate = value
        }
        if let value = dict["GmtModified"] as? String {
            self.gmtModified = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["JobType"] as? String {
            self.jobType = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ProductName"] as? String {
            self.productName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Rollback"] as? Int32 {
            self.rollback = value
        }
        if let value = dict["ScheduleTime"] as? String {
            self.scheduleTime = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
    }
}

public class DescribeDeploymentJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDeploymentJobResponseBody?

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
            var model = DescribeDeploymentJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDeploymentJobStatusRequest : Tea.TeaModel {
    public var jobId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
    }
}

public class DescribeDeploymentJobStatusResponseBody : Tea.TeaModel {
    public class ProductWorkerCount : Tea.TeaModel {
        public var count: Int32?

        public var productName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int32 {
                self.count = value
            }
            if let value = dict["ProductName"] as? String {
                self.productName = value
            }
        }
    }
    public var buyCount: Int32?

    public var certCount: Int32?

    public var costCount: Int32?

    public var failedCount: Int32?

    public var matchWorkerCount: Int32?

    public var productWorkerCount: [DescribeDeploymentJobStatusResponseBody.ProductWorkerCount]?

    public var requestId: String?

    public var resourceCount: Int32?

    public var rollbackCount: Int32?

    public var rollbackFailedCount: Int32?

    public var rollbackSuccessCount: Int32?

    public var successCount: Int32?

    public var useCount: Int32?

    public var workerCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.buyCount != nil {
            map["BuyCount"] = self.buyCount!
        }
        if self.certCount != nil {
            map["CertCount"] = self.certCount!
        }
        if self.costCount != nil {
            map["CostCount"] = self.costCount!
        }
        if self.failedCount != nil {
            map["FailedCount"] = self.failedCount!
        }
        if self.matchWorkerCount != nil {
            map["MatchWorkerCount"] = self.matchWorkerCount!
        }
        if self.productWorkerCount != nil {
            var tmp : [Any] = []
            for k in self.productWorkerCount! {
                tmp.append(k.toMap())
            }
            map["ProductWorkerCount"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceCount != nil {
            map["ResourceCount"] = self.resourceCount!
        }
        if self.rollbackCount != nil {
            map["RollbackCount"] = self.rollbackCount!
        }
        if self.rollbackFailedCount != nil {
            map["RollbackFailedCount"] = self.rollbackFailedCount!
        }
        if self.rollbackSuccessCount != nil {
            map["RollbackSuccessCount"] = self.rollbackSuccessCount!
        }
        if self.successCount != nil {
            map["SuccessCount"] = self.successCount!
        }
        if self.useCount != nil {
            map["UseCount"] = self.useCount!
        }
        if self.workerCount != nil {
            map["WorkerCount"] = self.workerCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BuyCount"] as? Int32 {
            self.buyCount = value
        }
        if let value = dict["CertCount"] as? Int32 {
            self.certCount = value
        }
        if let value = dict["CostCount"] as? Int32 {
            self.costCount = value
        }
        if let value = dict["FailedCount"] as? Int32 {
            self.failedCount = value
        }
        if let value = dict["MatchWorkerCount"] as? Int32 {
            self.matchWorkerCount = value
        }
        if let value = dict["ProductWorkerCount"] as? [Any?] {
            var tmp : [DescribeDeploymentJobStatusResponseBody.ProductWorkerCount] = []
            for v in value {
                if v != nil {
                    var model = DescribeDeploymentJobStatusResponseBody.ProductWorkerCount()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.productWorkerCount = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceCount"] as? Int32 {
            self.resourceCount = value
        }
        if let value = dict["RollbackCount"] as? Int32 {
            self.rollbackCount = value
        }
        if let value = dict["RollbackFailedCount"] as? Int32 {
            self.rollbackFailedCount = value
        }
        if let value = dict["RollbackSuccessCount"] as? Int32 {
            self.rollbackSuccessCount = value
        }
        if let value = dict["SuccessCount"] as? Int32 {
            self.successCount = value
        }
        if let value = dict["UseCount"] as? Int32 {
            self.useCount = value
        }
        if let value = dict["WorkerCount"] as? Int32 {
            self.workerCount = value
        }
    }
}

public class DescribeDeploymentJobStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDeploymentJobStatusResponseBody?

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
            var model = DescribeDeploymentJobStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IssuedCount"] as? Int64 {
            self.issuedCount = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["UsedCount"] as? Int64 {
            self.usedCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribePackageStateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EncryptRequest : Tea.TeaModel {
    public var algorithm: String?

    public var certIdentifier: String?

    public var customIdentifier: String?

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
        if self.customIdentifier != nil {
            map["CustomIdentifier"] = self.customIdentifier!
        }
        if self.messageType != nil {
            map["MessageType"] = self.messageType!
        }
        if self.plaintext != nil {
            map["Plaintext"] = self.plaintext!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Algorithm"] as? String {
            self.algorithm = value
        }
        if let value = dict["CertIdentifier"] as? String {
            self.certIdentifier = value
        }
        if let value = dict["CustomIdentifier"] as? String {
            self.customIdentifier = value
        }
        if let value = dict["MessageType"] as? String {
            self.messageType = value
        }
        if let value = dict["Plaintext"] as? String {
            self.plaintext = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertIdentifier"] as? String {
            self.certIdentifier = value
        }
        if let value = dict["CiphertextBlob"] as? String {
            self.ciphertextBlob = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EncryptResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalQuota"] as? Int64 {
            self.totalQuota = value
        }
        if let value = dict["UseCount"] as? Int64 {
            self.useCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetCertWarehouseQuotaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCsrDetailRequest : Tea.TeaModel {
    public var csrId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.csrId != nil {
            map["CsrId"] = self.csrId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CsrId"] as? Int64 {
            self.csrId = value
        }
    }
}

public class GetCsrDetailResponseBody : Tea.TeaModel {
    public var csr: String?

    public var privateKey: String?

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
        if self.csr != nil {
            map["Csr"] = self.csr!
        }
        if self.privateKey != nil {
            map["PrivateKey"] = self.privateKey!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Csr"] as? String {
            self.csr = value
        }
        if let value = dict["PrivateKey"] as? String {
            self.privateKey = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetCsrDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCsrDetailResponseBody?

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
            var model = GetCsrDetailResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertFilter"] as? Bool {
            self.certFilter = value
        }
        if let value = dict["CertId"] as? Int64 {
            self.certId = value
        }
    }
}

public class GetUserCertificateDetailResponseBody : Tea.TeaModel {
    public class CertChain : Tea.TeaModel {
        public var commonName: String?

        public var issuerCommonName: String?

        public var notAfter: Int64?

        public var notBefore: Int64?

        public var remainDay: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.issuerCommonName != nil {
                map["IssuerCommonName"] = self.issuerCommonName!
            }
            if self.notAfter != nil {
                map["NotAfter"] = self.notAfter!
            }
            if self.notBefore != nil {
                map["NotBefore"] = self.notBefore!
            }
            if self.remainDay != nil {
                map["RemainDay"] = self.remainDay!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CommonName"] as? String {
                self.commonName = value
            }
            if let value = dict["IssuerCommonName"] as? String {
                self.issuerCommonName = value
            }
            if let value = dict["NotAfter"] as? Int64 {
                self.notAfter = value
            }
            if let value = dict["NotBefore"] as? Int64 {
                self.notBefore = value
            }
            if let value = dict["RemainDay"] as? Int32 {
                self.remainDay = value
            }
        }
    }
    public class Tags : Tea.TeaModel {
        public var tagKey: String?

        public var tagValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagKey != nil {
                map["TagKey"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["TagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["TagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public var algorithm: String?

    public var buyInAliyun: Bool?

    public var cert: String?

    public var certChain: [GetUserCertificateDetailResponseBody.CertChain]?

    public var certIdentifier: String?

    public var city: String?

    public var common: String?

    public var country: String?

    public var encryptCert: String?

    public var encryptPrivateKey: String?

    public var endDate: String?

    public var expired: Bool?

    public var fingerprint: String?

    public var id: Int64?

    public var instanceId: String?

    public var issuer: String?

    public var key: String?

    public var name: String?

    public var notAfter: Int64?

    public var notBefore: Int64?

    public var orderId: Int64?

    public var orgName: String?

    public var province: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var sans: String?

    public var serialNo: String?

    public var sha2: String?

    public var signCert: String?

    public var signPrivateKey: String?

    public var startDate: String?

    public var tags: [GetUserCertificateDetailResponseBody.Tags]?

    public override init() {
        super.init()
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
        if self.certChain != nil {
            var tmp : [Any] = []
            for k in self.certChain! {
                tmp.append(k.toMap())
            }
            map["CertChain"] = tmp
        }
        if self.certIdentifier != nil {
            map["CertIdentifier"] = self.certIdentifier!
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if self.notAfter != nil {
            map["NotAfter"] = self.notAfter!
        }
        if self.notBefore != nil {
            map["NotBefore"] = self.notBefore!
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
        if self.serialNo != nil {
            map["SerialNo"] = self.serialNo!
        }
        if self.sha2 != nil {
            map["Sha2"] = self.sha2!
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
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Algorithm"] as? String {
            self.algorithm = value
        }
        if let value = dict["BuyInAliyun"] as? Bool {
            self.buyInAliyun = value
        }
        if let value = dict["Cert"] as? String {
            self.cert = value
        }
        if let value = dict["CertChain"] as? [Any?] {
            var tmp : [GetUserCertificateDetailResponseBody.CertChain] = []
            for v in value {
                if v != nil {
                    var model = GetUserCertificateDetailResponseBody.CertChain()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.certChain = tmp
        }
        if let value = dict["CertIdentifier"] as? String {
            self.certIdentifier = value
        }
        if let value = dict["City"] as? String {
            self.city = value
        }
        if let value = dict["Common"] as? String {
            self.common = value
        }
        if let value = dict["Country"] as? String {
            self.country = value
        }
        if let value = dict["EncryptCert"] as? String {
            self.encryptCert = value
        }
        if let value = dict["EncryptPrivateKey"] as? String {
            self.encryptPrivateKey = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["Expired"] as? Bool {
            self.expired = value
        }
        if let value = dict["Fingerprint"] as? String {
            self.fingerprint = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Issuer"] as? String {
            self.issuer = value
        }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NotAfter"] as? Int64 {
            self.notAfter = value
        }
        if let value = dict["NotBefore"] as? Int64 {
            self.notBefore = value
        }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["Province"] as? String {
            self.province = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Sans"] as? String {
            self.sans = value
        }
        if let value = dict["SerialNo"] as? String {
            self.serialNo = value
        }
        if let value = dict["Sha2"] as? String {
            self.sha2 = value
        }
        if let value = dict["SignCert"] as? String {
            self.signCert = value
        }
        if let value = dict["SignPrivateKey"] as? String {
            self.signPrivateKey = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [GetUserCertificateDetailResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = GetUserCertificateDetailResponseBody.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUserCertificateDetailResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertType"] as? String {
            self.certType = value
        }
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["KeyWord"] as? String {
            self.keyWord = value
        }
        if let value = dict["ShowSize"] as? Int64 {
            self.showSize = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["WarehouseId"] as? Int64 {
            self.warehouseId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AfterDate"] as? Int64 {
                self.afterDate = value
            }
            if let value = dict["BeforeDate"] as? Int64 {
                self.beforeDate = value
            }
            if let value = dict["CertType"] as? String {
                self.certType = value
            }
            if let value = dict["CommonName"] as? String {
                self.commonName = value
            }
            if let value = dict["ExistPrivateKey"] as? Bool {
                self.existPrivateKey = value
            }
            if let value = dict["Identifier"] as? String {
                self.identifier = value
            }
            if let value = dict["Issuer"] as? String {
                self.issuer = value
            }
            if let value = dict["Sans"] as? String {
                self.sans = value
            }
            if let value = dict["SourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["WhId"] as? Int64 {
                self.whId = value
            }
            if let value = dict["WhInstanceId"] as? String {
                self.whInstanceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertList"] as? [Any?] {
            var tmp : [ListCertResponseBody.CertList] = []
            for v in value {
                if v != nil {
                    var model = ListCertResponseBody.CertList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.certList = tmp
        }
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ShowSize"] as? Int64 {
            self.showSize = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListCertResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ShowSize"] as? Int64 {
            self.showSize = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["IsExpired"] as? Bool {
                self.isExpired = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["PcaInstanceId"] as? String {
                self.pcaInstanceId = value
            }
            if let value = dict["Qps"] as? Int64 {
                self.qps = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["WhId"] as? Int64 {
                self.whId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertWarehouseList"] as? [Any?] {
            var tmp : [ListCertWarehouseResponseBody.CertWarehouseList] = []
            for v in value {
                if v != nil {
                    var model = ListCertWarehouseResponseBody.CertWarehouseList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.certWarehouseList = tmp
        }
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ShowSize"] as? Int64 {
            self.showSize = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListCertWarehouseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCloudAccessRequest : Tea.TeaModel {
    public var cloudName: String?

    public var currentPage: Int32?

    public var secretId: String?

    public var showSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cloudName != nil {
            map["CloudName"] = self.cloudName!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.secretId != nil {
            map["SecretId"] = self.secretId!
        }
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CloudName"] as? String {
            self.cloudName = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["SecretId"] as? String {
            self.secretId = value
        }
        if let value = dict["ShowSize"] as? Int32 {
            self.showSize = value
        }
    }
}

public class ListCloudAccessResponseBody : Tea.TeaModel {
    public class CloudAccessList : Tea.TeaModel {
        public var accessId: Int64?

        public var cloudName: String?

        public var secretId: String?

        public var serviceStatus: String?

        public override init() {
            super.init()
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
            if self.cloudName != nil {
                map["CloudName"] = self.cloudName!
            }
            if self.secretId != nil {
                map["SecretId"] = self.secretId!
            }
            if self.serviceStatus != nil {
                map["ServiceStatus"] = self.serviceStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessId"] as? Int64 {
                self.accessId = value
            }
            if let value = dict["CloudName"] as? String {
                self.cloudName = value
            }
            if let value = dict["SecretId"] as? String {
                self.secretId = value
            }
            if let value = dict["ServiceStatus"] as? String {
                self.serviceStatus = value
            }
        }
    }
    public var cloudAccessList: [ListCloudAccessResponseBody.CloudAccessList]?

    public var currentPage: Int32?

    public var requestId: String?

    public var showSize: Int32?

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
        if self.cloudAccessList != nil {
            var tmp : [Any] = []
            for k in self.cloudAccessList! {
                tmp.append(k.toMap())
            }
            map["CloudAccessList"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CloudAccessList"] as? [Any?] {
            var tmp : [ListCloudAccessResponseBody.CloudAccessList] = []
            for v in value {
                if v != nil {
                    var model = ListCloudAccessResponseBody.CloudAccessList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.cloudAccessList = tmp
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ShowSize"] as? Int32 {
            self.showSize = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListCloudAccessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCloudAccessResponseBody?

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
            var model = ListCloudAccessResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCloudResourcesRequest : Tea.TeaModel {
    public var certIds: [Int64]?

    public var cloudName: String?

    public var cloudProduct: String?

    public var currentPage: Int32?

    public var keyword: String?

    public var secretId: String?

    public var showSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certIds != nil {
            map["CertIds"] = self.certIds!
        }
        if self.cloudName != nil {
            map["CloudName"] = self.cloudName!
        }
        if self.cloudProduct != nil {
            map["CloudProduct"] = self.cloudProduct!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.secretId != nil {
            map["SecretId"] = self.secretId!
        }
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertIds"] as? [Int64] {
            self.certIds = value
        }
        if let value = dict["CloudName"] as? String {
            self.cloudName = value
        }
        if let value = dict["CloudProduct"] as? String {
            self.cloudProduct = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["SecretId"] as? String {
            self.secretId = value
        }
        if let value = dict["ShowSize"] as? Int32 {
            self.showSize = value
        }
    }
}

public class ListCloudResourcesShrinkRequest : Tea.TeaModel {
    public var certIdsShrink: String?

    public var cloudName: String?

    public var cloudProduct: String?

    public var currentPage: Int32?

    public var keyword: String?

    public var secretId: String?

    public var showSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certIdsShrink != nil {
            map["CertIds"] = self.certIdsShrink!
        }
        if self.cloudName != nil {
            map["CloudName"] = self.cloudName!
        }
        if self.cloudProduct != nil {
            map["CloudProduct"] = self.cloudProduct!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.secretId != nil {
            map["SecretId"] = self.secretId!
        }
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertIds"] as? String {
            self.certIdsShrink = value
        }
        if let value = dict["CloudName"] as? String {
            self.cloudName = value
        }
        if let value = dict["CloudProduct"] as? String {
            self.cloudProduct = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["SecretId"] as? String {
            self.secretId = value
        }
        if let value = dict["ShowSize"] as? Int32 {
            self.showSize = value
        }
    }
}

public class ListCloudResourcesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var certEndTime: String?

        public var certId: Int64?

        public var certName: String?

        public var certStartTime: String?

        public var cloudAccessId: String?

        public var cloudName: String?

        public var cloudProduct: String?

        public var cloudRegion: String?

        public var defaultResource: Int32?

        public var domain: String?

        public var enableHttps: Int32?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var instanceId: String?

        public var listenerId: String?

        public var listenerPort: String?

        public var regionId: String?

        public var status: String?

        public var useSsl: Int32?

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
            if self.certEndTime != nil {
                map["CertEndTime"] = self.certEndTime!
            }
            if self.certId != nil {
                map["CertId"] = self.certId!
            }
            if self.certName != nil {
                map["CertName"] = self.certName!
            }
            if self.certStartTime != nil {
                map["CertStartTime"] = self.certStartTime!
            }
            if self.cloudAccessId != nil {
                map["CloudAccessId"] = self.cloudAccessId!
            }
            if self.cloudName != nil {
                map["CloudName"] = self.cloudName!
            }
            if self.cloudProduct != nil {
                map["CloudProduct"] = self.cloudProduct!
            }
            if self.cloudRegion != nil {
                map["CloudRegion"] = self.cloudRegion!
            }
            if self.defaultResource != nil {
                map["DefaultResource"] = self.defaultResource!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.enableHttps != nil {
                map["EnableHttps"] = self.enableHttps!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.listenerId != nil {
                map["ListenerId"] = self.listenerId!
            }
            if self.listenerPort != nil {
                map["ListenerPort"] = self.listenerPort!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.useSsl != nil {
                map["UseSsl"] = self.useSsl!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertEndTime"] as? String {
                self.certEndTime = value
            }
            if let value = dict["CertId"] as? Int64 {
                self.certId = value
            }
            if let value = dict["CertName"] as? String {
                self.certName = value
            }
            if let value = dict["CertStartTime"] as? String {
                self.certStartTime = value
            }
            if let value = dict["CloudAccessId"] as? String {
                self.cloudAccessId = value
            }
            if let value = dict["CloudName"] as? String {
                self.cloudName = value
            }
            if let value = dict["CloudProduct"] as? String {
                self.cloudProduct = value
            }
            if let value = dict["CloudRegion"] as? String {
                self.cloudRegion = value
            }
            if let value = dict["DefaultResource"] as? Int32 {
                self.defaultResource = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["EnableHttps"] as? Int32 {
                self.enableHttps = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["ListenerId"] as? String {
                self.listenerId = value
            }
            if let value = dict["ListenerPort"] as? String {
                self.listenerPort = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UseSsl"] as? Int32 {
                self.useSsl = value
            }
            if let value = dict["UserId"] as? Int64 {
                self.userId = value
            }
        }
    }
    public var currentPage: Int32?

    public var data: [ListCloudResourcesResponseBody.Data]?

    public var requestId: String?

    public var showSize: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
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
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListCloudResourcesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListCloudResourcesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ShowSize"] as? Int32 {
            self.showSize = value
        }
        if let value = dict["Total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListCloudResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCloudResourcesResponseBody?

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
            var model = ListCloudResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListContactRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var keyword: String?

    public var showSize: Int32?

    public override init() {
        super.init()
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
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["ShowSize"] as? Int32 {
            self.showSize = value
        }
    }
}

public class ListContactResponseBody : Tea.TeaModel {
    public class ContactList : Tea.TeaModel {
        public var contactId: Int64?

        public var email: String?

        public var emailStatus: Int32?

        public var mobile: String?

        public var mobileStatus: Int32?

        public var name: String?

        public var webhooks: String?

        public override init() {
            super.init()
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
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.emailStatus != nil {
                map["EmailStatus"] = self.emailStatus!
            }
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.mobileStatus != nil {
                map["MobileStatus"] = self.mobileStatus!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.webhooks != nil {
                map["Webhooks"] = self.webhooks!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContactId"] as? Int64 {
                self.contactId = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["EmailStatus"] as? Int32 {
                self.emailStatus = value
            }
            if let value = dict["Mobile"] as? String {
                self.mobile = value
            }
            if let value = dict["MobileStatus"] as? Int32 {
                self.mobileStatus = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Webhooks"] as? String {
                self.webhooks = value
            }
        }
    }
    public var contactList: [ListContactResponseBody.ContactList]?

    public var currentPage: Int32?

    public var keyword: String?

    public var requestId: String?

    public var showSize: Int32?

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
        if self.contactList != nil {
            var tmp : [Any] = []
            for k in self.contactList! {
                tmp.append(k.toMap())
            }
            map["ContactList"] = tmp
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactList"] as? [Any?] {
            var tmp : [ListContactResponseBody.ContactList] = []
            for v in value {
                if v != nil {
                    var model = ListContactResponseBody.ContactList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.contactList = tmp
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ShowSize"] as? Int32 {
            self.showSize = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListContactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListContactResponseBody?

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
            var model = ListContactResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCsrRequest : Tea.TeaModel {
    public var algorithm: String?

    public var currentPage: Int64?

    public var keyWord: String?

    public var showSize: Int64?

    public override init() {
        super.init()
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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.keyWord != nil {
            map["KeyWord"] = self.keyWord!
        }
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Algorithm"] as? String {
            self.algorithm = value
        }
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["KeyWord"] as? String {
            self.keyWord = value
        }
        if let value = dict["ShowSize"] as? Int64 {
            self.showSize = value
        }
    }
}

public class ListCsrResponseBody : Tea.TeaModel {
    public class CsrList : Tea.TeaModel {
        public var algorithm: String?

        public var commonName: String?

        public var corpName: String?

        public var countryCode: String?

        public var csrId: Int64?

        public var department: String?

        public var hasPrivateKey: Bool?

        public var keySha2: String?

        public var keySize: Int32?

        public var locality: String?

        public var name: String?

        public var province: String?

        public var sans: String?

        public override init() {
            super.init()
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
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.corpName != nil {
                map["CorpName"] = self.corpName!
            }
            if self.countryCode != nil {
                map["CountryCode"] = self.countryCode!
            }
            if self.csrId != nil {
                map["CsrId"] = self.csrId!
            }
            if self.department != nil {
                map["Department"] = self.department!
            }
            if self.hasPrivateKey != nil {
                map["HasPrivateKey"] = self.hasPrivateKey!
            }
            if self.keySha2 != nil {
                map["KeySha2"] = self.keySha2!
            }
            if self.keySize != nil {
                map["KeySize"] = self.keySize!
            }
            if self.locality != nil {
                map["Locality"] = self.locality!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.province != nil {
                map["Province"] = self.province!
            }
            if self.sans != nil {
                map["Sans"] = self.sans!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Algorithm"] as? String {
                self.algorithm = value
            }
            if let value = dict["CommonName"] as? String {
                self.commonName = value
            }
            if let value = dict["CorpName"] as? String {
                self.corpName = value
            }
            if let value = dict["CountryCode"] as? String {
                self.countryCode = value
            }
            if let value = dict["CsrId"] as? Int64 {
                self.csrId = value
            }
            if let value = dict["Department"] as? String {
                self.department = value
            }
            if let value = dict["HasPrivateKey"] as? Bool {
                self.hasPrivateKey = value
            }
            if let value = dict["KeySha2"] as? String {
                self.keySha2 = value
            }
            if let value = dict["KeySize"] as? Int32 {
                self.keySize = value
            }
            if let value = dict["Locality"] as? String {
                self.locality = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Province"] as? String {
                self.province = value
            }
            if let value = dict["Sans"] as? String {
                self.sans = value
            }
        }
    }
    public var csrList: [ListCsrResponseBody.CsrList]?

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
        if self.csrList != nil {
            var tmp : [Any] = []
            for k in self.csrList! {
                tmp.append(k.toMap())
            }
            map["CsrList"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CsrList"] as? [Any?] {
            var tmp : [ListCsrResponseBody.CsrList] = []
            for v in value {
                if v != nil {
                    var model = ListCsrResponseBody.CsrList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.csrList = tmp
        }
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ShowSize"] as? Int64 {
            self.showSize = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListCsrResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCsrResponseBody?

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
            var model = ListCsrResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDeploymentJobRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var jobType: String?

    public var showSize: Int32?

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
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["JobType"] as? String {
            self.jobType = value
        }
        if let value = dict["ShowSize"] as? Int32 {
            self.showSize = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListDeploymentJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var certDomain: String?

        public var certType: String?

        public var del: Int32?

        public var endTime: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var instanceId: String?

        public var jobType: String?

        public var name: String?

        public var productName: String?

        public var rollback: Int32?

        public var scheduleTime: String?

        public var startTime: String?

        public var status: String?

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
            if self.certDomain != nil {
                map["CertDomain"] = self.certDomain!
            }
            if self.certType != nil {
                map["CertType"] = self.certType!
            }
            if self.del != nil {
                map["Del"] = self.del!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.jobType != nil {
                map["JobType"] = self.jobType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.productName != nil {
                map["ProductName"] = self.productName!
            }
            if self.rollback != nil {
                map["Rollback"] = self.rollback!
            }
            if self.scheduleTime != nil {
                map["ScheduleTime"] = self.scheduleTime!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertDomain"] as? String {
                self.certDomain = value
            }
            if let value = dict["CertType"] as? String {
                self.certType = value
            }
            if let value = dict["Del"] as? Int32 {
                self.del = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["JobType"] as? String {
                self.jobType = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ProductName"] as? String {
                self.productName = value
            }
            if let value = dict["Rollback"] as? Int32 {
                self.rollback = value
            }
            if let value = dict["ScheduleTime"] as? String {
                self.scheduleTime = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UserId"] as? Int64 {
                self.userId = value
            }
        }
    }
    public var currentPage: Int32?

    public var data: [ListDeploymentJobResponseBody.Data]?

    public var requestId: String?

    public var showSize: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
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
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListDeploymentJobResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListDeploymentJobResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ShowSize"] as? Int32 {
            self.showSize = value
        }
        if let value = dict["Total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListDeploymentJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeploymentJobResponseBody?

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
            var model = ListDeploymentJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDeploymentJobCertRequest : Tea.TeaModel {
    public var jobId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
    }
}

public class ListDeploymentJobCertResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var algorithm: String?

        public var certId: Int64?

        public var certInstanceId: String?

        public var certName: String?

        public var certOrderType: String?

        public var certType: String?

        public var commonName: String?

        public var isTrustee: Bool?

        public var month: Int32?

        public var notAfterTime: Int64?

        public var notBeforeTime: Int64?

        public var orderId: Int64?

        public var sans: [String]?

        public var statusCode: String?

        public override init() {
            super.init()
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
            if self.certId != nil {
                map["CertId"] = self.certId!
            }
            if self.certInstanceId != nil {
                map["CertInstanceId"] = self.certInstanceId!
            }
            if self.certName != nil {
                map["CertName"] = self.certName!
            }
            if self.certOrderType != nil {
                map["CertOrderType"] = self.certOrderType!
            }
            if self.certType != nil {
                map["CertType"] = self.certType!
            }
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.isTrustee != nil {
                map["IsTrustee"] = self.isTrustee!
            }
            if self.month != nil {
                map["Month"] = self.month!
            }
            if self.notAfterTime != nil {
                map["NotAfterTime"] = self.notAfterTime!
            }
            if self.notBeforeTime != nil {
                map["NotBeforeTime"] = self.notBeforeTime!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.sans != nil {
                map["Sans"] = self.sans!
            }
            if self.statusCode != nil {
                map["StatusCode"] = self.statusCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Algorithm"] as? String {
                self.algorithm = value
            }
            if let value = dict["CertId"] as? Int64 {
                self.certId = value
            }
            if let value = dict["CertInstanceId"] as? String {
                self.certInstanceId = value
            }
            if let value = dict["CertName"] as? String {
                self.certName = value
            }
            if let value = dict["CertOrderType"] as? String {
                self.certOrderType = value
            }
            if let value = dict["CertType"] as? String {
                self.certType = value
            }
            if let value = dict["CommonName"] as? String {
                self.commonName = value
            }
            if let value = dict["IsTrustee"] as? Bool {
                self.isTrustee = value
            }
            if let value = dict["Month"] as? Int32 {
                self.month = value
            }
            if let value = dict["NotAfterTime"] as? Int64 {
                self.notAfterTime = value
            }
            if let value = dict["NotBeforeTime"] as? Int64 {
                self.notBeforeTime = value
            }
            if let value = dict["OrderId"] as? Int64 {
                self.orderId = value
            }
            if let value = dict["Sans"] as? [String] {
                self.sans = value
            }
            if let value = dict["StatusCode"] as? String {
                self.statusCode = value
            }
        }
    }
    public var data: [ListDeploymentJobCertResponseBody.Data]?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListDeploymentJobCertResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListDeploymentJobCertResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListDeploymentJobCertResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeploymentJobCertResponseBody?

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
            var model = ListDeploymentJobCertResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDeploymentJobResourceRequest : Tea.TeaModel {
    public var jobId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
    }
}

public class ListDeploymentJobResourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var certEndTime: String?

        public var certId: Int64?

        public var certName: String?

        public var certStartTime: String?

        public var cloudAccessId: String?

        public var cloudName: String?

        public var cloudProduct: String?

        public var cloudRegion: String?

        public var defaultResource: Int32?

        public var domain: String?

        public var enableHttps: Int32?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var instanceId: String?

        public var listenerId: String?

        public var listenerPort: String?

        public var regionId: String?

        public var remark: String?

        public var status: String?

        public var useSsl: Int32?

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
            if self.certEndTime != nil {
                map["CertEndTime"] = self.certEndTime!
            }
            if self.certId != nil {
                map["CertId"] = self.certId!
            }
            if self.certName != nil {
                map["CertName"] = self.certName!
            }
            if self.certStartTime != nil {
                map["CertStartTime"] = self.certStartTime!
            }
            if self.cloudAccessId != nil {
                map["CloudAccessId"] = self.cloudAccessId!
            }
            if self.cloudName != nil {
                map["CloudName"] = self.cloudName!
            }
            if self.cloudProduct != nil {
                map["CloudProduct"] = self.cloudProduct!
            }
            if self.cloudRegion != nil {
                map["CloudRegion"] = self.cloudRegion!
            }
            if self.defaultResource != nil {
                map["DefaultResource"] = self.defaultResource!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.enableHttps != nil {
                map["EnableHttps"] = self.enableHttps!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.listenerId != nil {
                map["ListenerId"] = self.listenerId!
            }
            if self.listenerPort != nil {
                map["ListenerPort"] = self.listenerPort!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.useSsl != nil {
                map["UseSsl"] = self.useSsl!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertEndTime"] as? String {
                self.certEndTime = value
            }
            if let value = dict["CertId"] as? Int64 {
                self.certId = value
            }
            if let value = dict["CertName"] as? String {
                self.certName = value
            }
            if let value = dict["CertStartTime"] as? String {
                self.certStartTime = value
            }
            if let value = dict["CloudAccessId"] as? String {
                self.cloudAccessId = value
            }
            if let value = dict["CloudName"] as? String {
                self.cloudName = value
            }
            if let value = dict["CloudProduct"] as? String {
                self.cloudProduct = value
            }
            if let value = dict["CloudRegion"] as? String {
                self.cloudRegion = value
            }
            if let value = dict["DefaultResource"] as? Int32 {
                self.defaultResource = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["EnableHttps"] as? Int32 {
                self.enableHttps = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["ListenerId"] as? String {
                self.listenerId = value
            }
            if let value = dict["ListenerPort"] as? String {
                self.listenerPort = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UseSsl"] as? Int32 {
                self.useSsl = value
            }
            if let value = dict["UserId"] as? Int64 {
                self.userId = value
            }
        }
    }
    public var data: [ListDeploymentJobResourceResponseBody.Data]?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListDeploymentJobResourceResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListDeploymentJobResourceResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListDeploymentJobResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeploymentJobResourceResponseBody?

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
            var model = ListDeploymentJobResourceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ShowSize"] as? Int64 {
            self.showSize = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Algorithm"] as? String {
                self.algorithm = value
            }
            if let value = dict["AliyunOrderId"] as? Int64 {
                self.aliyunOrderId = value
            }
            if let value = dict["BuyDate"] as? Int64 {
                self.buyDate = value
            }
            if let value = dict["CertEndTime"] as? Int64 {
                self.certEndTime = value
            }
            if let value = dict["CertStartTime"] as? Int64 {
                self.certStartTime = value
            }
            if let value = dict["CertType"] as? String {
                self.certType = value
            }
            if let value = dict["CertificateId"] as? Int64 {
                self.certificateId = value
            }
            if let value = dict["City"] as? String {
                self.city = value
            }
            if let value = dict["CommonName"] as? String {
                self.commonName = value
            }
            if let value = dict["Country"] as? String {
                self.country = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["DomainCount"] as? Int64 {
                self.domainCount = value
            }
            if let value = dict["DomainType"] as? String {
                self.domainType = value
            }
            if let value = dict["EndDate"] as? String {
                self.endDate = value
            }
            if let value = dict["Expired"] as? Bool {
                self.expired = value
            }
            if let value = dict["Fingerprint"] as? String {
                self.fingerprint = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Issuer"] as? String {
                self.issuer = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["OrderId"] as? Int64 {
                self.orderId = value
            }
            if let value = dict["OrgName"] as? String {
                self.orgName = value
            }
            if let value = dict["PartnerOrderId"] as? String {
                self.partnerOrderId = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductName"] as? String {
                self.productName = value
            }
            if let value = dict["Province"] as? String {
                self.province = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["RootBrand"] as? String {
                self.rootBrand = value
            }
            if let value = dict["Sans"] as? String {
                self.sans = value
            }
            if let value = dict["SerialNo"] as? String {
                self.serialNo = value
            }
            if let value = dict["Sha2"] as? String {
                self.sha2 = value
            }
            if let value = dict["SourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["StartDate"] as? String {
                self.startDate = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TrusteeStatus"] as? String {
                self.trusteeStatus = value
            }
            if let value = dict["Upload"] as? Bool {
                self.upload = value
            }
            if let value = dict["WildDomainCount"] as? Int64 {
                self.wildDomainCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertificateOrderList"] as? [Any?] {
            var tmp : [ListUserCertificateOrderResponseBody.CertificateOrderList] = []
            for v in value {
                if v != nil {
                    var model = ListUserCertificateOrderResponseBody.CertificateOrderList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.certificateOrderList = tmp
        }
        if let value = dict["CurrentPage"] as? Int64 {
            self.currentPage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ShowSize"] as? Int64 {
            self.showSize = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListUserCertificateOrderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListWorkerResourceRequest : Tea.TeaModel {
    public var cloudProduct: String?

    public var currentPage: Int32?

    public var jobId: Int64?

    public var showSize: Int32?

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
        if self.cloudProduct != nil {
            map["CloudProduct"] = self.cloudProduct!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CloudProduct"] as? String {
            self.cloudProduct = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["ShowSize"] as? Int32 {
            self.showSize = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListWorkerResourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var certDomain: String?

        public var certId: Int64?

        public var certInstanceId: String?

        public var certName: String?

        public var cloudName: String?

        public var cloudProduct: String?

        public var cloudRegion: String?

        public var defaultResource: Bool?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var instanceId: String?

        public var jobId: Int64?

        public var listenerId: String?

        public var namespaceId: String?

        public var orderId: Int64?

        public var port: Int32?

        public var regionId: String?

        public var resourceCertId: Int64?

        public var resourceDomain: String?

        public var resourceId: Int64?

        public var status: String?

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
            if self.certDomain != nil {
                map["CertDomain"] = self.certDomain!
            }
            if self.certId != nil {
                map["CertId"] = self.certId!
            }
            if self.certInstanceId != nil {
                map["CertInstanceId"] = self.certInstanceId!
            }
            if self.certName != nil {
                map["CertName"] = self.certName!
            }
            if self.cloudName != nil {
                map["CloudName"] = self.cloudName!
            }
            if self.cloudProduct != nil {
                map["CloudProduct"] = self.cloudProduct!
            }
            if self.cloudRegion != nil {
                map["CloudRegion"] = self.cloudRegion!
            }
            if self.defaultResource != nil {
                map["DefaultResource"] = self.defaultResource!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.listenerId != nil {
                map["ListenerId"] = self.listenerId!
            }
            if self.namespaceId != nil {
                map["NamespaceId"] = self.namespaceId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceCertId != nil {
                map["ResourceCertId"] = self.resourceCertId!
            }
            if self.resourceDomain != nil {
                map["ResourceDomain"] = self.resourceDomain!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertDomain"] as? String {
                self.certDomain = value
            }
            if let value = dict["CertId"] as? Int64 {
                self.certId = value
            }
            if let value = dict["CertInstanceId"] as? String {
                self.certInstanceId = value
            }
            if let value = dict["CertName"] as? String {
                self.certName = value
            }
            if let value = dict["CloudName"] as? String {
                self.cloudName = value
            }
            if let value = dict["CloudProduct"] as? String {
                self.cloudProduct = value
            }
            if let value = dict["CloudRegion"] as? String {
                self.cloudRegion = value
            }
            if let value = dict["DefaultResource"] as? Bool {
                self.defaultResource = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["JobId"] as? Int64 {
                self.jobId = value
            }
            if let value = dict["ListenerId"] as? String {
                self.listenerId = value
            }
            if let value = dict["NamespaceId"] as? String {
                self.namespaceId = value
            }
            if let value = dict["OrderId"] as? Int64 {
                self.orderId = value
            }
            if let value = dict["Port"] as? Int32 {
                self.port = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceCertId"] as? Int64 {
                self.resourceCertId = value
            }
            if let value = dict["ResourceDomain"] as? String {
                self.resourceDomain = value
            }
            if let value = dict["ResourceId"] as? Int64 {
                self.resourceId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UserId"] as? Int64 {
                self.userId = value
            }
        }
    }
    public var currentPage: Int32?

    public var data: [ListWorkerResourceResponseBody.Data]?

    public var requestId: String?

    public var showSize: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
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
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListWorkerResourceResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListWorkerResourceResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ShowSize"] as? Int32 {
            self.showSize = value
        }
        if let value = dict["Total"] as? Int64 {
            self.total = value
        }
    }
}

public class ListWorkerResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkerResourceResponseBody?

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
            var model = ListWorkerResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MoveResourceGroupRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceId: String?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class MoveResourceGroupResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class MoveResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MoveResourceGroupResponseBody?

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
            var model = MoveResourceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RenewCertificateOrderForPackageRequestRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var key: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var csr: String?

    public var orderId: Int64?

    public var tags: [RenewCertificateOrderForPackageRequestRequest.Tags]?

    public override init() {
        super.init()
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
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Csr"] as? String {
            self.csr = value
        }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [RenewCertificateOrderForPackageRequestRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = RenewCertificateOrderForPackageRequestRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RenewCertificateOrderForPackageRequestResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SignRequest : Tea.TeaModel {
    public var certIdentifier: String?

    public var customIdentifier: String?

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
        if self.customIdentifier != nil {
            map["CustomIdentifier"] = self.customIdentifier!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertIdentifier"] as? String {
            self.certIdentifier = value
        }
        if let value = dict["CustomIdentifier"] as? String {
            self.customIdentifier = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["MessageType"] as? String {
            self.messageType = value
        }
        if let value = dict["SigningAlgorithm"] as? String {
            self.signingAlgorithm = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Signature"] as? String {
            self.signature = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SignResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCsrRequest : Tea.TeaModel {
    public var csrId: Int64?

    public var key: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.csrId != nil {
            map["CsrId"] = self.csrId!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CsrId"] as? Int64 {
            self.csrId = value
        }
        if let value = dict["Key"] as? String {
            self.key = value
        }
    }
}

public class UpdateCsrResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateCsrResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCsrResponseBody?

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
            var model = UpdateCsrResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDeploymentJobRequest : Tea.TeaModel {
    public var certIds: String?

    public var contactIds: String?

    public var jobId: Int64?

    public var name: String?

    public var resourceIds: String?

    public var scheduleTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certIds != nil {
            map["CertIds"] = self.certIds!
        }
        if self.contactIds != nil {
            map["ContactIds"] = self.contactIds!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.resourceIds != nil {
            map["ResourceIds"] = self.resourceIds!
        }
        if self.scheduleTime != nil {
            map["ScheduleTime"] = self.scheduleTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertIds"] as? String {
            self.certIds = value
        }
        if let value = dict["ContactIds"] as? String {
            self.contactIds = value
        }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ResourceIds"] as? String {
            self.resourceIds = value
        }
        if let value = dict["ScheduleTime"] as? Int64 {
            self.scheduleTime = value
        }
    }
}

public class UpdateDeploymentJobResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateDeploymentJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDeploymentJobResponseBody?

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
            var model = UpdateDeploymentJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDeploymentJobStatusRequest : Tea.TeaModel {
    public var jobId: Int64?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class UpdateDeploymentJobStatusResponseBody : Tea.TeaModel {
    public var data: Any?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateDeploymentJobStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDeploymentJobStatusResponseBody?

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
            var model = UpdateDeploymentJobStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateWorkerResourceStatusRequest : Tea.TeaModel {
    public var jobId: Int64?

    public var status: String?

    public var workerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.workerId != nil {
            map["WorkerId"] = self.workerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["WorkerId"] as? Int64 {
            self.workerId = value
        }
    }
}

public class UpdateWorkerResourceStatusResponseBody : Tea.TeaModel {
    public var data: Any?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateWorkerResourceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWorkerResourceStatusResponseBody?

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
            var model = UpdateWorkerResourceStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UploadCsrRequest : Tea.TeaModel {
    public var csr: String?

    public var key: String?

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
        if self.csr != nil {
            map["Csr"] = self.csr!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Csr"] as? String {
            self.csr = value
        }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class UploadCsrResponseBody : Tea.TeaModel {
    public var csrId: Int64?

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
        if self.csrId != nil {
            map["CsrId"] = self.csrId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CsrId"] as? Int64 {
            self.csrId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UploadCsrResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadCsrResponseBody?

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
            var model = UploadCsrResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UploadUserCertificateRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var key: String?

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
            if self.key != nil {
                map["Key"] = self.key!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var cert: String?

    public var encryptCert: String?

    public var encryptPrivateKey: String?

    public var key: String?

    public var name: String?

    public var resourceGroupId: String?

    public var signCert: String?

    public var signPrivateKey: String?

    public var tags: [UploadUserCertificateRequest.Tags]?

    public override init() {
        super.init()
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
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cert"] as? String {
            self.cert = value
        }
        if let value = dict["EncryptCert"] as? String {
            self.encryptCert = value
        }
        if let value = dict["EncryptPrivateKey"] as? String {
            self.encryptPrivateKey = value
        }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SignCert"] as? String {
            self.signCert = value
        }
        if let value = dict["SignPrivateKey"] as? String {
            self.signPrivateKey = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [UploadUserCertificateRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = UploadUserCertificateRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
    }
}

public class UploadUserCertificateResponseBody : Tea.TeaModel {
    public var certId: Int64?

    public var requestId: String?

    public var resourceId: String?

    public override init() {
        super.init()
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
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertId"] as? Int64 {
            self.certId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UploadUserCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class VerifyRequest : Tea.TeaModel {
    public var certIdentifier: String?

    public var customIdentifier: String?

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
        if self.customIdentifier != nil {
            map["CustomIdentifier"] = self.customIdentifier!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertIdentifier"] as? String {
            self.certIdentifier = value
        }
        if let value = dict["CustomIdentifier"] as? String {
            self.customIdentifier = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["MessageType"] as? String {
            self.messageType = value
        }
        if let value = dict["SignatureValue"] as? String {
            self.signatureValue = value
        }
        if let value = dict["SigningAlgorithm"] as? String {
            self.signingAlgorithm = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SignatureValid"] as? Bool {
            self.signatureValid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = VerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
