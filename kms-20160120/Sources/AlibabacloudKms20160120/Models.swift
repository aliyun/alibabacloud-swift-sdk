import Foundation
import Tea
import TeaUtils
import AlibabacloudGatewayPOP
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AsymmetricDecryptRequest : Tea.TeaModel {
    public var algorithm: String?

    public var ciphertextBlob: String?

    public var dryRun: String?

    public var keyId: String?

    public var keyVersionId: String?

    public override init() {
        super.init()
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
        if self.ciphertextBlob != nil {
            map["CiphertextBlob"] = self.ciphertextBlob!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keyVersionId != nil {
            map["KeyVersionId"] = self.keyVersionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Algorithm"] as? String {
            self.algorithm = value
        }
        if let value = dict["CiphertextBlob"] as? String {
            self.ciphertextBlob = value
        }
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["KeyVersionId"] as? String {
            self.keyVersionId = value
        }
    }
}

public class AsymmetricDecryptResponseBody : Tea.TeaModel {
    public var keyId: String?

    public var keyVersionId: String?

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
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keyVersionId != nil {
            map["KeyVersionId"] = self.keyVersionId!
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
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["KeyVersionId"] as? String {
            self.keyVersionId = value
        }
        if let value = dict["Plaintext"] as? String {
            self.plaintext = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AsymmetricDecryptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AsymmetricDecryptResponseBody?

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
            var model = AsymmetricDecryptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AsymmetricEncryptRequest : Tea.TeaModel {
    public var algorithm: String?

    public var dryRun: String?

    public var keyId: String?

    public var keyVersionId: String?

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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keyVersionId != nil {
            map["KeyVersionId"] = self.keyVersionId!
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
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["KeyVersionId"] as? String {
            self.keyVersionId = value
        }
        if let value = dict["Plaintext"] as? String {
            self.plaintext = value
        }
    }
}

public class AsymmetricEncryptResponseBody : Tea.TeaModel {
    public var ciphertextBlob: String?

    public var keyId: String?

    public var keyVersionId: String?

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
        if self.ciphertextBlob != nil {
            map["CiphertextBlob"] = self.ciphertextBlob!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keyVersionId != nil {
            map["KeyVersionId"] = self.keyVersionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CiphertextBlob"] as? String {
            self.ciphertextBlob = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["KeyVersionId"] as? String {
            self.keyVersionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AsymmetricEncryptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AsymmetricEncryptResponseBody?

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
            var model = AsymmetricEncryptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AsymmetricSignRequest : Tea.TeaModel {
    public var algorithm: String?

    public var digest: String?

    public var dryRun: String?

    public var keyId: String?

    public var keyVersionId: String?

    public override init() {
        super.init()
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
        if self.digest != nil {
            map["Digest"] = self.digest!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keyVersionId != nil {
            map["KeyVersionId"] = self.keyVersionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Algorithm"] as? String {
            self.algorithm = value
        }
        if let value = dict["Digest"] as? String {
            self.digest = value
        }
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["KeyVersionId"] as? String {
            self.keyVersionId = value
        }
    }
}

public class AsymmetricSignResponseBody : Tea.TeaModel {
    public var keyId: String?

    public var keyVersionId: String?

    public var requestId: String?

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
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keyVersionId != nil {
            map["KeyVersionId"] = self.keyVersionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["KeyVersionId"] as? String {
            self.keyVersionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
    }
}

public class AsymmetricSignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AsymmetricSignResponseBody?

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
            var model = AsymmetricSignResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AsymmetricVerifyRequest : Tea.TeaModel {
    public var algorithm: String?

    public var digest: String?

    public var dryRun: String?

    public var keyId: String?

    public var keyVersionId: String?

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
        if self.algorithm != nil {
            map["Algorithm"] = self.algorithm!
        }
        if self.digest != nil {
            map["Digest"] = self.digest!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keyVersionId != nil {
            map["KeyVersionId"] = self.keyVersionId!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Algorithm"] as? String {
            self.algorithm = value
        }
        if let value = dict["Digest"] as? String {
            self.digest = value
        }
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["KeyVersionId"] as? String {
            self.keyVersionId = value
        }
        if let value = dict["Value"] as? String {
            self.value = value
        }
    }
}

public class AsymmetricVerifyResponseBody : Tea.TeaModel {
    public var keyId: String?

    public var keyVersionId: String?

    public var requestId: String?

    public var value: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keyVersionId != nil {
            map["KeyVersionId"] = self.keyVersionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["KeyVersionId"] as? String {
            self.keyVersionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Value"] as? Bool {
            self.value = value
        }
    }
}

public class AsymmetricVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AsymmetricVerifyResponseBody?

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
            var model = AsymmetricVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelKeyDeletionRequest : Tea.TeaModel {
    public var keyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
    }
}

public class CancelKeyDeletionResponseBody : Tea.TeaModel {
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

public class CancelKeyDeletionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelKeyDeletionResponseBody?

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
            var model = CancelKeyDeletionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CertificatePrivateKeyDecryptRequest : Tea.TeaModel {
    public var algorithm: String?

    public var certificateId: String?

    public var ciphertextBlob: String?

    public override init() {
        super.init()
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
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
        }
        if self.ciphertextBlob != nil {
            map["CiphertextBlob"] = self.ciphertextBlob!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Algorithm"] as? String {
            self.algorithm = value
        }
        if let value = dict["CertificateId"] as? String {
            self.certificateId = value
        }
        if let value = dict["CiphertextBlob"] as? String {
            self.ciphertextBlob = value
        }
    }
}

public class CertificatePrivateKeyDecryptResponseBody : Tea.TeaModel {
    public var certificateId: String?

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
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
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
        if let value = dict["CertificateId"] as? String {
            self.certificateId = value
        }
        if let value = dict["Plaintext"] as? String {
            self.plaintext = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CertificatePrivateKeyDecryptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CertificatePrivateKeyDecryptResponseBody?

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
            var model = CertificatePrivateKeyDecryptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CertificatePrivateKeySignRequest : Tea.TeaModel {
    public var algorithm: String?

    public var certificateId: String?

    public var message: String?

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
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
        }
        if self.message != nil {
            map["Message"] = self.message!
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
        if let value = dict["CertificateId"] as? String {
            self.certificateId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["MessageType"] as? String {
            self.messageType = value
        }
    }
}

public class CertificatePrivateKeySignResponseBody : Tea.TeaModel {
    public var certificateId: String?

    public var requestId: String?

    public var signatureValue: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.signatureValue != nil {
            map["SignatureValue"] = self.signatureValue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertificateId"] as? String {
            self.certificateId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SignatureValue"] as? String {
            self.signatureValue = value
        }
    }
}

public class CertificatePrivateKeySignResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CertificatePrivateKeySignResponseBody?

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
            var model = CertificatePrivateKeySignResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CertificatePublicKeyEncryptRequest : Tea.TeaModel {
    public var algorithm: String?

    public var certificateId: String?

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
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
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
        if let value = dict["CertificateId"] as? String {
            self.certificateId = value
        }
        if let value = dict["Plaintext"] as? String {
            self.plaintext = value
        }
    }
}

public class CertificatePublicKeyEncryptResponseBody : Tea.TeaModel {
    public var certificateId: String?

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
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
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
        if let value = dict["CertificateId"] as? String {
            self.certificateId = value
        }
        if let value = dict["CiphertextBlob"] as? String {
            self.ciphertextBlob = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CertificatePublicKeyEncryptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CertificatePublicKeyEncryptResponseBody?

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
            var model = CertificatePublicKeyEncryptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CertificatePublicKeyVerifyRequest : Tea.TeaModel {
    public var algorithm: String?

    public var certificateId: String?

    public var message: String?

    public var messageType: String?

    public var signatureValue: String?

    public override init() {
        super.init()
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
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Algorithm"] as? String {
            self.algorithm = value
        }
        if let value = dict["CertificateId"] as? String {
            self.certificateId = value
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
    }
}

public class CertificatePublicKeyVerifyResponseBody : Tea.TeaModel {
    public var certificateId: String?

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
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
        }
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
        if let value = dict["CertificateId"] as? String {
            self.certificateId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SignatureValid"] as? Bool {
            self.signatureValid = value
        }
    }
}

public class CertificatePublicKeyVerifyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CertificatePublicKeyVerifyResponseBody?

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
            var model = CertificatePublicKeyVerifyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConnectKmsInstanceRequest : Tea.TeaModel {
    public var KMProvider: String?

    public var kmsInstanceId: String?

    public var vSwitchIds: String?

    public var vpcId: String?

    public var zoneIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.KMProvider != nil {
            map["KMProvider"] = self.KMProvider!
        }
        if self.kmsInstanceId != nil {
            map["KmsInstanceId"] = self.kmsInstanceId!
        }
        if self.vSwitchIds != nil {
            map["VSwitchIds"] = self.vSwitchIds!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.zoneIds != nil {
            map["ZoneIds"] = self.zoneIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KMProvider"] as? String {
            self.KMProvider = value
        }
        if let value = dict["KmsInstanceId"] as? String {
            self.kmsInstanceId = value
        }
        if let value = dict["VSwitchIds"] as? String {
            self.vSwitchIds = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["ZoneIds"] as? String {
            self.zoneIds = value
        }
    }
}

public class ConnectKmsInstanceResponseBody : Tea.TeaModel {
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

public class ConnectKmsInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConnectKmsInstanceResponseBody?

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
            var model = ConnectKmsInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAliasRequest : Tea.TeaModel {
    public var aliasName: String?

    public var keyId: String?

    public override init() {
        super.init()
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
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliasName"] as? String {
            self.aliasName = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
    }
}

public class CreateAliasResponseBody : Tea.TeaModel {
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

public class CreateAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAliasResponseBody?

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
            var model = CreateAliasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateApplicationAccessPointRequest : Tea.TeaModel {
    public var authenticationMethod: String?

    public var description_: String?

    public var name: String?

    public var policies: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authenticationMethod != nil {
            map["AuthenticationMethod"] = self.authenticationMethod!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.policies != nil {
            map["Policies"] = self.policies!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthenticationMethod"] as? String {
            self.authenticationMethod = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Policies"] as? String {
            self.policies = value
        }
    }
}

public class CreateApplicationAccessPointResponseBody : Tea.TeaModel {
    public var arn: String?

    public var authenticationMethod: String?

    public var description_: String?

    public var name: String?

    public var policies: String?

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
        if self.arn != nil {
            map["Arn"] = self.arn!
        }
        if self.authenticationMethod != nil {
            map["AuthenticationMethod"] = self.authenticationMethod!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.policies != nil {
            map["Policies"] = self.policies!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Arn"] as? String {
            self.arn = value
        }
        if let value = dict["AuthenticationMethod"] as? String {
            self.authenticationMethod = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Policies"] as? String {
            self.policies = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateApplicationAccessPointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApplicationAccessPointResponseBody?

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
            var model = CreateApplicationAccessPointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateClientKeyRequest : Tea.TeaModel {
    public var aapName: String?

    public var notAfter: String?

    public var notBefore: String?

    public var password: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aapName != nil {
            map["AapName"] = self.aapName!
        }
        if self.notAfter != nil {
            map["NotAfter"] = self.notAfter!
        }
        if self.notBefore != nil {
            map["NotBefore"] = self.notBefore!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AapName"] as? String {
            self.aapName = value
        }
        if let value = dict["NotAfter"] as? String {
            self.notAfter = value
        }
        if let value = dict["NotBefore"] as? String {
            self.notBefore = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
    }
}

public class CreateClientKeyResponseBody : Tea.TeaModel {
    public var clientKeyId: String?

    public var keyAlgorithm: String?

    public var notAfter: String?

    public var notBefore: String?

    public var privateKeyData: String?

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
        if self.clientKeyId != nil {
            map["ClientKeyId"] = self.clientKeyId!
        }
        if self.keyAlgorithm != nil {
            map["KeyAlgorithm"] = self.keyAlgorithm!
        }
        if self.notAfter != nil {
            map["NotAfter"] = self.notAfter!
        }
        if self.notBefore != nil {
            map["NotBefore"] = self.notBefore!
        }
        if self.privateKeyData != nil {
            map["PrivateKeyData"] = self.privateKeyData!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientKeyId"] as? String {
            self.clientKeyId = value
        }
        if let value = dict["KeyAlgorithm"] as? String {
            self.keyAlgorithm = value
        }
        if let value = dict["NotAfter"] as? String {
            self.notAfter = value
        }
        if let value = dict["NotBefore"] as? String {
            self.notBefore = value
        }
        if let value = dict["PrivateKeyData"] as? String {
            self.privateKeyData = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateClientKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateClientKeyResponseBody?

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
            var model = CreateClientKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateKeyRequest : Tea.TeaModel {
    public var DKMSInstanceId: String?

    public var description_: String?

    public var enableAutomaticRotation: Bool?

    public var keySpec: String?

    public var keyStorageMechanism: String?

    public var keyUsage: String?

    public var origin: String?

    public var policy: String?

    public var protectionLevel: String?

    public var rotationInterval: String?

    public var tags: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DKMSInstanceId != nil {
            map["DKMSInstanceId"] = self.DKMSInstanceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enableAutomaticRotation != nil {
            map["EnableAutomaticRotation"] = self.enableAutomaticRotation!
        }
        if self.keySpec != nil {
            map["KeySpec"] = self.keySpec!
        }
        if self.keyStorageMechanism != nil {
            map["KeyStorageMechanism"] = self.keyStorageMechanism!
        }
        if self.keyUsage != nil {
            map["KeyUsage"] = self.keyUsage!
        }
        if self.origin != nil {
            map["Origin"] = self.origin!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.protectionLevel != nil {
            map["ProtectionLevel"] = self.protectionLevel!
        }
        if self.rotationInterval != nil {
            map["RotationInterval"] = self.rotationInterval!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DKMSInstanceId"] as? String {
            self.DKMSInstanceId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EnableAutomaticRotation"] as? Bool {
            self.enableAutomaticRotation = value
        }
        if let value = dict["KeySpec"] as? String {
            self.keySpec = value
        }
        if let value = dict["KeyStorageMechanism"] as? String {
            self.keyStorageMechanism = value
        }
        if let value = dict["KeyUsage"] as? String {
            self.keyUsage = value
        }
        if let value = dict["Origin"] as? String {
            self.origin = value
        }
        if let value = dict["Policy"] as? String {
            self.policy = value
        }
        if let value = dict["ProtectionLevel"] as? String {
            self.protectionLevel = value
        }
        if let value = dict["RotationInterval"] as? String {
            self.rotationInterval = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
    }
}

public class CreateKeyResponseBody : Tea.TeaModel {
    public class KeyMetadata : Tea.TeaModel {
        public var arn: String?

        public var automaticRotation: String?

        public var creationDate: String?

        public var creator: String?

        public var DKMSInstanceId: String?

        public var deleteDate: String?

        public var description_: String?

        public var keyId: String?

        public var keySpec: String?

        public var keyState: String?

        public var keyUsage: String?

        public var lastRotationDate: String?

        public var materialExpireTime: String?

        public var nextRotationDate: String?

        public var origin: String?

        public var primaryKeyVersion: String?

        public var protectionLevel: String?

        public var rotationInterval: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arn != nil {
                map["Arn"] = self.arn!
            }
            if self.automaticRotation != nil {
                map["AutomaticRotation"] = self.automaticRotation!
            }
            if self.creationDate != nil {
                map["CreationDate"] = self.creationDate!
            }
            if self.creator != nil {
                map["Creator"] = self.creator!
            }
            if self.DKMSInstanceId != nil {
                map["DKMSInstanceId"] = self.DKMSInstanceId!
            }
            if self.deleteDate != nil {
                map["DeleteDate"] = self.deleteDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.keyId != nil {
                map["KeyId"] = self.keyId!
            }
            if self.keySpec != nil {
                map["KeySpec"] = self.keySpec!
            }
            if self.keyState != nil {
                map["KeyState"] = self.keyState!
            }
            if self.keyUsage != nil {
                map["KeyUsage"] = self.keyUsage!
            }
            if self.lastRotationDate != nil {
                map["LastRotationDate"] = self.lastRotationDate!
            }
            if self.materialExpireTime != nil {
                map["MaterialExpireTime"] = self.materialExpireTime!
            }
            if self.nextRotationDate != nil {
                map["NextRotationDate"] = self.nextRotationDate!
            }
            if self.origin != nil {
                map["Origin"] = self.origin!
            }
            if self.primaryKeyVersion != nil {
                map["PrimaryKeyVersion"] = self.primaryKeyVersion!
            }
            if self.protectionLevel != nil {
                map["ProtectionLevel"] = self.protectionLevel!
            }
            if self.rotationInterval != nil {
                map["RotationInterval"] = self.rotationInterval!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Arn"] as? String {
                self.arn = value
            }
            if let value = dict["AutomaticRotation"] as? String {
                self.automaticRotation = value
            }
            if let value = dict["CreationDate"] as? String {
                self.creationDate = value
            }
            if let value = dict["Creator"] as? String {
                self.creator = value
            }
            if let value = dict["DKMSInstanceId"] as? String {
                self.DKMSInstanceId = value
            }
            if let value = dict["DeleteDate"] as? String {
                self.deleteDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["KeyId"] as? String {
                self.keyId = value
            }
            if let value = dict["KeySpec"] as? String {
                self.keySpec = value
            }
            if let value = dict["KeyState"] as? String {
                self.keyState = value
            }
            if let value = dict["KeyUsage"] as? String {
                self.keyUsage = value
            }
            if let value = dict["LastRotationDate"] as? String {
                self.lastRotationDate = value
            }
            if let value = dict["MaterialExpireTime"] as? String {
                self.materialExpireTime = value
            }
            if let value = dict["NextRotationDate"] as? String {
                self.nextRotationDate = value
            }
            if let value = dict["Origin"] as? String {
                self.origin = value
            }
            if let value = dict["PrimaryKeyVersion"] as? String {
                self.primaryKeyVersion = value
            }
            if let value = dict["ProtectionLevel"] as? String {
                self.protectionLevel = value
            }
            if let value = dict["RotationInterval"] as? String {
                self.rotationInterval = value
            }
        }
    }
    public var keyMetadata: CreateKeyResponseBody.KeyMetadata?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.keyMetadata?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyMetadata != nil {
            map["KeyMetadata"] = self.keyMetadata?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyMetadata"] as? [String: Any?] {
            var model = CreateKeyResponseBody.KeyMetadata()
            model.fromMap(value)
            self.keyMetadata = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateKeyResponseBody?

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
            var model = CreateKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateKeyVersionRequest : Tea.TeaModel {
    public var keyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
    }
}

public class CreateKeyVersionResponseBody : Tea.TeaModel {
    public class KeyVersion : Tea.TeaModel {
        public var creationDate: String?

        public var keyId: String?

        public var keyVersionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.creationDate != nil {
                map["CreationDate"] = self.creationDate!
            }
            if self.keyId != nil {
                map["KeyId"] = self.keyId!
            }
            if self.keyVersionId != nil {
                map["KeyVersionId"] = self.keyVersionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreationDate"] as? String {
                self.creationDate = value
            }
            if let value = dict["KeyId"] as? String {
                self.keyId = value
            }
            if let value = dict["KeyVersionId"] as? String {
                self.keyVersionId = value
            }
        }
    }
    public var keyVersion: CreateKeyVersionResponseBody.KeyVersion?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.keyVersion?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyVersion != nil {
            map["KeyVersion"] = self.keyVersion?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyVersion"] as? [String: Any?] {
            var model = CreateKeyVersionResponseBody.KeyVersion()
            model.fromMap(value)
            self.keyVersion = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateKeyVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateKeyVersionResponseBody?

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
            var model = CreateKeyVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateNetworkRuleRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var sourcePrivateIp: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.sourcePrivateIp != nil {
            map["SourcePrivateIp"] = self.sourcePrivateIp!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["SourcePrivateIp"] as? String {
            self.sourcePrivateIp = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class CreateNetworkRuleResponseBody : Tea.TeaModel {
    public var arn: String?

    public var description_: String?

    public var name: String?

    public var requestId: String?

    public var sourcePrivateIp: String?

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
        if self.arn != nil {
            map["Arn"] = self.arn!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sourcePrivateIp != nil {
            map["SourcePrivateIp"] = self.sourcePrivateIp!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Arn"] as? String {
            self.arn = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SourcePrivateIp"] as? String {
            self.sourcePrivateIp = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class CreateNetworkRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateNetworkRuleResponseBody?

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
            var model = CreateNetworkRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePolicyRequest : Tea.TeaModel {
    public var accessControlRules: String?

    public var description_: String?

    public var kmsInstance: String?

    public var name: String?

    public var permissions: String?

    public var resources: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessControlRules != nil {
            map["AccessControlRules"] = self.accessControlRules!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.kmsInstance != nil {
            map["KmsInstance"] = self.kmsInstance!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.permissions != nil {
            map["Permissions"] = self.permissions!
        }
        if self.resources != nil {
            map["Resources"] = self.resources!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessControlRules"] as? String {
            self.accessControlRules = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["KmsInstance"] as? String {
            self.kmsInstance = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Permissions"] as? String {
            self.permissions = value
        }
        if let value = dict["Resources"] as? String {
            self.resources = value
        }
    }
}

public class CreatePolicyResponseBody : Tea.TeaModel {
    public var accessControlRules: String?

    public var arn: String?

    public var description_: String?

    public var kmsInstance: String?

    public var name: String?

    public var permissions: String?

    public var requestId: String?

    public var resources: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessControlRules != nil {
            map["AccessControlRules"] = self.accessControlRules!
        }
        if self.arn != nil {
            map["Arn"] = self.arn!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.kmsInstance != nil {
            map["KmsInstance"] = self.kmsInstance!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.permissions != nil {
            map["Permissions"] = self.permissions!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resources != nil {
            map["Resources"] = self.resources!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessControlRules"] as? String {
            self.accessControlRules = value
        }
        if let value = dict["Arn"] as? String {
            self.arn = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["KmsInstance"] as? String {
            self.kmsInstance = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Permissions"] as? String {
            self.permissions = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Resources"] as? String {
            self.resources = value
        }
    }
}

public class CreatePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePolicyResponseBody?

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
            var model = CreatePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSecretRequest : Tea.TeaModel {
    public var DKMSInstanceId: String?

    public var description_: String?

    public var enableAutomaticRotation: Bool?

    public var encryptionKeyId: String?

    public var extendedConfig: [String: Any]?

    public var policy: String?

    public var rotationInterval: String?

    public var secretData: String?

    public var secretDataType: String?

    public var secretName: String?

    public var secretType: String?

    public var tags: String?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DKMSInstanceId != nil {
            map["DKMSInstanceId"] = self.DKMSInstanceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enableAutomaticRotation != nil {
            map["EnableAutomaticRotation"] = self.enableAutomaticRotation!
        }
        if self.encryptionKeyId != nil {
            map["EncryptionKeyId"] = self.encryptionKeyId!
        }
        if self.extendedConfig != nil {
            map["ExtendedConfig"] = self.extendedConfig!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.rotationInterval != nil {
            map["RotationInterval"] = self.rotationInterval!
        }
        if self.secretData != nil {
            map["SecretData"] = self.secretData!
        }
        if self.secretDataType != nil {
            map["SecretDataType"] = self.secretDataType!
        }
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        if self.secretType != nil {
            map["SecretType"] = self.secretType!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DKMSInstanceId"] as? String {
            self.DKMSInstanceId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EnableAutomaticRotation"] as? Bool {
            self.enableAutomaticRotation = value
        }
        if let value = dict["EncryptionKeyId"] as? String {
            self.encryptionKeyId = value
        }
        if let value = dict["ExtendedConfig"] as? [String: Any] {
            self.extendedConfig = value
        }
        if let value = dict["Policy"] as? String {
            self.policy = value
        }
        if let value = dict["RotationInterval"] as? String {
            self.rotationInterval = value
        }
        if let value = dict["SecretData"] as? String {
            self.secretData = value
        }
        if let value = dict["SecretDataType"] as? String {
            self.secretDataType = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
        if let value = dict["SecretType"] as? String {
            self.secretType = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
        }
    }
}

public class CreateSecretShrinkRequest : Tea.TeaModel {
    public var DKMSInstanceId: String?

    public var description_: String?

    public var enableAutomaticRotation: Bool?

    public var encryptionKeyId: String?

    public var extendedConfigShrink: String?

    public var policy: String?

    public var rotationInterval: String?

    public var secretData: String?

    public var secretDataType: String?

    public var secretName: String?

    public var secretType: String?

    public var tags: String?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DKMSInstanceId != nil {
            map["DKMSInstanceId"] = self.DKMSInstanceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enableAutomaticRotation != nil {
            map["EnableAutomaticRotation"] = self.enableAutomaticRotation!
        }
        if self.encryptionKeyId != nil {
            map["EncryptionKeyId"] = self.encryptionKeyId!
        }
        if self.extendedConfigShrink != nil {
            map["ExtendedConfig"] = self.extendedConfigShrink!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.rotationInterval != nil {
            map["RotationInterval"] = self.rotationInterval!
        }
        if self.secretData != nil {
            map["SecretData"] = self.secretData!
        }
        if self.secretDataType != nil {
            map["SecretDataType"] = self.secretDataType!
        }
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        if self.secretType != nil {
            map["SecretType"] = self.secretType!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DKMSInstanceId"] as? String {
            self.DKMSInstanceId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EnableAutomaticRotation"] as? Bool {
            self.enableAutomaticRotation = value
        }
        if let value = dict["EncryptionKeyId"] as? String {
            self.encryptionKeyId = value
        }
        if let value = dict["ExtendedConfig"] as? String {
            self.extendedConfigShrink = value
        }
        if let value = dict["Policy"] as? String {
            self.policy = value
        }
        if let value = dict["RotationInterval"] as? String {
            self.rotationInterval = value
        }
        if let value = dict["SecretData"] as? String {
            self.secretData = value
        }
        if let value = dict["SecretDataType"] as? String {
            self.secretDataType = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
        if let value = dict["SecretType"] as? String {
            self.secretType = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
        }
    }
}

public class CreateSecretResponseBody : Tea.TeaModel {
    public var arn: String?

    public var automaticRotation: String?

    public var DKMSInstanceId: String?

    public var extendedConfig: String?

    public var nextRotationDate: String?

    public var requestId: String?

    public var rotationInterval: String?

    public var secretName: String?

    public var secretType: String?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arn != nil {
            map["Arn"] = self.arn!
        }
        if self.automaticRotation != nil {
            map["AutomaticRotation"] = self.automaticRotation!
        }
        if self.DKMSInstanceId != nil {
            map["DKMSInstanceId"] = self.DKMSInstanceId!
        }
        if self.extendedConfig != nil {
            map["ExtendedConfig"] = self.extendedConfig!
        }
        if self.nextRotationDate != nil {
            map["NextRotationDate"] = self.nextRotationDate!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rotationInterval != nil {
            map["RotationInterval"] = self.rotationInterval!
        }
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        if self.secretType != nil {
            map["SecretType"] = self.secretType!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Arn"] as? String {
            self.arn = value
        }
        if let value = dict["AutomaticRotation"] as? String {
            self.automaticRotation = value
        }
        if let value = dict["DKMSInstanceId"] as? String {
            self.DKMSInstanceId = value
        }
        if let value = dict["ExtendedConfig"] as? String {
            self.extendedConfig = value
        }
        if let value = dict["NextRotationDate"] as? String {
            self.nextRotationDate = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RotationInterval"] as? String {
            self.rotationInterval = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
        if let value = dict["SecretType"] as? String {
            self.secretType = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
        }
    }
}

public class CreateSecretResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSecretResponseBody?

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
            var model = CreateSecretResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DecryptRequest : Tea.TeaModel {
    public var ciphertextBlob: String?

    public var dryRun: String?

    public var encryptionContext: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ciphertextBlob != nil {
            map["CiphertextBlob"] = self.ciphertextBlob!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.encryptionContext != nil {
            map["EncryptionContext"] = self.encryptionContext!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CiphertextBlob"] as? String {
            self.ciphertextBlob = value
        }
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["EncryptionContext"] as? [String: Any] {
            self.encryptionContext = value
        }
    }
}

public class DecryptShrinkRequest : Tea.TeaModel {
    public var ciphertextBlob: String?

    public var dryRun: String?

    public var encryptionContextShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ciphertextBlob != nil {
            map["CiphertextBlob"] = self.ciphertextBlob!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.encryptionContextShrink != nil {
            map["EncryptionContext"] = self.encryptionContextShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CiphertextBlob"] as? String {
            self.ciphertextBlob = value
        }
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["EncryptionContext"] as? String {
            self.encryptionContextShrink = value
        }
    }
}

public class DecryptResponseBody : Tea.TeaModel {
    public var keyId: String?

    public var keyVersionId: String?

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
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keyVersionId != nil {
            map["KeyVersionId"] = self.keyVersionId!
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
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["KeyVersionId"] as? String {
            self.keyVersionId = value
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

public class DeleteAliasRequest : Tea.TeaModel {
    public var aliasName: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliasName"] as? String {
            self.aliasName = value
        }
    }
}

public class DeleteAliasResponseBody : Tea.TeaModel {
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

public class DeleteAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAliasResponseBody?

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
            var model = DeleteAliasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteApplicationAccessPointRequest : Tea.TeaModel {
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class DeleteApplicationAccessPointResponseBody : Tea.TeaModel {
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

public class DeleteApplicationAccessPointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApplicationAccessPointResponseBody?

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
            var model = DeleteApplicationAccessPointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCertificateRequest : Tea.TeaModel {
    public var certificateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertificateId"] as? String {
            self.certificateId = value
        }
    }
}

public class DeleteCertificateResponseBody : Tea.TeaModel {
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

public class DeleteCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCertificateResponseBody?

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
            var model = DeleteCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteClientKeyRequest : Tea.TeaModel {
    public var clientKeyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientKeyId != nil {
            map["ClientKeyId"] = self.clientKeyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientKeyId"] as? String {
            self.clientKeyId = value
        }
    }
}

public class DeleteClientKeyResponseBody : Tea.TeaModel {
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

public class DeleteClientKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteClientKeyResponseBody?

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
            var model = DeleteClientKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteKeyMaterialRequest : Tea.TeaModel {
    public var keyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
    }
}

public class DeleteKeyMaterialResponseBody : Tea.TeaModel {
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

public class DeleteKeyMaterialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteKeyMaterialResponseBody?

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
            var model = DeleteKeyMaterialResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteNetworkRuleRequest : Tea.TeaModel {
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class DeleteNetworkRuleResponseBody : Tea.TeaModel {
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

public class DeleteNetworkRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNetworkRuleResponseBody?

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
            var model = DeleteNetworkRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePolicyRequest : Tea.TeaModel {
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class DeletePolicyResponseBody : Tea.TeaModel {
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

public class DeletePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePolicyResponseBody?

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
            var model = DeletePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSecretRequest : Tea.TeaModel {
    public var forceDeleteWithoutRecovery: String?

    public var recoveryWindowInDays: String?

    public var secretName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.forceDeleteWithoutRecovery != nil {
            map["ForceDeleteWithoutRecovery"] = self.forceDeleteWithoutRecovery!
        }
        if self.recoveryWindowInDays != nil {
            map["RecoveryWindowInDays"] = self.recoveryWindowInDays!
        }
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ForceDeleteWithoutRecovery"] as? String {
            self.forceDeleteWithoutRecovery = value
        }
        if let value = dict["RecoveryWindowInDays"] as? String {
            self.recoveryWindowInDays = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
    }
}

public class DeleteSecretResponseBody : Tea.TeaModel {
    public var plannedDeleteTime: String?

    public var requestId: String?

    public var secretName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.plannedDeleteTime != nil {
            map["PlannedDeleteTime"] = self.plannedDeleteTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PlannedDeleteTime"] as? String {
            self.plannedDeleteTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
    }
}

public class DeleteSecretResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSecretResponseBody?

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
            var model = DeleteSecretResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAccountKmsStatusResponseBody : Tea.TeaModel {
    public var accountStatus: String?

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
        if self.accountStatus != nil {
            map["AccountStatus"] = self.accountStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountStatus"] as? String {
            self.accountStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeAccountKmsStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccountKmsStatusResponseBody?

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
            var model = DescribeAccountKmsStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeApplicationAccessPointRequest : Tea.TeaModel {
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class DescribeApplicationAccessPointResponseBody : Tea.TeaModel {
    public var arn: String?

    public var authenticationMethod: String?

    public var description_: String?

    public var name: String?

    public var policies: String?

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
        if self.arn != nil {
            map["Arn"] = self.arn!
        }
        if self.authenticationMethod != nil {
            map["AuthenticationMethod"] = self.authenticationMethod!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.policies != nil {
            map["Policies"] = self.policies!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Arn"] as? String {
            self.arn = value
        }
        if let value = dict["AuthenticationMethod"] as? String {
            self.authenticationMethod = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Policies"] as? String {
            self.policies = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeApplicationAccessPointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeApplicationAccessPointResponseBody?

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
            var model = DescribeApplicationAccessPointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCertificateRequest : Tea.TeaModel {
    public var certificateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertificateId"] as? String {
            self.certificateId = value
        }
    }
}

public class DescribeCertificateResponseBody : Tea.TeaModel {
    public var arn: String?

    public var certificateId: String?

    public var createdAt: String?

    public var exportablePrivateKey: Bool?

    public var issuer: String?

    public var keySpec: String?

    public var notAfter: String?

    public var notBefore: String?

    public var requestId: String?

    public var serial: String?

    public var signatureAlgorithm: String?

    public var status: String?

    public var subject: String?

    public var subjectAlternativeNames: [String]?

    public var subjectKeyIdentifier: String?

    public var subjectPublicKey: String?

    public var tags: [String: Any]?

    public var updatedAt: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arn != nil {
            map["Arn"] = self.arn!
        }
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
        }
        if self.createdAt != nil {
            map["CreatedAt"] = self.createdAt!
        }
        if self.exportablePrivateKey != nil {
            map["ExportablePrivateKey"] = self.exportablePrivateKey!
        }
        if self.issuer != nil {
            map["Issuer"] = self.issuer!
        }
        if self.keySpec != nil {
            map["KeySpec"] = self.keySpec!
        }
        if self.notAfter != nil {
            map["NotAfter"] = self.notAfter!
        }
        if self.notBefore != nil {
            map["NotBefore"] = self.notBefore!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serial != nil {
            map["Serial"] = self.serial!
        }
        if self.signatureAlgorithm != nil {
            map["SignatureAlgorithm"] = self.signatureAlgorithm!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.subject != nil {
            map["Subject"] = self.subject!
        }
        if self.subjectAlternativeNames != nil {
            map["SubjectAlternativeNames"] = self.subjectAlternativeNames!
        }
        if self.subjectKeyIdentifier != nil {
            map["SubjectKeyIdentifier"] = self.subjectKeyIdentifier!
        }
        if self.subjectPublicKey != nil {
            map["SubjectPublicKey"] = self.subjectPublicKey!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.updatedAt != nil {
            map["UpdatedAt"] = self.updatedAt!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Arn"] as? String {
            self.arn = value
        }
        if let value = dict["CertificateId"] as? String {
            self.certificateId = value
        }
        if let value = dict["CreatedAt"] as? String {
            self.createdAt = value
        }
        if let value = dict["ExportablePrivateKey"] as? Bool {
            self.exportablePrivateKey = value
        }
        if let value = dict["Issuer"] as? String {
            self.issuer = value
        }
        if let value = dict["KeySpec"] as? String {
            self.keySpec = value
        }
        if let value = dict["NotAfter"] as? String {
            self.notAfter = value
        }
        if let value = dict["NotBefore"] as? String {
            self.notBefore = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Serial"] as? String {
            self.serial = value
        }
        if let value = dict["SignatureAlgorithm"] as? String {
            self.signatureAlgorithm = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Subject"] as? String {
            self.subject = value
        }
        if let value = dict["SubjectAlternativeNames"] as? [String] {
            self.subjectAlternativeNames = value
        }
        if let value = dict["SubjectKeyIdentifier"] as? String {
            self.subjectKeyIdentifier = value
        }
        if let value = dict["SubjectPublicKey"] as? String {
            self.subjectPublicKey = value
        }
        if let value = dict["Tags"] as? [String: Any] {
            self.tags = value
        }
        if let value = dict["UpdatedAt"] as? String {
            self.updatedAt = value
        }
    }
}

public class DescribeCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCertificateResponseBody?

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
            var model = DescribeCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeKeyRequest : Tea.TeaModel {
    public var keyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
    }
}

public class DescribeKeyResponseBody : Tea.TeaModel {
    public class KeyMetadata : Tea.TeaModel {
        public var arn: String?

        public var automaticRotation: String?

        public var creationDate: String?

        public var creator: String?

        public var DKMSInstanceId: String?

        public var deleteDate: String?

        public var deletionProtection: String?

        public var deletionProtectionDescription: String?

        public var description_: String?

        public var keyId: String?

        public var keySpec: String?

        public var keyState: String?

        public var keyUsage: String?

        public var lastRotationDate: String?

        public var materialExpireTime: String?

        public var nextRotationDate: String?

        public var origin: String?

        public var primaryKeyVersion: String?

        public var protectionLevel: String?

        public var rotationInterval: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arn != nil {
                map["Arn"] = self.arn!
            }
            if self.automaticRotation != nil {
                map["AutomaticRotation"] = self.automaticRotation!
            }
            if self.creationDate != nil {
                map["CreationDate"] = self.creationDate!
            }
            if self.creator != nil {
                map["Creator"] = self.creator!
            }
            if self.DKMSInstanceId != nil {
                map["DKMSInstanceId"] = self.DKMSInstanceId!
            }
            if self.deleteDate != nil {
                map["DeleteDate"] = self.deleteDate!
            }
            if self.deletionProtection != nil {
                map["DeletionProtection"] = self.deletionProtection!
            }
            if self.deletionProtectionDescription != nil {
                map["DeletionProtectionDescription"] = self.deletionProtectionDescription!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.keyId != nil {
                map["KeyId"] = self.keyId!
            }
            if self.keySpec != nil {
                map["KeySpec"] = self.keySpec!
            }
            if self.keyState != nil {
                map["KeyState"] = self.keyState!
            }
            if self.keyUsage != nil {
                map["KeyUsage"] = self.keyUsage!
            }
            if self.lastRotationDate != nil {
                map["LastRotationDate"] = self.lastRotationDate!
            }
            if self.materialExpireTime != nil {
                map["MaterialExpireTime"] = self.materialExpireTime!
            }
            if self.nextRotationDate != nil {
                map["NextRotationDate"] = self.nextRotationDate!
            }
            if self.origin != nil {
                map["Origin"] = self.origin!
            }
            if self.primaryKeyVersion != nil {
                map["PrimaryKeyVersion"] = self.primaryKeyVersion!
            }
            if self.protectionLevel != nil {
                map["ProtectionLevel"] = self.protectionLevel!
            }
            if self.rotationInterval != nil {
                map["RotationInterval"] = self.rotationInterval!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Arn"] as? String {
                self.arn = value
            }
            if let value = dict["AutomaticRotation"] as? String {
                self.automaticRotation = value
            }
            if let value = dict["CreationDate"] as? String {
                self.creationDate = value
            }
            if let value = dict["Creator"] as? String {
                self.creator = value
            }
            if let value = dict["DKMSInstanceId"] as? String {
                self.DKMSInstanceId = value
            }
            if let value = dict["DeleteDate"] as? String {
                self.deleteDate = value
            }
            if let value = dict["DeletionProtection"] as? String {
                self.deletionProtection = value
            }
            if let value = dict["DeletionProtectionDescription"] as? String {
                self.deletionProtectionDescription = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["KeyId"] as? String {
                self.keyId = value
            }
            if let value = dict["KeySpec"] as? String {
                self.keySpec = value
            }
            if let value = dict["KeyState"] as? String {
                self.keyState = value
            }
            if let value = dict["KeyUsage"] as? String {
                self.keyUsage = value
            }
            if let value = dict["LastRotationDate"] as? String {
                self.lastRotationDate = value
            }
            if let value = dict["MaterialExpireTime"] as? String {
                self.materialExpireTime = value
            }
            if let value = dict["NextRotationDate"] as? String {
                self.nextRotationDate = value
            }
            if let value = dict["Origin"] as? String {
                self.origin = value
            }
            if let value = dict["PrimaryKeyVersion"] as? String {
                self.primaryKeyVersion = value
            }
            if let value = dict["ProtectionLevel"] as? String {
                self.protectionLevel = value
            }
            if let value = dict["RotationInterval"] as? String {
                self.rotationInterval = value
            }
        }
    }
    public var keyMetadata: DescribeKeyResponseBody.KeyMetadata?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.keyMetadata?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyMetadata != nil {
            map["KeyMetadata"] = self.keyMetadata?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyMetadata"] as? [String: Any?] {
            var model = DescribeKeyResponseBody.KeyMetadata()
            model.fromMap(value)
            self.keyMetadata = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeKeyResponseBody?

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
            var model = DescribeKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeKeyVersionRequest : Tea.TeaModel {
    public var keyId: String?

    public var keyVersionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keyVersionId != nil {
            map["KeyVersionId"] = self.keyVersionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["KeyVersionId"] as? String {
            self.keyVersionId = value
        }
    }
}

public class DescribeKeyVersionResponseBody : Tea.TeaModel {
    public class KeyVersion : Tea.TeaModel {
        public var creationDate: String?

        public var keyId: String?

        public var keyVersionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.creationDate != nil {
                map["CreationDate"] = self.creationDate!
            }
            if self.keyId != nil {
                map["KeyId"] = self.keyId!
            }
            if self.keyVersionId != nil {
                map["KeyVersionId"] = self.keyVersionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreationDate"] as? String {
                self.creationDate = value
            }
            if let value = dict["KeyId"] as? String {
                self.keyId = value
            }
            if let value = dict["KeyVersionId"] as? String {
                self.keyVersionId = value
            }
        }
    }
    public var keyVersion: DescribeKeyVersionResponseBody.KeyVersion?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.keyVersion?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyVersion != nil {
            map["KeyVersion"] = self.keyVersion?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyVersion"] as? [String: Any?] {
            var model = DescribeKeyVersionResponseBody.KeyVersion()
            model.fromMap(value)
            self.keyVersion = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeKeyVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeKeyVersionResponseBody?

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
            var model = DescribeKeyVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeNetworkRuleRequest : Tea.TeaModel {
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class DescribeNetworkRuleResponseBody : Tea.TeaModel {
    public var arn: String?

    public var description_: String?

    public var requestId: String?

    public var sourcePrivateIp: String?

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
        if self.arn != nil {
            map["Arn"] = self.arn!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sourcePrivateIp != nil {
            map["SourcePrivateIp"] = self.sourcePrivateIp!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Arn"] as? String {
            self.arn = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SourcePrivateIp"] as? String {
            self.sourcePrivateIp = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class DescribeNetworkRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNetworkRuleResponseBody?

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
            var model = DescribeNetworkRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePolicyRequest : Tea.TeaModel {
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
    }
}

public class DescribePolicyResponseBody : Tea.TeaModel {
    public var accessControlRules: String?

    public var arn: String?

    public var description_: String?

    public var kmsInstance: String?

    public var name: String?

    public var permissions: [String]?

    public var requestId: String?

    public var resources: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessControlRules != nil {
            map["AccessControlRules"] = self.accessControlRules!
        }
        if self.arn != nil {
            map["Arn"] = self.arn!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.kmsInstance != nil {
            map["KmsInstance"] = self.kmsInstance!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.permissions != nil {
            map["Permissions"] = self.permissions!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resources != nil {
            map["Resources"] = self.resources!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessControlRules"] as? String {
            self.accessControlRules = value
        }
        if let value = dict["Arn"] as? String {
            self.arn = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["KmsInstance"] as? String {
            self.kmsInstance = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Permissions"] as? [String] {
            self.permissions = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Resources"] as? [String] {
            self.resources = value
        }
    }
}

public class DescribePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePolicyResponseBody?

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
            var model = DescribePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
            public var regionId: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
            }
        }
        public var region: [DescribeRegionsResponseBody.Regions.Region]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.region != nil {
                var tmp : [Any] = []
                for k in self.region! {
                    tmp.append(k.toMap())
                }
                map["Region"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Region"] as? [Any?] {
                var tmp : [DescribeRegionsResponseBody.Regions.Region] = []
                for v in value {
                    if v != nil {
                        var model = DescribeRegionsResponseBody.Regions.Region()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.region = tmp
            }
        }
    }
    public var regions: DescribeRegionsResponseBody.Regions?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.regions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regions != nil {
            map["Regions"] = self.regions?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Regions"] as? [String: Any?] {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(value)
            self.regions = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRegionsResponseBody?

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
            var model = DescribeRegionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSecretRequest : Tea.TeaModel {
    public var fetchTags: String?

    public var secretName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fetchTags != nil {
            map["FetchTags"] = self.fetchTags!
        }
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FetchTags"] as? String {
            self.fetchTags = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
    }
}

public class DescribeSecretResponseBody : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public class Tag : Tea.TeaModel {
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
        public var tag: [DescribeSecretResponseBody.Tags.Tag]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
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
            if let value = dict["Tag"] as? [Any?] {
                var tmp : [DescribeSecretResponseBody.Tags.Tag] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSecretResponseBody.Tags.Tag()
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
    public var arn: String?

    public var automaticRotation: String?

    public var createTime: String?

    public var DKMSInstanceId: String?

    public var description_: String?

    public var encryptionKeyId: String?

    public var extendedConfig: String?

    public var lastRotationDate: String?

    public var nextRotationDate: String?

    public var owingService: String?

    public var plannedDeleteTime: String?

    public var requestId: String?

    public var rotationInterval: String?

    public var secretName: String?

    public var secretType: String?

    public var tags: DescribeSecretResponseBody.Tags?

    public var updateTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tags?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arn != nil {
            map["Arn"] = self.arn!
        }
        if self.automaticRotation != nil {
            map["AutomaticRotation"] = self.automaticRotation!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.DKMSInstanceId != nil {
            map["DKMSInstanceId"] = self.DKMSInstanceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.encryptionKeyId != nil {
            map["EncryptionKeyId"] = self.encryptionKeyId!
        }
        if self.extendedConfig != nil {
            map["ExtendedConfig"] = self.extendedConfig!
        }
        if self.lastRotationDate != nil {
            map["LastRotationDate"] = self.lastRotationDate!
        }
        if self.nextRotationDate != nil {
            map["NextRotationDate"] = self.nextRotationDate!
        }
        if self.owingService != nil {
            map["OwingService"] = self.owingService!
        }
        if self.plannedDeleteTime != nil {
            map["PlannedDeleteTime"] = self.plannedDeleteTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rotationInterval != nil {
            map["RotationInterval"] = self.rotationInterval!
        }
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        if self.secretType != nil {
            map["SecretType"] = self.secretType!
        }
        if self.tags != nil {
            map["Tags"] = self.tags?.toMap()
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Arn"] as? String {
            self.arn = value
        }
        if let value = dict["AutomaticRotation"] as? String {
            self.automaticRotation = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DKMSInstanceId"] as? String {
            self.DKMSInstanceId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EncryptionKeyId"] as? String {
            self.encryptionKeyId = value
        }
        if let value = dict["ExtendedConfig"] as? String {
            self.extendedConfig = value
        }
        if let value = dict["LastRotationDate"] as? String {
            self.lastRotationDate = value
        }
        if let value = dict["NextRotationDate"] as? String {
            self.nextRotationDate = value
        }
        if let value = dict["OwingService"] as? String {
            self.owingService = value
        }
        if let value = dict["PlannedDeleteTime"] as? String {
            self.plannedDeleteTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RotationInterval"] as? String {
            self.rotationInterval = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
        if let value = dict["SecretType"] as? String {
            self.secretType = value
        }
        if let value = dict["Tags"] as? [String: Any?] {
            var model = DescribeSecretResponseBody.Tags()
            model.fromMap(value)
            self.tags = model
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
    }
}

public class DescribeSecretResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSecretResponseBody?

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
            var model = DescribeSecretResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableKeyRequest : Tea.TeaModel {
    public var keyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
    }
}

public class DisableKeyResponseBody : Tea.TeaModel {
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

public class DisableKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableKeyResponseBody?

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
            var model = DisableKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableKeyRequest : Tea.TeaModel {
    public var keyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
    }
}

public class EnableKeyResponseBody : Tea.TeaModel {
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

public class EnableKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableKeyResponseBody?

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
            var model = EnableKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EncryptRequest : Tea.TeaModel {
    public var dryRun: String?

    public var encryptionContext: [String: Any]?

    public var keyId: String?

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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.encryptionContext != nil {
            map["EncryptionContext"] = self.encryptionContext!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.plaintext != nil {
            map["Plaintext"] = self.plaintext!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["EncryptionContext"] as? [String: Any] {
            self.encryptionContext = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["Plaintext"] as? String {
            self.plaintext = value
        }
    }
}

public class EncryptShrinkRequest : Tea.TeaModel {
    public var dryRun: String?

    public var encryptionContextShrink: String?

    public var keyId: String?

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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.encryptionContextShrink != nil {
            map["EncryptionContext"] = self.encryptionContextShrink!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.plaintext != nil {
            map["Plaintext"] = self.plaintext!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["EncryptionContext"] as? String {
            self.encryptionContextShrink = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["Plaintext"] as? String {
            self.plaintext = value
        }
    }
}

public class EncryptResponseBody : Tea.TeaModel {
    public var ciphertextBlob: String?

    public var keyId: String?

    public var keyVersionId: String?

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
        if self.ciphertextBlob != nil {
            map["CiphertextBlob"] = self.ciphertextBlob!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keyVersionId != nil {
            map["KeyVersionId"] = self.keyVersionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CiphertextBlob"] as? String {
            self.ciphertextBlob = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["KeyVersionId"] as? String {
            self.keyVersionId = value
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

public class ExportDataKeyRequest : Tea.TeaModel {
    public var ciphertextBlob: String?

    public var dryRun: String?

    public var encryptionContext: [String: Any]?

    public var publicKeyBlob: String?

    public var wrappingAlgorithm: String?

    public var wrappingKeySpec: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ciphertextBlob != nil {
            map["CiphertextBlob"] = self.ciphertextBlob!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.encryptionContext != nil {
            map["EncryptionContext"] = self.encryptionContext!
        }
        if self.publicKeyBlob != nil {
            map["PublicKeyBlob"] = self.publicKeyBlob!
        }
        if self.wrappingAlgorithm != nil {
            map["WrappingAlgorithm"] = self.wrappingAlgorithm!
        }
        if self.wrappingKeySpec != nil {
            map["WrappingKeySpec"] = self.wrappingKeySpec!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CiphertextBlob"] as? String {
            self.ciphertextBlob = value
        }
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["EncryptionContext"] as? [String: Any] {
            self.encryptionContext = value
        }
        if let value = dict["PublicKeyBlob"] as? String {
            self.publicKeyBlob = value
        }
        if let value = dict["WrappingAlgorithm"] as? String {
            self.wrappingAlgorithm = value
        }
        if let value = dict["WrappingKeySpec"] as? String {
            self.wrappingKeySpec = value
        }
    }
}

public class ExportDataKeyShrinkRequest : Tea.TeaModel {
    public var ciphertextBlob: String?

    public var dryRun: String?

    public var encryptionContextShrink: String?

    public var publicKeyBlob: String?

    public var wrappingAlgorithm: String?

    public var wrappingKeySpec: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ciphertextBlob != nil {
            map["CiphertextBlob"] = self.ciphertextBlob!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.encryptionContextShrink != nil {
            map["EncryptionContext"] = self.encryptionContextShrink!
        }
        if self.publicKeyBlob != nil {
            map["PublicKeyBlob"] = self.publicKeyBlob!
        }
        if self.wrappingAlgorithm != nil {
            map["WrappingAlgorithm"] = self.wrappingAlgorithm!
        }
        if self.wrappingKeySpec != nil {
            map["WrappingKeySpec"] = self.wrappingKeySpec!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CiphertextBlob"] as? String {
            self.ciphertextBlob = value
        }
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["EncryptionContext"] as? String {
            self.encryptionContextShrink = value
        }
        if let value = dict["PublicKeyBlob"] as? String {
            self.publicKeyBlob = value
        }
        if let value = dict["WrappingAlgorithm"] as? String {
            self.wrappingAlgorithm = value
        }
        if let value = dict["WrappingKeySpec"] as? String {
            self.wrappingKeySpec = value
        }
    }
}

public class ExportDataKeyResponseBody : Tea.TeaModel {
    public var exportedDataKey: String?

    public var keyId: String?

    public var keyVersionId: String?

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
        if self.exportedDataKey != nil {
            map["ExportedDataKey"] = self.exportedDataKey!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keyVersionId != nil {
            map["KeyVersionId"] = self.keyVersionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExportedDataKey"] as? String {
            self.exportedDataKey = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["KeyVersionId"] as? String {
            self.keyVersionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ExportDataKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExportDataKeyResponseBody?

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
            var model = ExportDataKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateAndExportDataKeyRequest : Tea.TeaModel {
    public var dryRun: String?

    public var encryptionContext: [String: Any]?

    public var keyId: String?

    public var keySpec: String?

    public var numberOfBytes: Int32?

    public var publicKeyBlob: String?

    public var wrappingAlgorithm: String?

    public var wrappingKeySpec: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.encryptionContext != nil {
            map["EncryptionContext"] = self.encryptionContext!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keySpec != nil {
            map["KeySpec"] = self.keySpec!
        }
        if self.numberOfBytes != nil {
            map["NumberOfBytes"] = self.numberOfBytes!
        }
        if self.publicKeyBlob != nil {
            map["PublicKeyBlob"] = self.publicKeyBlob!
        }
        if self.wrappingAlgorithm != nil {
            map["WrappingAlgorithm"] = self.wrappingAlgorithm!
        }
        if self.wrappingKeySpec != nil {
            map["WrappingKeySpec"] = self.wrappingKeySpec!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["EncryptionContext"] as? [String: Any] {
            self.encryptionContext = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["KeySpec"] as? String {
            self.keySpec = value
        }
        if let value = dict["NumberOfBytes"] as? Int32 {
            self.numberOfBytes = value
        }
        if let value = dict["PublicKeyBlob"] as? String {
            self.publicKeyBlob = value
        }
        if let value = dict["WrappingAlgorithm"] as? String {
            self.wrappingAlgorithm = value
        }
        if let value = dict["WrappingKeySpec"] as? String {
            self.wrappingKeySpec = value
        }
    }
}

public class GenerateAndExportDataKeyShrinkRequest : Tea.TeaModel {
    public var dryRun: String?

    public var encryptionContextShrink: String?

    public var keyId: String?

    public var keySpec: String?

    public var numberOfBytes: Int32?

    public var publicKeyBlob: String?

    public var wrappingAlgorithm: String?

    public var wrappingKeySpec: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.encryptionContextShrink != nil {
            map["EncryptionContext"] = self.encryptionContextShrink!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keySpec != nil {
            map["KeySpec"] = self.keySpec!
        }
        if self.numberOfBytes != nil {
            map["NumberOfBytes"] = self.numberOfBytes!
        }
        if self.publicKeyBlob != nil {
            map["PublicKeyBlob"] = self.publicKeyBlob!
        }
        if self.wrappingAlgorithm != nil {
            map["WrappingAlgorithm"] = self.wrappingAlgorithm!
        }
        if self.wrappingKeySpec != nil {
            map["WrappingKeySpec"] = self.wrappingKeySpec!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["EncryptionContext"] as? String {
            self.encryptionContextShrink = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["KeySpec"] as? String {
            self.keySpec = value
        }
        if let value = dict["NumberOfBytes"] as? Int32 {
            self.numberOfBytes = value
        }
        if let value = dict["PublicKeyBlob"] as? String {
            self.publicKeyBlob = value
        }
        if let value = dict["WrappingAlgorithm"] as? String {
            self.wrappingAlgorithm = value
        }
        if let value = dict["WrappingKeySpec"] as? String {
            self.wrappingKeySpec = value
        }
    }
}

public class GenerateAndExportDataKeyResponseBody : Tea.TeaModel {
    public var ciphertextBlob: String?

    public var exportedDataKey: String?

    public var keyId: String?

    public var keyVersionId: String?

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
        if self.ciphertextBlob != nil {
            map["CiphertextBlob"] = self.ciphertextBlob!
        }
        if self.exportedDataKey != nil {
            map["ExportedDataKey"] = self.exportedDataKey!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keyVersionId != nil {
            map["KeyVersionId"] = self.keyVersionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CiphertextBlob"] as? String {
            self.ciphertextBlob = value
        }
        if let value = dict["ExportedDataKey"] as? String {
            self.exportedDataKey = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["KeyVersionId"] as? String {
            self.keyVersionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GenerateAndExportDataKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateAndExportDataKeyResponseBody?

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
            var model = GenerateAndExportDataKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateDataKeyRequest : Tea.TeaModel {
    public var dryRun: String?

    public var encryptionContext: [String: Any]?

    public var keyId: String?

    public var keySpec: String?

    public var numberOfBytes: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.encryptionContext != nil {
            map["EncryptionContext"] = self.encryptionContext!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keySpec != nil {
            map["KeySpec"] = self.keySpec!
        }
        if self.numberOfBytes != nil {
            map["NumberOfBytes"] = self.numberOfBytes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["EncryptionContext"] as? [String: Any] {
            self.encryptionContext = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["KeySpec"] as? String {
            self.keySpec = value
        }
        if let value = dict["NumberOfBytes"] as? Int32 {
            self.numberOfBytes = value
        }
    }
}

public class GenerateDataKeyShrinkRequest : Tea.TeaModel {
    public var dryRun: String?

    public var encryptionContextShrink: String?

    public var keyId: String?

    public var keySpec: String?

    public var numberOfBytes: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.encryptionContextShrink != nil {
            map["EncryptionContext"] = self.encryptionContextShrink!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keySpec != nil {
            map["KeySpec"] = self.keySpec!
        }
        if self.numberOfBytes != nil {
            map["NumberOfBytes"] = self.numberOfBytes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["EncryptionContext"] as? String {
            self.encryptionContextShrink = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["KeySpec"] as? String {
            self.keySpec = value
        }
        if let value = dict["NumberOfBytes"] as? Int32 {
            self.numberOfBytes = value
        }
    }
}

public class GenerateDataKeyResponseBody : Tea.TeaModel {
    public var ciphertextBlob: String?

    public var keyId: String?

    public var keyVersionId: String?

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
        if self.ciphertextBlob != nil {
            map["CiphertextBlob"] = self.ciphertextBlob!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keyVersionId != nil {
            map["KeyVersionId"] = self.keyVersionId!
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
        if let value = dict["CiphertextBlob"] as? String {
            self.ciphertextBlob = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["KeyVersionId"] as? String {
            self.keyVersionId = value
        }
        if let value = dict["Plaintext"] as? String {
            self.plaintext = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GenerateDataKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateDataKeyResponseBody?

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
            var model = GenerateDataKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateDataKeyWithoutPlaintextRequest : Tea.TeaModel {
    public var dryRun: String?

    public var encryptionContext: [String: Any]?

    public var keyId: String?

    public var keySpec: String?

    public var numberOfBytes: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.encryptionContext != nil {
            map["EncryptionContext"] = self.encryptionContext!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keySpec != nil {
            map["KeySpec"] = self.keySpec!
        }
        if self.numberOfBytes != nil {
            map["NumberOfBytes"] = self.numberOfBytes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["EncryptionContext"] as? [String: Any] {
            self.encryptionContext = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["KeySpec"] as? String {
            self.keySpec = value
        }
        if let value = dict["NumberOfBytes"] as? Int32 {
            self.numberOfBytes = value
        }
    }
}

public class GenerateDataKeyWithoutPlaintextShrinkRequest : Tea.TeaModel {
    public var dryRun: String?

    public var encryptionContextShrink: String?

    public var keyId: String?

    public var keySpec: String?

    public var numberOfBytes: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.encryptionContextShrink != nil {
            map["EncryptionContext"] = self.encryptionContextShrink!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keySpec != nil {
            map["KeySpec"] = self.keySpec!
        }
        if self.numberOfBytes != nil {
            map["NumberOfBytes"] = self.numberOfBytes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["EncryptionContext"] as? String {
            self.encryptionContextShrink = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["KeySpec"] as? String {
            self.keySpec = value
        }
        if let value = dict["NumberOfBytes"] as? Int32 {
            self.numberOfBytes = value
        }
    }
}

public class GenerateDataKeyWithoutPlaintextResponseBody : Tea.TeaModel {
    public var ciphertextBlob: String?

    public var keyId: String?

    public var keyVersionId: String?

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
        if self.ciphertextBlob != nil {
            map["CiphertextBlob"] = self.ciphertextBlob!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keyVersionId != nil {
            map["KeyVersionId"] = self.keyVersionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CiphertextBlob"] as? String {
            self.ciphertextBlob = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["KeyVersionId"] as? String {
            self.keyVersionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GenerateDataKeyWithoutPlaintextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateDataKeyWithoutPlaintextResponseBody?

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
            var model = GenerateDataKeyWithoutPlaintextResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCertificateRequest : Tea.TeaModel {
    public var certificateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertificateId"] as? String {
            self.certificateId = value
        }
    }
}

public class GetCertificateResponseBody : Tea.TeaModel {
    public var certificate: String?

    public var certificateChain: String?

    public var certificateId: String?

    public var csr: String?

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
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
        }
        if self.csr != nil {
            map["Csr"] = self.csr!
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
        if let value = dict["CertificateId"] as? String {
            self.certificateId = value
        }
        if let value = dict["Csr"] as? String {
            self.csr = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCertificateResponseBody?

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
            var model = GetCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetClientKeyRequest : Tea.TeaModel {
    public var clientKeyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientKeyId != nil {
            map["ClientKeyId"] = self.clientKeyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientKeyId"] as? String {
            self.clientKeyId = value
        }
    }
}

public class GetClientKeyResponseBody : Tea.TeaModel {
    public var aapName: String?

    public var clientKeyId: String?

    public var createTime: String?

    public var keyAlgorithm: String?

    public var keyOrigin: String?

    public var notAfter: String?

    public var notBefore: String?

    public var publicKeyData: String?

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
        if self.aapName != nil {
            map["AapName"] = self.aapName!
        }
        if self.clientKeyId != nil {
            map["ClientKeyId"] = self.clientKeyId!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.keyAlgorithm != nil {
            map["KeyAlgorithm"] = self.keyAlgorithm!
        }
        if self.keyOrigin != nil {
            map["KeyOrigin"] = self.keyOrigin!
        }
        if self.notAfter != nil {
            map["NotAfter"] = self.notAfter!
        }
        if self.notBefore != nil {
            map["NotBefore"] = self.notBefore!
        }
        if self.publicKeyData != nil {
            map["PublicKeyData"] = self.publicKeyData!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AapName"] as? String {
            self.aapName = value
        }
        if let value = dict["ClientKeyId"] as? String {
            self.clientKeyId = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["KeyAlgorithm"] as? String {
            self.keyAlgorithm = value
        }
        if let value = dict["KeyOrigin"] as? String {
            self.keyOrigin = value
        }
        if let value = dict["NotAfter"] as? String {
            self.notAfter = value
        }
        if let value = dict["NotBefore"] as? String {
            self.notBefore = value
        }
        if let value = dict["PublicKeyData"] as? String {
            self.publicKeyData = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetClientKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetClientKeyResponseBody?

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
            var model = GetClientKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDefaultKmsInstanceResponseBody : Tea.TeaModel {
    public var defaultKmsInstanceId: String?

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
        if self.defaultKmsInstanceId != nil {
            map["DefaultKmsInstanceId"] = self.defaultKmsInstanceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefaultKmsInstanceId"] as? String {
            self.defaultKmsInstanceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDefaultKmsInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDefaultKmsInstanceResponseBody?

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
            var model = GetDefaultKmsInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetKeyPolicyRequest : Tea.TeaModel {
    public var keyId: String?

    public var policyName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
    }
}

public class GetKeyPolicyResponseBody : Tea.TeaModel {
    public var policy: String?

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
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Policy"] as? String {
            self.policy = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetKeyPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetKeyPolicyResponseBody?

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
            var model = GetKeyPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetKmsInstanceRequest : Tea.TeaModel {
    public var kmsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.kmsInstanceId != nil {
            map["KmsInstanceId"] = self.kmsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KmsInstanceId"] as? String {
            self.kmsInstanceId = value
        }
    }
}

public class GetKmsInstanceResponseBody : Tea.TeaModel {
    public class KmsInstance : Tea.TeaModel {
        public class BindVpcs : Tea.TeaModel {
            public class BindVpc : Tea.TeaModel {
                public var regionId: String?

                public var vSwitchId: String?

                public var vpcId: String?

                public var vpcOwnerId: String?

                public override init() {
                    super.init()
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
                    if self.vSwitchId != nil {
                        map["VSwitchId"] = self.vSwitchId!
                    }
                    if self.vpcId != nil {
                        map["VpcId"] = self.vpcId!
                    }
                    if self.vpcOwnerId != nil {
                        map["VpcOwnerId"] = self.vpcOwnerId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RegionId"] as? String {
                        self.regionId = value
                    }
                    if let value = dict["VSwitchId"] as? String {
                        self.vSwitchId = value
                    }
                    if let value = dict["VpcId"] as? String {
                        self.vpcId = value
                    }
                    if let value = dict["VpcOwnerId"] as? String {
                        self.vpcOwnerId = value
                    }
                }
            }
            public var bindVpc: [GetKmsInstanceResponseBody.KmsInstance.BindVpcs.BindVpc]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bindVpc != nil {
                    var tmp : [Any] = []
                    for k in self.bindVpc! {
                        tmp.append(k.toMap())
                    }
                    map["BindVpc"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BindVpc"] as? [Any?] {
                    var tmp : [GetKmsInstanceResponseBody.KmsInstance.BindVpcs.BindVpc] = []
                    for v in value {
                        if v != nil {
                            var model = GetKmsInstanceResponseBody.KmsInstance.BindVpcs.BindVpc()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.bindVpc = tmp
                }
            }
        }
        public var bindVpcs: GetKmsInstanceResponseBody.KmsInstance.BindVpcs?

        public var caCertificateChainPem: String?

        public var chargeType: String?

        public var createTime: String?

        public var endDate: String?

        public var instanceId: String?

        public var instanceName: String?

        public var keyNum: Int64?

        public var log: Int64?

        public var logStorage: Int64?

        public var productType: String?

        public var productVersion: String?

        public var saleStatus: String?

        public var secretNum: String?

        public var spec: Int64?

        public var startDate: String?

        public var status: String?

        public var vpcId: String?

        public var vpcNum: Int64?

        public var vswitchIds: [String]?

        public var zoneIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.bindVpcs?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bindVpcs != nil {
                map["BindVpcs"] = self.bindVpcs?.toMap()
            }
            if self.caCertificateChainPem != nil {
                map["CaCertificateChainPem"] = self.caCertificateChainPem!
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.endDate != nil {
                map["EndDate"] = self.endDate!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.keyNum != nil {
                map["KeyNum"] = self.keyNum!
            }
            if self.log != nil {
                map["Log"] = self.log!
            }
            if self.logStorage != nil {
                map["LogStorage"] = self.logStorage!
            }
            if self.productType != nil {
                map["ProductType"] = self.productType!
            }
            if self.productVersion != nil {
                map["ProductVersion"] = self.productVersion!
            }
            if self.saleStatus != nil {
                map["SaleStatus"] = self.saleStatus!
            }
            if self.secretNum != nil {
                map["SecretNum"] = self.secretNum!
            }
            if self.spec != nil {
                map["Spec"] = self.spec!
            }
            if self.startDate != nil {
                map["StartDate"] = self.startDate!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpcNum != nil {
                map["VpcNum"] = self.vpcNum!
            }
            if self.vswitchIds != nil {
                map["VswitchIds"] = self.vswitchIds!
            }
            if self.zoneIds != nil {
                map["ZoneIds"] = self.zoneIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BindVpcs"] as? [String: Any?] {
                var model = GetKmsInstanceResponseBody.KmsInstance.BindVpcs()
                model.fromMap(value)
                self.bindVpcs = model
            }
            if let value = dict["CaCertificateChainPem"] as? String {
                self.caCertificateChainPem = value
            }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EndDate"] as? String {
                self.endDate = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["KeyNum"] as? Int64 {
                self.keyNum = value
            }
            if let value = dict["Log"] as? Int64 {
                self.log = value
            }
            if let value = dict["LogStorage"] as? Int64 {
                self.logStorage = value
            }
            if let value = dict["ProductType"] as? String {
                self.productType = value
            }
            if let value = dict["ProductVersion"] as? String {
                self.productVersion = value
            }
            if let value = dict["SaleStatus"] as? String {
                self.saleStatus = value
            }
            if let value = dict["SecretNum"] as? String {
                self.secretNum = value
            }
            if let value = dict["Spec"] as? Int64 {
                self.spec = value
            }
            if let value = dict["StartDate"] as? String {
                self.startDate = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VpcNum"] as? Int64 {
                self.vpcNum = value
            }
            if let value = dict["VswitchIds"] as? [String] {
                self.vswitchIds = value
            }
            if let value = dict["ZoneIds"] as? [String] {
                self.zoneIds = value
            }
        }
    }
    public var kmsInstance: GetKmsInstanceResponseBody.KmsInstance?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.kmsInstance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.kmsInstance != nil {
            map["KmsInstance"] = self.kmsInstance?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KmsInstance"] as? [String: Any?] {
            var model = GetKmsInstanceResponseBody.KmsInstance()
            model.fromMap(value)
            self.kmsInstance = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetKmsInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetKmsInstanceResponseBody?

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
            var model = GetKmsInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetKmsInstanceQuotaInfosRequest : Tea.TeaModel {
    public var kmsInstanceId: String?

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
        if self.kmsInstanceId != nil {
            map["KmsInstanceId"] = self.kmsInstanceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KmsInstanceId"] as? String {
            self.kmsInstanceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class GetKmsInstanceQuotaInfosResponseBody : Tea.TeaModel {
    public class KmsInstanceQuotaInfos : Tea.TeaModel {
        public var resourceQuota: Int64?

        public var resourceType: String?

        public var usedQuantity: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resourceQuota != nil {
                map["ResourceQuota"] = self.resourceQuota!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.usedQuantity != nil {
                map["UsedQuantity"] = self.usedQuantity!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceQuota"] as? Int64 {
                self.resourceQuota = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["UsedQuantity"] as? Int64 {
                self.usedQuantity = value
            }
        }
    }
    public var kmsInstanceId: String?

    public var kmsInstanceQuotaInfos: [GetKmsInstanceQuotaInfosResponseBody.KmsInstanceQuotaInfos]?

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
        if self.kmsInstanceId != nil {
            map["KmsInstanceId"] = self.kmsInstanceId!
        }
        if self.kmsInstanceQuotaInfos != nil {
            var tmp : [Any] = []
            for k in self.kmsInstanceQuotaInfos! {
                tmp.append(k.toMap())
            }
            map["KmsInstanceQuotaInfos"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KmsInstanceId"] as? String {
            self.kmsInstanceId = value
        }
        if let value = dict["KmsInstanceQuotaInfos"] as? [Any?] {
            var tmp : [GetKmsInstanceQuotaInfosResponseBody.KmsInstanceQuotaInfos] = []
            for v in value {
                if v != nil {
                    var model = GetKmsInstanceQuotaInfosResponseBody.KmsInstanceQuotaInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.kmsInstanceQuotaInfos = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetKmsInstanceQuotaInfosResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetKmsInstanceQuotaInfosResponseBody?

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
            var model = GetKmsInstanceQuotaInfosResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetParametersForImportRequest : Tea.TeaModel {
    public var keyId: String?

    public var wrappingAlgorithm: String?

    public var wrappingKeySpec: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.wrappingAlgorithm != nil {
            map["WrappingAlgorithm"] = self.wrappingAlgorithm!
        }
        if self.wrappingKeySpec != nil {
            map["WrappingKeySpec"] = self.wrappingKeySpec!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["WrappingAlgorithm"] as? String {
            self.wrappingAlgorithm = value
        }
        if let value = dict["WrappingKeySpec"] as? String {
            self.wrappingKeySpec = value
        }
    }
}

public class GetParametersForImportResponseBody : Tea.TeaModel {
    public var importToken: String?

    public var keyId: String?

    public var publicKey: String?

    public var requestId: String?

    public var tokenExpireTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.importToken != nil {
            map["ImportToken"] = self.importToken!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.publicKey != nil {
            map["PublicKey"] = self.publicKey!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tokenExpireTime != nil {
            map["TokenExpireTime"] = self.tokenExpireTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ImportToken"] as? String {
            self.importToken = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["PublicKey"] as? String {
            self.publicKey = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TokenExpireTime"] as? String {
            self.tokenExpireTime = value
        }
    }
}

public class GetParametersForImportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetParametersForImportResponseBody?

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
            var model = GetParametersForImportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPublicKeyRequest : Tea.TeaModel {
    public var dryRun: String?

    public var keyId: String?

    public var keyVersionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keyVersionId != nil {
            map["KeyVersionId"] = self.keyVersionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["KeyVersionId"] as? String {
            self.keyVersionId = value
        }
    }
}

public class GetPublicKeyResponseBody : Tea.TeaModel {
    public var keyId: String?

    public var keyVersionId: String?

    public var publicKey: String?

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
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keyVersionId != nil {
            map["KeyVersionId"] = self.keyVersionId!
        }
        if self.publicKey != nil {
            map["PublicKey"] = self.publicKey!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["KeyVersionId"] as? String {
            self.keyVersionId = value
        }
        if let value = dict["PublicKey"] as? String {
            self.publicKey = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPublicKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPublicKeyResponseBody?

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
            var model = GetPublicKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRandomPasswordRequest : Tea.TeaModel {
    public var excludeCharacters: String?

    public var excludeLowercase: String?

    public var excludeNumbers: String?

    public var excludePunctuation: String?

    public var excludeUppercase: String?

    public var passwordLength: String?

    public var requireEachIncludedType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.excludeCharacters != nil {
            map["ExcludeCharacters"] = self.excludeCharacters!
        }
        if self.excludeLowercase != nil {
            map["ExcludeLowercase"] = self.excludeLowercase!
        }
        if self.excludeNumbers != nil {
            map["ExcludeNumbers"] = self.excludeNumbers!
        }
        if self.excludePunctuation != nil {
            map["ExcludePunctuation"] = self.excludePunctuation!
        }
        if self.excludeUppercase != nil {
            map["ExcludeUppercase"] = self.excludeUppercase!
        }
        if self.passwordLength != nil {
            map["PasswordLength"] = self.passwordLength!
        }
        if self.requireEachIncludedType != nil {
            map["RequireEachIncludedType"] = self.requireEachIncludedType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExcludeCharacters"] as? String {
            self.excludeCharacters = value
        }
        if let value = dict["ExcludeLowercase"] as? String {
            self.excludeLowercase = value
        }
        if let value = dict["ExcludeNumbers"] as? String {
            self.excludeNumbers = value
        }
        if let value = dict["ExcludePunctuation"] as? String {
            self.excludePunctuation = value
        }
        if let value = dict["ExcludeUppercase"] as? String {
            self.excludeUppercase = value
        }
        if let value = dict["PasswordLength"] as? String {
            self.passwordLength = value
        }
        if let value = dict["RequireEachIncludedType"] as? String {
            self.requireEachIncludedType = value
        }
    }
}

public class GetRandomPasswordResponseBody : Tea.TeaModel {
    public var randomPassword: String?

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
        if self.randomPassword != nil {
            map["RandomPassword"] = self.randomPassword!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RandomPassword"] as? String {
            self.randomPassword = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetRandomPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRandomPasswordResponseBody?

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
            var model = GetRandomPasswordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSecretPolicyRequest : Tea.TeaModel {
    public var policyName: String?

    public var secretName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
    }
}

public class GetSecretPolicyResponseBody : Tea.TeaModel {
    public var policy: String?

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
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Policy"] as? String {
            self.policy = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetSecretPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSecretPolicyResponseBody?

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
            var model = GetSecretPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSecretValueRequest : Tea.TeaModel {
    public var dryRun: String?

    public var fetchExtendedConfig: Bool?

    public var secretName: String?

    public var versionId: String?

    public var versionStage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.fetchExtendedConfig != nil {
            map["FetchExtendedConfig"] = self.fetchExtendedConfig!
        }
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionStage != nil {
            map["VersionStage"] = self.versionStage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["FetchExtendedConfig"] as? Bool {
            self.fetchExtendedConfig = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
        }
        if let value = dict["VersionStage"] as? String {
            self.versionStage = value
        }
    }
}

public class GetSecretValueResponseBody : Tea.TeaModel {
    public class VersionStages : Tea.TeaModel {
        public var versionStage: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.versionStage != nil {
                map["VersionStage"] = self.versionStage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VersionStage"] as? [String] {
                self.versionStage = value
            }
        }
    }
    public var automaticRotation: String?

    public var createTime: String?

    public var extendedConfig: String?

    public var lastRotationDate: String?

    public var nextRotationDate: String?

    public var requestId: String?

    public var rotationInterval: String?

    public var secretData: String?

    public var secretDataType: String?

    public var secretName: String?

    public var secretType: String?

    public var versionId: String?

    public var versionStages: GetSecretValueResponseBody.VersionStages?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.versionStages?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.automaticRotation != nil {
            map["AutomaticRotation"] = self.automaticRotation!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.extendedConfig != nil {
            map["ExtendedConfig"] = self.extendedConfig!
        }
        if self.lastRotationDate != nil {
            map["LastRotationDate"] = self.lastRotationDate!
        }
        if self.nextRotationDate != nil {
            map["NextRotationDate"] = self.nextRotationDate!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rotationInterval != nil {
            map["RotationInterval"] = self.rotationInterval!
        }
        if self.secretData != nil {
            map["SecretData"] = self.secretData!
        }
        if self.secretDataType != nil {
            map["SecretDataType"] = self.secretDataType!
        }
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        if self.secretType != nil {
            map["SecretType"] = self.secretType!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionStages != nil {
            map["VersionStages"] = self.versionStages?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutomaticRotation"] as? String {
            self.automaticRotation = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["ExtendedConfig"] as? String {
            self.extendedConfig = value
        }
        if let value = dict["LastRotationDate"] as? String {
            self.lastRotationDate = value
        }
        if let value = dict["NextRotationDate"] as? String {
            self.nextRotationDate = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RotationInterval"] as? String {
            self.rotationInterval = value
        }
        if let value = dict["SecretData"] as? String {
            self.secretData = value
        }
        if let value = dict["SecretDataType"] as? String {
            self.secretDataType = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
        if let value = dict["SecretType"] as? String {
            self.secretType = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
        }
        if let value = dict["VersionStages"] as? [String: Any?] {
            var model = GetSecretValueResponseBody.VersionStages()
            model.fromMap(value)
            self.versionStages = model
        }
    }
}

public class GetSecretValueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSecretValueResponseBody?

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
            var model = GetSecretValueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ImportKeyMaterialRequest : Tea.TeaModel {
    public var encryptedKeyMaterial: String?

    public var importToken: String?

    public var keyId: String?

    public var keyMaterialExpireUnix: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.encryptedKeyMaterial != nil {
            map["EncryptedKeyMaterial"] = self.encryptedKeyMaterial!
        }
        if self.importToken != nil {
            map["ImportToken"] = self.importToken!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keyMaterialExpireUnix != nil {
            map["KeyMaterialExpireUnix"] = self.keyMaterialExpireUnix!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EncryptedKeyMaterial"] as? String {
            self.encryptedKeyMaterial = value
        }
        if let value = dict["ImportToken"] as? String {
            self.importToken = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["KeyMaterialExpireUnix"] as? Int64 {
            self.keyMaterialExpireUnix = value
        }
    }
}

public class ImportKeyMaterialResponseBody : Tea.TeaModel {
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

public class ImportKeyMaterialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ImportKeyMaterialResponseBody?

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
            var model = ImportKeyMaterialResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAliasesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListAliasesResponseBody : Tea.TeaModel {
    public class Aliases : Tea.TeaModel {
        public class Alias : Tea.TeaModel {
            public var aliasArn: String?

            public var aliasName: String?

            public var keyId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aliasArn != nil {
                    map["AliasArn"] = self.aliasArn!
                }
                if self.aliasName != nil {
                    map["AliasName"] = self.aliasName!
                }
                if self.keyId != nil {
                    map["KeyId"] = self.keyId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AliasArn"] as? String {
                    self.aliasArn = value
                }
                if let value = dict["AliasName"] as? String {
                    self.aliasName = value
                }
                if let value = dict["KeyId"] as? String {
                    self.keyId = value
                }
            }
        }
        public var alias: [ListAliasesResponseBody.Aliases.Alias]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alias != nil {
                var tmp : [Any] = []
                for k in self.alias! {
                    tmp.append(k.toMap())
                }
                map["Alias"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Alias"] as? [Any?] {
                var tmp : [ListAliasesResponseBody.Aliases.Alias] = []
                for v in value {
                    if v != nil {
                        var model = ListAliasesResponseBody.Aliases.Alias()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.alias = tmp
            }
        }
    }
    public var aliases: ListAliasesResponseBody.Aliases?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        try self.aliases?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliases != nil {
            map["Aliases"] = self.aliases?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if let value = dict["Aliases"] as? [String: Any?] {
            var model = ListAliasesResponseBody.Aliases()
            model.fromMap(value)
            self.aliases = model
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListAliasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAliasesResponseBody?

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
            var model = ListAliasesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAliasesByKeyIdRequest : Tea.TeaModel {
    public var keyId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListAliasesByKeyIdResponseBody : Tea.TeaModel {
    public class Aliases : Tea.TeaModel {
        public class Alias : Tea.TeaModel {
            public var aliasArn: String?

            public var aliasName: String?

            public var keyId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aliasArn != nil {
                    map["AliasArn"] = self.aliasArn!
                }
                if self.aliasName != nil {
                    map["AliasName"] = self.aliasName!
                }
                if self.keyId != nil {
                    map["KeyId"] = self.keyId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AliasArn"] as? String {
                    self.aliasArn = value
                }
                if let value = dict["AliasName"] as? String {
                    self.aliasName = value
                }
                if let value = dict["KeyId"] as? String {
                    self.keyId = value
                }
            }
        }
        public var alias: [ListAliasesByKeyIdResponseBody.Aliases.Alias]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alias != nil {
                var tmp : [Any] = []
                for k in self.alias! {
                    tmp.append(k.toMap())
                }
                map["Alias"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Alias"] as? [Any?] {
                var tmp : [ListAliasesByKeyIdResponseBody.Aliases.Alias] = []
                for v in value {
                    if v != nil {
                        var model = ListAliasesByKeyIdResponseBody.Aliases.Alias()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.alias = tmp
            }
        }
    }
    public var aliases: ListAliasesByKeyIdResponseBody.Aliases?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        try self.aliases?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliases != nil {
            map["Aliases"] = self.aliases?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if let value = dict["Aliases"] as? [String: Any?] {
            var model = ListAliasesByKeyIdResponseBody.Aliases()
            model.fromMap(value)
            self.aliases = model
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListAliasesByKeyIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAliasesByKeyIdResponseBody?

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
            var model = ListAliasesByKeyIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListApplicationAccessPointsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListApplicationAccessPointsResponseBody : Tea.TeaModel {
    public class ApplicationAccessPoints : Tea.TeaModel {
        public class ApplicationAccessPoint : Tea.TeaModel {
            public var authenticationMethod: String?

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
                if self.authenticationMethod != nil {
                    map["AuthenticationMethod"] = self.authenticationMethod!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AuthenticationMethod"] as? String {
                    self.authenticationMethod = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var applicationAccessPoint: [ListApplicationAccessPointsResponseBody.ApplicationAccessPoints.ApplicationAccessPoint]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.applicationAccessPoint != nil {
                var tmp : [Any] = []
                for k in self.applicationAccessPoint! {
                    tmp.append(k.toMap())
                }
                map["ApplicationAccessPoint"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApplicationAccessPoint"] as? [Any?] {
                var tmp : [ListApplicationAccessPointsResponseBody.ApplicationAccessPoints.ApplicationAccessPoint] = []
                for v in value {
                    if v != nil {
                        var model = ListApplicationAccessPointsResponseBody.ApplicationAccessPoints.ApplicationAccessPoint()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.applicationAccessPoint = tmp
            }
        }
    }
    public var applicationAccessPoints: ListApplicationAccessPointsResponseBody.ApplicationAccessPoints?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        try self.applicationAccessPoints?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationAccessPoints != nil {
            map["ApplicationAccessPoints"] = self.applicationAccessPoints?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if let value = dict["ApplicationAccessPoints"] as? [String: Any?] {
            var model = ListApplicationAccessPointsResponseBody.ApplicationAccessPoints()
            model.fromMap(value)
            self.applicationAccessPoints = model
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListApplicationAccessPointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApplicationAccessPointsResponseBody?

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
            var model = ListApplicationAccessPointsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListClientKeysRequest : Tea.TeaModel {
    public var aapName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aapName != nil {
            map["AapName"] = self.aapName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AapName"] as? String {
            self.aapName = value
        }
    }
}

public class ListClientKeysResponseBody : Tea.TeaModel {
    public class ClientKeys : Tea.TeaModel {
        public var aapName: String?

        public var clientKeyId: String?

        public var createTime: String?

        public var keyAlgorithm: String?

        public var keyOrigin: String?

        public var notAfter: String?

        public var notBefore: String?

        public var publicKeyData: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aapName != nil {
                map["AapName"] = self.aapName!
            }
            if self.clientKeyId != nil {
                map["ClientKeyId"] = self.clientKeyId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.keyAlgorithm != nil {
                map["KeyAlgorithm"] = self.keyAlgorithm!
            }
            if self.keyOrigin != nil {
                map["KeyOrigin"] = self.keyOrigin!
            }
            if self.notAfter != nil {
                map["NotAfter"] = self.notAfter!
            }
            if self.notBefore != nil {
                map["NotBefore"] = self.notBefore!
            }
            if self.publicKeyData != nil {
                map["PublicKeyData"] = self.publicKeyData!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AapName"] as? String {
                self.aapName = value
            }
            if let value = dict["ClientKeyId"] as? String {
                self.clientKeyId = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["KeyAlgorithm"] as? String {
                self.keyAlgorithm = value
            }
            if let value = dict["KeyOrigin"] as? String {
                self.keyOrigin = value
            }
            if let value = dict["NotAfter"] as? String {
                self.notAfter = value
            }
            if let value = dict["NotBefore"] as? String {
                self.notBefore = value
            }
            if let value = dict["PublicKeyData"] as? String {
                self.publicKeyData = value
            }
        }
    }
    public var clientKeys: [ListClientKeysResponseBody.ClientKeys]?

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
        if self.clientKeys != nil {
            var tmp : [Any] = []
            for k in self.clientKeys! {
                tmp.append(k.toMap())
            }
            map["ClientKeys"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientKeys"] as? [Any?] {
            var tmp : [ListClientKeysResponseBody.ClientKeys] = []
            for v in value {
                if v != nil {
                    var model = ListClientKeysResponseBody.ClientKeys()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.clientKeys = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListClientKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClientKeysResponseBody?

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
            var model = ListClientKeysResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListKeyVersionsRequest : Tea.TeaModel {
    public var keyId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListKeyVersionsResponseBody : Tea.TeaModel {
    public class KeyVersions : Tea.TeaModel {
        public class KeyVersion : Tea.TeaModel {
            public var creationDate: String?

            public var keyId: String?

            public var keyVersionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.creationDate != nil {
                    map["CreationDate"] = self.creationDate!
                }
                if self.keyId != nil {
                    map["KeyId"] = self.keyId!
                }
                if self.keyVersionId != nil {
                    map["KeyVersionId"] = self.keyVersionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreationDate"] as? String {
                    self.creationDate = value
                }
                if let value = dict["KeyId"] as? String {
                    self.keyId = value
                }
                if let value = dict["KeyVersionId"] as? String {
                    self.keyVersionId = value
                }
            }
        }
        public var keyVersion: [ListKeyVersionsResponseBody.KeyVersions.KeyVersion]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.keyVersion != nil {
                var tmp : [Any] = []
                for k in self.keyVersion! {
                    tmp.append(k.toMap())
                }
                map["KeyVersion"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["KeyVersion"] as? [Any?] {
                var tmp : [ListKeyVersionsResponseBody.KeyVersions.KeyVersion] = []
                for v in value {
                    if v != nil {
                        var model = ListKeyVersionsResponseBody.KeyVersions.KeyVersion()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.keyVersion = tmp
            }
        }
    }
    public var keyVersions: ListKeyVersionsResponseBody.KeyVersions?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        try self.keyVersions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyVersions != nil {
            map["KeyVersions"] = self.keyVersions?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if let value = dict["KeyVersions"] as? [String: Any?] {
            var model = ListKeyVersionsResponseBody.KeyVersions()
            model.fromMap(value)
            self.keyVersions = model
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListKeyVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListKeyVersionsResponseBody?

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
            var model = ListKeyVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListKeysRequest : Tea.TeaModel {
    public var filters: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filters != nil {
            map["Filters"] = self.filters!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filters"] as? String {
            self.filters = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListKeysResponseBody : Tea.TeaModel {
    public class Keys : Tea.TeaModel {
        public class Key : Tea.TeaModel {
            public var keyArn: String?

            public var keyId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.keyArn != nil {
                    map["KeyArn"] = self.keyArn!
                }
                if self.keyId != nil {
                    map["KeyId"] = self.keyId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["KeyArn"] as? String {
                    self.keyArn = value
                }
                if let value = dict["KeyId"] as? String {
                    self.keyId = value
                }
            }
        }
        public var key: [ListKeysResponseBody.Keys.Key]?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.key! {
                    tmp.append(k.toMap())
                }
                map["Key"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? [Any?] {
                var tmp : [ListKeysResponseBody.Keys.Key] = []
                for v in value {
                    if v != nil {
                        var model = ListKeysResponseBody.Keys.Key()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.key = tmp
            }
        }
    }
    public var keys: ListKeysResponseBody.Keys?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        try self.keys?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keys != nil {
            map["Keys"] = self.keys?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if let value = dict["Keys"] as? [String: Any?] {
            var model = ListKeysResponseBody.Keys()
            model.fromMap(value)
            self.keys = model
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListKeysResponseBody?

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
            var model = ListKeysResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListKmsInstancesRequest : Tea.TeaModel {
    public var filters: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filters != nil {
            map["Filters"] = self.filters!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filters"] as? String {
            self.filters = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListKmsInstancesResponseBody : Tea.TeaModel {
    public class KmsInstances : Tea.TeaModel {
        public class KmsInstance : Tea.TeaModel {
            public var kmsInstanceArn: String?

            public var kmsInstanceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.kmsInstanceArn != nil {
                    map["KmsInstanceArn"] = self.kmsInstanceArn!
                }
                if self.kmsInstanceId != nil {
                    map["KmsInstanceId"] = self.kmsInstanceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["KmsInstanceArn"] as? String {
                    self.kmsInstanceArn = value
                }
                if let value = dict["KmsInstanceId"] as? String {
                    self.kmsInstanceId = value
                }
            }
        }
        public var kmsInstance: [ListKmsInstancesResponseBody.KmsInstances.KmsInstance]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.kmsInstance != nil {
                var tmp : [Any] = []
                for k in self.kmsInstance! {
                    tmp.append(k.toMap())
                }
                map["KmsInstance"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["KmsInstance"] as? [Any?] {
                var tmp : [ListKmsInstancesResponseBody.KmsInstances.KmsInstance] = []
                for v in value {
                    if v != nil {
                        var model = ListKmsInstancesResponseBody.KmsInstances.KmsInstance()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.kmsInstance = tmp
            }
        }
    }
    public var kmsInstances: ListKmsInstancesResponseBody.KmsInstances?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        try self.kmsInstances?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.kmsInstances != nil {
            map["KmsInstances"] = self.kmsInstances?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if let value = dict["KmsInstances"] as? [String: Any?] {
            var model = ListKmsInstancesResponseBody.KmsInstances()
            model.fromMap(value)
            self.kmsInstances = model
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListKmsInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListKmsInstancesResponseBody?

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
            var model = ListKmsInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListNetworkRulesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListNetworkRulesResponseBody : Tea.TeaModel {
    public class NetworkRules : Tea.TeaModel {
        public class NetworkRule : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var networkRule: [ListNetworkRulesResponseBody.NetworkRules.NetworkRule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.networkRule != nil {
                var tmp : [Any] = []
                for k in self.networkRule! {
                    tmp.append(k.toMap())
                }
                map["NetworkRule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NetworkRule"] as? [Any?] {
                var tmp : [ListNetworkRulesResponseBody.NetworkRules.NetworkRule] = []
                for v in value {
                    if v != nil {
                        var model = ListNetworkRulesResponseBody.NetworkRules.NetworkRule()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.networkRule = tmp
            }
        }
    }
    public var networkRules: ListNetworkRulesResponseBody.NetworkRules?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        try self.networkRules?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.networkRules != nil {
            map["NetworkRules"] = self.networkRules?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if let value = dict["NetworkRules"] as? [String: Any?] {
            var model = ListNetworkRulesResponseBody.NetworkRules()
            model.fromMap(value)
            self.networkRules = model
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListNetworkRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNetworkRulesResponseBody?

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
            var model = ListNetworkRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPoliciesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListPoliciesResponseBody : Tea.TeaModel {
    public class Policies : Tea.TeaModel {
        public class Policy : Tea.TeaModel {
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var policy: [ListPoliciesResponseBody.Policies.Policy]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.policy != nil {
                var tmp : [Any] = []
                for k in self.policy! {
                    tmp.append(k.toMap())
                }
                map["Policy"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Policy"] as? [Any?] {
                var tmp : [ListPoliciesResponseBody.Policies.Policy] = []
                for v in value {
                    if v != nil {
                        var model = ListPoliciesResponseBody.Policies.Policy()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.policy = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var policies: ListPoliciesResponseBody.Policies?

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
        try self.policies?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policies != nil {
            map["Policies"] = self.policies?.toMap()
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
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Policies"] as? [String: Any?] {
            var model = ListPoliciesResponseBody.Policies()
            model.fromMap(value)
            self.policies = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPoliciesResponseBody?

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
            var model = ListPoliciesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListResourceTagsRequest : Tea.TeaModel {
    public var keyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
    }
}

public class ListResourceTagsResponseBody : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public class Tag : Tea.TeaModel {
            public var keyId: String?

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
                if self.keyId != nil {
                    map["KeyId"] = self.keyId!
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
                if let value = dict["KeyId"] as? String {
                    self.keyId = value
                }
                if let value = dict["TagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["TagValue"] as? String {
                    self.tagValue = value
                }
            }
        }
        public var tag: [ListResourceTagsResponseBody.Tags.Tag]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
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
            if let value = dict["Tag"] as? [Any?] {
                var tmp : [ListResourceTagsResponseBody.Tags.Tag] = []
                for v in value {
                    if v != nil {
                        var model = ListResourceTagsResponseBody.Tags.Tag()
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
    public var requestId: String?

    public var tags: ListResourceTagsResponseBody.Tags?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tags?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Tags"] as? [String: Any?] {
            var model = ListResourceTagsResponseBody.Tags()
            model.fromMap(value)
            self.tags = model
        }
    }
}

public class ListResourceTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceTagsResponseBody?

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
            var model = ListResourceTagsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSecretVersionIdsRequest : Tea.TeaModel {
    public var includeDeprecated: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var secretName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.includeDeprecated != nil {
            map["IncludeDeprecated"] = self.includeDeprecated!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IncludeDeprecated"] as? String {
            self.includeDeprecated = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
    }
}

public class ListSecretVersionIdsResponseBody : Tea.TeaModel {
    public class VersionIds : Tea.TeaModel {
        public class VersionId : Tea.TeaModel {
            public class VersionStages : Tea.TeaModel {
                public var versionStage: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.versionStage != nil {
                        map["VersionStage"] = self.versionStage!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["VersionStage"] as? [String] {
                        self.versionStage = value
                    }
                }
            }
            public var createTime: String?

            public var versionId: String?

            public var versionStages: ListSecretVersionIdsResponseBody.VersionIds.VersionId.VersionStages?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.versionStages?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.versionId != nil {
                    map["VersionId"] = self.versionId!
                }
                if self.versionStages != nil {
                    map["VersionStages"] = self.versionStages?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["VersionId"] as? String {
                    self.versionId = value
                }
                if let value = dict["VersionStages"] as? [String: Any?] {
                    var model = ListSecretVersionIdsResponseBody.VersionIds.VersionId.VersionStages()
                    model.fromMap(value)
                    self.versionStages = model
                }
            }
        }
        public var versionId: [ListSecretVersionIdsResponseBody.VersionIds.VersionId]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.versionId != nil {
                var tmp : [Any] = []
                for k in self.versionId! {
                    tmp.append(k.toMap())
                }
                map["VersionId"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VersionId"] as? [Any?] {
                var tmp : [ListSecretVersionIdsResponseBody.VersionIds.VersionId] = []
                for v in value {
                    if v != nil {
                        var model = ListSecretVersionIdsResponseBody.VersionIds.VersionId()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.versionId = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var secretName: String?

    public var totalCount: Int32?

    public var versionIds: ListSecretVersionIdsResponseBody.VersionIds?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.versionIds?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.versionIds != nil {
            map["VersionIds"] = self.versionIds?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["VersionIds"] as? [String: Any?] {
            var model = ListSecretVersionIdsResponseBody.VersionIds()
            model.fromMap(value)
            self.versionIds = model
        }
    }
}

public class ListSecretVersionIdsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSecretVersionIdsResponseBody?

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
            var model = ListSecretVersionIdsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSecretsRequest : Tea.TeaModel {
    public var fetchTags: String?

    public var filters: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fetchTags != nil {
            map["FetchTags"] = self.fetchTags!
        }
        if self.filters != nil {
            map["Filters"] = self.filters!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FetchTags"] as? String {
            self.fetchTags = value
        }
        if let value = dict["Filters"] as? String {
            self.filters = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListSecretsResponseBody : Tea.TeaModel {
    public class SecretList : Tea.TeaModel {
        public class Secret : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
                public class Tag : Tea.TeaModel {
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
                public var tag: [ListSecretsResponseBody.SecretList.Secret.Tags.Tag]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
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
                    if let value = dict["Tag"] as? [Any?] {
                        var tmp : [ListSecretsResponseBody.SecretList.Secret.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = ListSecretsResponseBody.SecretList.Secret.Tags.Tag()
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
            public var createTime: String?

            public var owingService: String?

            public var plannedDeleteTime: String?

            public var secretName: String?

            public var secretType: String?

            public var tags: ListSecretsResponseBody.SecretList.Secret.Tags?

            public var updateTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.tags?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.owingService != nil {
                    map["OwingService"] = self.owingService!
                }
                if self.plannedDeleteTime != nil {
                    map["PlannedDeleteTime"] = self.plannedDeleteTime!
                }
                if self.secretName != nil {
                    map["SecretName"] = self.secretName!
                }
                if self.secretType != nil {
                    map["SecretType"] = self.secretType!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.updateTime != nil {
                    map["UpdateTime"] = self.updateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["OwingService"] as? String {
                    self.owingService = value
                }
                if let value = dict["PlannedDeleteTime"] as? String {
                    self.plannedDeleteTime = value
                }
                if let value = dict["SecretName"] as? String {
                    self.secretName = value
                }
                if let value = dict["SecretType"] as? String {
                    self.secretType = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = ListSecretsResponseBody.SecretList.Secret.Tags()
                    model.fromMap(value)
                    self.tags = model
                }
                if let value = dict["UpdateTime"] as? String {
                    self.updateTime = value
                }
            }
        }
        public var secret: [ListSecretsResponseBody.SecretList.Secret]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.secret != nil {
                var tmp : [Any] = []
                for k in self.secret! {
                    tmp.append(k.toMap())
                }
                map["Secret"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Secret"] as? [Any?] {
                var tmp : [ListSecretsResponseBody.SecretList.Secret] = []
                for v in value {
                    if v != nil {
                        var model = ListSecretsResponseBody.SecretList.Secret()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.secret = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var secretList: ListSecretsResponseBody.SecretList?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.secretList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.secretList != nil {
            map["SecretList"] = self.secretList?.toMap()
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecretList"] as? [String: Any?] {
            var model = ListSecretsResponseBody.SecretList()
            model.fromMap(value)
            self.secretList = model
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListSecretsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSecretsResponseBody?

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
            var model = ListSecretsResponseBody()
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
    public class TagResources : Tea.TeaModel {
        public class TagResource : Tea.TeaModel {
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
        public var tagResource: [ListTagResourcesResponseBody.TagResources.TagResource]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagResource != nil {
                var tmp : [Any] = []
                for k in self.tagResource! {
                    tmp.append(k.toMap())
                }
                map["TagResource"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagResource"] as? [Any?] {
                var tmp : [ListTagResourcesResponseBody.TagResources.TagResource] = []
                for v in value {
                    if v != nil {
                        var model = ListTagResourcesResponseBody.TagResources.TagResource()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tagResource = tmp
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: ListTagResourcesResponseBody.TagResources?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagResources != nil {
            map["TagResources"] = self.tagResources?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagResources"] as? [String: Any?] {
            var model = ListTagResourcesResponseBody.TagResources()
            model.fromMap(value)
            self.tagResources = model
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

public class OpenKmsServiceResponseBody : Tea.TeaModel {
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

public class OpenKmsServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenKmsServiceResponseBody?

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
            var model = OpenKmsServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PutSecretValueRequest : Tea.TeaModel {
    public var secretData: String?

    public var secretDataType: String?

    public var secretName: String?

    public var versionId: String?

    public var versionStages: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.secretData != nil {
            map["SecretData"] = self.secretData!
        }
        if self.secretDataType != nil {
            map["SecretDataType"] = self.secretDataType!
        }
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionStages != nil {
            map["VersionStages"] = self.versionStages!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SecretData"] as? String {
            self.secretData = value
        }
        if let value = dict["SecretDataType"] as? String {
            self.secretDataType = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
        }
        if let value = dict["VersionStages"] as? String {
            self.versionStages = value
        }
    }
}

public class PutSecretValueResponseBody : Tea.TeaModel {
    public class VersionStages : Tea.TeaModel {
        public var versionStage: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.versionStage != nil {
                map["VersionStage"] = self.versionStage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VersionStage"] as? [String] {
                self.versionStage = value
            }
        }
    }
    public var requestId: String?

    public var secretName: String?

    public var versionId: String?

    public var versionStages: PutSecretValueResponseBody.VersionStages?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.versionStages?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        if self.versionStages != nil {
            map["VersionStages"] = self.versionStages?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
        }
        if let value = dict["VersionStages"] as? [String: Any?] {
            var model = PutSecretValueResponseBody.VersionStages()
            model.fromMap(value)
            self.versionStages = model
        }
    }
}

public class PutSecretValueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutSecretValueResponseBody?

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
            var model = PutSecretValueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReEncryptRequest : Tea.TeaModel {
    public var ciphertextBlob: String?

    public var destinationEncryptionContext: [String: Any]?

    public var destinationKeyId: String?

    public var dryRun: String?

    public var sourceEncryptionAlgorithm: String?

    public var sourceEncryptionContext: [String: Any]?

    public var sourceKeyId: String?

    public var sourceKeyVersionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ciphertextBlob != nil {
            map["CiphertextBlob"] = self.ciphertextBlob!
        }
        if self.destinationEncryptionContext != nil {
            map["DestinationEncryptionContext"] = self.destinationEncryptionContext!
        }
        if self.destinationKeyId != nil {
            map["DestinationKeyId"] = self.destinationKeyId!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.sourceEncryptionAlgorithm != nil {
            map["SourceEncryptionAlgorithm"] = self.sourceEncryptionAlgorithm!
        }
        if self.sourceEncryptionContext != nil {
            map["SourceEncryptionContext"] = self.sourceEncryptionContext!
        }
        if self.sourceKeyId != nil {
            map["SourceKeyId"] = self.sourceKeyId!
        }
        if self.sourceKeyVersionId != nil {
            map["SourceKeyVersionId"] = self.sourceKeyVersionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CiphertextBlob"] as? String {
            self.ciphertextBlob = value
        }
        if let value = dict["DestinationEncryptionContext"] as? [String: Any] {
            self.destinationEncryptionContext = value
        }
        if let value = dict["DestinationKeyId"] as? String {
            self.destinationKeyId = value
        }
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["SourceEncryptionAlgorithm"] as? String {
            self.sourceEncryptionAlgorithm = value
        }
        if let value = dict["SourceEncryptionContext"] as? [String: Any] {
            self.sourceEncryptionContext = value
        }
        if let value = dict["SourceKeyId"] as? String {
            self.sourceKeyId = value
        }
        if let value = dict["SourceKeyVersionId"] as? String {
            self.sourceKeyVersionId = value
        }
    }
}

public class ReEncryptShrinkRequest : Tea.TeaModel {
    public var ciphertextBlob: String?

    public var destinationEncryptionContextShrink: String?

    public var destinationKeyId: String?

    public var dryRun: String?

    public var sourceEncryptionAlgorithm: String?

    public var sourceEncryptionContextShrink: String?

    public var sourceKeyId: String?

    public var sourceKeyVersionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ciphertextBlob != nil {
            map["CiphertextBlob"] = self.ciphertextBlob!
        }
        if self.destinationEncryptionContextShrink != nil {
            map["DestinationEncryptionContext"] = self.destinationEncryptionContextShrink!
        }
        if self.destinationKeyId != nil {
            map["DestinationKeyId"] = self.destinationKeyId!
        }
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
        if self.sourceEncryptionAlgorithm != nil {
            map["SourceEncryptionAlgorithm"] = self.sourceEncryptionAlgorithm!
        }
        if self.sourceEncryptionContextShrink != nil {
            map["SourceEncryptionContext"] = self.sourceEncryptionContextShrink!
        }
        if self.sourceKeyId != nil {
            map["SourceKeyId"] = self.sourceKeyId!
        }
        if self.sourceKeyVersionId != nil {
            map["SourceKeyVersionId"] = self.sourceKeyVersionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CiphertextBlob"] as? String {
            self.ciphertextBlob = value
        }
        if let value = dict["DestinationEncryptionContext"] as? String {
            self.destinationEncryptionContextShrink = value
        }
        if let value = dict["DestinationKeyId"] as? String {
            self.destinationKeyId = value
        }
        if let value = dict["DryRun"] as? String {
            self.dryRun = value
        }
        if let value = dict["SourceEncryptionAlgorithm"] as? String {
            self.sourceEncryptionAlgorithm = value
        }
        if let value = dict["SourceEncryptionContext"] as? String {
            self.sourceEncryptionContextShrink = value
        }
        if let value = dict["SourceKeyId"] as? String {
            self.sourceKeyId = value
        }
        if let value = dict["SourceKeyVersionId"] as? String {
            self.sourceKeyVersionId = value
        }
    }
}

public class ReEncryptResponseBody : Tea.TeaModel {
    public var ciphertextBlob: String?

    public var keyId: String?

    public var keyVersionId: String?

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
        if self.ciphertextBlob != nil {
            map["CiphertextBlob"] = self.ciphertextBlob!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keyVersionId != nil {
            map["KeyVersionId"] = self.keyVersionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CiphertextBlob"] as? String {
            self.ciphertextBlob = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["KeyVersionId"] as? String {
            self.keyVersionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ReEncryptResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReEncryptResponseBody?

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
            var model = ReEncryptResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReleaseKmsInstanceRequest : Tea.TeaModel {
    public var forceDeleteWithoutBackup: String?

    public var kmsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.forceDeleteWithoutBackup != nil {
            map["ForceDeleteWithoutBackup"] = self.forceDeleteWithoutBackup!
        }
        if self.kmsInstanceId != nil {
            map["KmsInstanceId"] = self.kmsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ForceDeleteWithoutBackup"] as? String {
            self.forceDeleteWithoutBackup = value
        }
        if let value = dict["KmsInstanceId"] as? String {
            self.kmsInstanceId = value
        }
    }
}

public class ReleaseKmsInstanceResponseBody : Tea.TeaModel {
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

public class ReleaseKmsInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseKmsInstanceResponseBody?

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
            var model = ReleaseKmsInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RestoreSecretRequest : Tea.TeaModel {
    public var secretName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
    }
}

public class RestoreSecretResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var secretName: String?

    public override init() {
        super.init()
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
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
    }
}

public class RestoreSecretResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestoreSecretResponseBody?

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
            var model = RestoreSecretResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RotateSecretRequest : Tea.TeaModel {
    public var secretName: String?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
        }
    }
}

public class RotateSecretResponseBody : Tea.TeaModel {
    public var arn: String?

    public var requestId: String?

    public var secretName: String?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arn != nil {
            map["Arn"] = self.arn!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Arn"] as? String {
            self.arn = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
        }
    }
}

public class RotateSecretResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RotateSecretResponseBody?

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
            var model = RotateSecretResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ScheduleKeyDeletionRequest : Tea.TeaModel {
    public var keyId: String?

    public var pendingWindowInDays: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.pendingWindowInDays != nil {
            map["PendingWindowInDays"] = self.pendingWindowInDays!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["PendingWindowInDays"] as? Int32 {
            self.pendingWindowInDays = value
        }
    }
}

public class ScheduleKeyDeletionResponseBody : Tea.TeaModel {
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

public class ScheduleKeyDeletionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ScheduleKeyDeletionResponseBody?

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
            var model = ScheduleKeyDeletionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetDeletionProtectionRequest : Tea.TeaModel {
    public var deletionProtectionDescription: String?

    public var enableDeletionProtection: Bool?

    public var keyId: String?

    public var protectedResourceArn: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deletionProtectionDescription != nil {
            map["DeletionProtectionDescription"] = self.deletionProtectionDescription!
        }
        if self.enableDeletionProtection != nil {
            map["EnableDeletionProtection"] = self.enableDeletionProtection!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.protectedResourceArn != nil {
            map["ProtectedResourceArn"] = self.protectedResourceArn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeletionProtectionDescription"] as? String {
            self.deletionProtectionDescription = value
        }
        if let value = dict["EnableDeletionProtection"] as? Bool {
            self.enableDeletionProtection = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["ProtectedResourceArn"] as? String {
            self.protectedResourceArn = value
        }
    }
}

public class SetDeletionProtectionResponseBody : Tea.TeaModel {
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

public class SetDeletionProtectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDeletionProtectionResponseBody?

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
            var model = SetDeletionProtectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetKeyPolicyRequest : Tea.TeaModel {
    public var keyId: String?

    public var policy: String?

    public var policyName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["Policy"] as? String {
            self.policy = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
    }
}

public class SetKeyPolicyResponseBody : Tea.TeaModel {
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

public class SetKeyPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetKeyPolicyResponseBody?

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
            var model = SetKeyPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetSecretPolicyRequest : Tea.TeaModel {
    public var policy: String?

    public var policyName: String?

    public var secretName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Policy"] as? String {
            self.policy = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
    }
}

public class SetSecretPolicyResponseBody : Tea.TeaModel {
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

public class SetSecretPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetSecretPolicyResponseBody?

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
            var model = SetSecretPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TagResourceRequest : Tea.TeaModel {
    public var certificateId: String?

    public var keyId: String?

    public var secretName: String?

    public var tags: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertificateId"] as? String {
            self.certificateId = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
    }
}

public class TagResourceResponseBody : Tea.TeaModel {
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

public class TagResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagResourceResponseBody?

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
            var model = TagResourceResponseBody()
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

public class UntagResourceRequest : Tea.TeaModel {
    public var certificateId: String?

    public var keyId: String?

    public var secretName: String?

    public var tagKeys: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        if self.tagKeys != nil {
            map["TagKeys"] = self.tagKeys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertificateId"] as? String {
            self.certificateId = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
        if let value = dict["TagKeys"] as? String {
            self.tagKeys = value
        }
    }
}

public class UntagResourceResponseBody : Tea.TeaModel {
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

public class UntagResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UntagResourceResponseBody?

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
            var model = UntagResourceResponseBody()
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

public class UpdateAliasRequest : Tea.TeaModel {
    public var aliasName: String?

    public var keyId: String?

    public override init() {
        super.init()
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
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliasName"] as? String {
            self.aliasName = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
    }
}

public class UpdateAliasResponseBody : Tea.TeaModel {
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

public class UpdateAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAliasResponseBody?

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
            var model = UpdateAliasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateApplicationAccessPointRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var policies: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.policies != nil {
            map["Policies"] = self.policies!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Policies"] as? String {
            self.policies = value
        }
    }
}

public class UpdateApplicationAccessPointResponseBody : Tea.TeaModel {
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

public class UpdateApplicationAccessPointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateApplicationAccessPointResponseBody?

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
            var model = UpdateApplicationAccessPointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCertificateStatusRequest : Tea.TeaModel {
    public var certificateId: String?

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
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertificateId"] as? String {
            self.certificateId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class UpdateCertificateStatusResponseBody : Tea.TeaModel {
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

public class UpdateCertificateStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCertificateStatusResponseBody?

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
            var model = UpdateCertificateStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateKeyDescriptionRequest : Tea.TeaModel {
    public var description_: String?

    public var keyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
    }
}

public class UpdateKeyDescriptionResponseBody : Tea.TeaModel {
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

public class UpdateKeyDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateKeyDescriptionResponseBody?

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
            var model = UpdateKeyDescriptionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateKmsInstanceBindVpcRequest : Tea.TeaModel {
    public var bindVpcs: String?

    public var kmsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bindVpcs != nil {
            map["BindVpcs"] = self.bindVpcs!
        }
        if self.kmsInstanceId != nil {
            map["KmsInstanceId"] = self.kmsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BindVpcs"] as? String {
            self.bindVpcs = value
        }
        if let value = dict["KmsInstanceId"] as? String {
            self.kmsInstanceId = value
        }
    }
}

public class UpdateKmsInstanceBindVpcResponseBody : Tea.TeaModel {
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

public class UpdateKmsInstanceBindVpcResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateKmsInstanceBindVpcResponseBody?

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
            var model = UpdateKmsInstanceBindVpcResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateNetworkRuleRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var sourcePrivateIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.sourcePrivateIp != nil {
            map["SourcePrivateIp"] = self.sourcePrivateIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["SourcePrivateIp"] as? String {
            self.sourcePrivateIp = value
        }
    }
}

public class UpdateNetworkRuleResponseBody : Tea.TeaModel {
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

public class UpdateNetworkRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateNetworkRuleResponseBody?

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
            var model = UpdateNetworkRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePolicyRequest : Tea.TeaModel {
    public var accessControlRules: String?

    public var description_: String?

    public var name: String?

    public var permissions: String?

    public var resources: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessControlRules != nil {
            map["AccessControlRules"] = self.accessControlRules!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.permissions != nil {
            map["Permissions"] = self.permissions!
        }
        if self.resources != nil {
            map["Resources"] = self.resources!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessControlRules"] as? String {
            self.accessControlRules = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Permissions"] as? String {
            self.permissions = value
        }
        if let value = dict["Resources"] as? String {
            self.resources = value
        }
    }
}

public class UpdatePolicyResponseBody : Tea.TeaModel {
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

public class UpdatePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePolicyResponseBody?

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
            var model = UpdatePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateRotationPolicyRequest : Tea.TeaModel {
    public var enableAutomaticRotation: Bool?

    public var keyId: String?

    public var rotationInterval: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enableAutomaticRotation != nil {
            map["EnableAutomaticRotation"] = self.enableAutomaticRotation!
        }
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.rotationInterval != nil {
            map["RotationInterval"] = self.rotationInterval!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnableAutomaticRotation"] as? Bool {
            self.enableAutomaticRotation = value
        }
        if let value = dict["KeyId"] as? String {
            self.keyId = value
        }
        if let value = dict["RotationInterval"] as? String {
            self.rotationInterval = value
        }
    }
}

public class UpdateRotationPolicyResponseBody : Tea.TeaModel {
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

public class UpdateRotationPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRotationPolicyResponseBody?

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
            var model = UpdateRotationPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSecretRequest : Tea.TeaModel {
    public class ExtendedConfig : Tea.TeaModel {
        public var customData: [String: Any]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customData != nil {
                map["CustomData"] = self.customData!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomData"] as? [String: Any] {
                self.customData = value
            }
        }
    }
    public var extendedConfig: UpdateSecretRequest.ExtendedConfig?

    public var description_: String?

    public var secretName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.extendedConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extendedConfig != nil {
            map["ExtendedConfig"] = self.extendedConfig?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExtendedConfig"] as? [String: Any?] {
            var model = UpdateSecretRequest.ExtendedConfig()
            model.fromMap(value)
            self.extendedConfig = model
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
    }
}

public class UpdateSecretShrinkRequest : Tea.TeaModel {
    public class ExtendedConfig : Tea.TeaModel {
        public var customData: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customData != nil {
                map["CustomData"] = self.customData!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomData"] as? String {
                self.customData = value
            }
        }
    }
    public var extendedConfig: UpdateSecretShrinkRequest.ExtendedConfig?

    public var description_: String?

    public var secretName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.extendedConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.extendedConfig != nil {
            map["ExtendedConfig"] = self.extendedConfig?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExtendedConfig"] as? [String: Any?] {
            var model = UpdateSecretShrinkRequest.ExtendedConfig()
            model.fromMap(value)
            self.extendedConfig = model
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
    }
}

public class UpdateSecretResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var secretName: String?

    public override init() {
        super.init()
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
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
    }
}

public class UpdateSecretResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSecretResponseBody?

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
            var model = UpdateSecretResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSecretRotationPolicyRequest : Tea.TeaModel {
    public var enableAutomaticRotation: Bool?

    public var rotationInterval: String?

    public var secretName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enableAutomaticRotation != nil {
            map["EnableAutomaticRotation"] = self.enableAutomaticRotation!
        }
        if self.rotationInterval != nil {
            map["RotationInterval"] = self.rotationInterval!
        }
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnableAutomaticRotation"] as? Bool {
            self.enableAutomaticRotation = value
        }
        if let value = dict["RotationInterval"] as? String {
            self.rotationInterval = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
    }
}

public class UpdateSecretRotationPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var secretName: String?

    public override init() {
        super.init()
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
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
    }
}

public class UpdateSecretRotationPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSecretRotationPolicyResponseBody?

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
            var model = UpdateSecretRotationPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateSecretVersionStageRequest : Tea.TeaModel {
    public var moveToVersion: String?

    public var removeFromVersion: String?

    public var secretName: String?

    public var versionStage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.moveToVersion != nil {
            map["MoveToVersion"] = self.moveToVersion!
        }
        if self.removeFromVersion != nil {
            map["RemoveFromVersion"] = self.removeFromVersion!
        }
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        if self.versionStage != nil {
            map["VersionStage"] = self.versionStage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MoveToVersion"] as? String {
            self.moveToVersion = value
        }
        if let value = dict["RemoveFromVersion"] as? String {
            self.removeFromVersion = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
        if let value = dict["VersionStage"] as? String {
            self.versionStage = value
        }
    }
}

public class UpdateSecretVersionStageResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var secretName: String?

    public override init() {
        super.init()
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
        if self.secretName != nil {
            map["SecretName"] = self.secretName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecretName"] as? String {
            self.secretName = value
        }
    }
}

public class UpdateSecretVersionStageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSecretVersionStageResponseBody?

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
            var model = UpdateSecretVersionStageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UploadCertificateRequest : Tea.TeaModel {
    public var certificate: String?

    public var certificateChain: String?

    public var certificateId: String?

    public override init() {
        super.init()
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
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
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
        if let value = dict["CertificateId"] as? String {
            self.certificateId = value
        }
    }
}

public class UploadCertificateResponseBody : Tea.TeaModel {
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

public class UploadCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadCertificateResponseBody?

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
            var model = UploadCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
