import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AssignCertificateCountRequest : Tea.TeaModel {
    public var certTotalCount: Int32?

    public var id: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certTotalCount != nil {
            map["CertTotalCount"] = self.certTotalCount!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertTotalCount"] as? Int32 {
            self.certTotalCount = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
    }
}

public class AssignCertificateCountResponseBody : Tea.TeaModel {
    public var certCount: Int32?

    public var currentYearFreeCertCount: Int32?

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
        if self.certCount != nil {
            map["CertCount"] = self.certCount!
        }
        if self.currentYearFreeCertCount != nil {
            map["CurrentYearFreeCertCount"] = self.currentYearFreeCertCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertCount"] as? Int32 {
            self.certCount = value
        }
        if let value = dict["CurrentYearFreeCertCount"] as? Int32 {
            self.currentYearFreeCertCount = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AssignCertificateCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssignCertificateCountResponseBody?

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
            var model = AssignCertificateCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateClientCertificateRequest : Tea.TeaModel {
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
    public var afterTime: Int64?

    public var algorithm: String?

    public var beforeTime: Int64?

    public var commonName: String?

    public var country: String?

    public var customIdentifier: String?

    public var days: Int32?

    public var enableCrl: Int64?

    public var immediately: Int32?

    public var locality: String?

    public var months: Int32?

    public var organization: String?

    public var organizationUnit: String?

    public var parentIdentifier: String?

    public var resourceGroupId: String?

    public var sanType: Int32?

    public var sanValue: String?

    public var state: String?

    public var tags: [CreateClientCertificateRequest.Tags]?

    public var years: Int32?

    public override init() {
        super.init()
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
        if self.customIdentifier != nil {
            map["CustomIdentifier"] = self.customIdentifier!
        }
        if self.days != nil {
            map["Days"] = self.days!
        }
        if self.enableCrl != nil {
            map["EnableCrl"] = self.enableCrl!
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.years != nil {
            map["Years"] = self.years!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AfterTime"] as? Int64 {
            self.afterTime = value
        }
        if let value = dict["Algorithm"] as? String {
            self.algorithm = value
        }
        if let value = dict["BeforeTime"] as? Int64 {
            self.beforeTime = value
        }
        if let value = dict["CommonName"] as? String {
            self.commonName = value
        }
        if let value = dict["Country"] as? String {
            self.country = value
        }
        if let value = dict["CustomIdentifier"] as? String {
            self.customIdentifier = value
        }
        if let value = dict["Days"] as? Int32 {
            self.days = value
        }
        if let value = dict["EnableCrl"] as? Int64 {
            self.enableCrl = value
        }
        if let value = dict["Immediately"] as? Int32 {
            self.immediately = value
        }
        if let value = dict["Locality"] as? String {
            self.locality = value
        }
        if let value = dict["Months"] as? Int32 {
            self.months = value
        }
        if let value = dict["Organization"] as? String {
            self.organization = value
        }
        if let value = dict["OrganizationUnit"] as? String {
            self.organizationUnit = value
        }
        if let value = dict["ParentIdentifier"] as? String {
            self.parentIdentifier = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SanType"] as? Int32 {
            self.sanType = value
        }
        if let value = dict["SanValue"] as? String {
            self.sanValue = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateClientCertificateRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateClientCertificateRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["Years"] as? Int32 {
            self.years = value
        }
    }
}

public class CreateClientCertificateResponseBody : Tea.TeaModel {
    public var certificateChain: String?

    public var identifier: String?

    public var requestId: String?

    public var serialNumber: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.x509Certificate != nil {
            map["X509Certificate"] = self.x509Certificate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertificateChain"] as? String {
            self.certificateChain = value
        }
        if let value = dict["Identifier"] as? String {
            self.identifier = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
        }
        if let value = dict["X509Certificate"] as? String {
            self.x509Certificate = value
        }
    }
}

public class CreateClientCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateClientCertificateResponseBody?

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
            var model = CreateClientCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateClientCertificateWithCsrRequest : Tea.TeaModel {
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
    public var afterTime: Int64?

    public var algorithm: String?

    public var beforeTime: Int64?

    public var commonName: String?

    public var country: String?

    public var csr: String?

    public var customIdentifier: String?

    public var days: Int32?

    public var enableCrl: Int64?

    public var immediately: Int32?

    public var locality: String?

    public var months: Int32?

    public var organization: String?

    public var organizationUnit: String?

    public var parentIdentifier: String?

    public var resourceGroupId: String?

    public var sanType: Int32?

    public var sanValue: String?

    public var state: String?

    public var tags: [CreateClientCertificateWithCsrRequest.Tags]?

    public var years: Int32?

    public override init() {
        super.init()
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
        if self.customIdentifier != nil {
            map["CustomIdentifier"] = self.customIdentifier!
        }
        if self.days != nil {
            map["Days"] = self.days!
        }
        if self.enableCrl != nil {
            map["EnableCrl"] = self.enableCrl!
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.years != nil {
            map["Years"] = self.years!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AfterTime"] as? Int64 {
            self.afterTime = value
        }
        if let value = dict["Algorithm"] as? String {
            self.algorithm = value
        }
        if let value = dict["BeforeTime"] as? Int64 {
            self.beforeTime = value
        }
        if let value = dict["CommonName"] as? String {
            self.commonName = value
        }
        if let value = dict["Country"] as? String {
            self.country = value
        }
        if let value = dict["Csr"] as? String {
            self.csr = value
        }
        if let value = dict["CustomIdentifier"] as? String {
            self.customIdentifier = value
        }
        if let value = dict["Days"] as? Int32 {
            self.days = value
        }
        if let value = dict["EnableCrl"] as? Int64 {
            self.enableCrl = value
        }
        if let value = dict["Immediately"] as? Int32 {
            self.immediately = value
        }
        if let value = dict["Locality"] as? String {
            self.locality = value
        }
        if let value = dict["Months"] as? Int32 {
            self.months = value
        }
        if let value = dict["Organization"] as? String {
            self.organization = value
        }
        if let value = dict["OrganizationUnit"] as? String {
            self.organizationUnit = value
        }
        if let value = dict["ParentIdentifier"] as? String {
            self.parentIdentifier = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SanType"] as? Int32 {
            self.sanType = value
        }
        if let value = dict["SanValue"] as? String {
            self.sanValue = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateClientCertificateWithCsrRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateClientCertificateWithCsrRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["Years"] as? Int32 {
            self.years = value
        }
    }
}

public class CreateClientCertificateWithCsrResponseBody : Tea.TeaModel {
    public var certKmcRep1: String?

    public var certSignBufKmc: String?

    public var certificateChain: String?

    public var identifier: String?

    public var requestId: String?

    public var serialNumber: String?

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
        if self.certKmcRep1 != nil {
            map["CertKmcRep1"] = self.certKmcRep1!
        }
        if self.certSignBufKmc != nil {
            map["CertSignBufKmc"] = self.certSignBufKmc!
        }
        if self.certificateChain != nil {
            map["CertificateChain"] = self.certificateChain!
        }
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.x509Certificate != nil {
            map["X509Certificate"] = self.x509Certificate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertKmcRep1"] as? String {
            self.certKmcRep1 = value
        }
        if let value = dict["CertSignBufKmc"] as? String {
            self.certSignBufKmc = value
        }
        if let value = dict["CertificateChain"] as? String {
            self.certificateChain = value
        }
        if let value = dict["Identifier"] as? String {
            self.identifier = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
        }
        if let value = dict["X509Certificate"] as? String {
            self.x509Certificate = value
        }
    }
}

public class CreateClientCertificateWithCsrResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateClientCertificateWithCsrResponseBody?

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
            var model = CreateClientCertificateWithCsrResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCustomCertificateRequest : Tea.TeaModel {
    public class ApiPassthrough : Tea.TeaModel {
        public class Extensions : Tea.TeaModel {
            public class KeyUsage : Tea.TeaModel {
                public var contentCommitment: Bool?

                public var dataEncipherment: Bool?

                public var decipherOnly: Bool?

                public var digitalSignature: Bool?

                public var encipherOnly: Bool?

                public var keyAgreement: Bool?

                public var keyEncipherment: Bool?

                public var nonRepudiation: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.contentCommitment != nil {
                        map["ContentCommitment"] = self.contentCommitment!
                    }
                    if self.dataEncipherment != nil {
                        map["DataEncipherment"] = self.dataEncipherment!
                    }
                    if self.decipherOnly != nil {
                        map["DecipherOnly"] = self.decipherOnly!
                    }
                    if self.digitalSignature != nil {
                        map["DigitalSignature"] = self.digitalSignature!
                    }
                    if self.encipherOnly != nil {
                        map["EncipherOnly"] = self.encipherOnly!
                    }
                    if self.keyAgreement != nil {
                        map["KeyAgreement"] = self.keyAgreement!
                    }
                    if self.keyEncipherment != nil {
                        map["KeyEncipherment"] = self.keyEncipherment!
                    }
                    if self.nonRepudiation != nil {
                        map["NonRepudiation"] = self.nonRepudiation!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ContentCommitment"] as? Bool {
                        self.contentCommitment = value
                    }
                    if let value = dict["DataEncipherment"] as? Bool {
                        self.dataEncipherment = value
                    }
                    if let value = dict["DecipherOnly"] as? Bool {
                        self.decipherOnly = value
                    }
                    if let value = dict["DigitalSignature"] as? Bool {
                        self.digitalSignature = value
                    }
                    if let value = dict["EncipherOnly"] as? Bool {
                        self.encipherOnly = value
                    }
                    if let value = dict["KeyAgreement"] as? Bool {
                        self.keyAgreement = value
                    }
                    if let value = dict["KeyEncipherment"] as? Bool {
                        self.keyEncipherment = value
                    }
                    if let value = dict["NonRepudiation"] as? Bool {
                        self.nonRepudiation = value
                    }
                }
            }
            public class SubjectAlternativeNames : Tea.TeaModel {
                public var type: String?

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
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["Value"] as? String {
                        self.value = value
                    }
                }
            }
            public var criticals: [String]?

            public var extendedKeyUsages: [String]?

            public var keyUsage: CreateCustomCertificateRequest.ApiPassthrough.Extensions.KeyUsage?

            public var subjectAlternativeNames: [CreateCustomCertificateRequest.ApiPassthrough.Extensions.SubjectAlternativeNames]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.keyUsage?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.criticals != nil {
                    map["Criticals"] = self.criticals!
                }
                if self.extendedKeyUsages != nil {
                    map["ExtendedKeyUsages"] = self.extendedKeyUsages!
                }
                if self.keyUsage != nil {
                    map["KeyUsage"] = self.keyUsage?.toMap()
                }
                if self.subjectAlternativeNames != nil {
                    var tmp : [Any] = []
                    for k in self.subjectAlternativeNames! {
                        tmp.append(k.toMap())
                    }
                    map["SubjectAlternativeNames"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Criticals"] as? [String] {
                    self.criticals = value
                }
                if let value = dict["ExtendedKeyUsages"] as? [String] {
                    self.extendedKeyUsages = value
                }
                if let value = dict["KeyUsage"] as? [String: Any?] {
                    var model = CreateCustomCertificateRequest.ApiPassthrough.Extensions.KeyUsage()
                    model.fromMap(value)
                    self.keyUsage = model
                }
                if let value = dict["SubjectAlternativeNames"] as? [Any?] {
                    var tmp : [CreateCustomCertificateRequest.ApiPassthrough.Extensions.SubjectAlternativeNames] = []
                    for v in value {
                        if v != nil {
                            var model = CreateCustomCertificateRequest.ApiPassthrough.Extensions.SubjectAlternativeNames()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.subjectAlternativeNames = tmp
                }
            }
        }
        public class Subject : Tea.TeaModel {
            public class CustomAttributes : Tea.TeaModel {
                public var objectIdentifier: String?

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
                    if self.objectIdentifier != nil {
                        map["ObjectIdentifier"] = self.objectIdentifier!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ObjectIdentifier"] as? String {
                        self.objectIdentifier = value
                    }
                    if let value = dict["Value"] as? String {
                        self.value = value
                    }
                }
            }
            public var commonName: String?

            public var country: String?

            public var customAttributes: [CreateCustomCertificateRequest.ApiPassthrough.Subject.CustomAttributes]?

            public var locality: String?

            public var organization: String?

            public var organizationUnit: String?

            public var state: String?

            public override init() {
                super.init()
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
                if self.country != nil {
                    map["Country"] = self.country!
                }
                if self.customAttributes != nil {
                    var tmp : [Any] = []
                    for k in self.customAttributes! {
                        tmp.append(k.toMap())
                    }
                    map["CustomAttributes"] = tmp
                }
                if self.locality != nil {
                    map["Locality"] = self.locality!
                }
                if self.organization != nil {
                    map["Organization"] = self.organization!
                }
                if self.organizationUnit != nil {
                    map["OrganizationUnit"] = self.organizationUnit!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CommonName"] as? String {
                    self.commonName = value
                }
                if let value = dict["Country"] as? String {
                    self.country = value
                }
                if let value = dict["CustomAttributes"] as? [Any?] {
                    var tmp : [CreateCustomCertificateRequest.ApiPassthrough.Subject.CustomAttributes] = []
                    for v in value {
                        if v != nil {
                            var model = CreateCustomCertificateRequest.ApiPassthrough.Subject.CustomAttributes()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.customAttributes = tmp
                }
                if let value = dict["Locality"] as? String {
                    self.locality = value
                }
                if let value = dict["Organization"] as? String {
                    self.organization = value
                }
                if let value = dict["OrganizationUnit"] as? String {
                    self.organizationUnit = value
                }
                if let value = dict["State"] as? String {
                    self.state = value
                }
            }
        }
        public var extensions: CreateCustomCertificateRequest.ApiPassthrough.Extensions?

        public var serialNumber: String?

        public var subject: CreateCustomCertificateRequest.ApiPassthrough.Subject?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.extensions?.validate()
            try self.subject?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.extensions != nil {
                map["Extensions"] = self.extensions?.toMap()
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.subject != nil {
                map["Subject"] = self.subject?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Extensions"] as? [String: Any?] {
                var model = CreateCustomCertificateRequest.ApiPassthrough.Extensions()
                model.fromMap(value)
                self.extensions = model
            }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
            if let value = dict["Subject"] as? [String: Any?] {
                var model = CreateCustomCertificateRequest.ApiPassthrough.Subject()
                model.fromMap(value)
                self.subject = model
            }
        }
    }
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
    public var apiPassthrough: CreateCustomCertificateRequest.ApiPassthrough?

    public var csr: String?

    public var enableCrl: Int64?

    public var immediately: Int32?

    public var parentIdentifier: String?

    public var resourceGroupId: String?

    public var tags: [CreateCustomCertificateRequest.Tags]?

    public var validity: String?

    public var customIdentifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.apiPassthrough?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiPassthrough != nil {
            map["ApiPassthrough"] = self.apiPassthrough?.toMap()
        }
        if self.csr != nil {
            map["Csr"] = self.csr!
        }
        if self.enableCrl != nil {
            map["EnableCrl"] = self.enableCrl!
        }
        if self.immediately != nil {
            map["Immediately"] = self.immediately!
        }
        if self.parentIdentifier != nil {
            map["ParentIdentifier"] = self.parentIdentifier!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.validity != nil {
            map["Validity"] = self.validity!
        }
        if self.customIdentifier != nil {
            map["customIdentifier"] = self.customIdentifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiPassthrough"] as? [String: Any?] {
            var model = CreateCustomCertificateRequest.ApiPassthrough()
            model.fromMap(value)
            self.apiPassthrough = model
        }
        if let value = dict["Csr"] as? String {
            self.csr = value
        }
        if let value = dict["EnableCrl"] as? Int64 {
            self.enableCrl = value
        }
        if let value = dict["Immediately"] as? Int32 {
            self.immediately = value
        }
        if let value = dict["ParentIdentifier"] as? String {
            self.parentIdentifier = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateCustomCertificateRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateCustomCertificateRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["Validity"] as? String {
            self.validity = value
        }
        if let value = dict["customIdentifier"] as? String {
            self.customIdentifier = value
        }
    }
}

public class CreateCustomCertificateResponseBody : Tea.TeaModel {
    public var certificate: String?

    public var certificateChain: String?

    public var identifier: String?

    public var requestId: String?

    public var serialNumber: String?

    public override init() {
        super.init()
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
        if self.certificateChain != nil {
            map["CertificateChain"] = self.certificateChain!
        }
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Certificate"] as? String {
            self.certificate = value
        }
        if let value = dict["CertificateChain"] as? String {
            self.certificateChain = value
        }
        if let value = dict["Identifier"] as? String {
            self.identifier = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
        }
    }
}

public class CreateCustomCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCustomCertificateResponseBody?

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
            var model = CreateCustomCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateExternalCACertificateRequest : Tea.TeaModel {
    public class ApiPassthrough : Tea.TeaModel {
        public class Extensions : Tea.TeaModel {
            public var extendedKeyUsages: [String]?

            public var pathLenConstraint: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.extendedKeyUsages != nil {
                    map["ExtendedKeyUsages"] = self.extendedKeyUsages!
                }
                if self.pathLenConstraint != nil {
                    map["PathLenConstraint"] = self.pathLenConstraint!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ExtendedKeyUsages"] as? [String] {
                    self.extendedKeyUsages = value
                }
                if let value = dict["PathLenConstraint"] as? Int32 {
                    self.pathLenConstraint = value
                }
            }
        }
        public class Subject : Tea.TeaModel {
            public var commonName: String?

            public var country: String?

            public var locality: String?

            public var organization: String?

            public var organizationUnit: String?

            public var state: String?

            public override init() {
                super.init()
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
                if self.country != nil {
                    map["Country"] = self.country!
                }
                if self.locality != nil {
                    map["Locality"] = self.locality!
                }
                if self.organization != nil {
                    map["Organization"] = self.organization!
                }
                if self.organizationUnit != nil {
                    map["OrganizationUnit"] = self.organizationUnit!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CommonName"] as? String {
                    self.commonName = value
                }
                if let value = dict["Country"] as? String {
                    self.country = value
                }
                if let value = dict["Locality"] as? String {
                    self.locality = value
                }
                if let value = dict["Organization"] as? String {
                    self.organization = value
                }
                if let value = dict["OrganizationUnit"] as? String {
                    self.organizationUnit = value
                }
                if let value = dict["State"] as? String {
                    self.state = value
                }
            }
        }
        public var extensions: CreateExternalCACertificateRequest.ApiPassthrough.Extensions?

        public var subject: CreateExternalCACertificateRequest.ApiPassthrough.Subject?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.extensions?.validate()
            try self.subject?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.extensions != nil {
                map["Extensions"] = self.extensions?.toMap()
            }
            if self.subject != nil {
                map["Subject"] = self.subject?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Extensions"] as? [String: Any?] {
                var model = CreateExternalCACertificateRequest.ApiPassthrough.Extensions()
                model.fromMap(value)
                self.extensions = model
            }
            if let value = dict["Subject"] as? [String: Any?] {
                var model = CreateExternalCACertificateRequest.ApiPassthrough.Subject()
                model.fromMap(value)
                self.subject = model
            }
        }
    }
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
    public var apiPassthrough: CreateExternalCACertificateRequest.ApiPassthrough?

    public var csr: String?

    public var instanceId: String?

    public var resourceGroupId: String?

    public var tags: [CreateExternalCACertificateRequest.Tags]?

    public var validity: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.apiPassthrough?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiPassthrough != nil {
            map["ApiPassthrough"] = self.apiPassthrough?.toMap()
        }
        if self.csr != nil {
            map["Csr"] = self.csr!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.validity != nil {
            map["Validity"] = self.validity!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiPassthrough"] as? [String: Any?] {
            var model = CreateExternalCACertificateRequest.ApiPassthrough()
            model.fromMap(value)
            self.apiPassthrough = model
        }
        if let value = dict["Csr"] as? String {
            self.csr = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateExternalCACertificateRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateExternalCACertificateRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["Validity"] as? String {
            self.validity = value
        }
    }
}

public class CreateExternalCACertificateShrinkRequest : Tea.TeaModel {
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
    public var apiPassthroughShrink: String?

    public var csr: String?

    public var instanceId: String?

    public var resourceGroupId: String?

    public var tags: [CreateExternalCACertificateShrinkRequest.Tags]?

    public var validity: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiPassthroughShrink != nil {
            map["ApiPassthrough"] = self.apiPassthroughShrink!
        }
        if self.csr != nil {
            map["Csr"] = self.csr!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.validity != nil {
            map["Validity"] = self.validity!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiPassthrough"] as? String {
            self.apiPassthroughShrink = value
        }
        if let value = dict["Csr"] as? String {
            self.csr = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateExternalCACertificateShrinkRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateExternalCACertificateShrinkRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["Validity"] as? String {
            self.validity = value
        }
    }
}

public class CreateExternalCACertificateResponseBody : Tea.TeaModel {
    public var certificate: String?

    public var certificateChain: String?

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
        if self.certificate != nil {
            map["Certificate"] = self.certificate!
        }
        if self.certificateChain != nil {
            map["CertificateChain"] = self.certificateChain!
        }
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Certificate"] as? String {
            self.certificate = value
        }
        if let value = dict["CertificateChain"] as? String {
            self.certificateChain = value
        }
        if let value = dict["Identifier"] as? String {
            self.identifier = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateExternalCACertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateExternalCACertificateResponseBody?

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
            var model = CreateExternalCACertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRevokeClientCertificateRequest : Tea.TeaModel {
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

public class CreateRevokeClientCertificateResponseBody : Tea.TeaModel {
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

public class CreateRevokeClientCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRevokeClientCertificateResponseBody?

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
            var model = CreateRevokeClientCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRootCACertificateRequest : Tea.TeaModel {
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
    public var algorithm: String?

    public var clientToken: String?

    public var commonName: String?

    public var countryCode: String?

    public var locality: String?

    public var organization: String?

    public var organizationUnit: String?

    public var resourceGroupId: String?

    public var state: String?

    public var tags: [CreateRootCACertificateRequest.Tags]?

    public var years: Int32?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.commonName != nil {
            map["CommonName"] = self.commonName!
        }
        if self.countryCode != nil {
            map["CountryCode"] = self.countryCode!
        }
        if self.locality != nil {
            map["Locality"] = self.locality!
        }
        if self.organization != nil {
            map["Organization"] = self.organization!
        }
        if self.organizationUnit != nil {
            map["OrganizationUnit"] = self.organizationUnit!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.years != nil {
            map["Years"] = self.years!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Algorithm"] as? String {
            self.algorithm = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CommonName"] as? String {
            self.commonName = value
        }
        if let value = dict["CountryCode"] as? String {
            self.countryCode = value
        }
        if let value = dict["Locality"] as? String {
            self.locality = value
        }
        if let value = dict["Organization"] as? String {
            self.organization = value
        }
        if let value = dict["OrganizationUnit"] as? String {
            self.organizationUnit = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateRootCACertificateRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateRootCACertificateRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["Years"] as? Int32 {
            self.years = value
        }
    }
}

public class CreateRootCACertificateResponseBody : Tea.TeaModel {
    public var certificate: String?

    public var certificateChain: String?

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
        if self.certificate != nil {
            map["Certificate"] = self.certificate!
        }
        if self.certificateChain != nil {
            map["CertificateChain"] = self.certificateChain!
        }
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Certificate"] as? String {
            self.certificate = value
        }
        if let value = dict["CertificateChain"] as? String {
            self.certificateChain = value
        }
        if let value = dict["Identifier"] as? String {
            self.identifier = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateRootCACertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRootCACertificateResponseBody?

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
            var model = CreateRootCACertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateServerCertificateRequest : Tea.TeaModel {
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
    public var afterTime: Int64?

    public var algorithm: String?

    public var beforeTime: Int64?

    public var commonName: String?

    public var country: String?

    public var customIdentifier: String?

    public var days: Int32?

    public var domain: String?

    public var enableCrl: Int64?

    public var immediately: Int32?

    public var locality: String?

    public var months: Int32?

    public var organization: String?

    public var organizationUnit: String?

    public var parentIdentifier: String?

    public var resourceGroupId: String?

    public var state: String?

    public var tags: [CreateServerCertificateRequest.Tags]?

    public var years: Int32?

    public override init() {
        super.init()
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
        if self.customIdentifier != nil {
            map["CustomIdentifier"] = self.customIdentifier!
        }
        if self.days != nil {
            map["Days"] = self.days!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.enableCrl != nil {
            map["EnableCrl"] = self.enableCrl!
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.years != nil {
            map["Years"] = self.years!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AfterTime"] as? Int64 {
            self.afterTime = value
        }
        if let value = dict["Algorithm"] as? String {
            self.algorithm = value
        }
        if let value = dict["BeforeTime"] as? Int64 {
            self.beforeTime = value
        }
        if let value = dict["CommonName"] as? String {
            self.commonName = value
        }
        if let value = dict["Country"] as? String {
            self.country = value
        }
        if let value = dict["CustomIdentifier"] as? String {
            self.customIdentifier = value
        }
        if let value = dict["Days"] as? Int32 {
            self.days = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["EnableCrl"] as? Int64 {
            self.enableCrl = value
        }
        if let value = dict["Immediately"] as? Int32 {
            self.immediately = value
        }
        if let value = dict["Locality"] as? String {
            self.locality = value
        }
        if let value = dict["Months"] as? Int32 {
            self.months = value
        }
        if let value = dict["Organization"] as? String {
            self.organization = value
        }
        if let value = dict["OrganizationUnit"] as? String {
            self.organizationUnit = value
        }
        if let value = dict["ParentIdentifier"] as? String {
            self.parentIdentifier = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateServerCertificateRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateServerCertificateRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["Years"] as? Int32 {
            self.years = value
        }
    }
}

public class CreateServerCertificateResponseBody : Tea.TeaModel {
    public var certificateChain: String?

    public var identifier: String?

    public var requestId: String?

    public var serialNumber: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.x509Certificate != nil {
            map["X509Certificate"] = self.x509Certificate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertificateChain"] as? String {
            self.certificateChain = value
        }
        if let value = dict["Identifier"] as? String {
            self.identifier = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
        }
        if let value = dict["X509Certificate"] as? String {
            self.x509Certificate = value
        }
    }
}

public class CreateServerCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServerCertificateResponseBody?

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
            var model = CreateServerCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateServerCertificateWithCsrRequest : Tea.TeaModel {
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
    public var afterTime: Int64?

    public var algorithm: String?

    public var beforeTime: Int64?

    public var commonName: String?

    public var country: String?

    public var csr: String?

    public var customIdentifier: String?

    public var days: Int32?

    public var domain: String?

    public var enableCrl: Int64?

    public var immediately: Int32?

    public var locality: String?

    public var months: Int32?

    public var organization: String?

    public var organizationUnit: String?

    public var parentIdentifier: String?

    public var resourceGroupId: String?

    public var state: String?

    public var tags: [CreateServerCertificateWithCsrRequest.Tags]?

    public var years: Int32?

    public override init() {
        super.init()
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
        if self.customIdentifier != nil {
            map["CustomIdentifier"] = self.customIdentifier!
        }
        if self.days != nil {
            map["Days"] = self.days!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.enableCrl != nil {
            map["EnableCrl"] = self.enableCrl!
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.years != nil {
            map["Years"] = self.years!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AfterTime"] as? Int64 {
            self.afterTime = value
        }
        if let value = dict["Algorithm"] as? String {
            self.algorithm = value
        }
        if let value = dict["BeforeTime"] as? Int64 {
            self.beforeTime = value
        }
        if let value = dict["CommonName"] as? String {
            self.commonName = value
        }
        if let value = dict["Country"] as? String {
            self.country = value
        }
        if let value = dict["Csr"] as? String {
            self.csr = value
        }
        if let value = dict["CustomIdentifier"] as? String {
            self.customIdentifier = value
        }
        if let value = dict["Days"] as? Int32 {
            self.days = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["EnableCrl"] as? Int64 {
            self.enableCrl = value
        }
        if let value = dict["Immediately"] as? Int32 {
            self.immediately = value
        }
        if let value = dict["Locality"] as? String {
            self.locality = value
        }
        if let value = dict["Months"] as? Int32 {
            self.months = value
        }
        if let value = dict["Organization"] as? String {
            self.organization = value
        }
        if let value = dict["OrganizationUnit"] as? String {
            self.organizationUnit = value
        }
        if let value = dict["ParentIdentifier"] as? String {
            self.parentIdentifier = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateServerCertificateWithCsrRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateServerCertificateWithCsrRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["Years"] as? Int32 {
            self.years = value
        }
    }
}

public class CreateServerCertificateWithCsrResponseBody : Tea.TeaModel {
    public var certificateChain: String?

    public var identifier: String?

    public var requestId: String?

    public var serialNumber: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.x509Certificate != nil {
            map["X509Certificate"] = self.x509Certificate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertificateChain"] as? String {
            self.certificateChain = value
        }
        if let value = dict["Identifier"] as? String {
            self.identifier = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
        }
        if let value = dict["X509Certificate"] as? String {
            self.x509Certificate = value
        }
    }
}

public class CreateServerCertificateWithCsrResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServerCertificateWithCsrResponseBody?

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
            var model = CreateServerCertificateWithCsrResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSubCACertificateRequest : Tea.TeaModel {
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
    public var algorithm: String?

    public var clientToken: String?

    public var commonName: String?

    public var countryCode: String?

    public var crlDay: Int32?

    public var enableCrl: Bool?

    public var extendedKeyUsages: [String]?

    public var locality: String?

    public var organization: String?

    public var organizationUnit: String?

    public var parentIdentifier: String?

    public var pathLenConstraint: Int32?

    public var resourceGroupId: String?

    public var state: String?

    public var tags: [CreateSubCACertificateRequest.Tags]?

    public var years: Int32?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.commonName != nil {
            map["CommonName"] = self.commonName!
        }
        if self.countryCode != nil {
            map["CountryCode"] = self.countryCode!
        }
        if self.crlDay != nil {
            map["CrlDay"] = self.crlDay!
        }
        if self.enableCrl != nil {
            map["EnableCrl"] = self.enableCrl!
        }
        if self.extendedKeyUsages != nil {
            map["ExtendedKeyUsages"] = self.extendedKeyUsages!
        }
        if self.locality != nil {
            map["Locality"] = self.locality!
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
        if self.pathLenConstraint != nil {
            map["PathLenConstraint"] = self.pathLenConstraint!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.years != nil {
            map["Years"] = self.years!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Algorithm"] as? String {
            self.algorithm = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CommonName"] as? String {
            self.commonName = value
        }
        if let value = dict["CountryCode"] as? String {
            self.countryCode = value
        }
        if let value = dict["CrlDay"] as? Int32 {
            self.crlDay = value
        }
        if let value = dict["EnableCrl"] as? Bool {
            self.enableCrl = value
        }
        if let value = dict["ExtendedKeyUsages"] as? [String] {
            self.extendedKeyUsages = value
        }
        if let value = dict["Locality"] as? String {
            self.locality = value
        }
        if let value = dict["Organization"] as? String {
            self.organization = value
        }
        if let value = dict["OrganizationUnit"] as? String {
            self.organizationUnit = value
        }
        if let value = dict["ParentIdentifier"] as? String {
            self.parentIdentifier = value
        }
        if let value = dict["PathLenConstraint"] as? Int32 {
            self.pathLenConstraint = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateSubCACertificateRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateSubCACertificateRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["Years"] as? Int32 {
            self.years = value
        }
    }
}

public class CreateSubCACertificateResponseBody : Tea.TeaModel {
    public var certificate: String?

    public var certificateChain: String?

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
        if self.certificate != nil {
            map["Certificate"] = self.certificate!
        }
        if self.certificateChain != nil {
            map["CertificateChain"] = self.certificateChain!
        }
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Certificate"] as? String {
            self.certificate = value
        }
        if let value = dict["CertificateChain"] as? String {
            self.certificateChain = value
        }
        if let value = dict["Identifier"] as? String {
            self.identifier = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateSubCACertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSubCACertificateResponseBody?

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
            var model = CreateSubCACertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteClientCertificateRequest : Tea.TeaModel {
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

public class DeleteClientCertificateResponseBody : Tea.TeaModel {
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

public class DeleteClientCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteClientCertificateResponseBody?

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
            var model = DeleteClientCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCACertificateRequest : Tea.TeaModel {
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

public class DescribeCACertificateResponseBody : Tea.TeaModel {
    public class Certificate : Tea.TeaModel {
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
        public var afterDate: Int64?

        public var algorithm: String?

        public var beforeDate: Int64?

        public var caCertChain: String?

        public var certIssuedCount: Int64?

        public var certRemainingCount: Int64?

        public var certTotalCount: Int64?

        public var certificateType: String?

        public var clusterId: String?

        public var commonName: String?

        public var countryCode: String?

        public var crlDay: Int32?

        public var crlStatus: String?

        public var crlUrl: String?

        public var fullAlgorithm: String?

        public var identifier: String?

        public var issuerType: String?

        public var keyIndex: Int32?

        public var keySize: Int32?

        public var locality: String?

        public var md5: String?

        public var organization: String?

        public var organizationUnit: String?

        public var parentIdentifier: String?

        public var resourceGroupId: String?

        public var sans: String?

        public var serialNumber: String?

        public var sha2: String?

        public var signAlgorithm: String?

        public var state: String?

        public var status: String?

        public var subjectDN: String?

        public var tags: [DescribeCACertificateResponseBody.Certificate.Tags]?

        public var x509Certificate: String?

        public var years: Int32?

        public override init() {
            super.init()
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
            if self.algorithm != nil {
                map["Algorithm"] = self.algorithm!
            }
            if self.beforeDate != nil {
                map["BeforeDate"] = self.beforeDate!
            }
            if self.caCertChain != nil {
                map["CaCertChain"] = self.caCertChain!
            }
            if self.certIssuedCount != nil {
                map["CertIssuedCount"] = self.certIssuedCount!
            }
            if self.certRemainingCount != nil {
                map["CertRemainingCount"] = self.certRemainingCount!
            }
            if self.certTotalCount != nil {
                map["CertTotalCount"] = self.certTotalCount!
            }
            if self.certificateType != nil {
                map["CertificateType"] = self.certificateType!
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.countryCode != nil {
                map["CountryCode"] = self.countryCode!
            }
            if self.crlDay != nil {
                map["CrlDay"] = self.crlDay!
            }
            if self.crlStatus != nil {
                map["CrlStatus"] = self.crlStatus!
            }
            if self.crlUrl != nil {
                map["CrlUrl"] = self.crlUrl!
            }
            if self.fullAlgorithm != nil {
                map["FullAlgorithm"] = self.fullAlgorithm!
            }
            if self.identifier != nil {
                map["Identifier"] = self.identifier!
            }
            if self.issuerType != nil {
                map["IssuerType"] = self.issuerType!
            }
            if self.keyIndex != nil {
                map["KeyIndex"] = self.keyIndex!
            }
            if self.keySize != nil {
                map["KeySize"] = self.keySize!
            }
            if self.locality != nil {
                map["Locality"] = self.locality!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
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
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.sans != nil {
                map["Sans"] = self.sans!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.sha2 != nil {
                map["Sha2"] = self.sha2!
            }
            if self.signAlgorithm != nil {
                map["SignAlgorithm"] = self.signAlgorithm!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subjectDN != nil {
                map["SubjectDN"] = self.subjectDN!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.x509Certificate != nil {
                map["X509Certificate"] = self.x509Certificate!
            }
            if self.years != nil {
                map["Years"] = self.years!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AfterDate"] as? Int64 {
                self.afterDate = value
            }
            if let value = dict["Algorithm"] as? String {
                self.algorithm = value
            }
            if let value = dict["BeforeDate"] as? Int64 {
                self.beforeDate = value
            }
            if let value = dict["CaCertChain"] as? String {
                self.caCertChain = value
            }
            if let value = dict["CertIssuedCount"] as? Int64 {
                self.certIssuedCount = value
            }
            if let value = dict["CertRemainingCount"] as? Int64 {
                self.certRemainingCount = value
            }
            if let value = dict["CertTotalCount"] as? Int64 {
                self.certTotalCount = value
            }
            if let value = dict["CertificateType"] as? String {
                self.certificateType = value
            }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["CommonName"] as? String {
                self.commonName = value
            }
            if let value = dict["CountryCode"] as? String {
                self.countryCode = value
            }
            if let value = dict["CrlDay"] as? Int32 {
                self.crlDay = value
            }
            if let value = dict["CrlStatus"] as? String {
                self.crlStatus = value
            }
            if let value = dict["CrlUrl"] as? String {
                self.crlUrl = value
            }
            if let value = dict["FullAlgorithm"] as? String {
                self.fullAlgorithm = value
            }
            if let value = dict["Identifier"] as? String {
                self.identifier = value
            }
            if let value = dict["IssuerType"] as? String {
                self.issuerType = value
            }
            if let value = dict["KeyIndex"] as? Int32 {
                self.keyIndex = value
            }
            if let value = dict["KeySize"] as? Int32 {
                self.keySize = value
            }
            if let value = dict["Locality"] as? String {
                self.locality = value
            }
            if let value = dict["Md5"] as? String {
                self.md5 = value
            }
            if let value = dict["Organization"] as? String {
                self.organization = value
            }
            if let value = dict["OrganizationUnit"] as? String {
                self.organizationUnit = value
            }
            if let value = dict["ParentIdentifier"] as? String {
                self.parentIdentifier = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Sans"] as? String {
                self.sans = value
            }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
            if let value = dict["Sha2"] as? String {
                self.sha2 = value
            }
            if let value = dict["SignAlgorithm"] as? String {
                self.signAlgorithm = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SubjectDN"] as? String {
                self.subjectDN = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [DescribeCACertificateResponseBody.Certificate.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeCACertificateResponseBody.Certificate.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["X509Certificate"] as? String {
                self.x509Certificate = value
            }
            if let value = dict["Years"] as? Int32 {
                self.years = value
            }
        }
    }
    public var certificate: DescribeCACertificateResponseBody.Certificate?

    public var requestId: String?

    public var years: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.certificate?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificate != nil {
            map["Certificate"] = self.certificate?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.years != nil {
            map["Years"] = self.years!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Certificate"] as? [String: Any?] {
            var model = DescribeCACertificateResponseBody.Certificate()
            model.fromMap(value)
            self.certificate = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Years"] as? Int32 {
            self.years = value
        }
    }
}

public class DescribeCACertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCACertificateResponseBody?

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
            var model = DescribeCACertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCACertificateCountResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeCACertificateCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCACertificateCountResponseBody?

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
            var model = DescribeCACertificateCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCACertificateListRequest : Tea.TeaModel {
    public var caStatus: String?

    public var certType: String?

    public var currentPage: Int32?

    public var identifier: String?

    public var issuerType: String?

    public var resourceGroupId: String?

    public var showSize: Int32?

    public var validStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caStatus != nil {
            map["CaStatus"] = self.caStatus!
        }
        if self.certType != nil {
            map["CertType"] = self.certType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.issuerType != nil {
            map["IssuerType"] = self.issuerType!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        if self.validStatus != nil {
            map["ValidStatus"] = self.validStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CaStatus"] as? String {
            self.caStatus = value
        }
        if let value = dict["CertType"] as? String {
            self.certType = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Identifier"] as? String {
            self.identifier = value
        }
        if let value = dict["IssuerType"] as? String {
            self.issuerType = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ShowSize"] as? Int32 {
            self.showSize = value
        }
        if let value = dict["ValidStatus"] as? String {
            self.validStatus = value
        }
    }
}

public class DescribeCACertificateListResponseBody : Tea.TeaModel {
    public class CertificateList : Tea.TeaModel {
        public var afterDate: Int64?

        public var algorithm: String?

        public var alias: String?

        public var beforeDate: Int64?

        public var certificateType: String?

        public var commonName: String?

        public var countryCode: String?

        public var gift: Int32?

        public var identifier: String?

        public var keySize: Int32?

        public var locality: String?

        public var md5: String?

        public var organization: String?

        public var organizationUnit: String?

        public var parentIdentifier: String?

        public var resourceGroupId: String?

        public var sans: String?

        public var serialNumber: String?

        public var sha2: String?

        public var signAlgorithm: String?

        public var state: String?

        public var status: String?

        public var subjectDN: String?

        public var trial: Int32?

        public var x509Certificate: String?

        public var years: Int32?

        public override init() {
            super.init()
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
            if self.algorithm != nil {
                map["Algorithm"] = self.algorithm!
            }
            if self.alias != nil {
                map["Alias"] = self.alias!
            }
            if self.beforeDate != nil {
                map["BeforeDate"] = self.beforeDate!
            }
            if self.certificateType != nil {
                map["CertificateType"] = self.certificateType!
            }
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.countryCode != nil {
                map["CountryCode"] = self.countryCode!
            }
            if self.gift != nil {
                map["Gift"] = self.gift!
            }
            if self.identifier != nil {
                map["Identifier"] = self.identifier!
            }
            if self.keySize != nil {
                map["KeySize"] = self.keySize!
            }
            if self.locality != nil {
                map["Locality"] = self.locality!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
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
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.sans != nil {
                map["Sans"] = self.sans!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.sha2 != nil {
                map["Sha2"] = self.sha2!
            }
            if self.signAlgorithm != nil {
                map["SignAlgorithm"] = self.signAlgorithm!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subjectDN != nil {
                map["SubjectDN"] = self.subjectDN!
            }
            if self.trial != nil {
                map["Trial"] = self.trial!
            }
            if self.x509Certificate != nil {
                map["X509Certificate"] = self.x509Certificate!
            }
            if self.years != nil {
                map["Years"] = self.years!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AfterDate"] as? Int64 {
                self.afterDate = value
            }
            if let value = dict["Algorithm"] as? String {
                self.algorithm = value
            }
            if let value = dict["Alias"] as? String {
                self.alias = value
            }
            if let value = dict["BeforeDate"] as? Int64 {
                self.beforeDate = value
            }
            if let value = dict["CertificateType"] as? String {
                self.certificateType = value
            }
            if let value = dict["CommonName"] as? String {
                self.commonName = value
            }
            if let value = dict["CountryCode"] as? String {
                self.countryCode = value
            }
            if let value = dict["Gift"] as? Int32 {
                self.gift = value
            }
            if let value = dict["Identifier"] as? String {
                self.identifier = value
            }
            if let value = dict["KeySize"] as? Int32 {
                self.keySize = value
            }
            if let value = dict["Locality"] as? String {
                self.locality = value
            }
            if let value = dict["Md5"] as? String {
                self.md5 = value
            }
            if let value = dict["Organization"] as? String {
                self.organization = value
            }
            if let value = dict["OrganizationUnit"] as? String {
                self.organizationUnit = value
            }
            if let value = dict["ParentIdentifier"] as? String {
                self.parentIdentifier = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Sans"] as? String {
                self.sans = value
            }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
            if let value = dict["Sha2"] as? String {
                self.sha2 = value
            }
            if let value = dict["SignAlgorithm"] as? String {
                self.signAlgorithm = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SubjectDN"] as? String {
                self.subjectDN = value
            }
            if let value = dict["Trial"] as? Int32 {
                self.trial = value
            }
            if let value = dict["X509Certificate"] as? String {
                self.x509Certificate = value
            }
            if let value = dict["Years"] as? Int32 {
                self.years = value
            }
        }
    }
    public var certificateList: [DescribeCACertificateListResponseBody.CertificateList]?

    public var currentPage: Int32?

    public var pageCount: Int32?

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
        if self.certificateList != nil {
            var tmp : [Any] = []
            for k in self.certificateList! {
                tmp.append(k.toMap())
            }
            map["CertificateList"] = tmp
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageCount != nil {
            map["PageCount"] = self.pageCount!
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
        if let value = dict["CertificateList"] as? [Any?] {
            var tmp : [DescribeCACertificateListResponseBody.CertificateList] = []
            for v in value {
                if v != nil {
                    var model = DescribeCACertificateListResponseBody.CertificateList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.certificateList = tmp
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageCount"] as? Int32 {
            self.pageCount = value
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

public class DescribeCACertificateListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCACertificateListResponseBody?

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
            var model = DescribeCACertificateListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCertificatePrivateKeyRequest : Tea.TeaModel {
    public var encryptedCode: String?

    public var identifier: String?

    public var resourceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.encryptedCode != nil {
            map["EncryptedCode"] = self.encryptedCode!
        }
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EncryptedCode"] as? String {
            self.encryptedCode = value
        }
        if let value = dict["Identifier"] as? String {
            self.identifier = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeCertificatePrivateKeyResponseBody : Tea.TeaModel {
    public var encryptedData: String?

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
        if self.encryptedData != nil {
            map["EncryptedData"] = self.encryptedData!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EncryptedData"] as? String {
            self.encryptedData = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeCertificatePrivateKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCertificatePrivateKeyResponseBody?

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
            var model = DescribeCertificatePrivateKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeClientCertificateRequest : Tea.TeaModel {
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

public class DescribeClientCertificateResponseBody : Tea.TeaModel {
    public class Certificate : Tea.TeaModel {
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
        public var afterDate: Int64?

        public var algorithm: String?

        public var beforeDate: Int64?

        public var certChain: String?

        public var certificateType: String?

        public var commonName: String?

        public var countryCode: String?

        public var customIdentifier: String?

        public var days: Int32?

        public var identifier: String?

        public var keySize: Int32?

        public var locality: String?

        public var md5: String?

        public var organization: String?

        public var organizationUnit: String?

        public var parentIdentifier: String?

        public var resourceGroupId: String?

        public var sans: String?

        public var serialNumber: String?

        public var sha2: String?

        public var signAlgorithm: String?

        public var state: String?

        public var status: String?

        public var subjectDN: String?

        public var tags: [DescribeClientCertificateResponseBody.Certificate.Tags]?

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
            if self.afterDate != nil {
                map["AfterDate"] = self.afterDate!
            }
            if self.algorithm != nil {
                map["Algorithm"] = self.algorithm!
            }
            if self.beforeDate != nil {
                map["BeforeDate"] = self.beforeDate!
            }
            if self.certChain != nil {
                map["CertChain"] = self.certChain!
            }
            if self.certificateType != nil {
                map["CertificateType"] = self.certificateType!
            }
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.countryCode != nil {
                map["CountryCode"] = self.countryCode!
            }
            if self.customIdentifier != nil {
                map["CustomIdentifier"] = self.customIdentifier!
            }
            if self.days != nil {
                map["Days"] = self.days!
            }
            if self.identifier != nil {
                map["Identifier"] = self.identifier!
            }
            if self.keySize != nil {
                map["KeySize"] = self.keySize!
            }
            if self.locality != nil {
                map["Locality"] = self.locality!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
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
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.sans != nil {
                map["Sans"] = self.sans!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.sha2 != nil {
                map["Sha2"] = self.sha2!
            }
            if self.signAlgorithm != nil {
                map["SignAlgorithm"] = self.signAlgorithm!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subjectDN != nil {
                map["SubjectDN"] = self.subjectDN!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.x509Certificate != nil {
                map["X509Certificate"] = self.x509Certificate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AfterDate"] as? Int64 {
                self.afterDate = value
            }
            if let value = dict["Algorithm"] as? String {
                self.algorithm = value
            }
            if let value = dict["BeforeDate"] as? Int64 {
                self.beforeDate = value
            }
            if let value = dict["CertChain"] as? String {
                self.certChain = value
            }
            if let value = dict["CertificateType"] as? String {
                self.certificateType = value
            }
            if let value = dict["CommonName"] as? String {
                self.commonName = value
            }
            if let value = dict["CountryCode"] as? String {
                self.countryCode = value
            }
            if let value = dict["CustomIdentifier"] as? String {
                self.customIdentifier = value
            }
            if let value = dict["Days"] as? Int32 {
                self.days = value
            }
            if let value = dict["Identifier"] as? String {
                self.identifier = value
            }
            if let value = dict["KeySize"] as? Int32 {
                self.keySize = value
            }
            if let value = dict["Locality"] as? String {
                self.locality = value
            }
            if let value = dict["Md5"] as? String {
                self.md5 = value
            }
            if let value = dict["Organization"] as? String {
                self.organization = value
            }
            if let value = dict["OrganizationUnit"] as? String {
                self.organizationUnit = value
            }
            if let value = dict["ParentIdentifier"] as? String {
                self.parentIdentifier = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Sans"] as? String {
                self.sans = value
            }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
            if let value = dict["Sha2"] as? String {
                self.sha2 = value
            }
            if let value = dict["SignAlgorithm"] as? String {
                self.signAlgorithm = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SubjectDN"] as? String {
                self.subjectDN = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [DescribeClientCertificateResponseBody.Certificate.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeClientCertificateResponseBody.Certificate.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["X509Certificate"] as? String {
                self.x509Certificate = value
            }
        }
    }
    public var certificate: DescribeClientCertificateResponseBody.Certificate?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.certificate?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificate != nil {
            map["Certificate"] = self.certificate?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Certificate"] as? [String: Any?] {
            var model = DescribeClientCertificateResponseBody.Certificate()
            model.fromMap(value)
            self.certificate = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeClientCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClientCertificateResponseBody?

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
            var model = DescribeClientCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeClientCertificateForSerialNumberRequest : Tea.TeaModel {
    public var serialNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
        }
    }
}

public class DescribeClientCertificateForSerialNumberResponseBody : Tea.TeaModel {
    public class CertificateList : Tea.TeaModel {
        public var afterDate: String?

        public var algorithm: String?

        public var beforeDate: String?

        public var certificateType: String?

        public var commonName: String?

        public var countryCode: String?

        public var identifier: String?

        public var keySize: Int32?

        public var locality: String?

        public var md5: String?

        public var organization: String?

        public var organizationUnit: String?

        public var parentIdentifier: String?

        public var sans: String?

        public var serialNumber: String?

        public var sha2: String?

        public var signAlgorithm: String?

        public var state: String?

        public var status: String?

        public var subjectDN: String?

        public var x509Certificate: String?

        public var years: Int32?

        public override init() {
            super.init()
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
            if self.algorithm != nil {
                map["Algorithm"] = self.algorithm!
            }
            if self.beforeDate != nil {
                map["BeforeDate"] = self.beforeDate!
            }
            if self.certificateType != nil {
                map["CertificateType"] = self.certificateType!
            }
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.countryCode != nil {
                map["CountryCode"] = self.countryCode!
            }
            if self.identifier != nil {
                map["Identifier"] = self.identifier!
            }
            if self.keySize != nil {
                map["KeySize"] = self.keySize!
            }
            if self.locality != nil {
                map["Locality"] = self.locality!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
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
            if self.sans != nil {
                map["Sans"] = self.sans!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.sha2 != nil {
                map["Sha2"] = self.sha2!
            }
            if self.signAlgorithm != nil {
                map["SignAlgorithm"] = self.signAlgorithm!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subjectDN != nil {
                map["SubjectDN"] = self.subjectDN!
            }
            if self.x509Certificate != nil {
                map["X509Certificate"] = self.x509Certificate!
            }
            if self.years != nil {
                map["Years"] = self.years!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AfterDate"] as? String {
                self.afterDate = value
            }
            if let value = dict["Algorithm"] as? String {
                self.algorithm = value
            }
            if let value = dict["BeforeDate"] as? String {
                self.beforeDate = value
            }
            if let value = dict["CertificateType"] as? String {
                self.certificateType = value
            }
            if let value = dict["CommonName"] as? String {
                self.commonName = value
            }
            if let value = dict["CountryCode"] as? String {
                self.countryCode = value
            }
            if let value = dict["Identifier"] as? String {
                self.identifier = value
            }
            if let value = dict["KeySize"] as? Int32 {
                self.keySize = value
            }
            if let value = dict["Locality"] as? String {
                self.locality = value
            }
            if let value = dict["Md5"] as? String {
                self.md5 = value
            }
            if let value = dict["Organization"] as? String {
                self.organization = value
            }
            if let value = dict["OrganizationUnit"] as? String {
                self.organizationUnit = value
            }
            if let value = dict["ParentIdentifier"] as? String {
                self.parentIdentifier = value
            }
            if let value = dict["Sans"] as? String {
                self.sans = value
            }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
            if let value = dict["Sha2"] as? String {
                self.sha2 = value
            }
            if let value = dict["SignAlgorithm"] as? String {
                self.signAlgorithm = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SubjectDN"] as? String {
                self.subjectDN = value
            }
            if let value = dict["X509Certificate"] as? String {
                self.x509Certificate = value
            }
            if let value = dict["Years"] as? Int32 {
                self.years = value
            }
        }
    }
    public var certificateList: [DescribeClientCertificateForSerialNumberResponseBody.CertificateList]?

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
        if self.certificateList != nil {
            var tmp : [Any] = []
            for k in self.certificateList! {
                tmp.append(k.toMap())
            }
            map["CertificateList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertificateList"] as? [Any?] {
            var tmp : [DescribeClientCertificateForSerialNumberResponseBody.CertificateList] = []
            for v in value {
                if v != nil {
                    var model = DescribeClientCertificateForSerialNumberResponseBody.CertificateList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.certificateList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeClientCertificateForSerialNumberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClientCertificateForSerialNumberResponseBody?

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
            var model = DescribeClientCertificateForSerialNumberResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeClientCertificateStatusRequest : Tea.TeaModel {
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

public class DescribeClientCertificateStatusResponseBody : Tea.TeaModel {
    public class CertificateStatus : Tea.TeaModel {
        public var revokeTime: Int64?

        public var serialNumber: String?

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
            if self.revokeTime != nil {
                map["RevokeTime"] = self.revokeTime!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RevokeTime"] as? Int64 {
                self.revokeTime = value
            }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var certificateStatus: [DescribeClientCertificateStatusResponseBody.CertificateStatus]?

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
        if self.certificateStatus != nil {
            var tmp : [Any] = []
            for k in self.certificateStatus! {
                tmp.append(k.toMap())
            }
            map["CertificateStatus"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertificateStatus"] as? [Any?] {
            var tmp : [DescribeClientCertificateStatusResponseBody.CertificateStatus] = []
            for v in value {
                if v != nil {
                    var model = DescribeClientCertificateStatusResponseBody.CertificateStatus()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.certificateStatus = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeClientCertificateStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClientCertificateStatusResponseBody?

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
            var model = DescribeClientCertificateStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeClientCertificateStatusForSerialNumberRequest : Tea.TeaModel {
    public var serialNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
        }
    }
}

public class DescribeClientCertificateStatusForSerialNumberResponseBody : Tea.TeaModel {
    public class CertificateStatus : Tea.TeaModel {
        public var revokeTime: Int64?

        public var serialNumber: String?

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
            if self.revokeTime != nil {
                map["RevokeTime"] = self.revokeTime!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RevokeTime"] as? Int64 {
                self.revokeTime = value
            }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var certificateStatus: [DescribeClientCertificateStatusForSerialNumberResponseBody.CertificateStatus]?

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
        if self.certificateStatus != nil {
            var tmp : [Any] = []
            for k in self.certificateStatus! {
                tmp.append(k.toMap())
            }
            map["CertificateStatus"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertificateStatus"] as? [Any?] {
            var tmp : [DescribeClientCertificateStatusForSerialNumberResponseBody.CertificateStatus] = []
            for v in value {
                if v != nil {
                    var model = DescribeClientCertificateStatusForSerialNumberResponseBody.CertificateStatus()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.certificateStatus = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeClientCertificateStatusForSerialNumberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClientCertificateStatusForSerialNumberResponseBody?

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
            var model = DescribeClientCertificateStatusForSerialNumberResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePcaAndExternalCACertificateListRequest : Tea.TeaModel {
    public var currentPage: Int32?

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
        if let value = dict["ShowSize"] as? Int32 {
            self.showSize = value
        }
    }
}

public class DescribePcaAndExternalCACertificateListResponseBody : Tea.TeaModel {
    public class CertificateList : Tea.TeaModel {
        public var afterDate: Int64?

        public var algorithm: String?

        public var beforeDate: Int64?

        public var certificateType: String?

        public var commonName: String?

        public var countryCode: String?

        public var identifier: String?

        public var keySize: Int32?

        public var locality: String?

        public var md5: String?

        public var organization: String?

        public var organizationUnit: String?

        public var parentIdentifier: String?

        public var sans: String?

        public var serialNumber: String?

        public var sha2: String?

        public var signAlgorithm: String?

        public var state: String?

        public var status: String?

        public var subjectDN: String?

        public var x509Certificate: String?

        public var years: Int32?

        public override init() {
            super.init()
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
            if self.algorithm != nil {
                map["Algorithm"] = self.algorithm!
            }
            if self.beforeDate != nil {
                map["BeforeDate"] = self.beforeDate!
            }
            if self.certificateType != nil {
                map["CertificateType"] = self.certificateType!
            }
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.countryCode != nil {
                map["CountryCode"] = self.countryCode!
            }
            if self.identifier != nil {
                map["Identifier"] = self.identifier!
            }
            if self.keySize != nil {
                map["KeySize"] = self.keySize!
            }
            if self.locality != nil {
                map["Locality"] = self.locality!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
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
            if self.sans != nil {
                map["Sans"] = self.sans!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.sha2 != nil {
                map["Sha2"] = self.sha2!
            }
            if self.signAlgorithm != nil {
                map["SignAlgorithm"] = self.signAlgorithm!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subjectDN != nil {
                map["SubjectDN"] = self.subjectDN!
            }
            if self.x509Certificate != nil {
                map["X509Certificate"] = self.x509Certificate!
            }
            if self.years != nil {
                map["Years"] = self.years!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AfterDate"] as? Int64 {
                self.afterDate = value
            }
            if let value = dict["Algorithm"] as? String {
                self.algorithm = value
            }
            if let value = dict["BeforeDate"] as? Int64 {
                self.beforeDate = value
            }
            if let value = dict["CertificateType"] as? String {
                self.certificateType = value
            }
            if let value = dict["CommonName"] as? String {
                self.commonName = value
            }
            if let value = dict["CountryCode"] as? String {
                self.countryCode = value
            }
            if let value = dict["Identifier"] as? String {
                self.identifier = value
            }
            if let value = dict["KeySize"] as? Int32 {
                self.keySize = value
            }
            if let value = dict["Locality"] as? String {
                self.locality = value
            }
            if let value = dict["Md5"] as? String {
                self.md5 = value
            }
            if let value = dict["Organization"] as? String {
                self.organization = value
            }
            if let value = dict["OrganizationUnit"] as? String {
                self.organizationUnit = value
            }
            if let value = dict["ParentIdentifier"] as? String {
                self.parentIdentifier = value
            }
            if let value = dict["Sans"] as? String {
                self.sans = value
            }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
            if let value = dict["Sha2"] as? String {
                self.sha2 = value
            }
            if let value = dict["SignAlgorithm"] as? String {
                self.signAlgorithm = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SubjectDN"] as? String {
                self.subjectDN = value
            }
            if let value = dict["X509Certificate"] as? String {
                self.x509Certificate = value
            }
            if let value = dict["Years"] as? Int32 {
                self.years = value
            }
        }
    }
    public var certificateList: [DescribePcaAndExternalCACertificateListResponseBody.CertificateList]?

    public var currentPage: Int32?

    public var pageCount: Int32?

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
        if self.certificateList != nil {
            var tmp : [Any] = []
            for k in self.certificateList! {
                tmp.append(k.toMap())
            }
            map["CertificateList"] = tmp
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageCount != nil {
            map["PageCount"] = self.pageCount!
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
        if let value = dict["CertificateList"] as? [Any?] {
            var tmp : [DescribePcaAndExternalCACertificateListResponseBody.CertificateList] = []
            for v in value {
                if v != nil {
                    var model = DescribePcaAndExternalCACertificateListResponseBody.CertificateList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.certificateList = tmp
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageCount"] as? Int32 {
            self.pageCount = value
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

public class DescribePcaAndExternalCACertificateListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePcaAndExternalCACertificateListResponseBody?

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
            var model = DescribePcaAndExternalCACertificateListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCAInstanceStatusRequest : Tea.TeaModel {
    public var identifier: String?

    public var instanceId: String?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Identifier"] as? String {
            self.identifier = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetCAInstanceStatusResponseBody : Tea.TeaModel {
    public class InstanceStatusList : Tea.TeaModel {
        public var afterTime: Int64?

        public var beforeTime: Int64?

        public var certIssuedCount: Int32?

        public var certTotalCount: Int32?

        public var identifier: String?

        public var instanceId: String?

        public var status: String?

        public var type: String?

        public var useExpireTime: Int64?

        public override init() {
            super.init()
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
            if self.beforeTime != nil {
                map["BeforeTime"] = self.beforeTime!
            }
            if self.certIssuedCount != nil {
                map["CertIssuedCount"] = self.certIssuedCount!
            }
            if self.certTotalCount != nil {
                map["CertTotalCount"] = self.certTotalCount!
            }
            if self.identifier != nil {
                map["Identifier"] = self.identifier!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.useExpireTime != nil {
                map["UseExpireTime"] = self.useExpireTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AfterTime"] as? Int64 {
                self.afterTime = value
            }
            if let value = dict["BeforeTime"] as? Int64 {
                self.beforeTime = value
            }
            if let value = dict["CertIssuedCount"] as? Int32 {
                self.certIssuedCount = value
            }
            if let value = dict["CertTotalCount"] as? Int32 {
                self.certTotalCount = value
            }
            if let value = dict["Identifier"] as? String {
                self.identifier = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UseExpireTime"] as? Int64 {
                self.useExpireTime = value
            }
        }
    }
    public var instanceStatusList: [GetCAInstanceStatusResponseBody.InstanceStatusList]?

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
        if self.instanceStatusList != nil {
            var tmp : [Any] = []
            for k in self.instanceStatusList! {
                tmp.append(k.toMap())
            }
            map["InstanceStatusList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceStatusList"] as? [Any?] {
            var tmp : [GetCAInstanceStatusResponseBody.InstanceStatusList] = []
            for v in value {
                if v != nil {
                    var model = GetCAInstanceStatusResponseBody.InstanceStatusList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceStatusList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetCAInstanceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCAInstanceStatusResponseBody?

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
            var model = GetCAInstanceStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAllEndEntityInstanceRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var maxResults: Int32?

    public var nextToken: String?

    public var parentId: Int64?

    public var recursiveChildren: Int32?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        if self.recursiveChildren != nil {
            map["RecursiveChildren"] = self.recursiveChildren!
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ParentId"] as? Int64 {
            self.parentId = value
        }
        if let value = dict["RecursiveChildren"] as? Int32 {
            self.recursiveChildren = value
        }
        if let value = dict["ShowSize"] as? Int32 {
            self.showSize = value
        }
    }
}

public class ListAllEndEntityInstanceResponseBody : Tea.TeaModel {
    public var currentPage: Int32?

    public var list: [[String: Any]]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageCount: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.list != nil {
            map["List"] = self.list!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageCount != nil {
            map["PageCount"] = self.pageCount!
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
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["List"] as? [[String: Any]] {
            self.list = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageCount"] as? Int32 {
            self.pageCount = value
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

public class ListAllEndEntityInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAllEndEntityInstanceResponseBody?

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
            var model = ListAllEndEntityInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCACertificateLogRequest : Tea.TeaModel {
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

public class ListCACertificateLogResponseBody : Tea.TeaModel {
    public class LogList : Tea.TeaModel {
        public var content: String?

        public var createTime: Int64?

        public var identifier: String?

        public var opType: String?

        public override init() {
            super.init()
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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.identifier != nil {
                map["Identifier"] = self.identifier!
            }
            if self.opType != nil {
                map["OpType"] = self.opType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Content"] as? String {
                self.content = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Identifier"] as? String {
                self.identifier = value
            }
            if let value = dict["OpType"] as? String {
                self.opType = value
            }
        }
    }
    public var logList: [ListCACertificateLogResponseBody.LogList]?

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
        if self.logList != nil {
            var tmp : [Any] = []
            for k in self.logList! {
                tmp.append(k.toMap())
            }
            map["LogList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogList"] as? [Any?] {
            var tmp : [ListCACertificateLogResponseBody.LogList] = []
            for v in value {
                if v != nil {
                    var model = ListCACertificateLogResponseBody.LogList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.logList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListCACertificateLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCACertificateLogResponseBody?

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
            var model = ListCACertificateLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCertRequest : Tea.TeaModel {
    public var afterDate: String?

    public var beforeDate: String?

    public var currentPage: Int32?

    public var instanceUuid: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var showSize: Int32?

    public var status: String?

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
        if self.afterDate != nil {
            map["AfterDate"] = self.afterDate!
        }
        if self.beforeDate != nil {
            map["BeforeDate"] = self.beforeDate!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.instanceUuid != nil {
            map["InstanceUuid"] = self.instanceUuid!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AfterDate"] as? String {
            self.afterDate = value
        }
        if let value = dict["BeforeDate"] as? String {
            self.beforeDate = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["InstanceUuid"] as? String {
            self.instanceUuid = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ShowSize"] as? Int32 {
            self.showSize = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class ListCertResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var afterDate: String?

        public var afterTime: Int64?

        public var algorithm: String?

        public var aliasName: String?

        public var beforeDate: String?

        public var beforeTime: Int64?

        public var certificateType: String?

        public var commonName: String?

        public var customIdentifier: String?

        public var extra: String?

        public var id: String?

        public var identifier: String?

        public var keyExportable: Bool?

        public var organization: String?

        public var organizationUnit: String?

        public var serialNumber: String?

        public var status: String?

        public var subjectDn: String?

        public var tags: [String]?

        public override init() {
            super.init()
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
            if self.afterTime != nil {
                map["AfterTime"] = self.afterTime!
            }
            if self.algorithm != nil {
                map["Algorithm"] = self.algorithm!
            }
            if self.aliasName != nil {
                map["AliasName"] = self.aliasName!
            }
            if self.beforeDate != nil {
                map["BeforeDate"] = self.beforeDate!
            }
            if self.beforeTime != nil {
                map["BeforeTime"] = self.beforeTime!
            }
            if self.certificateType != nil {
                map["CertificateType"] = self.certificateType!
            }
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.customIdentifier != nil {
                map["CustomIdentifier"] = self.customIdentifier!
            }
            if self.extra != nil {
                map["Extra"] = self.extra!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.identifier != nil {
                map["Identifier"] = self.identifier!
            }
            if self.keyExportable != nil {
                map["KeyExportable"] = self.keyExportable!
            }
            if self.organization != nil {
                map["Organization"] = self.organization!
            }
            if self.organizationUnit != nil {
                map["OrganizationUnit"] = self.organizationUnit!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subjectDn != nil {
                map["SubjectDn"] = self.subjectDn!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AfterDate"] as? String {
                self.afterDate = value
            }
            if let value = dict["AfterTime"] as? Int64 {
                self.afterTime = value
            }
            if let value = dict["Algorithm"] as? String {
                self.algorithm = value
            }
            if let value = dict["AliasName"] as? String {
                self.aliasName = value
            }
            if let value = dict["BeforeDate"] as? String {
                self.beforeDate = value
            }
            if let value = dict["BeforeTime"] as? Int64 {
                self.beforeTime = value
            }
            if let value = dict["CertificateType"] as? String {
                self.certificateType = value
            }
            if let value = dict["CommonName"] as? String {
                self.commonName = value
            }
            if let value = dict["CustomIdentifier"] as? String {
                self.customIdentifier = value
            }
            if let value = dict["Extra"] as? String {
                self.extra = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Identifier"] as? String {
                self.identifier = value
            }
            if let value = dict["KeyExportable"] as? Bool {
                self.keyExportable = value
            }
            if let value = dict["Organization"] as? String {
                self.organization = value
            }
            if let value = dict["OrganizationUnit"] as? String {
                self.organizationUnit = value
            }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SubjectDn"] as? String {
                self.subjectDn = value
            }
            if let value = dict["Tags"] as? [String] {
                self.tags = value
            }
        }
    }
    public var currentPage: Int32?

    public var list: [ListCertResponseBody.List]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageCount: Int32?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["List"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageCount != nil {
            map["PageCount"] = self.pageCount!
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
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["List"] as? [Any?] {
            var tmp : [ListCertResponseBody.List] = []
            for v in value {
                if v != nil {
                    var model = ListCertResponseBody.List()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.list = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageCount"] as? Int32 {
            self.pageCount = value
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

public class ListClientCertificateRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var identifier: String?

    public var resourceGroupId: String?

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
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if let value = dict["Identifier"] as? String {
            self.identifier = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ShowSize"] as? Int32 {
            self.showSize = value
        }
    }
}

public class ListClientCertificateResponseBody : Tea.TeaModel {
    public class CertificateList : Tea.TeaModel {
        public var afterDate: Int64?

        public var algorithm: String?

        public var beforeDate: Int64?

        public var certificateType: String?

        public var commonName: String?

        public var countryCode: String?

        public var customIdentifier: String?

        public var days: Int32?

        public var identifier: String?

        public var keySize: Int32?

        public var locality: String?

        public var md5: String?

        public var organization: String?

        public var organizationUnit: String?

        public var parentIdentifier: String?

        public var resourceGroupId: String?

        public var sans: String?

        public var serialNumber: String?

        public var sha2: String?

        public var signAlgorithm: String?

        public var state: String?

        public var status: String?

        public var subjectDN: String?

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
            if self.afterDate != nil {
                map["AfterDate"] = self.afterDate!
            }
            if self.algorithm != nil {
                map["Algorithm"] = self.algorithm!
            }
            if self.beforeDate != nil {
                map["BeforeDate"] = self.beforeDate!
            }
            if self.certificateType != nil {
                map["CertificateType"] = self.certificateType!
            }
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.countryCode != nil {
                map["CountryCode"] = self.countryCode!
            }
            if self.customIdentifier != nil {
                map["CustomIdentifier"] = self.customIdentifier!
            }
            if self.days != nil {
                map["Days"] = self.days!
            }
            if self.identifier != nil {
                map["Identifier"] = self.identifier!
            }
            if self.keySize != nil {
                map["KeySize"] = self.keySize!
            }
            if self.locality != nil {
                map["Locality"] = self.locality!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
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
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.sans != nil {
                map["Sans"] = self.sans!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.sha2 != nil {
                map["Sha2"] = self.sha2!
            }
            if self.signAlgorithm != nil {
                map["SignAlgorithm"] = self.signAlgorithm!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subjectDN != nil {
                map["SubjectDN"] = self.subjectDN!
            }
            if self.x509Certificate != nil {
                map["X509Certificate"] = self.x509Certificate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AfterDate"] as? Int64 {
                self.afterDate = value
            }
            if let value = dict["Algorithm"] as? String {
                self.algorithm = value
            }
            if let value = dict["BeforeDate"] as? Int64 {
                self.beforeDate = value
            }
            if let value = dict["CertificateType"] as? String {
                self.certificateType = value
            }
            if let value = dict["CommonName"] as? String {
                self.commonName = value
            }
            if let value = dict["CountryCode"] as? String {
                self.countryCode = value
            }
            if let value = dict["CustomIdentifier"] as? String {
                self.customIdentifier = value
            }
            if let value = dict["Days"] as? Int32 {
                self.days = value
            }
            if let value = dict["Identifier"] as? String {
                self.identifier = value
            }
            if let value = dict["KeySize"] as? Int32 {
                self.keySize = value
            }
            if let value = dict["Locality"] as? String {
                self.locality = value
            }
            if let value = dict["Md5"] as? String {
                self.md5 = value
            }
            if let value = dict["Organization"] as? String {
                self.organization = value
            }
            if let value = dict["OrganizationUnit"] as? String {
                self.organizationUnit = value
            }
            if let value = dict["ParentIdentifier"] as? String {
                self.parentIdentifier = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Sans"] as? String {
                self.sans = value
            }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
            if let value = dict["Sha2"] as? String {
                self.sha2 = value
            }
            if let value = dict["SignAlgorithm"] as? String {
                self.signAlgorithm = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SubjectDN"] as? String {
                self.subjectDN = value
            }
            if let value = dict["X509Certificate"] as? String {
                self.x509Certificate = value
            }
        }
    }
    public var certificateList: [ListClientCertificateResponseBody.CertificateList]?

    public var currentPage: Int32?

    public var pageCount: Int32?

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
        if self.certificateList != nil {
            var tmp : [Any] = []
            for k in self.certificateList! {
                tmp.append(k.toMap())
            }
            map["CertificateList"] = tmp
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageCount != nil {
            map["PageCount"] = self.pageCount!
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
        if let value = dict["CertificateList"] as? [Any?] {
            var tmp : [ListClientCertificateResponseBody.CertificateList] = []
            for v in value {
                if v != nil {
                    var model = ListClientCertificateResponseBody.CertificateList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.certificateList = tmp
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageCount"] as? Int32 {
            self.pageCount = value
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

public class ListClientCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClientCertificateResponseBody?

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
            var model = ListClientCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPcaCaCertificateRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListPcaCaCertificateResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var certIdentifier: String?

        public var commonName: String?

        public var issuerIdentifier: String?

        public var privateCaInstanceId: String?

        public var privateCaRegionId: String?

        public var status: String?

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
            if self.certIdentifier != nil {
                map["CertIdentifier"] = self.certIdentifier!
            }
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.issuerIdentifier != nil {
                map["IssuerIdentifier"] = self.issuerIdentifier!
            }
            if self.privateCaInstanceId != nil {
                map["PrivateCaInstanceId"] = self.privateCaInstanceId!
            }
            if self.privateCaRegionId != nil {
                map["PrivateCaRegionId"] = self.privateCaRegionId!
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
            if let value = dict["CertIdentifier"] as? String {
                self.certIdentifier = value
            }
            if let value = dict["CommonName"] as? String {
                self.commonName = value
            }
            if let value = dict["IssuerIdentifier"] as? String {
                self.issuerIdentifier = value
            }
            if let value = dict["PrivateCaInstanceId"] as? String {
                self.privateCaInstanceId = value
            }
            if let value = dict["PrivateCaRegionId"] as? String {
                self.privateCaRegionId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var list: [ListPcaCaCertificateResponseBody.List]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

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
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["List"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["List"] as? [Any?] {
            var tmp : [ListPcaCaCertificateResponseBody.List] = []
            for v in value {
                if v != nil {
                    var model = ListPcaCaCertificateResponseBody.List()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.list = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListPcaCaCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPcaCaCertificateResponseBody?

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
            var model = ListPcaCaCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRevokeCertificateRequest : Tea.TeaModel {
    public var currentPage: Int32?

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
        if let value = dict["ShowSize"] as? Int32 {
            self.showSize = value
        }
    }
}

public class ListRevokeCertificateResponseBody : Tea.TeaModel {
    public class CertificateList : Tea.TeaModel {
        public var afterDate: String?

        public var algorithm: String?

        public var beforeDate: String?

        public var certificateType: String?

        public var commonName: String?

        public var countryCode: String?

        public var customIdentifier: String?

        public var identifier: String?

        public var keySize: Int32?

        public var locality: String?

        public var md5: String?

        public var organization: String?

        public var organizationUnit: String?

        public var parentIdentifier: String?

        public var revokeDate: String?

        public var sans: String?

        public var serialNumber: String?

        public var sha2: String?

        public var signAlgorithm: String?

        public var state: String?

        public var status: String?

        public var subjectDN: String?

        public override init() {
            super.init()
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
            if self.algorithm != nil {
                map["Algorithm"] = self.algorithm!
            }
            if self.beforeDate != nil {
                map["BeforeDate"] = self.beforeDate!
            }
            if self.certificateType != nil {
                map["CertificateType"] = self.certificateType!
            }
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.countryCode != nil {
                map["CountryCode"] = self.countryCode!
            }
            if self.customIdentifier != nil {
                map["CustomIdentifier"] = self.customIdentifier!
            }
            if self.identifier != nil {
                map["Identifier"] = self.identifier!
            }
            if self.keySize != nil {
                map["KeySize"] = self.keySize!
            }
            if self.locality != nil {
                map["Locality"] = self.locality!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
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
            if self.revokeDate != nil {
                map["RevokeDate"] = self.revokeDate!
            }
            if self.sans != nil {
                map["Sans"] = self.sans!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.sha2 != nil {
                map["Sha2"] = self.sha2!
            }
            if self.signAlgorithm != nil {
                map["SignAlgorithm"] = self.signAlgorithm!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subjectDN != nil {
                map["SubjectDN"] = self.subjectDN!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AfterDate"] as? String {
                self.afterDate = value
            }
            if let value = dict["Algorithm"] as? String {
                self.algorithm = value
            }
            if let value = dict["BeforeDate"] as? String {
                self.beforeDate = value
            }
            if let value = dict["CertificateType"] as? String {
                self.certificateType = value
            }
            if let value = dict["CommonName"] as? String {
                self.commonName = value
            }
            if let value = dict["CountryCode"] as? String {
                self.countryCode = value
            }
            if let value = dict["CustomIdentifier"] as? String {
                self.customIdentifier = value
            }
            if let value = dict["Identifier"] as? String {
                self.identifier = value
            }
            if let value = dict["KeySize"] as? Int32 {
                self.keySize = value
            }
            if let value = dict["Locality"] as? String {
                self.locality = value
            }
            if let value = dict["Md5"] as? String {
                self.md5 = value
            }
            if let value = dict["Organization"] as? String {
                self.organization = value
            }
            if let value = dict["OrganizationUnit"] as? String {
                self.organizationUnit = value
            }
            if let value = dict["ParentIdentifier"] as? String {
                self.parentIdentifier = value
            }
            if let value = dict["RevokeDate"] as? String {
                self.revokeDate = value
            }
            if let value = dict["Sans"] as? String {
                self.sans = value
            }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
            if let value = dict["Sha2"] as? String {
                self.sha2 = value
            }
            if let value = dict["SignAlgorithm"] as? String {
                self.signAlgorithm = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SubjectDN"] as? String {
                self.subjectDN = value
            }
        }
    }
    public var certificateList: [ListRevokeCertificateResponseBody.CertificateList]?

    public var currentPage: Int32?

    public var pageCount: Int32?

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
        if self.certificateList != nil {
            var tmp : [Any] = []
            for k in self.certificateList! {
                tmp.append(k.toMap())
            }
            map["CertificateList"] = tmp
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageCount != nil {
            map["PageCount"] = self.pageCount!
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
        if let value = dict["CertificateList"] as? [Any?] {
            var tmp : [ListRevokeCertificateResponseBody.CertificateList] = []
            for v in value {
                if v != nil {
                    var model = ListRevokeCertificateResponseBody.CertificateList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.certificateList = tmp
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["PageCount"] as? Int32 {
            self.pageCount = value
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

public class ListRevokeCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRevokeCertificateResponseBody?

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
            var model = ListRevokeCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTagResourcesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
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
    public var maxResults: Int32?

    public var nextToken: String?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [ListTagResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TagResources : Tea.TeaModel {
            public class TagResources : Tea.TeaModel {
                public var resourceId: String?

                public var resourceType: String?

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
                    if self.resourceId != nil {
                        map["ResourceId"] = self.resourceId!
                    }
                    if self.resourceType != nil {
                        map["ResourceType"] = self.resourceType!
                    }
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
                    if let value = dict["ResourceId"] as? String {
                        self.resourceId = value
                    }
                    if let value = dict["ResourceType"] as? String {
                        self.resourceType = value
                    }
                    if let value = dict["TagKey"] as? String {
                        self.tagKey = value
                    }
                    if let value = dict["TagValue"] as? String {
                        self.tagValue = value
                    }
                }
            }
            public var tagResources: [ListTagResourcesResponseBody.Data.TagResources.TagResources]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tagResources != nil {
                    var tmp : [Any] = []
                    for k in self.tagResources! {
                        tmp.append(k.toMap())
                    }
                    map["TagResources"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TagResources"] as? [Any?] {
                    var tmp : [ListTagResourcesResponseBody.Data.TagResources.TagResources] = []
                    for v in value {
                        if v != nil {
                            var model = ListTagResourcesResponseBody.Data.TagResources.TagResources()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.tagResources = tmp
                }
            }
        }
        public var maxResults: Int32?

        public var nextToken: String?

        public var tagResources: ListTagResourcesResponseBody.Data.TagResources?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.tagResources?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.tagResources != nil {
                map["TagResources"] = self.tagResources?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MaxResults"] as? Int32 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["TagResources"] as? [String: Any?] {
                var model = ListTagResourcesResponseBody.Data.TagResources()
                model.fromMap(value)
                self.tagResources = model
            }
        }
    }
    public var data: ListTagResourcesResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListTagResourcesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagResourcesResponseBody?

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
            var model = ListTagResourcesResponseBody()
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

public class TagResourcesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
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
    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tag: [TagResourcesRequest.Tag]?

    public override init() {
        super.init()
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
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = TagResourcesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class TagResourcesResponseBody : Tea.TeaModel {
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

public class TagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagResourcesResponseBody?

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
            var model = TagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tagKey: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKey"] as? [String] {
            self.tagKey = value
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
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

public class UntagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UntagResourcesResponseBody?

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
            var model = UntagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCACertificateStatusRequest : Tea.TeaModel {
    public var clientToken: String?

    public var identifier: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Identifier"] as? String {
            self.identifier = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class UpdateCACertificateStatusResponseBody : Tea.TeaModel {
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

public class UpdateCACertificateStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCACertificateStatusResponseBody?

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
            var model = UpdateCACertificateStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePcaCertificateRequest : Tea.TeaModel {
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
    public var aliasName: String?

    public var clientToken: String?

    public var identifier: String?

    public var resourceGroupId: String?

    public var tags: [UpdatePcaCertificateRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliasName != nil {
            map["AliasName"] = self.aliasName!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if let value = dict["AliasName"] as? String {
            self.aliasName = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Identifier"] as? String {
            self.identifier = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [UpdatePcaCertificateRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = UpdatePcaCertificateRequest.Tags()
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

public class UpdatePcaCertificateResponseBody : Tea.TeaModel {
    public class AccessDeniedDetail : Tea.TeaModel {
        public var authAction: String?

        public var authPrincipalDisplayName: String?

        public var authPrincipalOwnerId: String?

        public var authPrincipalType: String?

        public var encodedDiagnosticMessage: String?

        public var noPermissionType: String?

        public var policyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authPrincipalDisplayName != nil {
                map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
            }
            if self.authPrincipalOwnerId != nil {
                map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
            }
            if self.authPrincipalType != nil {
                map["AuthPrincipalType"] = self.authPrincipalType!
            }
            if self.encodedDiagnosticMessage != nil {
                map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
            }
            if self.noPermissionType != nil {
                map["NoPermissionType"] = self.noPermissionType!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthAction"] as? String {
                self.authAction = value
            }
            if let value = dict["AuthPrincipalDisplayName"] as? String {
                self.authPrincipalDisplayName = value
            }
            if let value = dict["AuthPrincipalOwnerId"] as? String {
                self.authPrincipalOwnerId = value
            }
            if let value = dict["AuthPrincipalType"] as? String {
                self.authPrincipalType = value
            }
            if let value = dict["EncodedDiagnosticMessage"] as? String {
                self.encodedDiagnosticMessage = value
            }
            if let value = dict["NoPermissionType"] as? String {
                self.noPermissionType = value
            }
            if let value = dict["PolicyType"] as? String {
                self.policyType = value
            }
        }
    }
    public var accessDeniedDetail: UpdatePcaCertificateResponseBody.AccessDeniedDetail?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessDeniedDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? [String: Any?] {
            var model = UpdatePcaCertificateResponseBody.AccessDeniedDetail()
            model.fromMap(value)
            self.accessDeniedDetail = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdatePcaCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePcaCertificateResponseBody?

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
            var model = UpdatePcaCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UploadPcaCertToCasRequest : Tea.TeaModel {
    public var ids: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ids"] as? String {
            self.ids = value
        }
    }
}

public class UploadPcaCertToCasResponseBody : Tea.TeaModel {
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

public class UploadPcaCertToCasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadPcaCertToCasResponseBody?

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
            var model = UploadPcaCertToCasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
