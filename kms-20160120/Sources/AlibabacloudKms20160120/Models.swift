import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AsymmetricDecryptRequest : Tea.TeaModel {
    public var algorithm: String?

    public var ciphertextBlob: String?

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
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keyVersionId != nil {
            map["KeyVersionId"] = self.keyVersionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Algorithm") && dict["Algorithm"] != nil {
            self.algorithm = dict["Algorithm"] as! String
        }
        if dict.keys.contains("CiphertextBlob") && dict["CiphertextBlob"] != nil {
            self.ciphertextBlob = dict["CiphertextBlob"] as! String
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("KeyVersionId") && dict["KeyVersionId"] != nil {
            self.keyVersionId = dict["KeyVersionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("KeyVersionId") && dict["KeyVersionId"] != nil {
            self.keyVersionId = dict["KeyVersionId"] as! String
        }
        if dict.keys.contains("Plaintext") && dict["Plaintext"] != nil {
            self.plaintext = dict["Plaintext"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = AsymmetricDecryptResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AsymmetricEncryptRequest : Tea.TeaModel {
    public var algorithm: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Algorithm") && dict["Algorithm"] != nil {
            self.algorithm = dict["Algorithm"] as! String
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("KeyVersionId") && dict["KeyVersionId"] != nil {
            self.keyVersionId = dict["KeyVersionId"] as! String
        }
        if dict.keys.contains("Plaintext") && dict["Plaintext"] != nil {
            self.plaintext = dict["Plaintext"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CiphertextBlob") && dict["CiphertextBlob"] != nil {
            self.ciphertextBlob = dict["CiphertextBlob"] as! String
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("KeyVersionId") && dict["KeyVersionId"] != nil {
            self.keyVersionId = dict["KeyVersionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = AsymmetricEncryptResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AsymmetricSignRequest : Tea.TeaModel {
    public var algorithm: String?

    public var digest: String?

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
        if self.keyId != nil {
            map["KeyId"] = self.keyId!
        }
        if self.keyVersionId != nil {
            map["KeyVersionId"] = self.keyVersionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Algorithm") && dict["Algorithm"] != nil {
            self.algorithm = dict["Algorithm"] as! String
        }
        if dict.keys.contains("Digest") && dict["Digest"] != nil {
            self.digest = dict["Digest"] as! String
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("KeyVersionId") && dict["KeyVersionId"] != nil {
            self.keyVersionId = dict["KeyVersionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("KeyVersionId") && dict["KeyVersionId"] != nil {
            self.keyVersionId = dict["KeyVersionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
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
            var model = AsymmetricSignResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AsymmetricVerifyRequest : Tea.TeaModel {
    public var algorithm: String?

    public var digest: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Algorithm") && dict["Algorithm"] != nil {
            self.algorithm = dict["Algorithm"] as! String
        }
        if dict.keys.contains("Digest") && dict["Digest"] != nil {
            self.digest = dict["Digest"] as! String
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("KeyVersionId") && dict["KeyVersionId"] != nil {
            self.keyVersionId = dict["KeyVersionId"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("KeyVersionId") && dict["KeyVersionId"] != nil {
            self.keyVersionId = dict["KeyVersionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! Bool
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
            var model = AsymmetricVerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = CancelKeyDeletionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Algorithm") && dict["Algorithm"] != nil {
            self.algorithm = dict["Algorithm"] as! String
        }
        if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
            self.certificateId = dict["CertificateId"] as! String
        }
        if dict.keys.contains("CiphertextBlob") && dict["CiphertextBlob"] != nil {
            self.ciphertextBlob = dict["CiphertextBlob"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
            self.certificateId = dict["CertificateId"] as! String
        }
        if dict.keys.contains("Plaintext") && dict["Plaintext"] != nil {
            self.plaintext = dict["Plaintext"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = CertificatePrivateKeyDecryptResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Algorithm") && dict["Algorithm"] != nil {
            self.algorithm = dict["Algorithm"] as! String
        }
        if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
            self.certificateId = dict["CertificateId"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("MessageType") && dict["MessageType"] != nil {
            self.messageType = dict["MessageType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
            self.certificateId = dict["CertificateId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SignatureValue") && dict["SignatureValue"] != nil {
            self.signatureValue = dict["SignatureValue"] as! String
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
            var model = CertificatePrivateKeySignResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Algorithm") && dict["Algorithm"] != nil {
            self.algorithm = dict["Algorithm"] as! String
        }
        if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
            self.certificateId = dict["CertificateId"] as! String
        }
        if dict.keys.contains("Plaintext") && dict["Plaintext"] != nil {
            self.plaintext = dict["Plaintext"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
            self.certificateId = dict["CertificateId"] as! String
        }
        if dict.keys.contains("CiphertextBlob") && dict["CiphertextBlob"] != nil {
            self.ciphertextBlob = dict["CiphertextBlob"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = CertificatePublicKeyEncryptResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Algorithm") && dict["Algorithm"] != nil {
            self.algorithm = dict["Algorithm"] as! String
        }
        if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
            self.certificateId = dict["CertificateId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
            self.certificateId = dict["CertificateId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SignatureValid") && dict["SignatureValid"] != nil {
            self.signatureValid = dict["SignatureValid"] as! Bool
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
            var model = CertificatePublicKeyVerifyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliasName") && dict["AliasName"] != nil {
            self.aliasName = dict["AliasName"] as! String
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = CreateAliasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCertificateRequest : Tea.TeaModel {
    public var exportablePrivateKey: Bool?

    public var keySpec: String?

    public var subject: String?

    public var subjectAlternativeNames: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.exportablePrivateKey != nil {
            map["ExportablePrivateKey"] = self.exportablePrivateKey!
        }
        if self.keySpec != nil {
            map["KeySpec"] = self.keySpec!
        }
        if self.subject != nil {
            map["Subject"] = self.subject!
        }
        if self.subjectAlternativeNames != nil {
            map["SubjectAlternativeNames"] = self.subjectAlternativeNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExportablePrivateKey") && dict["ExportablePrivateKey"] != nil {
            self.exportablePrivateKey = dict["ExportablePrivateKey"] as! Bool
        }
        if dict.keys.contains("KeySpec") && dict["KeySpec"] != nil {
            self.keySpec = dict["KeySpec"] as! String
        }
        if dict.keys.contains("Subject") && dict["Subject"] != nil {
            self.subject = dict["Subject"] as! String
        }
        if dict.keys.contains("SubjectAlternativeNames") && dict["SubjectAlternativeNames"] != nil {
            self.subjectAlternativeNames = dict["SubjectAlternativeNames"] as! [String: Any]
        }
    }
}

public class CreateCertificateShrinkRequest : Tea.TeaModel {
    public var exportablePrivateKey: Bool?

    public var keySpec: String?

    public var subject: String?

    public var subjectAlternativeNamesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.exportablePrivateKey != nil {
            map["ExportablePrivateKey"] = self.exportablePrivateKey!
        }
        if self.keySpec != nil {
            map["KeySpec"] = self.keySpec!
        }
        if self.subject != nil {
            map["Subject"] = self.subject!
        }
        if self.subjectAlternativeNamesShrink != nil {
            map["SubjectAlternativeNames"] = self.subjectAlternativeNamesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExportablePrivateKey") && dict["ExportablePrivateKey"] != nil {
            self.exportablePrivateKey = dict["ExportablePrivateKey"] as! Bool
        }
        if dict.keys.contains("KeySpec") && dict["KeySpec"] != nil {
            self.keySpec = dict["KeySpec"] as! String
        }
        if dict.keys.contains("Subject") && dict["Subject"] != nil {
            self.subject = dict["Subject"] as! String
        }
        if dict.keys.contains("SubjectAlternativeNames") && dict["SubjectAlternativeNames"] != nil {
            self.subjectAlternativeNamesShrink = dict["SubjectAlternativeNames"] as! String
        }
    }
}

public class CreateCertificateResponseBody : Tea.TeaModel {
    public var arn: String?

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
        if self.arn != nil {
            map["Arn"] = self.arn!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Arn") && dict["Arn"] != nil {
            self.arn = dict["Arn"] as! String
        }
        if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
            self.certificateId = dict["CertificateId"] as! String
        }
        if dict.keys.contains("Csr") && dict["Csr"] != nil {
            self.csr = dict["Csr"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCertificateResponseBody?

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
            var model = CreateCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateKeyRequest : Tea.TeaModel {
    public var DKMSInstanceId: String?

    public var description_: String?

    public var enableAutomaticRotation: Bool?

    public var keySpec: String?

    public var keyUsage: String?

    public var origin: String?

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
        if self.keyUsage != nil {
            map["KeyUsage"] = self.keyUsage!
        }
        if self.origin != nil {
            map["Origin"] = self.origin!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DKMSInstanceId") && dict["DKMSInstanceId"] != nil {
            self.DKMSInstanceId = dict["DKMSInstanceId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EnableAutomaticRotation") && dict["EnableAutomaticRotation"] != nil {
            self.enableAutomaticRotation = dict["EnableAutomaticRotation"] as! Bool
        }
        if dict.keys.contains("KeySpec") && dict["KeySpec"] != nil {
            self.keySpec = dict["KeySpec"] as! String
        }
        if dict.keys.contains("KeyUsage") && dict["KeyUsage"] != nil {
            self.keyUsage = dict["KeyUsage"] as! String
        }
        if dict.keys.contains("Origin") && dict["Origin"] != nil {
            self.origin = dict["Origin"] as! String
        }
        if dict.keys.contains("ProtectionLevel") && dict["ProtectionLevel"] != nil {
            self.protectionLevel = dict["ProtectionLevel"] as! String
        }
        if dict.keys.contains("RotationInterval") && dict["RotationInterval"] != nil {
            self.rotationInterval = dict["RotationInterval"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Arn") && dict["Arn"] != nil {
                self.arn = dict["Arn"] as! String
            }
            if dict.keys.contains("AutomaticRotation") && dict["AutomaticRotation"] != nil {
                self.automaticRotation = dict["AutomaticRotation"] as! String
            }
            if dict.keys.contains("CreationDate") && dict["CreationDate"] != nil {
                self.creationDate = dict["CreationDate"] as! String
            }
            if dict.keys.contains("Creator") && dict["Creator"] != nil {
                self.creator = dict["Creator"] as! String
            }
            if dict.keys.contains("DKMSInstanceId") && dict["DKMSInstanceId"] != nil {
                self.DKMSInstanceId = dict["DKMSInstanceId"] as! String
            }
            if dict.keys.contains("DeleteDate") && dict["DeleteDate"] != nil {
                self.deleteDate = dict["DeleteDate"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
                self.keyId = dict["KeyId"] as! String
            }
            if dict.keys.contains("KeySpec") && dict["KeySpec"] != nil {
                self.keySpec = dict["KeySpec"] as! String
            }
            if dict.keys.contains("KeyState") && dict["KeyState"] != nil {
                self.keyState = dict["KeyState"] as! String
            }
            if dict.keys.contains("KeyUsage") && dict["KeyUsage"] != nil {
                self.keyUsage = dict["KeyUsage"] as! String
            }
            if dict.keys.contains("LastRotationDate") && dict["LastRotationDate"] != nil {
                self.lastRotationDate = dict["LastRotationDate"] as! String
            }
            if dict.keys.contains("MaterialExpireTime") && dict["MaterialExpireTime"] != nil {
                self.materialExpireTime = dict["MaterialExpireTime"] as! String
            }
            if dict.keys.contains("NextRotationDate") && dict["NextRotationDate"] != nil {
                self.nextRotationDate = dict["NextRotationDate"] as! String
            }
            if dict.keys.contains("Origin") && dict["Origin"] != nil {
                self.origin = dict["Origin"] as! String
            }
            if dict.keys.contains("PrimaryKeyVersion") && dict["PrimaryKeyVersion"] != nil {
                self.primaryKeyVersion = dict["PrimaryKeyVersion"] as! String
            }
            if dict.keys.contains("ProtectionLevel") && dict["ProtectionLevel"] != nil {
                self.protectionLevel = dict["ProtectionLevel"] as! String
            }
            if dict.keys.contains("RotationInterval") && dict["RotationInterval"] != nil {
                self.rotationInterval = dict["RotationInterval"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyMetadata") && dict["KeyMetadata"] != nil {
            var model = CreateKeyResponseBody.KeyMetadata()
            model.fromMap(dict["KeyMetadata"] as! [String: Any])
            self.keyMetadata = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = CreateKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreationDate") && dict["CreationDate"] != nil {
                self.creationDate = dict["CreationDate"] as! String
            }
            if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
                self.keyId = dict["KeyId"] as! String
            }
            if dict.keys.contains("KeyVersionId") && dict["KeyVersionId"] != nil {
                self.keyVersionId = dict["KeyVersionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyVersion") && dict["KeyVersion"] != nil {
            var model = CreateKeyVersionResponseBody.KeyVersion()
            model.fromMap(dict["KeyVersion"] as! [String: Any])
            self.keyVersion = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = CreateKeyVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DKMSInstanceId") && dict["DKMSInstanceId"] != nil {
            self.DKMSInstanceId = dict["DKMSInstanceId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EnableAutomaticRotation") && dict["EnableAutomaticRotation"] != nil {
            self.enableAutomaticRotation = dict["EnableAutomaticRotation"] as! Bool
        }
        if dict.keys.contains("EncryptionKeyId") && dict["EncryptionKeyId"] != nil {
            self.encryptionKeyId = dict["EncryptionKeyId"] as! String
        }
        if dict.keys.contains("ExtendedConfig") && dict["ExtendedConfig"] != nil {
            self.extendedConfig = dict["ExtendedConfig"] as! [String: Any]
        }
        if dict.keys.contains("RotationInterval") && dict["RotationInterval"] != nil {
            self.rotationInterval = dict["RotationInterval"] as! String
        }
        if dict.keys.contains("SecretData") && dict["SecretData"] != nil {
            self.secretData = dict["SecretData"] as! String
        }
        if dict.keys.contains("SecretDataType") && dict["SecretDataType"] != nil {
            self.secretDataType = dict["SecretDataType"] as! String
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
        }
        if dict.keys.contains("SecretType") && dict["SecretType"] != nil {
            self.secretType = dict["SecretType"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! String
        }
        if dict.keys.contains("VersionId") && dict["VersionId"] != nil {
            self.versionId = dict["VersionId"] as! String
        }
    }
}

public class CreateSecretShrinkRequest : Tea.TeaModel {
    public var DKMSInstanceId: String?

    public var description_: String?

    public var enableAutomaticRotation: Bool?

    public var encryptionKeyId: String?

    public var extendedConfigShrink: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DKMSInstanceId") && dict["DKMSInstanceId"] != nil {
            self.DKMSInstanceId = dict["DKMSInstanceId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EnableAutomaticRotation") && dict["EnableAutomaticRotation"] != nil {
            self.enableAutomaticRotation = dict["EnableAutomaticRotation"] as! Bool
        }
        if dict.keys.contains("EncryptionKeyId") && dict["EncryptionKeyId"] != nil {
            self.encryptionKeyId = dict["EncryptionKeyId"] as! String
        }
        if dict.keys.contains("ExtendedConfig") && dict["ExtendedConfig"] != nil {
            self.extendedConfigShrink = dict["ExtendedConfig"] as! String
        }
        if dict.keys.contains("RotationInterval") && dict["RotationInterval"] != nil {
            self.rotationInterval = dict["RotationInterval"] as! String
        }
        if dict.keys.contains("SecretData") && dict["SecretData"] != nil {
            self.secretData = dict["SecretData"] as! String
        }
        if dict.keys.contains("SecretDataType") && dict["SecretDataType"] != nil {
            self.secretDataType = dict["SecretDataType"] as! String
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
        }
        if dict.keys.contains("SecretType") && dict["SecretType"] != nil {
            self.secretType = dict["SecretType"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! String
        }
        if dict.keys.contains("VersionId") && dict["VersionId"] != nil {
            self.versionId = dict["VersionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Arn") && dict["Arn"] != nil {
            self.arn = dict["Arn"] as! String
        }
        if dict.keys.contains("AutomaticRotation") && dict["AutomaticRotation"] != nil {
            self.automaticRotation = dict["AutomaticRotation"] as! String
        }
        if dict.keys.contains("DKMSInstanceId") && dict["DKMSInstanceId"] != nil {
            self.DKMSInstanceId = dict["DKMSInstanceId"] as! String
        }
        if dict.keys.contains("ExtendedConfig") && dict["ExtendedConfig"] != nil {
            self.extendedConfig = dict["ExtendedConfig"] as! String
        }
        if dict.keys.contains("NextRotationDate") && dict["NextRotationDate"] != nil {
            self.nextRotationDate = dict["NextRotationDate"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RotationInterval") && dict["RotationInterval"] != nil {
            self.rotationInterval = dict["RotationInterval"] as! String
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
        }
        if dict.keys.contains("SecretType") && dict["SecretType"] != nil {
            self.secretType = dict["SecretType"] as! String
        }
        if dict.keys.contains("VersionId") && dict["VersionId"] != nil {
            self.versionId = dict["VersionId"] as! String
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
            var model = CreateSecretResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DecryptRequest : Tea.TeaModel {
    public var ciphertextBlob: String?

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
        if self.encryptionContext != nil {
            map["EncryptionContext"] = self.encryptionContext!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CiphertextBlob") && dict["CiphertextBlob"] != nil {
            self.ciphertextBlob = dict["CiphertextBlob"] as! String
        }
        if dict.keys.contains("EncryptionContext") && dict["EncryptionContext"] != nil {
            self.encryptionContext = dict["EncryptionContext"] as! [String: Any]
        }
    }
}

public class DecryptShrinkRequest : Tea.TeaModel {
    public var ciphertextBlob: String?

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
        if self.encryptionContextShrink != nil {
            map["EncryptionContext"] = self.encryptionContextShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CiphertextBlob") && dict["CiphertextBlob"] != nil {
            self.ciphertextBlob = dict["CiphertextBlob"] as! String
        }
        if dict.keys.contains("EncryptionContext") && dict["EncryptionContext"] != nil {
            self.encryptionContextShrink = dict["EncryptionContext"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("KeyVersionId") && dict["KeyVersionId"] != nil {
            self.keyVersionId = dict["KeyVersionId"] as! String
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
            var model = DecryptResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliasName") && dict["AliasName"] != nil {
            self.aliasName = dict["AliasName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DeleteAliasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
            self.certificateId = dict["CertificateId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DeleteCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DeleteKeyMaterialResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ForceDeleteWithoutRecovery") && dict["ForceDeleteWithoutRecovery"] != nil {
            self.forceDeleteWithoutRecovery = dict["ForceDeleteWithoutRecovery"] as! String
        }
        if dict.keys.contains("RecoveryWindowInDays") && dict["RecoveryWindowInDays"] != nil {
            self.recoveryWindowInDays = dict["RecoveryWindowInDays"] as! String
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PlannedDeleteTime") && dict["PlannedDeleteTime"] != nil {
            self.plannedDeleteTime = dict["PlannedDeleteTime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
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
            var model = DeleteSecretResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountStatus") && dict["AccountStatus"] != nil {
            self.accountStatus = dict["AccountStatus"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DescribeAccountKmsStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
            self.certificateId = dict["CertificateId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Arn") && dict["Arn"] != nil {
            self.arn = dict["Arn"] as! String
        }
        if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
            self.certificateId = dict["CertificateId"] as! String
        }
        if dict.keys.contains("CreatedAt") && dict["CreatedAt"] != nil {
            self.createdAt = dict["CreatedAt"] as! String
        }
        if dict.keys.contains("ExportablePrivateKey") && dict["ExportablePrivateKey"] != nil {
            self.exportablePrivateKey = dict["ExportablePrivateKey"] as! Bool
        }
        if dict.keys.contains("Issuer") && dict["Issuer"] != nil {
            self.issuer = dict["Issuer"] as! String
        }
        if dict.keys.contains("KeySpec") && dict["KeySpec"] != nil {
            self.keySpec = dict["KeySpec"] as! String
        }
        if dict.keys.contains("NotAfter") && dict["NotAfter"] != nil {
            self.notAfter = dict["NotAfter"] as! String
        }
        if dict.keys.contains("NotBefore") && dict["NotBefore"] != nil {
            self.notBefore = dict["NotBefore"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Serial") && dict["Serial"] != nil {
            self.serial = dict["Serial"] as! String
        }
        if dict.keys.contains("SignatureAlgorithm") && dict["SignatureAlgorithm"] != nil {
            self.signatureAlgorithm = dict["SignatureAlgorithm"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Subject") && dict["Subject"] != nil {
            self.subject = dict["Subject"] as! String
        }
        if dict.keys.contains("SubjectAlternativeNames") && dict["SubjectAlternativeNames"] != nil {
            self.subjectAlternativeNames = dict["SubjectAlternativeNames"] as! [String]
        }
        if dict.keys.contains("SubjectKeyIdentifier") && dict["SubjectKeyIdentifier"] != nil {
            self.subjectKeyIdentifier = dict["SubjectKeyIdentifier"] as! String
        }
        if dict.keys.contains("SubjectPublicKey") && dict["SubjectPublicKey"] != nil {
            self.subjectPublicKey = dict["SubjectPublicKey"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! [String: Any]
        }
        if dict.keys.contains("UpdatedAt") && dict["UpdatedAt"] != nil {
            self.updatedAt = dict["UpdatedAt"] as! String
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
            var model = DescribeCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Arn") && dict["Arn"] != nil {
                self.arn = dict["Arn"] as! String
            }
            if dict.keys.contains("AutomaticRotation") && dict["AutomaticRotation"] != nil {
                self.automaticRotation = dict["AutomaticRotation"] as! String
            }
            if dict.keys.contains("CreationDate") && dict["CreationDate"] != nil {
                self.creationDate = dict["CreationDate"] as! String
            }
            if dict.keys.contains("Creator") && dict["Creator"] != nil {
                self.creator = dict["Creator"] as! String
            }
            if dict.keys.contains("DKMSInstanceId") && dict["DKMSInstanceId"] != nil {
                self.DKMSInstanceId = dict["DKMSInstanceId"] as! String
            }
            if dict.keys.contains("DeleteDate") && dict["DeleteDate"] != nil {
                self.deleteDate = dict["DeleteDate"] as! String
            }
            if dict.keys.contains("DeletionProtection") && dict["DeletionProtection"] != nil {
                self.deletionProtection = dict["DeletionProtection"] as! String
            }
            if dict.keys.contains("DeletionProtectionDescription") && dict["DeletionProtectionDescription"] != nil {
                self.deletionProtectionDescription = dict["DeletionProtectionDescription"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
                self.keyId = dict["KeyId"] as! String
            }
            if dict.keys.contains("KeySpec") && dict["KeySpec"] != nil {
                self.keySpec = dict["KeySpec"] as! String
            }
            if dict.keys.contains("KeyState") && dict["KeyState"] != nil {
                self.keyState = dict["KeyState"] as! String
            }
            if dict.keys.contains("KeyUsage") && dict["KeyUsage"] != nil {
                self.keyUsage = dict["KeyUsage"] as! String
            }
            if dict.keys.contains("LastRotationDate") && dict["LastRotationDate"] != nil {
                self.lastRotationDate = dict["LastRotationDate"] as! String
            }
            if dict.keys.contains("MaterialExpireTime") && dict["MaterialExpireTime"] != nil {
                self.materialExpireTime = dict["MaterialExpireTime"] as! String
            }
            if dict.keys.contains("NextRotationDate") && dict["NextRotationDate"] != nil {
                self.nextRotationDate = dict["NextRotationDate"] as! String
            }
            if dict.keys.contains("Origin") && dict["Origin"] != nil {
                self.origin = dict["Origin"] as! String
            }
            if dict.keys.contains("PrimaryKeyVersion") && dict["PrimaryKeyVersion"] != nil {
                self.primaryKeyVersion = dict["PrimaryKeyVersion"] as! String
            }
            if dict.keys.contains("ProtectionLevel") && dict["ProtectionLevel"] != nil {
                self.protectionLevel = dict["ProtectionLevel"] as! String
            }
            if dict.keys.contains("RotationInterval") && dict["RotationInterval"] != nil {
                self.rotationInterval = dict["RotationInterval"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyMetadata") && dict["KeyMetadata"] != nil {
            var model = DescribeKeyResponseBody.KeyMetadata()
            model.fromMap(dict["KeyMetadata"] as! [String: Any])
            self.keyMetadata = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DescribeKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("KeyVersionId") && dict["KeyVersionId"] != nil {
            self.keyVersionId = dict["KeyVersionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreationDate") && dict["CreationDate"] != nil {
                self.creationDate = dict["CreationDate"] as! String
            }
            if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
                self.keyId = dict["KeyId"] as! String
            }
            if dict.keys.contains("KeyVersionId") && dict["KeyVersionId"] != nil {
                self.keyVersionId = dict["KeyVersionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyVersion") && dict["KeyVersion"] != nil {
            var model = DescribeKeyVersionResponseBody.KeyVersion()
            model.fromMap(dict["KeyVersion"] as! [String: Any])
            self.keyVersion = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DescribeKeyVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") && dict["Region"] != nil {
                var tmp : [DescribeRegionsResponseBody.Regions.Region] = []
                for v in dict["Region"] as! [Any] {
                    var model = DescribeRegionsResponseBody.Regions.Region()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") && dict["Regions"] != nil {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FetchTags") && dict["FetchTags"] != nil {
            self.fetchTags = dict["FetchTags"] as! String
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                    self.tagValue = dict["TagValue"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Tag") && dict["Tag"] != nil {
                var tmp : [DescribeSecretResponseBody.Tags.Tag] = []
                for v in dict["Tag"] as! [Any] {
                    var model = DescribeSecretResponseBody.Tags.Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Arn") && dict["Arn"] != nil {
            self.arn = dict["Arn"] as! String
        }
        if dict.keys.contains("AutomaticRotation") && dict["AutomaticRotation"] != nil {
            self.automaticRotation = dict["AutomaticRotation"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("DKMSInstanceId") && dict["DKMSInstanceId"] != nil {
            self.DKMSInstanceId = dict["DKMSInstanceId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EncryptionKeyId") && dict["EncryptionKeyId"] != nil {
            self.encryptionKeyId = dict["EncryptionKeyId"] as! String
        }
        if dict.keys.contains("ExtendedConfig") && dict["ExtendedConfig"] != nil {
            self.extendedConfig = dict["ExtendedConfig"] as! String
        }
        if dict.keys.contains("LastRotationDate") && dict["LastRotationDate"] != nil {
            self.lastRotationDate = dict["LastRotationDate"] as! String
        }
        if dict.keys.contains("NextRotationDate") && dict["NextRotationDate"] != nil {
            self.nextRotationDate = dict["NextRotationDate"] as! String
        }
        if dict.keys.contains("PlannedDeleteTime") && dict["PlannedDeleteTime"] != nil {
            self.plannedDeleteTime = dict["PlannedDeleteTime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RotationInterval") && dict["RotationInterval"] != nil {
            self.rotationInterval = dict["RotationInterval"] as! String
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
        }
        if dict.keys.contains("SecretType") && dict["SecretType"] != nil {
            self.secretType = dict["SecretType"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var model = DescribeSecretResponseBody.Tags()
            model.fromMap(dict["Tags"] as! [String: Any])
            self.tags = model
        }
        if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
            self.updateTime = dict["UpdateTime"] as! String
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
            var model = DescribeSecretResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DisableKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = EnableKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EncryptRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EncryptionContext") && dict["EncryptionContext"] != nil {
            self.encryptionContext = dict["EncryptionContext"] as! [String: Any]
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("Plaintext") && dict["Plaintext"] != nil {
            self.plaintext = dict["Plaintext"] as! String
        }
    }
}

public class EncryptShrinkRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EncryptionContext") && dict["EncryptionContext"] != nil {
            self.encryptionContextShrink = dict["EncryptionContext"] as! String
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("Plaintext") && dict["Plaintext"] != nil {
            self.plaintext = dict["Plaintext"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CiphertextBlob") && dict["CiphertextBlob"] != nil {
            self.ciphertextBlob = dict["CiphertextBlob"] as! String
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("KeyVersionId") && dict["KeyVersionId"] != nil {
            self.keyVersionId = dict["KeyVersionId"] as! String
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
            var model = EncryptResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ExportDataKeyRequest : Tea.TeaModel {
    public var ciphertextBlob: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CiphertextBlob") && dict["CiphertextBlob"] != nil {
            self.ciphertextBlob = dict["CiphertextBlob"] as! String
        }
        if dict.keys.contains("EncryptionContext") && dict["EncryptionContext"] != nil {
            self.encryptionContext = dict["EncryptionContext"] as! [String: Any]
        }
        if dict.keys.contains("PublicKeyBlob") && dict["PublicKeyBlob"] != nil {
            self.publicKeyBlob = dict["PublicKeyBlob"] as! String
        }
        if dict.keys.contains("WrappingAlgorithm") && dict["WrappingAlgorithm"] != nil {
            self.wrappingAlgorithm = dict["WrappingAlgorithm"] as! String
        }
        if dict.keys.contains("WrappingKeySpec") && dict["WrappingKeySpec"] != nil {
            self.wrappingKeySpec = dict["WrappingKeySpec"] as! String
        }
    }
}

public class ExportDataKeyShrinkRequest : Tea.TeaModel {
    public var ciphertextBlob: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CiphertextBlob") && dict["CiphertextBlob"] != nil {
            self.ciphertextBlob = dict["CiphertextBlob"] as! String
        }
        if dict.keys.contains("EncryptionContext") && dict["EncryptionContext"] != nil {
            self.encryptionContextShrink = dict["EncryptionContext"] as! String
        }
        if dict.keys.contains("PublicKeyBlob") && dict["PublicKeyBlob"] != nil {
            self.publicKeyBlob = dict["PublicKeyBlob"] as! String
        }
        if dict.keys.contains("WrappingAlgorithm") && dict["WrappingAlgorithm"] != nil {
            self.wrappingAlgorithm = dict["WrappingAlgorithm"] as! String
        }
        if dict.keys.contains("WrappingKeySpec") && dict["WrappingKeySpec"] != nil {
            self.wrappingKeySpec = dict["WrappingKeySpec"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExportedDataKey") && dict["ExportedDataKey"] != nil {
            self.exportedDataKey = dict["ExportedDataKey"] as! String
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("KeyVersionId") && dict["KeyVersionId"] != nil {
            self.keyVersionId = dict["KeyVersionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ExportDataKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateAndExportDataKeyRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EncryptionContext") && dict["EncryptionContext"] != nil {
            self.encryptionContext = dict["EncryptionContext"] as! [String: Any]
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("KeySpec") && dict["KeySpec"] != nil {
            self.keySpec = dict["KeySpec"] as! String
        }
        if dict.keys.contains("NumberOfBytes") && dict["NumberOfBytes"] != nil {
            self.numberOfBytes = dict["NumberOfBytes"] as! Int32
        }
        if dict.keys.contains("PublicKeyBlob") && dict["PublicKeyBlob"] != nil {
            self.publicKeyBlob = dict["PublicKeyBlob"] as! String
        }
        if dict.keys.contains("WrappingAlgorithm") && dict["WrappingAlgorithm"] != nil {
            self.wrappingAlgorithm = dict["WrappingAlgorithm"] as! String
        }
        if dict.keys.contains("WrappingKeySpec") && dict["WrappingKeySpec"] != nil {
            self.wrappingKeySpec = dict["WrappingKeySpec"] as! String
        }
    }
}

public class GenerateAndExportDataKeyShrinkRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EncryptionContext") && dict["EncryptionContext"] != nil {
            self.encryptionContextShrink = dict["EncryptionContext"] as! String
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("KeySpec") && dict["KeySpec"] != nil {
            self.keySpec = dict["KeySpec"] as! String
        }
        if dict.keys.contains("NumberOfBytes") && dict["NumberOfBytes"] != nil {
            self.numberOfBytes = dict["NumberOfBytes"] as! Int32
        }
        if dict.keys.contains("PublicKeyBlob") && dict["PublicKeyBlob"] != nil {
            self.publicKeyBlob = dict["PublicKeyBlob"] as! String
        }
        if dict.keys.contains("WrappingAlgorithm") && dict["WrappingAlgorithm"] != nil {
            self.wrappingAlgorithm = dict["WrappingAlgorithm"] as! String
        }
        if dict.keys.contains("WrappingKeySpec") && dict["WrappingKeySpec"] != nil {
            self.wrappingKeySpec = dict["WrappingKeySpec"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CiphertextBlob") && dict["CiphertextBlob"] != nil {
            self.ciphertextBlob = dict["CiphertextBlob"] as! String
        }
        if dict.keys.contains("ExportedDataKey") && dict["ExportedDataKey"] != nil {
            self.exportedDataKey = dict["ExportedDataKey"] as! String
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("KeyVersionId") && dict["KeyVersionId"] != nil {
            self.keyVersionId = dict["KeyVersionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = GenerateAndExportDataKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateDataKeyRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EncryptionContext") && dict["EncryptionContext"] != nil {
            self.encryptionContext = dict["EncryptionContext"] as! [String: Any]
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("KeySpec") && dict["KeySpec"] != nil {
            self.keySpec = dict["KeySpec"] as! String
        }
        if dict.keys.contains("NumberOfBytes") && dict["NumberOfBytes"] != nil {
            self.numberOfBytes = dict["NumberOfBytes"] as! Int32
        }
    }
}

public class GenerateDataKeyShrinkRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EncryptionContext") && dict["EncryptionContext"] != nil {
            self.encryptionContextShrink = dict["EncryptionContext"] as! String
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("KeySpec") && dict["KeySpec"] != nil {
            self.keySpec = dict["KeySpec"] as! String
        }
        if dict.keys.contains("NumberOfBytes") && dict["NumberOfBytes"] != nil {
            self.numberOfBytes = dict["NumberOfBytes"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CiphertextBlob") && dict["CiphertextBlob"] != nil {
            self.ciphertextBlob = dict["CiphertextBlob"] as! String
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("KeyVersionId") && dict["KeyVersionId"] != nil {
            self.keyVersionId = dict["KeyVersionId"] as! String
        }
        if dict.keys.contains("Plaintext") && dict["Plaintext"] != nil {
            self.plaintext = dict["Plaintext"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = GenerateDataKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateDataKeyWithoutPlaintextRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EncryptionContext") && dict["EncryptionContext"] != nil {
            self.encryptionContext = dict["EncryptionContext"] as! [String: Any]
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("KeySpec") && dict["KeySpec"] != nil {
            self.keySpec = dict["KeySpec"] as! String
        }
        if dict.keys.contains("NumberOfBytes") && dict["NumberOfBytes"] != nil {
            self.numberOfBytes = dict["NumberOfBytes"] as! Int32
        }
    }
}

public class GenerateDataKeyWithoutPlaintextShrinkRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EncryptionContext") && dict["EncryptionContext"] != nil {
            self.encryptionContextShrink = dict["EncryptionContext"] as! String
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("KeySpec") && dict["KeySpec"] != nil {
            self.keySpec = dict["KeySpec"] as! String
        }
        if dict.keys.contains("NumberOfBytes") && dict["NumberOfBytes"] != nil {
            self.numberOfBytes = dict["NumberOfBytes"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CiphertextBlob") && dict["CiphertextBlob"] != nil {
            self.ciphertextBlob = dict["CiphertextBlob"] as! String
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("KeyVersionId") && dict["KeyVersionId"] != nil {
            self.keyVersionId = dict["KeyVersionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = GenerateDataKeyWithoutPlaintextResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
            self.certificateId = dict["CertificateId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Certificate") && dict["Certificate"] != nil {
            self.certificate = dict["Certificate"] as! String
        }
        if dict.keys.contains("CertificateChain") && dict["CertificateChain"] != nil {
            self.certificateChain = dict["CertificateChain"] as! String
        }
        if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
            self.certificateId = dict["CertificateId"] as! String
        }
        if dict.keys.contains("Csr") && dict["Csr"] != nil {
            self.csr = dict["Csr"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = GetCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("WrappingAlgorithm") && dict["WrappingAlgorithm"] != nil {
            self.wrappingAlgorithm = dict["WrappingAlgorithm"] as! String
        }
        if dict.keys.contains("WrappingKeySpec") && dict["WrappingKeySpec"] != nil {
            self.wrappingKeySpec = dict["WrappingKeySpec"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImportToken") && dict["ImportToken"] != nil {
            self.importToken = dict["ImportToken"] as! String
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("PublicKey") && dict["PublicKey"] != nil {
            self.publicKey = dict["PublicKey"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TokenExpireTime") && dict["TokenExpireTime"] != nil {
            self.tokenExpireTime = dict["TokenExpireTime"] as! String
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
            var model = GetParametersForImportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPublicKeyRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("KeyVersionId") && dict["KeyVersionId"] != nil {
            self.keyVersionId = dict["KeyVersionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("KeyVersionId") && dict["KeyVersionId"] != nil {
            self.keyVersionId = dict["KeyVersionId"] as! String
        }
        if dict.keys.contains("PublicKey") && dict["PublicKey"] != nil {
            self.publicKey = dict["PublicKey"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = GetPublicKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExcludeCharacters") && dict["ExcludeCharacters"] != nil {
            self.excludeCharacters = dict["ExcludeCharacters"] as! String
        }
        if dict.keys.contains("ExcludeLowercase") && dict["ExcludeLowercase"] != nil {
            self.excludeLowercase = dict["ExcludeLowercase"] as! String
        }
        if dict.keys.contains("ExcludeNumbers") && dict["ExcludeNumbers"] != nil {
            self.excludeNumbers = dict["ExcludeNumbers"] as! String
        }
        if dict.keys.contains("ExcludePunctuation") && dict["ExcludePunctuation"] != nil {
            self.excludePunctuation = dict["ExcludePunctuation"] as! String
        }
        if dict.keys.contains("ExcludeUppercase") && dict["ExcludeUppercase"] != nil {
            self.excludeUppercase = dict["ExcludeUppercase"] as! String
        }
        if dict.keys.contains("PasswordLength") && dict["PasswordLength"] != nil {
            self.passwordLength = dict["PasswordLength"] as! String
        }
        if dict.keys.contains("RequireEachIncludedType") && dict["RequireEachIncludedType"] != nil {
            self.requireEachIncludedType = dict["RequireEachIncludedType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RandomPassword") && dict["RandomPassword"] != nil {
            self.randomPassword = dict["RandomPassword"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = GetRandomPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSecretValueRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FetchExtendedConfig") && dict["FetchExtendedConfig"] != nil {
            self.fetchExtendedConfig = dict["FetchExtendedConfig"] as! Bool
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
        }
        if dict.keys.contains("VersionId") && dict["VersionId"] != nil {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionStage") && dict["VersionStage"] != nil {
            self.versionStage = dict["VersionStage"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VersionStage") && dict["VersionStage"] != nil {
                self.versionStage = dict["VersionStage"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutomaticRotation") && dict["AutomaticRotation"] != nil {
            self.automaticRotation = dict["AutomaticRotation"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("ExtendedConfig") && dict["ExtendedConfig"] != nil {
            self.extendedConfig = dict["ExtendedConfig"] as! String
        }
        if dict.keys.contains("LastRotationDate") && dict["LastRotationDate"] != nil {
            self.lastRotationDate = dict["LastRotationDate"] as! String
        }
        if dict.keys.contains("NextRotationDate") && dict["NextRotationDate"] != nil {
            self.nextRotationDate = dict["NextRotationDate"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RotationInterval") && dict["RotationInterval"] != nil {
            self.rotationInterval = dict["RotationInterval"] as! String
        }
        if dict.keys.contains("SecretData") && dict["SecretData"] != nil {
            self.secretData = dict["SecretData"] as! String
        }
        if dict.keys.contains("SecretDataType") && dict["SecretDataType"] != nil {
            self.secretDataType = dict["SecretDataType"] as! String
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
        }
        if dict.keys.contains("SecretType") && dict["SecretType"] != nil {
            self.secretType = dict["SecretType"] as! String
        }
        if dict.keys.contains("VersionId") && dict["VersionId"] != nil {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionStages") && dict["VersionStages"] != nil {
            var model = GetSecretValueResponseBody.VersionStages()
            model.fromMap(dict["VersionStages"] as! [String: Any])
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
            var model = GetSecretValueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EncryptedKeyMaterial") && dict["EncryptedKeyMaterial"] != nil {
            self.encryptedKeyMaterial = dict["EncryptedKeyMaterial"] as! String
        }
        if dict.keys.contains("ImportToken") && dict["ImportToken"] != nil {
            self.importToken = dict["ImportToken"] as! String
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("KeyMaterialExpireUnix") && dict["KeyMaterialExpireUnix"] != nil {
            self.keyMaterialExpireUnix = dict["KeyMaterialExpireUnix"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ImportKeyMaterialResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AliasArn") && dict["AliasArn"] != nil {
                    self.aliasArn = dict["AliasArn"] as! String
                }
                if dict.keys.contains("AliasName") && dict["AliasName"] != nil {
                    self.aliasName = dict["AliasName"] as! String
                }
                if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
                    self.keyId = dict["KeyId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alias") && dict["Alias"] != nil {
                var tmp : [ListAliasesResponseBody.Aliases.Alias] = []
                for v in dict["Alias"] as! [Any] {
                    var model = ListAliasesResponseBody.Aliases.Alias()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Aliases") && dict["Aliases"] != nil {
            var model = ListAliasesResponseBody.Aliases()
            model.fromMap(dict["Aliases"] as! [String: Any])
            self.aliases = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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
            var model = ListAliasesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AliasArn") && dict["AliasArn"] != nil {
                    self.aliasArn = dict["AliasArn"] as! String
                }
                if dict.keys.contains("AliasName") && dict["AliasName"] != nil {
                    self.aliasName = dict["AliasName"] as! String
                }
                if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
                    self.keyId = dict["KeyId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Alias") && dict["Alias"] != nil {
                var tmp : [ListAliasesByKeyIdResponseBody.Aliases.Alias] = []
                for v in dict["Alias"] as! [Any] {
                    var model = ListAliasesByKeyIdResponseBody.Aliases.Alias()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Aliases") && dict["Aliases"] != nil {
            var model = ListAliasesByKeyIdResponseBody.Aliases()
            model.fromMap(dict["Aliases"] as! [String: Any])
            self.aliases = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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
            var model = ListAliasesByKeyIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreationDate") && dict["CreationDate"] != nil {
                    self.creationDate = dict["CreationDate"] as! String
                }
                if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
                    self.keyId = dict["KeyId"] as! String
                }
                if dict.keys.contains("KeyVersionId") && dict["KeyVersionId"] != nil {
                    self.keyVersionId = dict["KeyVersionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("KeyVersion") && dict["KeyVersion"] != nil {
                var tmp : [ListKeyVersionsResponseBody.KeyVersions.KeyVersion] = []
                for v in dict["KeyVersion"] as! [Any] {
                    var model = ListKeyVersionsResponseBody.KeyVersions.KeyVersion()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyVersions") && dict["KeyVersions"] != nil {
            var model = ListKeyVersionsResponseBody.KeyVersions()
            model.fromMap(dict["KeyVersions"] as! [String: Any])
            self.keyVersions = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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
            var model = ListKeyVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filters") && dict["Filters"] != nil {
            self.filters = dict["Filters"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("KeyArn") && dict["KeyArn"] != nil {
                    self.keyArn = dict["KeyArn"] as! String
                }
                if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
                    self.keyId = dict["KeyId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                var tmp : [ListKeysResponseBody.Keys.Key] = []
                for v in dict["Key"] as! [Any] {
                    var model = ListKeysResponseBody.Keys.Key()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keys") && dict["Keys"] != nil {
            var model = ListKeysResponseBody.Keys()
            model.fromMap(dict["Keys"] as! [String: Any])
            self.keys = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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
            var model = ListKeysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
                    self.keyId = dict["KeyId"] as! String
                }
                if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                    self.tagValue = dict["TagValue"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Tag") && dict["Tag"] != nil {
                var tmp : [ListResourceTagsResponseBody.Tags.Tag] = []
                for v in dict["Tag"] as! [Any] {
                    var model = ListResourceTagsResponseBody.Tags.Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var model = ListResourceTagsResponseBody.Tags()
            model.fromMap(dict["Tags"] as! [String: Any])
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
            var model = ListResourceTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IncludeDeprecated") && dict["IncludeDeprecated"] != nil {
            self.includeDeprecated = dict["IncludeDeprecated"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("VersionStage") && dict["VersionStage"] != nil {
                        self.versionStage = dict["VersionStage"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("VersionId") && dict["VersionId"] != nil {
                    self.versionId = dict["VersionId"] as! String
                }
                if dict.keys.contains("VersionStages") && dict["VersionStages"] != nil {
                    var model = ListSecretVersionIdsResponseBody.VersionIds.VersionId.VersionStages()
                    model.fromMap(dict["VersionStages"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VersionId") && dict["VersionId"] != nil {
                var tmp : [ListSecretVersionIdsResponseBody.VersionIds.VersionId] = []
                for v in dict["VersionId"] as! [Any] {
                    var model = ListSecretVersionIdsResponseBody.VersionIds.VersionId()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("VersionIds") && dict["VersionIds"] != nil {
            var model = ListSecretVersionIdsResponseBody.VersionIds()
            model.fromMap(dict["VersionIds"] as! [String: Any])
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
            var model = ListSecretVersionIdsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FetchTags") && dict["FetchTags"] != nil {
            self.fetchTags = dict["FetchTags"] as! String
        }
        if dict.keys.contains("Filters") && dict["Filters"] != nil {
            self.filters = dict["Filters"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                            self.tagKey = dict["TagKey"] as! String
                        }
                        if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                            self.tagValue = dict["TagValue"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Tag") && dict["Tag"] != nil {
                        var tmp : [ListSecretsResponseBody.SecretList.Secret.Tags.Tag] = []
                        for v in dict["Tag"] as! [Any] {
                            var model = ListSecretsResponseBody.SecretList.Secret.Tags.Tag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tag = tmp
                    }
                }
            }
            public var createTime: String?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("PlannedDeleteTime") && dict["PlannedDeleteTime"] != nil {
                    self.plannedDeleteTime = dict["PlannedDeleteTime"] as! String
                }
                if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
                    self.secretName = dict["SecretName"] as! String
                }
                if dict.keys.contains("SecretType") && dict["SecretType"] != nil {
                    self.secretType = dict["SecretType"] as! String
                }
                if dict.keys.contains("Tags") && dict["Tags"] != nil {
                    var model = ListSecretsResponseBody.SecretList.Secret.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
                    self.updateTime = dict["UpdateTime"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Secret") && dict["Secret"] != nil {
                var tmp : [ListSecretsResponseBody.SecretList.Secret] = []
                for v in dict["Secret"] as! [Any] {
                    var model = ListSecretsResponseBody.SecretList.Secret()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretList") && dict["SecretList"] != nil {
            var model = ListSecretsResponseBody.SecretList()
            model.fromMap(dict["SecretList"] as! [String: Any])
            self.secretList = model
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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
            var model = ListSecretsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListTagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                    self.tagValue = dict["TagValue"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagResource") && dict["TagResource"] != nil {
                var tmp : [ListTagResourcesResponseBody.TagResources.TagResource] = []
                for v in dict["TagResource"] as! [Any] {
                    var model = ListTagResourcesResponseBody.TagResources.TagResource()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") && dict["TagResources"] != nil {
            var model = ListTagResourcesResponseBody.TagResources()
            model.fromMap(dict["TagResources"] as! [String: Any])
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
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = OpenKmsServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecretData") && dict["SecretData"] != nil {
            self.secretData = dict["SecretData"] as! String
        }
        if dict.keys.contains("SecretDataType") && dict["SecretDataType"] != nil {
            self.secretDataType = dict["SecretDataType"] as! String
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
        }
        if dict.keys.contains("VersionId") && dict["VersionId"] != nil {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionStages") && dict["VersionStages"] != nil {
            self.versionStages = dict["VersionStages"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VersionStage") && dict["VersionStage"] != nil {
                self.versionStage = dict["VersionStage"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
        }
        if dict.keys.contains("VersionId") && dict["VersionId"] != nil {
            self.versionId = dict["VersionId"] as! String
        }
        if dict.keys.contains("VersionStages") && dict["VersionStages"] != nil {
            var model = PutSecretValueResponseBody.VersionStages()
            model.fromMap(dict["VersionStages"] as! [String: Any])
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
            var model = PutSecretValueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReEncryptRequest : Tea.TeaModel {
    public var ciphertextBlob: String?

    public var destinationEncryptionContext: [String: Any]?

    public var destinationKeyId: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CiphertextBlob") && dict["CiphertextBlob"] != nil {
            self.ciphertextBlob = dict["CiphertextBlob"] as! String
        }
        if dict.keys.contains("DestinationEncryptionContext") && dict["DestinationEncryptionContext"] != nil {
            self.destinationEncryptionContext = dict["DestinationEncryptionContext"] as! [String: Any]
        }
        if dict.keys.contains("DestinationKeyId") && dict["DestinationKeyId"] != nil {
            self.destinationKeyId = dict["DestinationKeyId"] as! String
        }
        if dict.keys.contains("SourceEncryptionAlgorithm") && dict["SourceEncryptionAlgorithm"] != nil {
            self.sourceEncryptionAlgorithm = dict["SourceEncryptionAlgorithm"] as! String
        }
        if dict.keys.contains("SourceEncryptionContext") && dict["SourceEncryptionContext"] != nil {
            self.sourceEncryptionContext = dict["SourceEncryptionContext"] as! [String: Any]
        }
        if dict.keys.contains("SourceKeyId") && dict["SourceKeyId"] != nil {
            self.sourceKeyId = dict["SourceKeyId"] as! String
        }
        if dict.keys.contains("SourceKeyVersionId") && dict["SourceKeyVersionId"] != nil {
            self.sourceKeyVersionId = dict["SourceKeyVersionId"] as! String
        }
    }
}

public class ReEncryptShrinkRequest : Tea.TeaModel {
    public var ciphertextBlob: String?

    public var destinationEncryptionContextShrink: String?

    public var destinationKeyId: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CiphertextBlob") && dict["CiphertextBlob"] != nil {
            self.ciphertextBlob = dict["CiphertextBlob"] as! String
        }
        if dict.keys.contains("DestinationEncryptionContext") && dict["DestinationEncryptionContext"] != nil {
            self.destinationEncryptionContextShrink = dict["DestinationEncryptionContext"] as! String
        }
        if dict.keys.contains("DestinationKeyId") && dict["DestinationKeyId"] != nil {
            self.destinationKeyId = dict["DestinationKeyId"] as! String
        }
        if dict.keys.contains("SourceEncryptionAlgorithm") && dict["SourceEncryptionAlgorithm"] != nil {
            self.sourceEncryptionAlgorithm = dict["SourceEncryptionAlgorithm"] as! String
        }
        if dict.keys.contains("SourceEncryptionContext") && dict["SourceEncryptionContext"] != nil {
            self.sourceEncryptionContextShrink = dict["SourceEncryptionContext"] as! String
        }
        if dict.keys.contains("SourceKeyId") && dict["SourceKeyId"] != nil {
            self.sourceKeyId = dict["SourceKeyId"] as! String
        }
        if dict.keys.contains("SourceKeyVersionId") && dict["SourceKeyVersionId"] != nil {
            self.sourceKeyVersionId = dict["SourceKeyVersionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CiphertextBlob") && dict["CiphertextBlob"] != nil {
            self.ciphertextBlob = dict["CiphertextBlob"] as! String
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("KeyVersionId") && dict["KeyVersionId"] != nil {
            self.keyVersionId = dict["KeyVersionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ReEncryptResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
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
            var model = RestoreSecretResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
        }
        if dict.keys.contains("VersionId") && dict["VersionId"] != nil {
            self.versionId = dict["VersionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Arn") && dict["Arn"] != nil {
            self.arn = dict["Arn"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
        }
        if dict.keys.contains("VersionId") && dict["VersionId"] != nil {
            self.versionId = dict["VersionId"] as! String
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
            var model = RotateSecretResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("PendingWindowInDays") && dict["PendingWindowInDays"] != nil {
            self.pendingWindowInDays = dict["PendingWindowInDays"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ScheduleKeyDeletionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetDeletionProtectionRequest : Tea.TeaModel {
    public var deletionProtectionDescription: String?

    public var enableDeletionProtection: Bool?

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
        if self.protectedResourceArn != nil {
            map["ProtectedResourceArn"] = self.protectedResourceArn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeletionProtectionDescription") && dict["DeletionProtectionDescription"] != nil {
            self.deletionProtectionDescription = dict["DeletionProtectionDescription"] as! String
        }
        if dict.keys.contains("EnableDeletionProtection") && dict["EnableDeletionProtection"] != nil {
            self.enableDeletionProtection = dict["EnableDeletionProtection"] as! Bool
        }
        if dict.keys.contains("ProtectedResourceArn") && dict["ProtectedResourceArn"] != nil {
            self.protectedResourceArn = dict["ProtectedResourceArn"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = SetDeletionProtectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
            self.certificateId = dict["CertificateId"] as! String
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = TagResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = TagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
            self.certificateId = dict["CertificateId"] as! String
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
        }
        if dict.keys.contains("TagKeys") && dict["TagKeys"] != nil {
            self.tagKeys = dict["TagKeys"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = UntagResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
            self.tagKey = dict["TagKey"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliasName") && dict["AliasName"] != nil {
            self.aliasName = dict["AliasName"] as! String
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = UpdateAliasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
            self.certificateId = dict["CertificateId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = UpdateCertificateStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = UpdateKeyDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnableAutomaticRotation") && dict["EnableAutomaticRotation"] != nil {
            self.enableAutomaticRotation = dict["EnableAutomaticRotation"] as! Bool
        }
        if dict.keys.contains("KeyId") && dict["KeyId"] != nil {
            self.keyId = dict["KeyId"] as! String
        }
        if dict.keys.contains("RotationInterval") && dict["RotationInterval"] != nil {
            self.rotationInterval = dict["RotationInterval"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = UpdateRotationPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CustomData") && dict["CustomData"] != nil {
                self.customData = dict["CustomData"] as! [String: Any]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExtendedConfig") && dict["ExtendedConfig"] != nil {
            var model = UpdateSecretRequest.ExtendedConfig()
            model.fromMap(dict["ExtendedConfig"] as! [String: Any])
            self.extendedConfig = model
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CustomData") && dict["CustomData"] != nil {
                self.customData = dict["CustomData"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExtendedConfig") && dict["ExtendedConfig"] != nil {
            var model = UpdateSecretShrinkRequest.ExtendedConfig()
            model.fromMap(dict["ExtendedConfig"] as! [String: Any])
            self.extendedConfig = model
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
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
            var model = UpdateSecretResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnableAutomaticRotation") && dict["EnableAutomaticRotation"] != nil {
            self.enableAutomaticRotation = dict["EnableAutomaticRotation"] as! Bool
        }
        if dict.keys.contains("RotationInterval") && dict["RotationInterval"] != nil {
            self.rotationInterval = dict["RotationInterval"] as! String
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
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
            var model = UpdateSecretRotationPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MoveToVersion") && dict["MoveToVersion"] != nil {
            self.moveToVersion = dict["MoveToVersion"] as! String
        }
        if dict.keys.contains("RemoveFromVersion") && dict["RemoveFromVersion"] != nil {
            self.removeFromVersion = dict["RemoveFromVersion"] as! String
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
        }
        if dict.keys.contains("VersionStage") && dict["VersionStage"] != nil {
            self.versionStage = dict["VersionStage"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecretName") && dict["SecretName"] != nil {
            self.secretName = dict["SecretName"] as! String
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
            var model = UpdateSecretVersionStageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Certificate") && dict["Certificate"] != nil {
            self.certificate = dict["Certificate"] as! String
        }
        if dict.keys.contains("CertificateChain") && dict["CertificateChain"] != nil {
            self.certificateChain = dict["CertificateChain"] as! String
        }
        if dict.keys.contains("CertificateId") && dict["CertificateId"] != nil {
            self.certificateId = dict["CertificateId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = UploadCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
