import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AcceptHandshakeRequest : Tea.TeaModel {
    public var handshakeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.handshakeId != nil {
            map["HandshakeId"] = self.handshakeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HandshakeId"] as? String {
            self.handshakeId = value
        }
    }
}

public class AcceptHandshakeResponseBody : Tea.TeaModel {
    public class Handshake : Tea.TeaModel {
        public var createTime: String?

        public var expireTime: String?

        public var handshakeId: String?

        public var masterAccountId: String?

        public var masterAccountName: String?

        public var modifyTime: String?

        public var note: String?

        public var resourceDirectoryId: String?

        public var status: String?

        public var targetEntity: String?

        public var targetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.handshakeId != nil {
                map["HandshakeId"] = self.handshakeId!
            }
            if self.masterAccountId != nil {
                map["MasterAccountId"] = self.masterAccountId!
            }
            if self.masterAccountName != nil {
                map["MasterAccountName"] = self.masterAccountName!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.note != nil {
                map["Note"] = self.note!
            }
            if self.resourceDirectoryId != nil {
                map["ResourceDirectoryId"] = self.resourceDirectoryId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.targetEntity != nil {
                map["TargetEntity"] = self.targetEntity!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["HandshakeId"] as? String {
                self.handshakeId = value
            }
            if let value = dict["MasterAccountId"] as? String {
                self.masterAccountId = value
            }
            if let value = dict["MasterAccountName"] as? String {
                self.masterAccountName = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["Note"] as? String {
                self.note = value
            }
            if let value = dict["ResourceDirectoryId"] as? String {
                self.resourceDirectoryId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TargetEntity"] as? String {
                self.targetEntity = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
        }
    }
    public var handshake: AcceptHandshakeResponseBody.Handshake?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.handshake?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.handshake != nil {
            map["Handshake"] = self.handshake?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Handshake"] as? [String: Any?] {
            var model = AcceptHandshakeResponseBody.Handshake()
            model.fromMap(value)
            self.handshake = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AcceptHandshakeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AcceptHandshakeResponseBody?

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
            var model = AcceptHandshakeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AttachControlPolicyRequest : Tea.TeaModel {
    public var policyId: String?

    public var targetId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.targetId != nil {
            map["TargetId"] = self.targetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["TargetId"] as? String {
            self.targetId = value
        }
    }
}

public class AttachControlPolicyResponseBody : Tea.TeaModel {
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

public class AttachControlPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachControlPolicyResponseBody?

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
            var model = AttachControlPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AttachPolicyRequest : Tea.TeaModel {
    public var policyName: String?

    public var policyType: String?

    public var principalName: String?

    public var principalType: String?

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
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        if self.principalName != nil {
            map["PrincipalName"] = self.principalName!
        }
        if self.principalType != nil {
            map["PrincipalType"] = self.principalType!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
        if let value = dict["PrincipalName"] as? String {
            self.principalName = value
        }
        if let value = dict["PrincipalType"] as? String {
            self.principalType = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class AttachPolicyResponseBody : Tea.TeaModel {
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

public class AttachPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachPolicyResponseBody?

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
            var model = AttachPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BindSecureMobilePhoneRequest : Tea.TeaModel {
    public var accountId: String?

    public var secureMobilePhone: String?

    public var verificationCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.secureMobilePhone != nil {
            map["SecureMobilePhone"] = self.secureMobilePhone!
        }
        if self.verificationCode != nil {
            map["VerificationCode"] = self.verificationCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["SecureMobilePhone"] as? String {
            self.secureMobilePhone = value
        }
        if let value = dict["VerificationCode"] as? String {
            self.verificationCode = value
        }
    }
}

public class BindSecureMobilePhoneResponseBody : Tea.TeaModel {
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

public class BindSecureMobilePhoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindSecureMobilePhoneResponseBody?

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
            var model = BindSecureMobilePhoneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelChangeAccountEmailRequest : Tea.TeaModel {
    public var accountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
    }
}

public class CancelChangeAccountEmailResponseBody : Tea.TeaModel {
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

public class CancelChangeAccountEmailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelChangeAccountEmailResponseBody?

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
            var model = CancelChangeAccountEmailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelCreateCloudAccountRequest : Tea.TeaModel {
    public var recordId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RecordId"] as? String {
            self.recordId = value
        }
    }
}

public class CancelCreateCloudAccountResponseBody : Tea.TeaModel {
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

public class CancelCreateCloudAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelCreateCloudAccountResponseBody?

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
            var model = CancelCreateCloudAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelHandshakeRequest : Tea.TeaModel {
    public var handshakeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.handshakeId != nil {
            map["HandshakeId"] = self.handshakeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HandshakeId"] as? String {
            self.handshakeId = value
        }
    }
}

public class CancelHandshakeResponseBody : Tea.TeaModel {
    public class Handshake : Tea.TeaModel {
        public var createTime: String?

        public var expireTime: String?

        public var handshakeId: String?

        public var masterAccountId: String?

        public var masterAccountName: String?

        public var modifyTime: String?

        public var note: String?

        public var resourceDirectoryId: String?

        public var status: String?

        public var targetEntity: String?

        public var targetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.handshakeId != nil {
                map["HandshakeId"] = self.handshakeId!
            }
            if self.masterAccountId != nil {
                map["MasterAccountId"] = self.masterAccountId!
            }
            if self.masterAccountName != nil {
                map["MasterAccountName"] = self.masterAccountName!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.note != nil {
                map["Note"] = self.note!
            }
            if self.resourceDirectoryId != nil {
                map["ResourceDirectoryId"] = self.resourceDirectoryId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.targetEntity != nil {
                map["TargetEntity"] = self.targetEntity!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["HandshakeId"] as? String {
                self.handshakeId = value
            }
            if let value = dict["MasterAccountId"] as? String {
                self.masterAccountId = value
            }
            if let value = dict["MasterAccountName"] as? String {
                self.masterAccountName = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["Note"] as? String {
                self.note = value
            }
            if let value = dict["ResourceDirectoryId"] as? String {
                self.resourceDirectoryId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TargetEntity"] as? String {
                self.targetEntity = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
        }
    }
    public var handshake: CancelHandshakeResponseBody.Handshake?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.handshake?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.handshake != nil {
            map["Handshake"] = self.handshake?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Handshake"] as? [String: Any?] {
            var model = CancelHandshakeResponseBody.Handshake()
            model.fromMap(value)
            self.handshake = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CancelHandshakeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelHandshakeResponseBody?

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
            var model = CancelHandshakeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelPromoteResourceAccountRequest : Tea.TeaModel {
    public var recordId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RecordId"] as? String {
            self.recordId = value
        }
    }
}

public class CancelPromoteResourceAccountResponseBody : Tea.TeaModel {
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

public class CancelPromoteResourceAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelPromoteResourceAccountResponseBody?

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
            var model = CancelPromoteResourceAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeAccountEmailRequest : Tea.TeaModel {
    public var accountId: String?

    public var email: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
    }
}

public class ChangeAccountEmailResponseBody : Tea.TeaModel {
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

public class ChangeAccountEmailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeAccountEmailResponseBody?

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
            var model = ChangeAccountEmailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckAccountDeleteRequest : Tea.TeaModel {
    public var accountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
    }
}

public class CheckAccountDeleteResponseBody : Tea.TeaModel {
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

public class CheckAccountDeleteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckAccountDeleteResponseBody?

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
            var model = CheckAccountDeleteResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAutoGroupingRuleRequest : Tea.TeaModel {
    public class RuleContents : Tea.TeaModel {
        public var autoGroupingScopeCondition: String?

        public var targetResourceGroupCondition: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoGroupingScopeCondition != nil {
                map["AutoGroupingScopeCondition"] = self.autoGroupingScopeCondition!
            }
            if self.targetResourceGroupCondition != nil {
                map["TargetResourceGroupCondition"] = self.targetResourceGroupCondition!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoGroupingScopeCondition"] as? String {
                self.autoGroupingScopeCondition = value
            }
            if let value = dict["TargetResourceGroupCondition"] as? String {
                self.targetResourceGroupCondition = value
            }
        }
    }
    public var excludeRegionIdsScope: String?

    public var excludeResourceGroupIdsScope: String?

    public var excludeResourceIdsScope: String?

    public var excludeResourceTypesScope: String?

    public var regionIdsScope: String?

    public var resourceGroupIdsScope: String?

    public var resourceIdsScope: String?

    public var resourceTypesScope: String?

    public var ruleContents: [CreateAutoGroupingRuleRequest.RuleContents]?

    public var ruleDesc: String?

    public var ruleName: String?

    public var ruleType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.excludeRegionIdsScope != nil {
            map["ExcludeRegionIdsScope"] = self.excludeRegionIdsScope!
        }
        if self.excludeResourceGroupIdsScope != nil {
            map["ExcludeResourceGroupIdsScope"] = self.excludeResourceGroupIdsScope!
        }
        if self.excludeResourceIdsScope != nil {
            map["ExcludeResourceIdsScope"] = self.excludeResourceIdsScope!
        }
        if self.excludeResourceTypesScope != nil {
            map["ExcludeResourceTypesScope"] = self.excludeResourceTypesScope!
        }
        if self.regionIdsScope != nil {
            map["RegionIdsScope"] = self.regionIdsScope!
        }
        if self.resourceGroupIdsScope != nil {
            map["ResourceGroupIdsScope"] = self.resourceGroupIdsScope!
        }
        if self.resourceIdsScope != nil {
            map["ResourceIdsScope"] = self.resourceIdsScope!
        }
        if self.resourceTypesScope != nil {
            map["ResourceTypesScope"] = self.resourceTypesScope!
        }
        if self.ruleContents != nil {
            var tmp : [Any] = []
            for k in self.ruleContents! {
                tmp.append(k.toMap())
            }
            map["RuleContents"] = tmp
        }
        if self.ruleDesc != nil {
            map["RuleDesc"] = self.ruleDesc!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExcludeRegionIdsScope"] as? String {
            self.excludeRegionIdsScope = value
        }
        if let value = dict["ExcludeResourceGroupIdsScope"] as? String {
            self.excludeResourceGroupIdsScope = value
        }
        if let value = dict["ExcludeResourceIdsScope"] as? String {
            self.excludeResourceIdsScope = value
        }
        if let value = dict["ExcludeResourceTypesScope"] as? String {
            self.excludeResourceTypesScope = value
        }
        if let value = dict["RegionIdsScope"] as? String {
            self.regionIdsScope = value
        }
        if let value = dict["ResourceGroupIdsScope"] as? String {
            self.resourceGroupIdsScope = value
        }
        if let value = dict["ResourceIdsScope"] as? String {
            self.resourceIdsScope = value
        }
        if let value = dict["ResourceTypesScope"] as? String {
            self.resourceTypesScope = value
        }
        if let value = dict["RuleContents"] as? [Any?] {
            var tmp : [CreateAutoGroupingRuleRequest.RuleContents] = []
            for v in value {
                if v != nil {
                    var model = CreateAutoGroupingRuleRequest.RuleContents()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ruleContents = tmp
        }
        if let value = dict["RuleDesc"] as? String {
            self.ruleDesc = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["RuleType"] as? String {
            self.ruleType = value
        }
    }
}

public class CreateAutoGroupingRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var ruleId: String?

    public override init() {
        super.init()
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
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
    }
}

public class CreateAutoGroupingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAutoGroupingRuleResponseBody?

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
            var model = CreateAutoGroupingRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCloudAccountRequest : Tea.TeaModel {
    public var displayName: String?

    public var email: String?

    public var parentFolderId: String?

    public var payerAccountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.parentFolderId != nil {
            map["ParentFolderId"] = self.parentFolderId!
        }
        if self.payerAccountId != nil {
            map["PayerAccountId"] = self.payerAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["ParentFolderId"] as? String {
            self.parentFolderId = value
        }
        if let value = dict["PayerAccountId"] as? String {
            self.payerAccountId = value
        }
    }
}

public class CreateCloudAccountResponseBody : Tea.TeaModel {
    public class Account : Tea.TeaModel {
        public var accountId: String?

        public var accountName: String?

        public var displayName: String?

        public var folderId: String?

        public var joinMethod: String?

        public var modifyTime: String?

        public var recordId: String?

        public var resourceDirectoryId: String?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.folderId != nil {
                map["FolderId"] = self.folderId!
            }
            if self.joinMethod != nil {
                map["JoinMethod"] = self.joinMethod!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.recordId != nil {
                map["RecordId"] = self.recordId!
            }
            if self.resourceDirectoryId != nil {
                map["ResourceDirectoryId"] = self.resourceDirectoryId!
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
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["AccountName"] as? String {
                self.accountName = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["FolderId"] as? String {
                self.folderId = value
            }
            if let value = dict["JoinMethod"] as? String {
                self.joinMethod = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["RecordId"] as? String {
                self.recordId = value
            }
            if let value = dict["ResourceDirectoryId"] as? String {
                self.resourceDirectoryId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var account: CreateCloudAccountResponseBody.Account?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.account?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.account != nil {
            map["Account"] = self.account?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? [String: Any?] {
            var model = CreateCloudAccountResponseBody.Account()
            model.fromMap(value)
            self.account = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateCloudAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCloudAccountResponseBody?

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
            var model = CreateCloudAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateControlPolicyRequest : Tea.TeaModel {
    public var description_: String?

    public var effectScope: String?

    public var policyDocument: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.effectScope != nil {
            map["EffectScope"] = self.effectScope!
        }
        if self.policyDocument != nil {
            map["PolicyDocument"] = self.policyDocument!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EffectScope"] as? String {
            self.effectScope = value
        }
        if let value = dict["PolicyDocument"] as? String {
            self.policyDocument = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
    }
}

public class CreateControlPolicyResponseBody : Tea.TeaModel {
    public class ControlPolicy : Tea.TeaModel {
        public var attachmentCount: String?

        public var createDate: String?

        public var description_: String?

        public var effectScope: String?

        public var policyId: String?

        public var policyName: String?

        public var policyType: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attachmentCount != nil {
                map["AttachmentCount"] = self.attachmentCount!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.effectScope != nil {
                map["EffectScope"] = self.effectScope!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.policyName != nil {
                map["PolicyName"] = self.policyName!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttachmentCount"] as? String {
                self.attachmentCount = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EffectScope"] as? String {
                self.effectScope = value
            }
            if let value = dict["PolicyId"] as? String {
                self.policyId = value
            }
            if let value = dict["PolicyName"] as? String {
                self.policyName = value
            }
            if let value = dict["PolicyType"] as? String {
                self.policyType = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var controlPolicy: CreateControlPolicyResponseBody.ControlPolicy?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.controlPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.controlPolicy != nil {
            map["ControlPolicy"] = self.controlPolicy?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ControlPolicy"] as? [String: Any?] {
            var model = CreateControlPolicyResponseBody.ControlPolicy()
            model.fromMap(value)
            self.controlPolicy = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateControlPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateControlPolicyResponseBody?

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
            var model = CreateControlPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFolderRequest : Tea.TeaModel {
    public var folderName: String?

    public var parentFolderId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.folderName != nil {
            map["FolderName"] = self.folderName!
        }
        if self.parentFolderId != nil {
            map["ParentFolderId"] = self.parentFolderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FolderName"] as? String {
            self.folderName = value
        }
        if let value = dict["ParentFolderId"] as? String {
            self.parentFolderId = value
        }
    }
}

public class CreateFolderResponseBody : Tea.TeaModel {
    public class Folder : Tea.TeaModel {
        public var createTime: String?

        public var folderId: String?

        public var folderName: String?

        public var parentFolderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.folderId != nil {
                map["FolderId"] = self.folderId!
            }
            if self.folderName != nil {
                map["FolderName"] = self.folderName!
            }
            if self.parentFolderId != nil {
                map["ParentFolderId"] = self.parentFolderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["FolderId"] as? String {
                self.folderId = value
            }
            if let value = dict["FolderName"] as? String {
                self.folderName = value
            }
            if let value = dict["ParentFolderId"] as? String {
                self.parentFolderId = value
            }
        }
    }
    public var folder: CreateFolderResponseBody.Folder?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.folder?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.folder != nil {
            map["Folder"] = self.folder?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Folder"] as? [String: Any?] {
            var model = CreateFolderResponseBody.Folder()
            model.fromMap(value)
            self.folder = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateFolderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFolderResponseBody?

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
            var model = CreateFolderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePolicyRequest : Tea.TeaModel {
    public var description_: String?

    public var policyDocument: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.policyDocument != nil {
            map["PolicyDocument"] = self.policyDocument!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["PolicyDocument"] as? String {
            self.policyDocument = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
    }
}

public class CreatePolicyResponseBody : Tea.TeaModel {
    public class Policy : Tea.TeaModel {
        public var createDate: String?

        public var defaultVersion: String?

        public var description_: String?

        public var policyName: String?

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
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.defaultVersion != nil {
                map["DefaultVersion"] = self.defaultVersion!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.policyName != nil {
                map["PolicyName"] = self.policyName!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DefaultVersion"] as? String {
                self.defaultVersion = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["PolicyName"] as? String {
                self.policyName = value
            }
            if let value = dict["PolicyType"] as? String {
                self.policyType = value
            }
        }
    }
    public var policy: CreatePolicyResponseBody.Policy?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policy != nil {
            map["Policy"] = self.policy?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Policy"] as? [String: Any?] {
            var model = CreatePolicyResponseBody.Policy()
            model.fromMap(value)
            self.policy = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

public class CreatePolicyVersionRequest : Tea.TeaModel {
    public var policyDocument: String?

    public var policyName: String?

    public var setAsDefault: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyDocument != nil {
            map["PolicyDocument"] = self.policyDocument!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.setAsDefault != nil {
            map["SetAsDefault"] = self.setAsDefault!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyDocument"] as? String {
            self.policyDocument = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["SetAsDefault"] as? Bool {
            self.setAsDefault = value
        }
    }
}

public class CreatePolicyVersionResponseBody : Tea.TeaModel {
    public class PolicyVersion : Tea.TeaModel {
        public var createDate: String?

        public var isDefaultVersion: Bool?

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
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.isDefaultVersion != nil {
                map["IsDefaultVersion"] = self.isDefaultVersion!
            }
            if self.versionId != nil {
                map["VersionId"] = self.versionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["IsDefaultVersion"] as? Bool {
                self.isDefaultVersion = value
            }
            if let value = dict["VersionId"] as? String {
                self.versionId = value
            }
        }
    }
    public var policyVersion: CreatePolicyVersionResponseBody.PolicyVersion?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policyVersion?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyVersion != nil {
            map["PolicyVersion"] = self.policyVersion?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyVersion"] as? [String: Any?] {
            var model = CreatePolicyVersionResponseBody.PolicyVersion()
            model.fromMap(value)
            self.policyVersion = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreatePolicyVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePolicyVersionResponseBody?

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
            var model = CreatePolicyVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateResourceAccountRequest : Tea.TeaModel {
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
    public var accountNamePrefix: String?

    public var displayName: String?

    public var parentFolderId: String?

    public var payerAccountId: String?

    public var resellAccountType: String?

    public var tag: [CreateResourceAccountRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountNamePrefix != nil {
            map["AccountNamePrefix"] = self.accountNamePrefix!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.parentFolderId != nil {
            map["ParentFolderId"] = self.parentFolderId!
        }
        if self.payerAccountId != nil {
            map["PayerAccountId"] = self.payerAccountId!
        }
        if self.resellAccountType != nil {
            map["ResellAccountType"] = self.resellAccountType!
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
        if let value = dict["AccountNamePrefix"] as? String {
            self.accountNamePrefix = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["ParentFolderId"] as? String {
            self.parentFolderId = value
        }
        if let value = dict["PayerAccountId"] as? String {
            self.payerAccountId = value
        }
        if let value = dict["ResellAccountType"] as? String {
            self.resellAccountType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateResourceAccountRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateResourceAccountRequest.Tag()
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

public class CreateResourceAccountResponseBody : Tea.TeaModel {
    public class Account : Tea.TeaModel {
        public var accountId: String?

        public var accountName: String?

        public var displayName: String?

        public var folderId: String?

        public var joinMethod: String?

        public var joinTime: String?

        public var modifyTime: String?

        public var resourceDirectoryId: String?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.folderId != nil {
                map["FolderId"] = self.folderId!
            }
            if self.joinMethod != nil {
                map["JoinMethod"] = self.joinMethod!
            }
            if self.joinTime != nil {
                map["JoinTime"] = self.joinTime!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.resourceDirectoryId != nil {
                map["ResourceDirectoryId"] = self.resourceDirectoryId!
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
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["AccountName"] as? String {
                self.accountName = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["FolderId"] as? String {
                self.folderId = value
            }
            if let value = dict["JoinMethod"] as? String {
                self.joinMethod = value
            }
            if let value = dict["JoinTime"] as? String {
                self.joinTime = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["ResourceDirectoryId"] as? String {
                self.resourceDirectoryId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var account: CreateResourceAccountResponseBody.Account?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.account?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.account != nil {
            map["Account"] = self.account?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? [String: Any?] {
            var model = CreateResourceAccountResponseBody.Account()
            model.fromMap(value)
            self.account = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateResourceAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateResourceAccountResponseBody?

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
            var model = CreateResourceAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateResourceGroupRequest : Tea.TeaModel {
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
    public var displayName: String?

    public var name: String?

    public var tag: [CreateResourceGroupRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateResourceGroupRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateResourceGroupRequest.Tag()
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

public class CreateResourceGroupResponseBody : Tea.TeaModel {
    public class ResourceGroup : Tea.TeaModel {
        public class RegionStatuses : Tea.TeaModel {
            public class RegionStatus : Tea.TeaModel {
                public var regionId: String?

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
                    if self.regionId != nil {
                        map["RegionId"] = self.regionId!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RegionId"] as? String {
                        self.regionId = value
                    }
                    if let value = dict["Status"] as? String {
                        self.status = value
                    }
                }
            }
            public var regionStatus: [CreateResourceGroupResponseBody.ResourceGroup.RegionStatuses.RegionStatus]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.regionStatus != nil {
                    var tmp : [Any] = []
                    for k in self.regionStatus! {
                        tmp.append(k.toMap())
                    }
                    map["RegionStatus"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RegionStatus"] as? [Any?] {
                    var tmp : [CreateResourceGroupResponseBody.ResourceGroup.RegionStatuses.RegionStatus] = []
                    for v in value {
                        if v != nil {
                            var model = CreateResourceGroupResponseBody.ResourceGroup.RegionStatuses.RegionStatus()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.regionStatus = tmp
                }
            }
        }
        public var accountId: String?

        public var createDate: String?

        public var displayName: String?

        public var id: String?

        public var name: String?

        public var regionStatuses: CreateResourceGroupResponseBody.ResourceGroup.RegionStatuses?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.regionStatuses?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.regionStatuses != nil {
                map["RegionStatuses"] = self.regionStatuses?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["RegionStatuses"] as? [String: Any?] {
                var model = CreateResourceGroupResponseBody.ResourceGroup.RegionStatuses()
                model.fromMap(value)
                self.regionStatuses = model
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var requestId: String?

    public var resourceGroup: CreateResourceGroupResponseBody.ResourceGroup?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroup != nil {
            map["ResourceGroup"] = self.resourceGroup?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroup"] as? [String: Any?] {
            var model = CreateResourceGroupResponseBody.ResourceGroup()
            model.fromMap(value)
            self.resourceGroup = model
        }
    }
}

public class CreateResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateResourceGroupResponseBody?

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
            var model = CreateResourceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRoleRequest : Tea.TeaModel {
    public var assumeRolePolicyDocument: String?

    public var description_: String?

    public var maxSessionDuration: Int64?

    public var roleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assumeRolePolicyDocument != nil {
            map["AssumeRolePolicyDocument"] = self.assumeRolePolicyDocument!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.maxSessionDuration != nil {
            map["MaxSessionDuration"] = self.maxSessionDuration!
        }
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssumeRolePolicyDocument"] as? String {
            self.assumeRolePolicyDocument = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["MaxSessionDuration"] as? Int64 {
            self.maxSessionDuration = value
        }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
        }
    }
}

public class CreateRoleResponseBody : Tea.TeaModel {
    public class Role : Tea.TeaModel {
        public var arn: String?

        public var assumeRolePolicyDocument: String?

        public var createDate: String?

        public var description_: String?

        public var maxSessionDuration: Int64?

        public var roleId: String?

        public var roleName: String?

        public var rolePrincipalName: String?

        public override init() {
            super.init()
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
            if self.assumeRolePolicyDocument != nil {
                map["AssumeRolePolicyDocument"] = self.assumeRolePolicyDocument!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.maxSessionDuration != nil {
                map["MaxSessionDuration"] = self.maxSessionDuration!
            }
            if self.roleId != nil {
                map["RoleId"] = self.roleId!
            }
            if self.roleName != nil {
                map["RoleName"] = self.roleName!
            }
            if self.rolePrincipalName != nil {
                map["RolePrincipalName"] = self.rolePrincipalName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Arn"] as? String {
                self.arn = value
            }
            if let value = dict["AssumeRolePolicyDocument"] as? String {
                self.assumeRolePolicyDocument = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["MaxSessionDuration"] as? Int64 {
                self.maxSessionDuration = value
            }
            if let value = dict["RoleId"] as? String {
                self.roleId = value
            }
            if let value = dict["RoleName"] as? String {
                self.roleName = value
            }
            if let value = dict["RolePrincipalName"] as? String {
                self.rolePrincipalName = value
            }
        }
    }
    public var requestId: String?

    public var role: CreateRoleResponseBody.Role?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.role?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.role != nil {
            map["Role"] = self.role?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Role"] as? [String: Any?] {
            var model = CreateRoleResponseBody.Role()
            model.fromMap(value)
            self.role = model
        }
    }
}

public class CreateRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRoleResponseBody?

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
            var model = CreateRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateServiceLinkedRoleRequest : Tea.TeaModel {
    public var customSuffix: String?

    public var description_: String?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customSuffix != nil {
            map["CustomSuffix"] = self.customSuffix!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomSuffix"] as? String {
            self.customSuffix = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
    }
}

public class CreateServiceLinkedRoleResponseBody : Tea.TeaModel {
    public class Role : Tea.TeaModel {
        public var arn: String?

        public var assumeRolePolicyDocument: String?

        public var createDate: String?

        public var description_: String?

        public var isServiceLinkedRole: Bool?

        public var roleId: String?

        public var roleName: String?

        public var rolePrincipalName: String?

        public override init() {
            super.init()
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
            if self.assumeRolePolicyDocument != nil {
                map["AssumeRolePolicyDocument"] = self.assumeRolePolicyDocument!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.isServiceLinkedRole != nil {
                map["IsServiceLinkedRole"] = self.isServiceLinkedRole!
            }
            if self.roleId != nil {
                map["RoleId"] = self.roleId!
            }
            if self.roleName != nil {
                map["RoleName"] = self.roleName!
            }
            if self.rolePrincipalName != nil {
                map["RolePrincipalName"] = self.rolePrincipalName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Arn"] as? String {
                self.arn = value
            }
            if let value = dict["AssumeRolePolicyDocument"] as? String {
                self.assumeRolePolicyDocument = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["IsServiceLinkedRole"] as? Bool {
                self.isServiceLinkedRole = value
            }
            if let value = dict["RoleId"] as? String {
                self.roleId = value
            }
            if let value = dict["RoleName"] as? String {
                self.roleName = value
            }
            if let value = dict["RolePrincipalName"] as? String {
                self.rolePrincipalName = value
            }
        }
    }
    public var requestId: String?

    public var role: CreateServiceLinkedRoleResponseBody.Role?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.role?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.role != nil {
            map["Role"] = self.role?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Role"] as? [String: Any?] {
            var model = CreateServiceLinkedRoleResponseBody.Role()
            model.fromMap(value)
            self.role = model
        }
    }
}

public class CreateServiceLinkedRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceLinkedRoleResponseBody?

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
            var model = CreateServiceLinkedRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeclineHandshakeRequest : Tea.TeaModel {
    public var handshakeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.handshakeId != nil {
            map["HandshakeId"] = self.handshakeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HandshakeId"] as? String {
            self.handshakeId = value
        }
    }
}

public class DeclineHandshakeResponseBody : Tea.TeaModel {
    public class Handshake : Tea.TeaModel {
        public var createTime: String?

        public var expireTime: String?

        public var handshakeId: String?

        public var masterAccountId: String?

        public var masterAccountName: String?

        public var modifyTime: String?

        public var note: String?

        public var resourceDirectoryId: String?

        public var status: String?

        public var targetEntity: String?

        public var targetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.handshakeId != nil {
                map["HandshakeId"] = self.handshakeId!
            }
            if self.masterAccountId != nil {
                map["MasterAccountId"] = self.masterAccountId!
            }
            if self.masterAccountName != nil {
                map["MasterAccountName"] = self.masterAccountName!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.note != nil {
                map["Note"] = self.note!
            }
            if self.resourceDirectoryId != nil {
                map["ResourceDirectoryId"] = self.resourceDirectoryId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.targetEntity != nil {
                map["TargetEntity"] = self.targetEntity!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["HandshakeId"] as? String {
                self.handshakeId = value
            }
            if let value = dict["MasterAccountId"] as? String {
                self.masterAccountId = value
            }
            if let value = dict["MasterAccountName"] as? String {
                self.masterAccountName = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["Note"] as? String {
                self.note = value
            }
            if let value = dict["ResourceDirectoryId"] as? String {
                self.resourceDirectoryId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TargetEntity"] as? String {
                self.targetEntity = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
        }
    }
    public var handshake: DeclineHandshakeResponseBody.Handshake?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.handshake?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.handshake != nil {
            map["Handshake"] = self.handshake?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Handshake"] as? [String: Any?] {
            var model = DeclineHandshakeResponseBody.Handshake()
            model.fromMap(value)
            self.handshake = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeclineHandshakeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeclineHandshakeResponseBody?

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
            var model = DeclineHandshakeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAccountRequest : Tea.TeaModel {
    public var abandonableCheckId: [String]?

    public var accountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.abandonableCheckId != nil {
            map["AbandonableCheckId"] = self.abandonableCheckId!
        }
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AbandonableCheckId"] as? [String] {
            self.abandonableCheckId = value
        }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
    }
}

public class DeleteAccountShrinkRequest : Tea.TeaModel {
    public var abandonableCheckIdShrink: String?

    public var accountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.abandonableCheckIdShrink != nil {
            map["AbandonableCheckId"] = self.abandonableCheckIdShrink!
        }
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AbandonableCheckId"] as? String {
            self.abandonableCheckIdShrink = value
        }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
    }
}

public class DeleteAccountResponseBody : Tea.TeaModel {
    public var deletionType: String?

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
        if self.deletionType != nil {
            map["DeletionType"] = self.deletionType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeletionType"] as? String {
            self.deletionType = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAccountResponseBody?

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
            var model = DeleteAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAutoGroupingRuleRequest : Tea.TeaModel {
    public var ruleId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
    }
}

public class DeleteAutoGroupingRuleResponseBody : Tea.TeaModel {
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

public class DeleteAutoGroupingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAutoGroupingRuleResponseBody?

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
            var model = DeleteAutoGroupingRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteControlPolicyRequest : Tea.TeaModel {
    public var policyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
    }
}

public class DeleteControlPolicyResponseBody : Tea.TeaModel {
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

public class DeleteControlPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteControlPolicyResponseBody?

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
            var model = DeleteControlPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFolderRequest : Tea.TeaModel {
    public var folderId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.folderId != nil {
            map["FolderId"] = self.folderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FolderId"] as? String {
            self.folderId = value
        }
    }
}

public class DeleteFolderResponseBody : Tea.TeaModel {
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

public class DeleteFolderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFolderResponseBody?

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
            var model = DeleteFolderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePolicyRequest : Tea.TeaModel {
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
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
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

public class DeletePolicyVersionRequest : Tea.TeaModel {
    public var policyName: String?

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
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
        }
    }
}

public class DeletePolicyVersionResponseBody : Tea.TeaModel {
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

public class DeletePolicyVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePolicyVersionResponseBody?

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
            var model = DeletePolicyVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteResourceGroupRequest : Tea.TeaModel {
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DeleteResourceGroupResponseBody : Tea.TeaModel {
    public class ResourceGroup : Tea.TeaModel {
        public class RegionStatuses : Tea.TeaModel {
            public class RegionStatus : Tea.TeaModel {
                public var regionId: String?

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
                    if self.regionId != nil {
                        map["RegionId"] = self.regionId!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RegionId"] as? String {
                        self.regionId = value
                    }
                    if let value = dict["Status"] as? String {
                        self.status = value
                    }
                }
            }
            public var regionStatus: [DeleteResourceGroupResponseBody.ResourceGroup.RegionStatuses.RegionStatus]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.regionStatus != nil {
                    var tmp : [Any] = []
                    for k in self.regionStatus! {
                        tmp.append(k.toMap())
                    }
                    map["RegionStatus"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RegionStatus"] as? [Any?] {
                    var tmp : [DeleteResourceGroupResponseBody.ResourceGroup.RegionStatuses.RegionStatus] = []
                    for v in value {
                        if v != nil {
                            var model = DeleteResourceGroupResponseBody.ResourceGroup.RegionStatuses.RegionStatus()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.regionStatus = tmp
                }
            }
        }
        public var accountId: String?

        public var createDate: String?

        public var displayName: String?

        public var id: String?

        public var name: String?

        public var regionStatuses: DeleteResourceGroupResponseBody.ResourceGroup.RegionStatuses?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.regionStatuses?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.regionStatuses != nil {
                map["RegionStatuses"] = self.regionStatuses?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["RegionStatuses"] as? [String: Any?] {
                var model = DeleteResourceGroupResponseBody.ResourceGroup.RegionStatuses()
                model.fromMap(value)
                self.regionStatuses = model
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var requestId: String?

    public var resourceGroup: DeleteResourceGroupResponseBody.ResourceGroup?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroup != nil {
            map["ResourceGroup"] = self.resourceGroup?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroup"] as? [String: Any?] {
            var model = DeleteResourceGroupResponseBody.ResourceGroup()
            model.fromMap(value)
            self.resourceGroup = model
        }
    }
}

public class DeleteResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteResourceGroupResponseBody?

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
            var model = DeleteResourceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteRoleRequest : Tea.TeaModel {
    public var roleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
        }
    }
}

public class DeleteRoleResponseBody : Tea.TeaModel {
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

public class DeleteRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRoleResponseBody?

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
            var model = DeleteRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteServiceLinkedRoleRequest : Tea.TeaModel {
    public var roleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
        }
    }
}

public class DeleteServiceLinkedRoleResponseBody : Tea.TeaModel {
    public var deletionTaskId: String?

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
        if self.deletionTaskId != nil {
            map["DeletionTaskId"] = self.deletionTaskId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeletionTaskId"] as? String {
            self.deletionTaskId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteServiceLinkedRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteServiceLinkedRoleResponseBody?

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
            var model = DeleteServiceLinkedRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeregisterDelegatedAdministratorRequest : Tea.TeaModel {
    public var accountId: String?

    public var servicePrincipal: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.servicePrincipal != nil {
            map["ServicePrincipal"] = self.servicePrincipal!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["ServicePrincipal"] as? String {
            self.servicePrincipal = value
        }
    }
}

public class DeregisterDelegatedAdministratorResponseBody : Tea.TeaModel {
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

public class DeregisterDelegatedAdministratorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeregisterDelegatedAdministratorResponseBody?

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
            var model = DeregisterDelegatedAdministratorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DestroyResourceDirectoryResponseBody : Tea.TeaModel {
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

public class DestroyResourceDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DestroyResourceDirectoryResponseBody?

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
            var model = DestroyResourceDirectoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetachControlPolicyRequest : Tea.TeaModel {
    public var policyId: String?

    public var targetId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        if self.targetId != nil {
            map["TargetId"] = self.targetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
        if let value = dict["TargetId"] as? String {
            self.targetId = value
        }
    }
}

public class DetachControlPolicyResponseBody : Tea.TeaModel {
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

public class DetachControlPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachControlPolicyResponseBody?

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
            var model = DetachControlPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetachPolicyRequest : Tea.TeaModel {
    public var policyName: String?

    public var policyType: String?

    public var principalName: String?

    public var principalType: String?

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
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        if self.principalName != nil {
            map["PrincipalName"] = self.principalName!
        }
        if self.principalType != nil {
            map["PrincipalType"] = self.principalType!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
        if let value = dict["PrincipalName"] as? String {
            self.principalName = value
        }
        if let value = dict["PrincipalType"] as? String {
            self.principalType = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DetachPolicyResponseBody : Tea.TeaModel {
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

public class DetachPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachPolicyResponseBody?

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
            var model = DetachPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableAssociatedTransferResponseBody : Tea.TeaModel {
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

public class DisableAssociatedTransferResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableAssociatedTransferResponseBody?

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
            var model = DisableAssociatedTransferResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableAutoGroupingResponseBody : Tea.TeaModel {
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

public class DisableAutoGroupingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableAutoGroupingResponseBody?

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
            var model = DisableAutoGroupingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableControlPolicyResponseBody : Tea.TeaModel {
    public var enablementStatus: String?

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
        if self.enablementStatus != nil {
            map["EnablementStatus"] = self.enablementStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnablementStatus"] as? String {
            self.enablementStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DisableControlPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableControlPolicyResponseBody?

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
            var model = DisableControlPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableResourceGroupNotificationResponseBody : Tea.TeaModel {
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

public class DisableResourceGroupNotificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableResourceGroupNotificationResponseBody?

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
            var model = DisableResourceGroupNotificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableAssociatedTransferResponseBody : Tea.TeaModel {
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

public class EnableAssociatedTransferResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableAssociatedTransferResponseBody?

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
            var model = EnableAssociatedTransferResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableAutoGroupingResponseBody : Tea.TeaModel {
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

public class EnableAutoGroupingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableAutoGroupingResponseBody?

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
            var model = EnableAutoGroupingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableControlPolicyResponseBody : Tea.TeaModel {
    public var enablementStatus: String?

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
        if self.enablementStatus != nil {
            map["EnablementStatus"] = self.enablementStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnablementStatus"] as? String {
            self.enablementStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class EnableControlPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableControlPolicyResponseBody?

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
            var model = EnableControlPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableResourceDirectoryRequest : Tea.TeaModel {
    public var enableMode: String?

    public var MAName: String?

    public var MASecureMobilePhone: String?

    public var verificationCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enableMode != nil {
            map["EnableMode"] = self.enableMode!
        }
        if self.MAName != nil {
            map["MAName"] = self.MAName!
        }
        if self.MASecureMobilePhone != nil {
            map["MASecureMobilePhone"] = self.MASecureMobilePhone!
        }
        if self.verificationCode != nil {
            map["VerificationCode"] = self.verificationCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnableMode"] as? String {
            self.enableMode = value
        }
        if let value = dict["MAName"] as? String {
            self.MAName = value
        }
        if let value = dict["MASecureMobilePhone"] as? String {
            self.MASecureMobilePhone = value
        }
        if let value = dict["VerificationCode"] as? String {
            self.verificationCode = value
        }
    }
}

public class EnableResourceDirectoryResponseBody : Tea.TeaModel {
    public class ResourceDirectory : Tea.TeaModel {
        public var createTime: String?

        public var masterAccountId: String?

        public var masterAccountName: String?

        public var resourceDirectoryId: String?

        public var rootFolderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.masterAccountId != nil {
                map["MasterAccountId"] = self.masterAccountId!
            }
            if self.masterAccountName != nil {
                map["MasterAccountName"] = self.masterAccountName!
            }
            if self.resourceDirectoryId != nil {
                map["ResourceDirectoryId"] = self.resourceDirectoryId!
            }
            if self.rootFolderId != nil {
                map["RootFolderId"] = self.rootFolderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["MasterAccountId"] as? String {
                self.masterAccountId = value
            }
            if let value = dict["MasterAccountName"] as? String {
                self.masterAccountName = value
            }
            if let value = dict["ResourceDirectoryId"] as? String {
                self.resourceDirectoryId = value
            }
            if let value = dict["RootFolderId"] as? String {
                self.rootFolderId = value
            }
        }
    }
    public var requestId: String?

    public var resourceDirectory: EnableResourceDirectoryResponseBody.ResourceDirectory?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceDirectory?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceDirectory != nil {
            map["ResourceDirectory"] = self.resourceDirectory?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceDirectory"] as? [String: Any?] {
            var model = EnableResourceDirectoryResponseBody.ResourceDirectory()
            model.fromMap(value)
            self.resourceDirectory = model
        }
    }
}

public class EnableResourceDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableResourceDirectoryResponseBody?

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
            var model = EnableResourceDirectoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableResourceGroupNotificationResponseBody : Tea.TeaModel {
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

public class EnableResourceGroupNotificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableResourceGroupNotificationResponseBody?

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
            var model = EnableResourceGroupNotificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAccountRequest : Tea.TeaModel {
    public var accountId: String?

    public var includeTags: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.includeTags != nil {
            map["IncludeTags"] = self.includeTags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["IncludeTags"] as? Bool {
            self.includeTags = value
        }
    }
}

public class GetAccountResponseBody : Tea.TeaModel {
    public class Account : Tea.TeaModel {
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
        public var accountId: String?

        public var accountName: String?

        public var displayName: String?

        public var emailStatus: String?

        public var folderId: String?

        public var identityInformation: String?

        public var joinMethod: String?

        public var joinTime: String?

        public var location: String?

        public var modifyTime: String?

        public var resourceDirectoryId: String?

        public var resourceDirectoryPath: String?

        public var status: String?

        public var tags: [GetAccountResponseBody.Account.Tags]?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.emailStatus != nil {
                map["EmailStatus"] = self.emailStatus!
            }
            if self.folderId != nil {
                map["FolderId"] = self.folderId!
            }
            if self.identityInformation != nil {
                map["IdentityInformation"] = self.identityInformation!
            }
            if self.joinMethod != nil {
                map["JoinMethod"] = self.joinMethod!
            }
            if self.joinTime != nil {
                map["JoinTime"] = self.joinTime!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.resourceDirectoryId != nil {
                map["ResourceDirectoryId"] = self.resourceDirectoryId!
            }
            if self.resourceDirectoryPath != nil {
                map["ResourceDirectoryPath"] = self.resourceDirectoryPath!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["AccountName"] as? String {
                self.accountName = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["EmailStatus"] as? String {
                self.emailStatus = value
            }
            if let value = dict["FolderId"] as? String {
                self.folderId = value
            }
            if let value = dict["IdentityInformation"] as? String {
                self.identityInformation = value
            }
            if let value = dict["JoinMethod"] as? String {
                self.joinMethod = value
            }
            if let value = dict["JoinTime"] as? String {
                self.joinTime = value
            }
            if let value = dict["Location"] as? String {
                self.location = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["ResourceDirectoryId"] as? String {
                self.resourceDirectoryId = value
            }
            if let value = dict["ResourceDirectoryPath"] as? String {
                self.resourceDirectoryPath = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [GetAccountResponseBody.Account.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetAccountResponseBody.Account.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var account: GetAccountResponseBody.Account?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.account?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.account != nil {
            map["Account"] = self.account?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? [String: Any?] {
            var model = GetAccountResponseBody.Account()
            model.fromMap(value)
            self.account = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccountResponseBody?

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
            var model = GetAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAccountDeletionCheckResultRequest : Tea.TeaModel {
    public var accountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
    }
}

public class GetAccountDeletionCheckResultResponseBody : Tea.TeaModel {
    public class AccountDeletionCheckResultInfo : Tea.TeaModel {
        public class AbandonableChecks : Tea.TeaModel {
            public var checkId: String?

            public var checkName: String?

            public var description_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.checkId != nil {
                    map["CheckId"] = self.checkId!
                }
                if self.checkName != nil {
                    map["CheckName"] = self.checkName!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheckId"] as? String {
                    self.checkId = value
                }
                if let value = dict["CheckName"] as? String {
                    self.checkName = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
            }
        }
        public class NotAllowReason : Tea.TeaModel {
            public var checkId: String?

            public var checkName: String?

            public var description_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.checkId != nil {
                    map["CheckId"] = self.checkId!
                }
                if self.checkName != nil {
                    map["CheckName"] = self.checkName!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheckId"] as? String {
                    self.checkId = value
                }
                if let value = dict["CheckName"] as? String {
                    self.checkName = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
            }
        }
        public var abandonableChecks: [GetAccountDeletionCheckResultResponseBody.AccountDeletionCheckResultInfo.AbandonableChecks]?

        public var allowDelete: String?

        public var notAllowReason: [GetAccountDeletionCheckResultResponseBody.AccountDeletionCheckResultInfo.NotAllowReason]?

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
            if self.abandonableChecks != nil {
                var tmp : [Any] = []
                for k in self.abandonableChecks! {
                    tmp.append(k.toMap())
                }
                map["AbandonableChecks"] = tmp
            }
            if self.allowDelete != nil {
                map["AllowDelete"] = self.allowDelete!
            }
            if self.notAllowReason != nil {
                var tmp : [Any] = []
                for k in self.notAllowReason! {
                    tmp.append(k.toMap())
                }
                map["NotAllowReason"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AbandonableChecks"] as? [Any?] {
                var tmp : [GetAccountDeletionCheckResultResponseBody.AccountDeletionCheckResultInfo.AbandonableChecks] = []
                for v in value {
                    if v != nil {
                        var model = GetAccountDeletionCheckResultResponseBody.AccountDeletionCheckResultInfo.AbandonableChecks()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.abandonableChecks = tmp
            }
            if let value = dict["AllowDelete"] as? String {
                self.allowDelete = value
            }
            if let value = dict["NotAllowReason"] as? [Any?] {
                var tmp : [GetAccountDeletionCheckResultResponseBody.AccountDeletionCheckResultInfo.NotAllowReason] = []
                for v in value {
                    if v != nil {
                        var model = GetAccountDeletionCheckResultResponseBody.AccountDeletionCheckResultInfo.NotAllowReason()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.notAllowReason = tmp
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var accountDeletionCheckResultInfo: GetAccountDeletionCheckResultResponseBody.AccountDeletionCheckResultInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountDeletionCheckResultInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountDeletionCheckResultInfo != nil {
            map["AccountDeletionCheckResultInfo"] = self.accountDeletionCheckResultInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountDeletionCheckResultInfo"] as? [String: Any?] {
            var model = GetAccountDeletionCheckResultResponseBody.AccountDeletionCheckResultInfo()
            model.fromMap(value)
            self.accountDeletionCheckResultInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAccountDeletionCheckResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccountDeletionCheckResultResponseBody?

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
            var model = GetAccountDeletionCheckResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAccountDeletionStatusRequest : Tea.TeaModel {
    public var accountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
    }
}

public class GetAccountDeletionStatusResponseBody : Tea.TeaModel {
    public class RdAccountDeletionStatus : Tea.TeaModel {
        public class FailReasonList : Tea.TeaModel {
            public var description_: String?

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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
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
            }
        }
        public var accountId: String?

        public var createTime: String?

        public var deletionTime: String?

        public var deletionType: String?

        public var failReasonList: [GetAccountDeletionStatusResponseBody.RdAccountDeletionStatus.FailReasonList]?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deletionTime != nil {
                map["DeletionTime"] = self.deletionTime!
            }
            if self.deletionType != nil {
                map["DeletionType"] = self.deletionType!
            }
            if self.failReasonList != nil {
                var tmp : [Any] = []
                for k in self.failReasonList! {
                    tmp.append(k.toMap())
                }
                map["FailReasonList"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DeletionTime"] as? String {
                self.deletionTime = value
            }
            if let value = dict["DeletionType"] as? String {
                self.deletionType = value
            }
            if let value = dict["FailReasonList"] as? [Any?] {
                var tmp : [GetAccountDeletionStatusResponseBody.RdAccountDeletionStatus.FailReasonList] = []
                for v in value {
                    if v != nil {
                        var model = GetAccountDeletionStatusResponseBody.RdAccountDeletionStatus.FailReasonList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.failReasonList = tmp
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var rdAccountDeletionStatus: GetAccountDeletionStatusResponseBody.RdAccountDeletionStatus?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.rdAccountDeletionStatus?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.rdAccountDeletionStatus != nil {
            map["RdAccountDeletionStatus"] = self.rdAccountDeletionStatus?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RdAccountDeletionStatus"] as? [String: Any?] {
            var model = GetAccountDeletionStatusResponseBody.RdAccountDeletionStatus()
            model.fromMap(value)
            self.rdAccountDeletionStatus = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAccountDeletionStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccountDeletionStatusResponseBody?

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
            var model = GetAccountDeletionStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAutoGroupingRuleRequest : Tea.TeaModel {
    public var ruleId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
    }
}

public class GetAutoGroupingRuleResponseBody : Tea.TeaModel {
    public class Rule : Tea.TeaModel {
        public class RuleContents : Tea.TeaModel {
            public var autoGroupingScopeCondition: String?

            public var ruleContentId: String?

            public var targetResourceGroupCondition: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoGroupingScopeCondition != nil {
                    map["AutoGroupingScopeCondition"] = self.autoGroupingScopeCondition!
                }
                if self.ruleContentId != nil {
                    map["RuleContentId"] = self.ruleContentId!
                }
                if self.targetResourceGroupCondition != nil {
                    map["TargetResourceGroupCondition"] = self.targetResourceGroupCondition!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutoGroupingScopeCondition"] as? String {
                    self.autoGroupingScopeCondition = value
                }
                if let value = dict["RuleContentId"] as? String {
                    self.ruleContentId = value
                }
                if let value = dict["TargetResourceGroupCondition"] as? String {
                    self.targetResourceGroupCondition = value
                }
            }
        }
        public var createTime: String?

        public var excludeRegionIdsScope: String?

        public var excludeResourceGroupIdsScope: String?

        public var excludeResourceIdsScope: String?

        public var excludeResourceTypesScope: String?

        public var modifyTime: String?

        public var regionIdsScope: String?

        public var resourceGroupIdsScope: String?

        public var resourceIdsScope: String?

        public var resourceTypesScope: String?

        public var ruleContents: [GetAutoGroupingRuleResponseBody.Rule.RuleContents]?

        public var ruleDesc: String?

        public var ruleId: String?

        public var ruleName: String?

        public var ruleType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.excludeRegionIdsScope != nil {
                map["ExcludeRegionIdsScope"] = self.excludeRegionIdsScope!
            }
            if self.excludeResourceGroupIdsScope != nil {
                map["ExcludeResourceGroupIdsScope"] = self.excludeResourceGroupIdsScope!
            }
            if self.excludeResourceIdsScope != nil {
                map["ExcludeResourceIdsScope"] = self.excludeResourceIdsScope!
            }
            if self.excludeResourceTypesScope != nil {
                map["ExcludeResourceTypesScope"] = self.excludeResourceTypesScope!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.regionIdsScope != nil {
                map["RegionIdsScope"] = self.regionIdsScope!
            }
            if self.resourceGroupIdsScope != nil {
                map["ResourceGroupIdsScope"] = self.resourceGroupIdsScope!
            }
            if self.resourceIdsScope != nil {
                map["ResourceIdsScope"] = self.resourceIdsScope!
            }
            if self.resourceTypesScope != nil {
                map["ResourceTypesScope"] = self.resourceTypesScope!
            }
            if self.ruleContents != nil {
                var tmp : [Any] = []
                for k in self.ruleContents! {
                    tmp.append(k.toMap())
                }
                map["RuleContents"] = tmp
            }
            if self.ruleDesc != nil {
                map["RuleDesc"] = self.ruleDesc!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.ruleType != nil {
                map["RuleType"] = self.ruleType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ExcludeRegionIdsScope"] as? String {
                self.excludeRegionIdsScope = value
            }
            if let value = dict["ExcludeResourceGroupIdsScope"] as? String {
                self.excludeResourceGroupIdsScope = value
            }
            if let value = dict["ExcludeResourceIdsScope"] as? String {
                self.excludeResourceIdsScope = value
            }
            if let value = dict["ExcludeResourceTypesScope"] as? String {
                self.excludeResourceTypesScope = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["RegionIdsScope"] as? String {
                self.regionIdsScope = value
            }
            if let value = dict["ResourceGroupIdsScope"] as? String {
                self.resourceGroupIdsScope = value
            }
            if let value = dict["ResourceIdsScope"] as? String {
                self.resourceIdsScope = value
            }
            if let value = dict["ResourceTypesScope"] as? String {
                self.resourceTypesScope = value
            }
            if let value = dict["RuleContents"] as? [Any?] {
                var tmp : [GetAutoGroupingRuleResponseBody.Rule.RuleContents] = []
                for v in value {
                    if v != nil {
                        var model = GetAutoGroupingRuleResponseBody.Rule.RuleContents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ruleContents = tmp
            }
            if let value = dict["RuleDesc"] as? String {
                self.ruleDesc = value
            }
            if let value = dict["RuleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["RuleType"] as? String {
                self.ruleType = value
            }
        }
    }
    public var requestId: String?

    public var rule: GetAutoGroupingRuleResponseBody.Rule?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.rule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rule != nil {
            map["Rule"] = self.rule?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Rule"] as? [String: Any?] {
            var model = GetAutoGroupingRuleResponseBody.Rule()
            model.fromMap(value)
            self.rule = model
        }
    }
}

public class GetAutoGroupingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAutoGroupingRuleResponseBody?

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
            var model = GetAutoGroupingRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAutoGroupingStatusResponseBody : Tea.TeaModel {
    public var enableExistedResourcesTransfer: Bool?

    public var enableStatus: String?

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
        if self.enableExistedResourcesTransfer != nil {
            map["EnableExistedResourcesTransfer"] = self.enableExistedResourcesTransfer!
        }
        if self.enableStatus != nil {
            map["EnableStatus"] = self.enableStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnableExistedResourcesTransfer"] as? Bool {
            self.enableExistedResourcesTransfer = value
        }
        if let value = dict["EnableStatus"] as? String {
            self.enableStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAutoGroupingStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAutoGroupingStatusResponseBody?

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
            var model = GetAutoGroupingStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetControlPolicyRequest : Tea.TeaModel {
    public var language: String?

    public var policyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
    }
}

public class GetControlPolicyResponseBody : Tea.TeaModel {
    public class ControlPolicy : Tea.TeaModel {
        public var attachmentCount: String?

        public var createDate: String?

        public var description_: String?

        public var effectScope: String?

        public var policyDocument: String?

        public var policyId: String?

        public var policyName: String?

        public var policyType: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attachmentCount != nil {
                map["AttachmentCount"] = self.attachmentCount!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.effectScope != nil {
                map["EffectScope"] = self.effectScope!
            }
            if self.policyDocument != nil {
                map["PolicyDocument"] = self.policyDocument!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.policyName != nil {
                map["PolicyName"] = self.policyName!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttachmentCount"] as? String {
                self.attachmentCount = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EffectScope"] as? String {
                self.effectScope = value
            }
            if let value = dict["PolicyDocument"] as? String {
                self.policyDocument = value
            }
            if let value = dict["PolicyId"] as? String {
                self.policyId = value
            }
            if let value = dict["PolicyName"] as? String {
                self.policyName = value
            }
            if let value = dict["PolicyType"] as? String {
                self.policyType = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var controlPolicy: GetControlPolicyResponseBody.ControlPolicy?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.controlPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.controlPolicy != nil {
            map["ControlPolicy"] = self.controlPolicy?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ControlPolicy"] as? [String: Any?] {
            var model = GetControlPolicyResponseBody.ControlPolicy()
            model.fromMap(value)
            self.controlPolicy = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetControlPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetControlPolicyResponseBody?

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
            var model = GetControlPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetControlPolicyEnablementStatusResponseBody : Tea.TeaModel {
    public var enablementStatus: String?

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
        if self.enablementStatus != nil {
            map["EnablementStatus"] = self.enablementStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnablementStatus"] as? String {
            self.enablementStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetControlPolicyEnablementStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetControlPolicyEnablementStatusResponseBody?

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
            var model = GetControlPolicyEnablementStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFolderRequest : Tea.TeaModel {
    public var folderId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.folderId != nil {
            map["FolderId"] = self.folderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FolderId"] as? String {
            self.folderId = value
        }
    }
}

public class GetFolderResponseBody : Tea.TeaModel {
    public class Folder : Tea.TeaModel {
        public var createTime: String?

        public var folderId: String?

        public var folderName: String?

        public var parentFolderId: String?

        public var resourceDirectoryPath: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.folderId != nil {
                map["FolderId"] = self.folderId!
            }
            if self.folderName != nil {
                map["FolderName"] = self.folderName!
            }
            if self.parentFolderId != nil {
                map["ParentFolderId"] = self.parentFolderId!
            }
            if self.resourceDirectoryPath != nil {
                map["ResourceDirectoryPath"] = self.resourceDirectoryPath!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["FolderId"] as? String {
                self.folderId = value
            }
            if let value = dict["FolderName"] as? String {
                self.folderName = value
            }
            if let value = dict["ParentFolderId"] as? String {
                self.parentFolderId = value
            }
            if let value = dict["ResourceDirectoryPath"] as? String {
                self.resourceDirectoryPath = value
            }
        }
    }
    public var folder: GetFolderResponseBody.Folder?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.folder?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.folder != nil {
            map["Folder"] = self.folder?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Folder"] as? [String: Any?] {
            var model = GetFolderResponseBody.Folder()
            model.fromMap(value)
            self.folder = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetFolderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFolderResponseBody?

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
            var model = GetFolderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetHandshakeRequest : Tea.TeaModel {
    public var handshakeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.handshakeId != nil {
            map["HandshakeId"] = self.handshakeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HandshakeId"] as? String {
            self.handshakeId = value
        }
    }
}

public class GetHandshakeResponseBody : Tea.TeaModel {
    public class Handshake : Tea.TeaModel {
        public var createTime: String?

        public var expireTime: String?

        public var handshakeId: String?

        public var invitedAccountRealName: String?

        public var masterAccountId: String?

        public var masterAccountName: String?

        public var masterAccountRealName: String?

        public var modifyTime: String?

        public var note: String?

        public var resourceDirectoryId: String?

        public var status: String?

        public var targetEntity: String?

        public var targetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.handshakeId != nil {
                map["HandshakeId"] = self.handshakeId!
            }
            if self.invitedAccountRealName != nil {
                map["InvitedAccountRealName"] = self.invitedAccountRealName!
            }
            if self.masterAccountId != nil {
                map["MasterAccountId"] = self.masterAccountId!
            }
            if self.masterAccountName != nil {
                map["MasterAccountName"] = self.masterAccountName!
            }
            if self.masterAccountRealName != nil {
                map["MasterAccountRealName"] = self.masterAccountRealName!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.note != nil {
                map["Note"] = self.note!
            }
            if self.resourceDirectoryId != nil {
                map["ResourceDirectoryId"] = self.resourceDirectoryId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.targetEntity != nil {
                map["TargetEntity"] = self.targetEntity!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["HandshakeId"] as? String {
                self.handshakeId = value
            }
            if let value = dict["InvitedAccountRealName"] as? String {
                self.invitedAccountRealName = value
            }
            if let value = dict["MasterAccountId"] as? String {
                self.masterAccountId = value
            }
            if let value = dict["MasterAccountName"] as? String {
                self.masterAccountName = value
            }
            if let value = dict["MasterAccountRealName"] as? String {
                self.masterAccountRealName = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["Note"] as? String {
                self.note = value
            }
            if let value = dict["ResourceDirectoryId"] as? String {
                self.resourceDirectoryId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TargetEntity"] as? String {
                self.targetEntity = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
        }
    }
    public var handshake: GetHandshakeResponseBody.Handshake?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.handshake?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.handshake != nil {
            map["Handshake"] = self.handshake?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Handshake"] as? [String: Any?] {
            var model = GetHandshakeResponseBody.Handshake()
            model.fromMap(value)
            self.handshake = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetHandshakeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHandshakeResponseBody?

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
            var model = GetHandshakeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPayerForAccountRequest : Tea.TeaModel {
    public var accountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
    }
}

public class GetPayerForAccountResponseBody : Tea.TeaModel {
    public var payerAccountId: String?

    public var payerAccountName: String?

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
        if self.payerAccountId != nil {
            map["PayerAccountId"] = self.payerAccountId!
        }
        if self.payerAccountName != nil {
            map["PayerAccountName"] = self.payerAccountName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PayerAccountId"] as? String {
            self.payerAccountId = value
        }
        if let value = dict["PayerAccountName"] as? String {
            self.payerAccountName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPayerForAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPayerForAccountResponseBody?

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
            var model = GetPayerForAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPolicyRequest : Tea.TeaModel {
    public var language: String?

    public var policyName: String?

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
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
    }
}

public class GetPolicyResponseBody : Tea.TeaModel {
    public class Policy : Tea.TeaModel {
        public var attachmentCount: Int32?

        public var createDate: String?

        public var defaultVersion: String?

        public var description_: String?

        public var policyDocument: String?

        public var policyName: String?

        public var policyType: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attachmentCount != nil {
                map["AttachmentCount"] = self.attachmentCount!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.defaultVersion != nil {
                map["DefaultVersion"] = self.defaultVersion!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.policyDocument != nil {
                map["PolicyDocument"] = self.policyDocument!
            }
            if self.policyName != nil {
                map["PolicyName"] = self.policyName!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttachmentCount"] as? Int32 {
                self.attachmentCount = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DefaultVersion"] as? String {
                self.defaultVersion = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["PolicyDocument"] as? String {
                self.policyDocument = value
            }
            if let value = dict["PolicyName"] as? String {
                self.policyName = value
            }
            if let value = dict["PolicyType"] as? String {
                self.policyType = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var policy: GetPolicyResponseBody.Policy?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policy != nil {
            map["Policy"] = self.policy?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Policy"] as? [String: Any?] {
            var model = GetPolicyResponseBody.Policy()
            model.fromMap(value)
            self.policy = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPolicyResponseBody?

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
            var model = GetPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPolicyVersionRequest : Tea.TeaModel {
    public var policyName: String?

    public var policyType: String?

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
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
        }
    }
}

public class GetPolicyVersionResponseBody : Tea.TeaModel {
    public class PolicyVersion : Tea.TeaModel {
        public var createDate: String?

        public var isDefaultVersion: Bool?

        public var policyDocument: String?

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
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.isDefaultVersion != nil {
                map["IsDefaultVersion"] = self.isDefaultVersion!
            }
            if self.policyDocument != nil {
                map["PolicyDocument"] = self.policyDocument!
            }
            if self.versionId != nil {
                map["VersionId"] = self.versionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["IsDefaultVersion"] as? Bool {
                self.isDefaultVersion = value
            }
            if let value = dict["PolicyDocument"] as? String {
                self.policyDocument = value
            }
            if let value = dict["VersionId"] as? String {
                self.versionId = value
            }
        }
    }
    public var policyVersion: GetPolicyVersionResponseBody.PolicyVersion?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policyVersion?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyVersion != nil {
            map["PolicyVersion"] = self.policyVersion?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyVersion"] as? [String: Any?] {
            var model = GetPolicyVersionResponseBody.PolicyVersion()
            model.fromMap(value)
            self.policyVersion = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPolicyVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPolicyVersionResponseBody?

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
            var model = GetPolicyVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetResourceDirectoryResponseBody : Tea.TeaModel {
    public class ResourceDirectory : Tea.TeaModel {
        public var controlPolicyStatus: String?

        public var createTime: String?

        public var identityInformation: String?

        public var masterAccountId: String?

        public var masterAccountName: String?

        public var memberDeletionStatus: String?

        public var resourceDirectoryId: String?

        public var rootFolderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.controlPolicyStatus != nil {
                map["ControlPolicyStatus"] = self.controlPolicyStatus!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.identityInformation != nil {
                map["IdentityInformation"] = self.identityInformation!
            }
            if self.masterAccountId != nil {
                map["MasterAccountId"] = self.masterAccountId!
            }
            if self.masterAccountName != nil {
                map["MasterAccountName"] = self.masterAccountName!
            }
            if self.memberDeletionStatus != nil {
                map["MemberDeletionStatus"] = self.memberDeletionStatus!
            }
            if self.resourceDirectoryId != nil {
                map["ResourceDirectoryId"] = self.resourceDirectoryId!
            }
            if self.rootFolderId != nil {
                map["RootFolderId"] = self.rootFolderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ControlPolicyStatus"] as? String {
                self.controlPolicyStatus = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["IdentityInformation"] as? String {
                self.identityInformation = value
            }
            if let value = dict["MasterAccountId"] as? String {
                self.masterAccountId = value
            }
            if let value = dict["MasterAccountName"] as? String {
                self.masterAccountName = value
            }
            if let value = dict["MemberDeletionStatus"] as? String {
                self.memberDeletionStatus = value
            }
            if let value = dict["ResourceDirectoryId"] as? String {
                self.resourceDirectoryId = value
            }
            if let value = dict["RootFolderId"] as? String {
                self.rootFolderId = value
            }
        }
    }
    public var requestId: String?

    public var resourceDirectory: GetResourceDirectoryResponseBody.ResourceDirectory?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceDirectory?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceDirectory != nil {
            map["ResourceDirectory"] = self.resourceDirectory?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceDirectory"] as? [String: Any?] {
            var model = GetResourceDirectoryResponseBody.ResourceDirectory()
            model.fromMap(value)
            self.resourceDirectory = model
        }
    }
}

public class GetResourceDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceDirectoryResponseBody?

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
            var model = GetResourceDirectoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetResourceGroupRequest : Tea.TeaModel {
    public var includeTags: Bool?

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
        if self.includeTags != nil {
            map["IncludeTags"] = self.includeTags!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IncludeTags"] as? Bool {
            self.includeTags = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class GetResourceGroupResponseBody : Tea.TeaModel {
    public class ResourceGroup : Tea.TeaModel {
        public class RegionStatuses : Tea.TeaModel {
            public class RegionStatus : Tea.TeaModel {
                public var regionId: String?

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
                    if self.regionId != nil {
                        map["RegionId"] = self.regionId!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RegionId"] as? String {
                        self.regionId = value
                    }
                    if let value = dict["Status"] as? String {
                        self.status = value
                    }
                }
            }
            public var regionStatus: [GetResourceGroupResponseBody.ResourceGroup.RegionStatuses.RegionStatus]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.regionStatus != nil {
                    var tmp : [Any] = []
                    for k in self.regionStatus! {
                        tmp.append(k.toMap())
                    }
                    map["RegionStatus"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RegionStatus"] as? [Any?] {
                    var tmp : [GetResourceGroupResponseBody.ResourceGroup.RegionStatuses.RegionStatus] = []
                    for v in value {
                        if v != nil {
                            var model = GetResourceGroupResponseBody.ResourceGroup.RegionStatuses.RegionStatus()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.regionStatus = tmp
                }
            }
        }
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
            public var tag: [GetResourceGroupResponseBody.ResourceGroup.Tags.Tag]?

            public override init() {
                super.init()
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
                    var tmp : [GetResourceGroupResponseBody.ResourceGroup.Tags.Tag] = []
                    for v in value {
                        if v != nil {
                            var model = GetResourceGroupResponseBody.ResourceGroup.Tags.Tag()
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
        public var accountId: String?

        public var createDate: String?

        public var displayName: String?

        public var id: String?

        public var name: String?

        public var regionStatuses: GetResourceGroupResponseBody.ResourceGroup.RegionStatuses?

        public var status: String?

        public var tags: GetResourceGroupResponseBody.ResourceGroup.Tags?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.regionStatuses?.validate()
            try self.tags?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.regionStatuses != nil {
                map["RegionStatuses"] = self.regionStatuses?.toMap()
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tags != nil {
                map["Tags"] = self.tags?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["RegionStatuses"] as? [String: Any?] {
                var model = GetResourceGroupResponseBody.ResourceGroup.RegionStatuses()
                model.fromMap(value)
                self.regionStatuses = model
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [String: Any?] {
                var model = GetResourceGroupResponseBody.ResourceGroup.Tags()
                model.fromMap(value)
                self.tags = model
            }
        }
    }
    public var requestId: String?

    public var resourceGroup: GetResourceGroupResponseBody.ResourceGroup?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroup != nil {
            map["ResourceGroup"] = self.resourceGroup?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroup"] as? [String: Any?] {
            var model = GetResourceGroupResponseBody.ResourceGroup()
            model.fromMap(value)
            self.resourceGroup = model
        }
    }
}

public class GetResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceGroupResponseBody?

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
            var model = GetResourceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetResourceGroupAdminSettingResponseBody : Tea.TeaModel {
    public var creatorAsAdmin: Bool?

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
        if self.creatorAsAdmin != nil {
            map["CreatorAsAdmin"] = self.creatorAsAdmin!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatorAsAdmin"] as? Bool {
            self.creatorAsAdmin = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetResourceGroupAdminSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceGroupAdminSettingResponseBody?

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
            var model = GetResourceGroupAdminSettingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetResourceGroupNotificationSettingResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resourceGroupNotificationEnableStatus: Bool?

    public override init() {
        super.init()
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
        if self.resourceGroupNotificationEnableStatus != nil {
            map["ResourceGroupNotificationEnableStatus"] = self.resourceGroupNotificationEnableStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupNotificationEnableStatus"] as? Bool {
            self.resourceGroupNotificationEnableStatus = value
        }
    }
}

public class GetResourceGroupNotificationSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceGroupNotificationSettingResponseBody?

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
            var model = GetResourceGroupNotificationSettingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetResourceGroupResourceCountsRequest : Tea.TeaModel {
    public class ResourceTypes : Tea.TeaModel {
        public var resourceTypeCode: String?

        public var service: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resourceTypeCode != nil {
                map["ResourceTypeCode"] = self.resourceTypeCode!
            }
            if self.service != nil {
                map["Service"] = self.service!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceTypeCode"] as? String {
                self.resourceTypeCode = value
            }
            if let value = dict["Service"] as? String {
                self.service = value
            }
        }
    }
    public var groupByKey: String?

    public var resourceGroupId: String?

    public var resourceRegionId: String?

    public var resourceTypes: [GetResourceGroupResourceCountsRequest.ResourceTypes]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupByKey != nil {
            map["GroupByKey"] = self.groupByKey!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        if self.resourceTypes != nil {
            var tmp : [Any] = []
            for k in self.resourceTypes! {
                tmp.append(k.toMap())
            }
            map["ResourceTypes"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupByKey"] as? String {
            self.groupByKey = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceRegionId"] as? String {
            self.resourceRegionId = value
        }
        if let value = dict["ResourceTypes"] as? [Any?] {
            var tmp : [GetResourceGroupResourceCountsRequest.ResourceTypes] = []
            for v in value {
                if v != nil {
                    var model = GetResourceGroupResourceCountsRequest.ResourceTypes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceTypes = tmp
        }
    }
}

public class GetResourceGroupResourceCountsResponseBody : Tea.TeaModel {
    public class ResourceCounts : Tea.TeaModel {
        public var count: Int64?

        public var groupByKey: String?

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
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.groupByKey != nil {
                map["GroupByKey"] = self.groupByKey!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int64 {
                self.count = value
            }
            if let value = dict["GroupByKey"] as? String {
                self.groupByKey = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
        }
    }
    public var requestId: String?

    public var resourceCounts: [GetResourceGroupResourceCountsResponseBody.ResourceCounts]?

    public override init() {
        super.init()
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
        if self.resourceCounts != nil {
            var tmp : [Any] = []
            for k in self.resourceCounts! {
                tmp.append(k.toMap())
            }
            map["ResourceCounts"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceCounts"] as? [Any?] {
            var tmp : [GetResourceGroupResourceCountsResponseBody.ResourceCounts] = []
            for v in value {
                if v != nil {
                    var model = GetResourceGroupResourceCountsResponseBody.ResourceCounts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceCounts = tmp
        }
    }
}

public class GetResourceGroupResourceCountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceGroupResourceCountsResponseBody?

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
            var model = GetResourceGroupResourceCountsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRoleRequest : Tea.TeaModel {
    public var language: String?

    public var roleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
        }
    }
}

public class GetRoleResponseBody : Tea.TeaModel {
    public class Role : Tea.TeaModel {
        public class LatestDeletionTask : Tea.TeaModel {
            public var createDate: String?

            public var deletionTaskId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.deletionTaskId != nil {
                    map["DeletionTaskId"] = self.deletionTaskId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateDate"] as? String {
                    self.createDate = value
                }
                if let value = dict["DeletionTaskId"] as? String {
                    self.deletionTaskId = value
                }
            }
        }
        public var arn: String?

        public var assumeRolePolicyDocument: String?

        public var createDate: String?

        public var description_: String?

        public var isServiceLinkedRole: Bool?

        public var latestDeletionTask: GetRoleResponseBody.Role.LatestDeletionTask?

        public var maxSessionDuration: Int64?

        public var roleId: String?

        public var roleName: String?

        public var rolePrincipalName: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.latestDeletionTask?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arn != nil {
                map["Arn"] = self.arn!
            }
            if self.assumeRolePolicyDocument != nil {
                map["AssumeRolePolicyDocument"] = self.assumeRolePolicyDocument!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.isServiceLinkedRole != nil {
                map["IsServiceLinkedRole"] = self.isServiceLinkedRole!
            }
            if self.latestDeletionTask != nil {
                map["LatestDeletionTask"] = self.latestDeletionTask?.toMap()
            }
            if self.maxSessionDuration != nil {
                map["MaxSessionDuration"] = self.maxSessionDuration!
            }
            if self.roleId != nil {
                map["RoleId"] = self.roleId!
            }
            if self.roleName != nil {
                map["RoleName"] = self.roleName!
            }
            if self.rolePrincipalName != nil {
                map["RolePrincipalName"] = self.rolePrincipalName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Arn"] as? String {
                self.arn = value
            }
            if let value = dict["AssumeRolePolicyDocument"] as? String {
                self.assumeRolePolicyDocument = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["IsServiceLinkedRole"] as? Bool {
                self.isServiceLinkedRole = value
            }
            if let value = dict["LatestDeletionTask"] as? [String: Any?] {
                var model = GetRoleResponseBody.Role.LatestDeletionTask()
                model.fromMap(value)
                self.latestDeletionTask = model
            }
            if let value = dict["MaxSessionDuration"] as? Int64 {
                self.maxSessionDuration = value
            }
            if let value = dict["RoleId"] as? String {
                self.roleId = value
            }
            if let value = dict["RoleName"] as? String {
                self.roleName = value
            }
            if let value = dict["RolePrincipalName"] as? String {
                self.rolePrincipalName = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var requestId: String?

    public var role: GetRoleResponseBody.Role?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.role?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.role != nil {
            map["Role"] = self.role?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Role"] as? [String: Any?] {
            var model = GetRoleResponseBody.Role()
            model.fromMap(value)
            self.role = model
        }
    }
}

public class GetRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRoleResponseBody?

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
            var model = GetRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetServiceLinkedRoleDeletionStatusRequest : Tea.TeaModel {
    public var deletionTaskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deletionTaskId != nil {
            map["DeletionTaskId"] = self.deletionTaskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeletionTaskId"] as? String {
            self.deletionTaskId = value
        }
    }
}

public class GetServiceLinkedRoleDeletionStatusResponseBody : Tea.TeaModel {
    public class Reason : Tea.TeaModel {
        public class RoleUsages : Tea.TeaModel {
            public class RoleUsage : Tea.TeaModel {
                public class Resources : Tea.TeaModel {
                    public var resource: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.resource != nil {
                            map["Resource"] = self.resource!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Resource"] as? [String] {
                            self.resource = value
                        }
                    }
                }
                public var region: String?

                public var resources: GetServiceLinkedRoleDeletionStatusResponseBody.Reason.RoleUsages.RoleUsage.Resources?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.resources?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.region != nil {
                        map["Region"] = self.region!
                    }
                    if self.resources != nil {
                        map["Resources"] = self.resources?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Region"] as? String {
                        self.region = value
                    }
                    if let value = dict["Resources"] as? [String: Any?] {
                        var model = GetServiceLinkedRoleDeletionStatusResponseBody.Reason.RoleUsages.RoleUsage.Resources()
                        model.fromMap(value)
                        self.resources = model
                    }
                }
            }
            public var roleUsage: [GetServiceLinkedRoleDeletionStatusResponseBody.Reason.RoleUsages.RoleUsage]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.roleUsage != nil {
                    var tmp : [Any] = []
                    for k in self.roleUsage! {
                        tmp.append(k.toMap())
                    }
                    map["RoleUsage"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RoleUsage"] as? [Any?] {
                    var tmp : [GetServiceLinkedRoleDeletionStatusResponseBody.Reason.RoleUsages.RoleUsage] = []
                    for v in value {
                        if v != nil {
                            var model = GetServiceLinkedRoleDeletionStatusResponseBody.Reason.RoleUsages.RoleUsage()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.roleUsage = tmp
                }
            }
        }
        public var message: String?

        public var roleUsages: GetServiceLinkedRoleDeletionStatusResponseBody.Reason.RoleUsages?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.roleUsages?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.roleUsages != nil {
                map["RoleUsages"] = self.roleUsages?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["RoleUsages"] as? [String: Any?] {
                var model = GetServiceLinkedRoleDeletionStatusResponseBody.Reason.RoleUsages()
                model.fromMap(value)
                self.roleUsages = model
            }
        }
    }
    public var reason: GetServiceLinkedRoleDeletionStatusResponseBody.Reason?

    public var requestId: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.reason?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.reason != nil {
            map["Reason"] = self.reason?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Reason"] as? [String: Any?] {
            var model = GetServiceLinkedRoleDeletionStatusResponseBody.Reason()
            model.fromMap(value)
            self.reason = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class GetServiceLinkedRoleDeletionStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceLinkedRoleDeletionStatusResponseBody?

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
            var model = GetServiceLinkedRoleDeletionStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InitResourceDirectoryResponseBody : Tea.TeaModel {
    public class ResourceDirectory : Tea.TeaModel {
        public var createTime: String?

        public var masterAccountId: String?

        public var masterAccountName: String?

        public var resourceDirectoryId: String?

        public var rootFolderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.masterAccountId != nil {
                map["MasterAccountId"] = self.masterAccountId!
            }
            if self.masterAccountName != nil {
                map["MasterAccountName"] = self.masterAccountName!
            }
            if self.resourceDirectoryId != nil {
                map["ResourceDirectoryId"] = self.resourceDirectoryId!
            }
            if self.rootFolderId != nil {
                map["RootFolderId"] = self.rootFolderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["MasterAccountId"] as? String {
                self.masterAccountId = value
            }
            if let value = dict["MasterAccountName"] as? String {
                self.masterAccountName = value
            }
            if let value = dict["ResourceDirectoryId"] as? String {
                self.resourceDirectoryId = value
            }
            if let value = dict["RootFolderId"] as? String {
                self.rootFolderId = value
            }
        }
    }
    public var requestId: String?

    public var resourceDirectory: InitResourceDirectoryResponseBody.ResourceDirectory?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceDirectory?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceDirectory != nil {
            map["ResourceDirectory"] = self.resourceDirectory?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceDirectory"] as? [String: Any?] {
            var model = InitResourceDirectoryResponseBody.ResourceDirectory()
            model.fromMap(value)
            self.resourceDirectory = model
        }
    }
}

public class InitResourceDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InitResourceDirectoryResponseBody?

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
            var model = InitResourceDirectoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InviteAccountToResourceDirectoryRequest : Tea.TeaModel {
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
    public var note: String?

    public var tag: [InviteAccountToResourceDirectoryRequest.Tag]?

    public var targetEntity: String?

    public var targetType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.note != nil {
            map["Note"] = self.note!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.targetEntity != nil {
            map["TargetEntity"] = self.targetEntity!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Note"] as? String {
            self.note = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [InviteAccountToResourceDirectoryRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = InviteAccountToResourceDirectoryRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TargetEntity"] as? String {
            self.targetEntity = value
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
        }
    }
}

public class InviteAccountToResourceDirectoryResponseBody : Tea.TeaModel {
    public class Handshake : Tea.TeaModel {
        public var createTime: String?

        public var expireTime: String?

        public var handshakeId: String?

        public var masterAccountId: String?

        public var masterAccountName: String?

        public var modifyTime: String?

        public var note: String?

        public var resourceDirectoryId: String?

        public var status: String?

        public var targetEntity: String?

        public var targetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.handshakeId != nil {
                map["HandshakeId"] = self.handshakeId!
            }
            if self.masterAccountId != nil {
                map["MasterAccountId"] = self.masterAccountId!
            }
            if self.masterAccountName != nil {
                map["MasterAccountName"] = self.masterAccountName!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.note != nil {
                map["Note"] = self.note!
            }
            if self.resourceDirectoryId != nil {
                map["ResourceDirectoryId"] = self.resourceDirectoryId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.targetEntity != nil {
                map["TargetEntity"] = self.targetEntity!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["HandshakeId"] as? String {
                self.handshakeId = value
            }
            if let value = dict["MasterAccountId"] as? String {
                self.masterAccountId = value
            }
            if let value = dict["MasterAccountName"] as? String {
                self.masterAccountName = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["Note"] as? String {
                self.note = value
            }
            if let value = dict["ResourceDirectoryId"] as? String {
                self.resourceDirectoryId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TargetEntity"] as? String {
                self.targetEntity = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
        }
    }
    public var handshake: InviteAccountToResourceDirectoryResponseBody.Handshake?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.handshake?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.handshake != nil {
            map["Handshake"] = self.handshake?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Handshake"] as? [String: Any?] {
            var model = InviteAccountToResourceDirectoryResponseBody.Handshake()
            model.fromMap(value)
            self.handshake = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class InviteAccountToResourceDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InviteAccountToResourceDirectoryResponseBody?

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
            var model = InviteAccountToResourceDirectoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAccountsRequest : Tea.TeaModel {
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
    public var includeTags: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var tag: [ListAccountsRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.includeTags != nil {
            map["IncludeTags"] = self.includeTags!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if let value = dict["IncludeTags"] as? Bool {
            self.includeTags = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListAccountsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListAccountsRequest.Tag()
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

public class ListAccountsResponseBody : Tea.TeaModel {
    public class Accounts : Tea.TeaModel {
        public class Account : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
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
                public var tag: [ListAccountsResponseBody.Accounts.Account.Tags.Tag]?

                public override init() {
                    super.init()
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
                        var tmp : [ListAccountsResponseBody.Accounts.Account.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = ListAccountsResponseBody.Accounts.Account.Tags.Tag()
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
            public var accountId: String?

            public var displayName: String?

            public var folderId: String?

            public var joinMethod: String?

            public var joinTime: String?

            public var modifyTime: String?

            public var resourceDirectoryId: String?

            public var resourceDirectoryPath: String?

            public var status: String?

            public var tags: ListAccountsResponseBody.Accounts.Account.Tags?

            public var type: String?

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
                if self.accountId != nil {
                    map["AccountId"] = self.accountId!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.folderId != nil {
                    map["FolderId"] = self.folderId!
                }
                if self.joinMethod != nil {
                    map["JoinMethod"] = self.joinMethod!
                }
                if self.joinTime != nil {
                    map["JoinTime"] = self.joinTime!
                }
                if self.modifyTime != nil {
                    map["ModifyTime"] = self.modifyTime!
                }
                if self.resourceDirectoryId != nil {
                    map["ResourceDirectoryId"] = self.resourceDirectoryId!
                }
                if self.resourceDirectoryPath != nil {
                    map["ResourceDirectoryPath"] = self.resourceDirectoryPath!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccountId"] as? String {
                    self.accountId = value
                }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["FolderId"] as? String {
                    self.folderId = value
                }
                if let value = dict["JoinMethod"] as? String {
                    self.joinMethod = value
                }
                if let value = dict["JoinTime"] as? String {
                    self.joinTime = value
                }
                if let value = dict["ModifyTime"] as? String {
                    self.modifyTime = value
                }
                if let value = dict["ResourceDirectoryId"] as? String {
                    self.resourceDirectoryId = value
                }
                if let value = dict["ResourceDirectoryPath"] as? String {
                    self.resourceDirectoryPath = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = ListAccountsResponseBody.Accounts.Account.Tags()
                    model.fromMap(value)
                    self.tags = model
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var account: [ListAccountsResponseBody.Accounts.Account]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.account != nil {
                var tmp : [Any] = []
                for k in self.account! {
                    tmp.append(k.toMap())
                }
                map["Account"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Account"] as? [Any?] {
                var tmp : [ListAccountsResponseBody.Accounts.Account] = []
                for v in value {
                    if v != nil {
                        var model = ListAccountsResponseBody.Accounts.Account()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.account = tmp
            }
        }
    }
    public var accounts: ListAccountsResponseBody.Accounts?

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
        try self.accounts?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accounts != nil {
            map["Accounts"] = self.accounts?.toMap()
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
        if let value = dict["Accounts"] as? [String: Any?] {
            var model = ListAccountsResponseBody.Accounts()
            model.fromMap(value)
            self.accounts = model
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

public class ListAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAccountsResponseBody?

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
            var model = ListAccountsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAccountsForParentRequest : Tea.TeaModel {
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
    public var includeTags: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var parentFolderId: String?

    public var queryKeyword: String?

    public var tag: [ListAccountsForParentRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.includeTags != nil {
            map["IncludeTags"] = self.includeTags!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.parentFolderId != nil {
            map["ParentFolderId"] = self.parentFolderId!
        }
        if self.queryKeyword != nil {
            map["QueryKeyword"] = self.queryKeyword!
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
        if let value = dict["IncludeTags"] as? Bool {
            self.includeTags = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ParentFolderId"] as? String {
            self.parentFolderId = value
        }
        if let value = dict["QueryKeyword"] as? String {
            self.queryKeyword = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListAccountsForParentRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListAccountsForParentRequest.Tag()
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

public class ListAccountsForParentResponseBody : Tea.TeaModel {
    public class Accounts : Tea.TeaModel {
        public class Account : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
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
                public var tag: [ListAccountsForParentResponseBody.Accounts.Account.Tags.Tag]?

                public override init() {
                    super.init()
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
                        var tmp : [ListAccountsForParentResponseBody.Accounts.Account.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = ListAccountsForParentResponseBody.Accounts.Account.Tags.Tag()
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
            public var accountId: String?

            public var displayName: String?

            public var folderId: String?

            public var joinMethod: String?

            public var joinTime: String?

            public var modifyTime: String?

            public var resourceDirectoryId: String?

            public var status: String?

            public var tags: ListAccountsForParentResponseBody.Accounts.Account.Tags?

            public var type: String?

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
                if self.accountId != nil {
                    map["AccountId"] = self.accountId!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.folderId != nil {
                    map["FolderId"] = self.folderId!
                }
                if self.joinMethod != nil {
                    map["JoinMethod"] = self.joinMethod!
                }
                if self.joinTime != nil {
                    map["JoinTime"] = self.joinTime!
                }
                if self.modifyTime != nil {
                    map["ModifyTime"] = self.modifyTime!
                }
                if self.resourceDirectoryId != nil {
                    map["ResourceDirectoryId"] = self.resourceDirectoryId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccountId"] as? String {
                    self.accountId = value
                }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["FolderId"] as? String {
                    self.folderId = value
                }
                if let value = dict["JoinMethod"] as? String {
                    self.joinMethod = value
                }
                if let value = dict["JoinTime"] as? String {
                    self.joinTime = value
                }
                if let value = dict["ModifyTime"] as? String {
                    self.modifyTime = value
                }
                if let value = dict["ResourceDirectoryId"] as? String {
                    self.resourceDirectoryId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = ListAccountsForParentResponseBody.Accounts.Account.Tags()
                    model.fromMap(value)
                    self.tags = model
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var account: [ListAccountsForParentResponseBody.Accounts.Account]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.account != nil {
                var tmp : [Any] = []
                for k in self.account! {
                    tmp.append(k.toMap())
                }
                map["Account"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Account"] as? [Any?] {
                var tmp : [ListAccountsForParentResponseBody.Accounts.Account] = []
                for v in value {
                    if v != nil {
                        var model = ListAccountsForParentResponseBody.Accounts.Account()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.account = tmp
            }
        }
    }
    public var accounts: ListAccountsForParentResponseBody.Accounts?

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
        try self.accounts?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accounts != nil {
            map["Accounts"] = self.accounts?.toMap()
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
        if let value = dict["Accounts"] as? [String: Any?] {
            var model = ListAccountsForParentResponseBody.Accounts()
            model.fromMap(value)
            self.accounts = model
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

public class ListAccountsForParentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAccountsForParentResponseBody?

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
            var model = ListAccountsForParentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAncestorsRequest : Tea.TeaModel {
    public var childId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.childId != nil {
            map["ChildId"] = self.childId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChildId"] as? String {
            self.childId = value
        }
    }
}

public class ListAncestorsResponseBody : Tea.TeaModel {
    public class Folders : Tea.TeaModel {
        public class Folder : Tea.TeaModel {
            public var createTime: String?

            public var folderId: String?

            public var folderName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.folderId != nil {
                    map["FolderId"] = self.folderId!
                }
                if self.folderName != nil {
                    map["FolderName"] = self.folderName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["FolderId"] as? String {
                    self.folderId = value
                }
                if let value = dict["FolderName"] as? String {
                    self.folderName = value
                }
            }
        }
        public var folder: [ListAncestorsResponseBody.Folders.Folder]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.folder != nil {
                var tmp : [Any] = []
                for k in self.folder! {
                    tmp.append(k.toMap())
                }
                map["Folder"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Folder"] as? [Any?] {
                var tmp : [ListAncestorsResponseBody.Folders.Folder] = []
                for v in value {
                    if v != nil {
                        var model = ListAncestorsResponseBody.Folders.Folder()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.folder = tmp
            }
        }
    }
    public var folders: ListAncestorsResponseBody.Folders?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.folders?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.folders != nil {
            map["Folders"] = self.folders?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Folders"] as? [String: Any?] {
            var model = ListAncestorsResponseBody.Folders()
            model.fromMap(value)
            self.folders = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListAncestorsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAncestorsResponseBody?

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
            var model = ListAncestorsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAssociatedTransferSettingResponseBody : Tea.TeaModel {
    public class AssociatedTransferSetting : Tea.TeaModel {
        public class RuleSettings : Tea.TeaModel {
            public var associatedResourceType: String?

            public var associatedService: String?

            public var masterResourceType: String?

            public var masterService: String?

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
                if self.associatedResourceType != nil {
                    map["AssociatedResourceType"] = self.associatedResourceType!
                }
                if self.associatedService != nil {
                    map["AssociatedService"] = self.associatedService!
                }
                if self.masterResourceType != nil {
                    map["MasterResourceType"] = self.masterResourceType!
                }
                if self.masterService != nil {
                    map["MasterService"] = self.masterService!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AssociatedResourceType"] as? String {
                    self.associatedResourceType = value
                }
                if let value = dict["AssociatedService"] as? String {
                    self.associatedService = value
                }
                if let value = dict["MasterResourceType"] as? String {
                    self.masterResourceType = value
                }
                if let value = dict["MasterService"] as? String {
                    self.masterService = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var accountId: String?

        public var enableExistingResourcesTransfer: String?

        public var ruleSettings: [ListAssociatedTransferSettingResponseBody.AssociatedTransferSetting.RuleSettings]?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.enableExistingResourcesTransfer != nil {
                map["EnableExistingResourcesTransfer"] = self.enableExistingResourcesTransfer!
            }
            if self.ruleSettings != nil {
                var tmp : [Any] = []
                for k in self.ruleSettings! {
                    tmp.append(k.toMap())
                }
                map["RuleSettings"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["EnableExistingResourcesTransfer"] as? String {
                self.enableExistingResourcesTransfer = value
            }
            if let value = dict["RuleSettings"] as? [Any?] {
                var tmp : [ListAssociatedTransferSettingResponseBody.AssociatedTransferSetting.RuleSettings] = []
                for v in value {
                    if v != nil {
                        var model = ListAssociatedTransferSettingResponseBody.AssociatedTransferSetting.RuleSettings()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ruleSettings = tmp
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var associatedTransferSetting: ListAssociatedTransferSettingResponseBody.AssociatedTransferSetting?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.associatedTransferSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.associatedTransferSetting != nil {
            map["AssociatedTransferSetting"] = self.associatedTransferSetting?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssociatedTransferSetting"] as? [String: Any?] {
            var model = ListAssociatedTransferSettingResponseBody.AssociatedTransferSetting()
            model.fromMap(value)
            self.associatedTransferSetting = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListAssociatedTransferSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAssociatedTransferSettingResponseBody?

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
            var model = ListAssociatedTransferSettingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAutoGroupingRemediationsRequest : Tea.TeaModel {
    public var earliestRemediationTime: String?

    public var latestRemediationTime: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceId: String?

    public var resourceType: String?

    public var ruleId: String?

    public var service: String?

    public var targetResourceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.earliestRemediationTime != nil {
            map["EarliestRemediationTime"] = self.earliestRemediationTime!
        }
        if self.latestRemediationTime != nil {
            map["LatestRemediationTime"] = self.latestRemediationTime!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.service != nil {
            map["Service"] = self.service!
        }
        if self.targetResourceGroupId != nil {
            map["TargetResourceGroupId"] = self.targetResourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EarliestRemediationTime"] as? String {
            self.earliestRemediationTime = value
        }
        if let value = dict["LatestRemediationTime"] as? String {
            self.latestRemediationTime = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
        if let value = dict["Service"] as? String {
            self.service = value
        }
        if let value = dict["TargetResourceGroupId"] as? String {
            self.targetResourceGroupId = value
        }
    }
}

public class ListAutoGroupingRemediationsResponseBody : Tea.TeaModel {
    public class Remediations : Tea.TeaModel {
        public class TargetResourceGroupInfo : Tea.TeaModel {
            public var resourceGroupDisplayName: String?

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
                if self.resourceGroupDisplayName != nil {
                    map["ResourceGroupDisplayName"] = self.resourceGroupDisplayName!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResourceGroupDisplayName"] as? String {
                    self.resourceGroupDisplayName = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
            }
        }
        public var regionId: String?

        public var remediationId: String?

        public var remediationTime: String?

        public var resourceId: String?

        public var resourceType: String?

        public var service: String?

        public var targetResourceGroupInfo: ListAutoGroupingRemediationsResponseBody.Remediations.TargetResourceGroupInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.targetResourceGroupInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.remediationId != nil {
                map["RemediationId"] = self.remediationId!
            }
            if self.remediationTime != nil {
                map["RemediationTime"] = self.remediationTime!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.service != nil {
                map["Service"] = self.service!
            }
            if self.targetResourceGroupInfo != nil {
                map["TargetResourceGroupInfo"] = self.targetResourceGroupInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RemediationId"] as? String {
                self.remediationId = value
            }
            if let value = dict["RemediationTime"] as? String {
                self.remediationTime = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["Service"] as? String {
                self.service = value
            }
            if let value = dict["TargetResourceGroupInfo"] as? [String: Any?] {
                var model = ListAutoGroupingRemediationsResponseBody.Remediations.TargetResourceGroupInfo()
                model.fromMap(value)
                self.targetResourceGroupInfo = model
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var remediations: [ListAutoGroupingRemediationsResponseBody.Remediations]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.remediations != nil {
            var tmp : [Any] = []
            for k in self.remediations! {
                tmp.append(k.toMap())
            }
            map["Remediations"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if let value = dict["Remediations"] as? [Any?] {
            var tmp : [ListAutoGroupingRemediationsResponseBody.Remediations] = []
            for v in value {
                if v != nil {
                    var model = ListAutoGroupingRemediationsResponseBody.Remediations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.remediations = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListAutoGroupingRemediationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAutoGroupingRemediationsResponseBody?

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
            var model = ListAutoGroupingRemediationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAutoGroupingRulesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var ruleId: String?

    public var ruleName: String?

    public var ruleType: String?

    public override init() {
        super.init()
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
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
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
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["RuleType"] as? String {
            self.ruleType = value
        }
    }
}

public class ListAutoGroupingRulesResponseBody : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public class RuleContents : Tea.TeaModel {
            public var autoGroupingScopeCondition: String?

            public var ruleContentId: String?

            public var targetResourceGroupCondition: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoGroupingScopeCondition != nil {
                    map["AutoGroupingScopeCondition"] = self.autoGroupingScopeCondition!
                }
                if self.ruleContentId != nil {
                    map["RuleContentId"] = self.ruleContentId!
                }
                if self.targetResourceGroupCondition != nil {
                    map["TargetResourceGroupCondition"] = self.targetResourceGroupCondition!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutoGroupingScopeCondition"] as? String {
                    self.autoGroupingScopeCondition = value
                }
                if let value = dict["RuleContentId"] as? String {
                    self.ruleContentId = value
                }
                if let value = dict["TargetResourceGroupCondition"] as? String {
                    self.targetResourceGroupCondition = value
                }
            }
        }
        public var createTime: String?

        public var excludeRegionIdsScope: String?

        public var excludeResourceGroupIdsScope: String?

        public var excludeResourceIdsScope: String?

        public var excludeResourceTypesScope: String?

        public var modifyTime: String?

        public var regionIdsScope: String?

        public var resourceGroupIdsScope: String?

        public var resourceIdsScope: String?

        public var resourceTypesScope: String?

        public var ruleContents: [ListAutoGroupingRulesResponseBody.Rules.RuleContents]?

        public var ruleDesc: String?

        public var ruleId: String?

        public var ruleName: String?

        public var ruleType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.excludeRegionIdsScope != nil {
                map["ExcludeRegionIdsScope"] = self.excludeRegionIdsScope!
            }
            if self.excludeResourceGroupIdsScope != nil {
                map["ExcludeResourceGroupIdsScope"] = self.excludeResourceGroupIdsScope!
            }
            if self.excludeResourceIdsScope != nil {
                map["ExcludeResourceIdsScope"] = self.excludeResourceIdsScope!
            }
            if self.excludeResourceTypesScope != nil {
                map["ExcludeResourceTypesScope"] = self.excludeResourceTypesScope!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.regionIdsScope != nil {
                map["RegionIdsScope"] = self.regionIdsScope!
            }
            if self.resourceGroupIdsScope != nil {
                map["ResourceGroupIdsScope"] = self.resourceGroupIdsScope!
            }
            if self.resourceIdsScope != nil {
                map["ResourceIdsScope"] = self.resourceIdsScope!
            }
            if self.resourceTypesScope != nil {
                map["ResourceTypesScope"] = self.resourceTypesScope!
            }
            if self.ruleContents != nil {
                var tmp : [Any] = []
                for k in self.ruleContents! {
                    tmp.append(k.toMap())
                }
                map["RuleContents"] = tmp
            }
            if self.ruleDesc != nil {
                map["RuleDesc"] = self.ruleDesc!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.ruleType != nil {
                map["RuleType"] = self.ruleType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ExcludeRegionIdsScope"] as? String {
                self.excludeRegionIdsScope = value
            }
            if let value = dict["ExcludeResourceGroupIdsScope"] as? String {
                self.excludeResourceGroupIdsScope = value
            }
            if let value = dict["ExcludeResourceIdsScope"] as? String {
                self.excludeResourceIdsScope = value
            }
            if let value = dict["ExcludeResourceTypesScope"] as? String {
                self.excludeResourceTypesScope = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["RegionIdsScope"] as? String {
                self.regionIdsScope = value
            }
            if let value = dict["ResourceGroupIdsScope"] as? String {
                self.resourceGroupIdsScope = value
            }
            if let value = dict["ResourceIdsScope"] as? String {
                self.resourceIdsScope = value
            }
            if let value = dict["ResourceTypesScope"] as? String {
                self.resourceTypesScope = value
            }
            if let value = dict["RuleContents"] as? [Any?] {
                var tmp : [ListAutoGroupingRulesResponseBody.Rules.RuleContents] = []
                for v in value {
                    if v != nil {
                        var model = ListAutoGroupingRulesResponseBody.Rules.RuleContents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ruleContents = tmp
            }
            if let value = dict["RuleDesc"] as? String {
                self.ruleDesc = value
            }
            if let value = dict["RuleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["RuleType"] as? String {
                self.ruleType = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var rules: [ListAutoGroupingRulesResponseBody.Rules]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rules != nil {
            var tmp : [Any] = []
            for k in self.rules! {
                tmp.append(k.toMap())
            }
            map["Rules"] = tmp
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Rules"] as? [Any?] {
            var tmp : [ListAutoGroupingRulesResponseBody.Rules] = []
            for v in value {
                if v != nil {
                    var model = ListAutoGroupingRulesResponseBody.Rules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rules = tmp
        }
    }
}

public class ListAutoGroupingRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAutoGroupingRulesResponseBody?

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
            var model = ListAutoGroupingRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListControlPoliciesRequest : Tea.TeaModel {
    public var language: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
    }
}

public class ListControlPoliciesResponseBody : Tea.TeaModel {
    public class ControlPolicies : Tea.TeaModel {
        public class ControlPolicy : Tea.TeaModel {
            public var attachmentCount: String?

            public var createDate: String?

            public var description_: String?

            public var effectScope: String?

            public var policyId: String?

            public var policyName: String?

            public var policyType: String?

            public var updateDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attachmentCount != nil {
                    map["AttachmentCount"] = self.attachmentCount!
                }
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.effectScope != nil {
                    map["EffectScope"] = self.effectScope!
                }
                if self.policyId != nil {
                    map["PolicyId"] = self.policyId!
                }
                if self.policyName != nil {
                    map["PolicyName"] = self.policyName!
                }
                if self.policyType != nil {
                    map["PolicyType"] = self.policyType!
                }
                if self.updateDate != nil {
                    map["UpdateDate"] = self.updateDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AttachmentCount"] as? String {
                    self.attachmentCount = value
                }
                if let value = dict["CreateDate"] as? String {
                    self.createDate = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["EffectScope"] as? String {
                    self.effectScope = value
                }
                if let value = dict["PolicyId"] as? String {
                    self.policyId = value
                }
                if let value = dict["PolicyName"] as? String {
                    self.policyName = value
                }
                if let value = dict["PolicyType"] as? String {
                    self.policyType = value
                }
                if let value = dict["UpdateDate"] as? String {
                    self.updateDate = value
                }
            }
        }
        public var controlPolicy: [ListControlPoliciesResponseBody.ControlPolicies.ControlPolicy]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.controlPolicy != nil {
                var tmp : [Any] = []
                for k in self.controlPolicy! {
                    tmp.append(k.toMap())
                }
                map["ControlPolicy"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ControlPolicy"] as? [Any?] {
                var tmp : [ListControlPoliciesResponseBody.ControlPolicies.ControlPolicy] = []
                for v in value {
                    if v != nil {
                        var model = ListControlPoliciesResponseBody.ControlPolicies.ControlPolicy()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.controlPolicy = tmp
            }
        }
    }
    public var controlPolicies: ListControlPoliciesResponseBody.ControlPolicies?

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
        try self.controlPolicies?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.controlPolicies != nil {
            map["ControlPolicies"] = self.controlPolicies?.toMap()
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
        if let value = dict["ControlPolicies"] as? [String: Any?] {
            var model = ListControlPoliciesResponseBody.ControlPolicies()
            model.fromMap(value)
            self.controlPolicies = model
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

public class ListControlPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListControlPoliciesResponseBody?

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
            var model = ListControlPoliciesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListControlPolicyAttachmentsForTargetRequest : Tea.TeaModel {
    public var language: String?

    public var targetId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.targetId != nil {
            map["TargetId"] = self.targetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["TargetId"] as? String {
            self.targetId = value
        }
    }
}

public class ListControlPolicyAttachmentsForTargetResponseBody : Tea.TeaModel {
    public class ControlPolicyAttachments : Tea.TeaModel {
        public class ControlPolicyAttachment : Tea.TeaModel {
            public var attachDate: String?

            public var description_: String?

            public var effectScope: String?

            public var policyId: String?

            public var policyName: String?

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
                if self.attachDate != nil {
                    map["AttachDate"] = self.attachDate!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.effectScope != nil {
                    map["EffectScope"] = self.effectScope!
                }
                if self.policyId != nil {
                    map["PolicyId"] = self.policyId!
                }
                if self.policyName != nil {
                    map["PolicyName"] = self.policyName!
                }
                if self.policyType != nil {
                    map["PolicyType"] = self.policyType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AttachDate"] as? String {
                    self.attachDate = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["EffectScope"] as? String {
                    self.effectScope = value
                }
                if let value = dict["PolicyId"] as? String {
                    self.policyId = value
                }
                if let value = dict["PolicyName"] as? String {
                    self.policyName = value
                }
                if let value = dict["PolicyType"] as? String {
                    self.policyType = value
                }
            }
        }
        public var controlPolicyAttachment: [ListControlPolicyAttachmentsForTargetResponseBody.ControlPolicyAttachments.ControlPolicyAttachment]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.controlPolicyAttachment != nil {
                var tmp : [Any] = []
                for k in self.controlPolicyAttachment! {
                    tmp.append(k.toMap())
                }
                map["ControlPolicyAttachment"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ControlPolicyAttachment"] as? [Any?] {
                var tmp : [ListControlPolicyAttachmentsForTargetResponseBody.ControlPolicyAttachments.ControlPolicyAttachment] = []
                for v in value {
                    if v != nil {
                        var model = ListControlPolicyAttachmentsForTargetResponseBody.ControlPolicyAttachments.ControlPolicyAttachment()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.controlPolicyAttachment = tmp
            }
        }
    }
    public var controlPolicyAttachments: ListControlPolicyAttachmentsForTargetResponseBody.ControlPolicyAttachments?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.controlPolicyAttachments?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.controlPolicyAttachments != nil {
            map["ControlPolicyAttachments"] = self.controlPolicyAttachments?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ControlPolicyAttachments"] as? [String: Any?] {
            var model = ListControlPolicyAttachmentsForTargetResponseBody.ControlPolicyAttachments()
            model.fromMap(value)
            self.controlPolicyAttachments = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListControlPolicyAttachmentsForTargetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListControlPolicyAttachmentsForTargetResponseBody?

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
            var model = ListControlPolicyAttachmentsForTargetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDelegatedAdministratorsRequest : Tea.TeaModel {
    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var servicePrincipal: String?

    public override init() {
        super.init()
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
        if self.servicePrincipal != nil {
            map["ServicePrincipal"] = self.servicePrincipal!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ServicePrincipal"] as? String {
            self.servicePrincipal = value
        }
    }
}

public class ListDelegatedAdministratorsResponseBody : Tea.TeaModel {
    public class Accounts : Tea.TeaModel {
        public class Account : Tea.TeaModel {
            public var accountId: String?

            public var delegationEnabledTime: String?

            public var displayName: String?

            public var joinMethod: String?

            public var servicePrincipal: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountId != nil {
                    map["AccountId"] = self.accountId!
                }
                if self.delegationEnabledTime != nil {
                    map["DelegationEnabledTime"] = self.delegationEnabledTime!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.joinMethod != nil {
                    map["JoinMethod"] = self.joinMethod!
                }
                if self.servicePrincipal != nil {
                    map["ServicePrincipal"] = self.servicePrincipal!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccountId"] as? String {
                    self.accountId = value
                }
                if let value = dict["DelegationEnabledTime"] as? String {
                    self.delegationEnabledTime = value
                }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["JoinMethod"] as? String {
                    self.joinMethod = value
                }
                if let value = dict["ServicePrincipal"] as? String {
                    self.servicePrincipal = value
                }
            }
        }
        public var account: [ListDelegatedAdministratorsResponseBody.Accounts.Account]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.account != nil {
                var tmp : [Any] = []
                for k in self.account! {
                    tmp.append(k.toMap())
                }
                map["Account"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Account"] as? [Any?] {
                var tmp : [ListDelegatedAdministratorsResponseBody.Accounts.Account] = []
                for v in value {
                    if v != nil {
                        var model = ListDelegatedAdministratorsResponseBody.Accounts.Account()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.account = tmp
            }
        }
    }
    public var accounts: ListDelegatedAdministratorsResponseBody.Accounts?

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
        try self.accounts?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accounts != nil {
            map["Accounts"] = self.accounts?.toMap()
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
        if let value = dict["Accounts"] as? [String: Any?] {
            var model = ListDelegatedAdministratorsResponseBody.Accounts()
            model.fromMap(value)
            self.accounts = model
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

public class ListDelegatedAdministratorsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDelegatedAdministratorsResponseBody?

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
            var model = ListDelegatedAdministratorsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDelegatedServicesForAccountRequest : Tea.TeaModel {
    public var accountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
    }
}

public class ListDelegatedServicesForAccountResponseBody : Tea.TeaModel {
    public class DelegatedServices : Tea.TeaModel {
        public class DelegatedService : Tea.TeaModel {
            public var delegationEnabledTime: String?

            public var servicePrincipal: String?

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
                if self.delegationEnabledTime != nil {
                    map["DelegationEnabledTime"] = self.delegationEnabledTime!
                }
                if self.servicePrincipal != nil {
                    map["ServicePrincipal"] = self.servicePrincipal!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DelegationEnabledTime"] as? String {
                    self.delegationEnabledTime = value
                }
                if let value = dict["ServicePrincipal"] as? String {
                    self.servicePrincipal = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var delegatedService: [ListDelegatedServicesForAccountResponseBody.DelegatedServices.DelegatedService]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.delegatedService != nil {
                var tmp : [Any] = []
                for k in self.delegatedService! {
                    tmp.append(k.toMap())
                }
                map["DelegatedService"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DelegatedService"] as? [Any?] {
                var tmp : [ListDelegatedServicesForAccountResponseBody.DelegatedServices.DelegatedService] = []
                for v in value {
                    if v != nil {
                        var model = ListDelegatedServicesForAccountResponseBody.DelegatedServices.DelegatedService()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.delegatedService = tmp
            }
        }
    }
    public var delegatedServices: ListDelegatedServicesForAccountResponseBody.DelegatedServices?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.delegatedServices?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.delegatedServices != nil {
            map["DelegatedServices"] = self.delegatedServices?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DelegatedServices"] as? [String: Any?] {
            var model = ListDelegatedServicesForAccountResponseBody.DelegatedServices()
            model.fromMap(value)
            self.delegatedServices = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListDelegatedServicesForAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDelegatedServicesForAccountResponseBody?

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
            var model = ListDelegatedServicesForAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFoldersForParentRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var parentFolderId: String?

    public var queryKeyword: String?

    public override init() {
        super.init()
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
        if self.parentFolderId != nil {
            map["ParentFolderId"] = self.parentFolderId!
        }
        if self.queryKeyword != nil {
            map["QueryKeyword"] = self.queryKeyword!
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
        if let value = dict["ParentFolderId"] as? String {
            self.parentFolderId = value
        }
        if let value = dict["QueryKeyword"] as? String {
            self.queryKeyword = value
        }
    }
}

public class ListFoldersForParentResponseBody : Tea.TeaModel {
    public class Folders : Tea.TeaModel {
        public class Folder : Tea.TeaModel {
            public var createTime: String?

            public var folderId: String?

            public var folderName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.folderId != nil {
                    map["FolderId"] = self.folderId!
                }
                if self.folderName != nil {
                    map["FolderName"] = self.folderName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["FolderId"] as? String {
                    self.folderId = value
                }
                if let value = dict["FolderName"] as? String {
                    self.folderName = value
                }
            }
        }
        public var folder: [ListFoldersForParentResponseBody.Folders.Folder]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.folder != nil {
                var tmp : [Any] = []
                for k in self.folder! {
                    tmp.append(k.toMap())
                }
                map["Folder"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Folder"] as? [Any?] {
                var tmp : [ListFoldersForParentResponseBody.Folders.Folder] = []
                for v in value {
                    if v != nil {
                        var model = ListFoldersForParentResponseBody.Folders.Folder()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.folder = tmp
            }
        }
    }
    public var folders: ListFoldersForParentResponseBody.Folders?

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
        try self.folders?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.folders != nil {
            map["Folders"] = self.folders?.toMap()
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
        if let value = dict["Folders"] as? [String: Any?] {
            var model = ListFoldersForParentResponseBody.Folders()
            model.fromMap(value)
            self.folders = model
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

public class ListFoldersForParentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFoldersForParentResponseBody?

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
            var model = ListFoldersForParentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListHandshakesForAccountRequest : Tea.TeaModel {
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

public class ListHandshakesForAccountResponseBody : Tea.TeaModel {
    public class Handshakes : Tea.TeaModel {
        public class Handshake : Tea.TeaModel {
            public var createTime: String?

            public var expireTime: String?

            public var handshakeId: String?

            public var masterAccountId: String?

            public var masterAccountName: String?

            public var modifyTime: String?

            public var note: String?

            public var resourceDirectoryId: String?

            public var status: String?

            public var targetEntity: String?

            public var targetType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.handshakeId != nil {
                    map["HandshakeId"] = self.handshakeId!
                }
                if self.masterAccountId != nil {
                    map["MasterAccountId"] = self.masterAccountId!
                }
                if self.masterAccountName != nil {
                    map["MasterAccountName"] = self.masterAccountName!
                }
                if self.modifyTime != nil {
                    map["ModifyTime"] = self.modifyTime!
                }
                if self.note != nil {
                    map["Note"] = self.note!
                }
                if self.resourceDirectoryId != nil {
                    map["ResourceDirectoryId"] = self.resourceDirectoryId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.targetEntity != nil {
                    map["TargetEntity"] = self.targetEntity!
                }
                if self.targetType != nil {
                    map["TargetType"] = self.targetType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["ExpireTime"] as? String {
                    self.expireTime = value
                }
                if let value = dict["HandshakeId"] as? String {
                    self.handshakeId = value
                }
                if let value = dict["MasterAccountId"] as? String {
                    self.masterAccountId = value
                }
                if let value = dict["MasterAccountName"] as? String {
                    self.masterAccountName = value
                }
                if let value = dict["ModifyTime"] as? String {
                    self.modifyTime = value
                }
                if let value = dict["Note"] as? String {
                    self.note = value
                }
                if let value = dict["ResourceDirectoryId"] as? String {
                    self.resourceDirectoryId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TargetEntity"] as? String {
                    self.targetEntity = value
                }
                if let value = dict["TargetType"] as? String {
                    self.targetType = value
                }
            }
        }
        public var handshake: [ListHandshakesForAccountResponseBody.Handshakes.Handshake]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.handshake != nil {
                var tmp : [Any] = []
                for k in self.handshake! {
                    tmp.append(k.toMap())
                }
                map["Handshake"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Handshake"] as? [Any?] {
                var tmp : [ListHandshakesForAccountResponseBody.Handshakes.Handshake] = []
                for v in value {
                    if v != nil {
                        var model = ListHandshakesForAccountResponseBody.Handshakes.Handshake()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.handshake = tmp
            }
        }
    }
    public var handshakes: ListHandshakesForAccountResponseBody.Handshakes?

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
        try self.handshakes?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.handshakes != nil {
            map["Handshakes"] = self.handshakes?.toMap()
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
        if let value = dict["Handshakes"] as? [String: Any?] {
            var model = ListHandshakesForAccountResponseBody.Handshakes()
            model.fromMap(value)
            self.handshakes = model
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

public class ListHandshakesForAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHandshakesForAccountResponseBody?

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
            var model = ListHandshakesForAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListHandshakesForResourceDirectoryRequest : Tea.TeaModel {
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

public class ListHandshakesForResourceDirectoryResponseBody : Tea.TeaModel {
    public class Handshakes : Tea.TeaModel {
        public class Handshake : Tea.TeaModel {
            public var createTime: String?

            public var expireTime: String?

            public var handshakeId: String?

            public var masterAccountId: String?

            public var masterAccountName: String?

            public var modifyTime: String?

            public var note: String?

            public var resourceDirectoryId: String?

            public var status: String?

            public var targetEntity: String?

            public var targetType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.handshakeId != nil {
                    map["HandshakeId"] = self.handshakeId!
                }
                if self.masterAccountId != nil {
                    map["MasterAccountId"] = self.masterAccountId!
                }
                if self.masterAccountName != nil {
                    map["MasterAccountName"] = self.masterAccountName!
                }
                if self.modifyTime != nil {
                    map["ModifyTime"] = self.modifyTime!
                }
                if self.note != nil {
                    map["Note"] = self.note!
                }
                if self.resourceDirectoryId != nil {
                    map["ResourceDirectoryId"] = self.resourceDirectoryId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.targetEntity != nil {
                    map["TargetEntity"] = self.targetEntity!
                }
                if self.targetType != nil {
                    map["TargetType"] = self.targetType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["ExpireTime"] as? String {
                    self.expireTime = value
                }
                if let value = dict["HandshakeId"] as? String {
                    self.handshakeId = value
                }
                if let value = dict["MasterAccountId"] as? String {
                    self.masterAccountId = value
                }
                if let value = dict["MasterAccountName"] as? String {
                    self.masterAccountName = value
                }
                if let value = dict["ModifyTime"] as? String {
                    self.modifyTime = value
                }
                if let value = dict["Note"] as? String {
                    self.note = value
                }
                if let value = dict["ResourceDirectoryId"] as? String {
                    self.resourceDirectoryId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TargetEntity"] as? String {
                    self.targetEntity = value
                }
                if let value = dict["TargetType"] as? String {
                    self.targetType = value
                }
            }
        }
        public var handshake: [ListHandshakesForResourceDirectoryResponseBody.Handshakes.Handshake]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.handshake != nil {
                var tmp : [Any] = []
                for k in self.handshake! {
                    tmp.append(k.toMap())
                }
                map["Handshake"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Handshake"] as? [Any?] {
                var tmp : [ListHandshakesForResourceDirectoryResponseBody.Handshakes.Handshake] = []
                for v in value {
                    if v != nil {
                        var model = ListHandshakesForResourceDirectoryResponseBody.Handshakes.Handshake()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.handshake = tmp
            }
        }
    }
    public var handshakes: ListHandshakesForResourceDirectoryResponseBody.Handshakes?

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
        try self.handshakes?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.handshakes != nil {
            map["Handshakes"] = self.handshakes?.toMap()
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
        if let value = dict["Handshakes"] as? [String: Any?] {
            var model = ListHandshakesForResourceDirectoryResponseBody.Handshakes()
            model.fromMap(value)
            self.handshakes = model
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

public class ListHandshakesForResourceDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHandshakesForResourceDirectoryResponseBody?

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
            var model = ListHandshakesForResourceDirectoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPoliciesRequest : Tea.TeaModel {
    public var language: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
    }
}

public class ListPoliciesResponseBody : Tea.TeaModel {
    public class Policies : Tea.TeaModel {
        public class Policy : Tea.TeaModel {
            public var attachmentCount: Int32?

            public var createDate: String?

            public var defaultVersion: String?

            public var description_: String?

            public var policyName: String?

            public var policyType: String?

            public var updateDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attachmentCount != nil {
                    map["AttachmentCount"] = self.attachmentCount!
                }
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.defaultVersion != nil {
                    map["DefaultVersion"] = self.defaultVersion!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.policyName != nil {
                    map["PolicyName"] = self.policyName!
                }
                if self.policyType != nil {
                    map["PolicyType"] = self.policyType!
                }
                if self.updateDate != nil {
                    map["UpdateDate"] = self.updateDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AttachmentCount"] as? Int32 {
                    self.attachmentCount = value
                }
                if let value = dict["CreateDate"] as? String {
                    self.createDate = value
                }
                if let value = dict["DefaultVersion"] as? String {
                    self.defaultVersion = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["PolicyName"] as? String {
                    self.policyName = value
                }
                if let value = dict["PolicyType"] as? String {
                    self.policyType = value
                }
                if let value = dict["UpdateDate"] as? String {
                    self.updateDate = value
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

public class ListPolicyAttachmentsRequest : Tea.TeaModel {
    public var language: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var policyName: String?

    public var policyType: String?

    public var principalName: String?

    public var principalType: String?

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
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        if self.principalName != nil {
            map["PrincipalName"] = self.principalName!
        }
        if self.principalType != nil {
            map["PrincipalType"] = self.principalType!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
        if let value = dict["PrincipalName"] as? String {
            self.principalName = value
        }
        if let value = dict["PrincipalType"] as? String {
            self.principalType = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class ListPolicyAttachmentsResponseBody : Tea.TeaModel {
    public class PolicyAttachments : Tea.TeaModel {
        public class PolicyAttachment : Tea.TeaModel {
            public var attachDate: String?

            public var description_: String?

            public var policyName: String?

            public var policyType: String?

            public var principalName: String?

            public var principalType: String?

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
                if self.attachDate != nil {
                    map["AttachDate"] = self.attachDate!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.policyName != nil {
                    map["PolicyName"] = self.policyName!
                }
                if self.policyType != nil {
                    map["PolicyType"] = self.policyType!
                }
                if self.principalName != nil {
                    map["PrincipalName"] = self.principalName!
                }
                if self.principalType != nil {
                    map["PrincipalType"] = self.principalType!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AttachDate"] as? String {
                    self.attachDate = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["PolicyName"] as? String {
                    self.policyName = value
                }
                if let value = dict["PolicyType"] as? String {
                    self.policyType = value
                }
                if let value = dict["PrincipalName"] as? String {
                    self.principalName = value
                }
                if let value = dict["PrincipalType"] as? String {
                    self.principalType = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
            }
        }
        public var policyAttachment: [ListPolicyAttachmentsResponseBody.PolicyAttachments.PolicyAttachment]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.policyAttachment != nil {
                var tmp : [Any] = []
                for k in self.policyAttachment! {
                    tmp.append(k.toMap())
                }
                map["PolicyAttachment"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PolicyAttachment"] as? [Any?] {
                var tmp : [ListPolicyAttachmentsResponseBody.PolicyAttachments.PolicyAttachment] = []
                for v in value {
                    if v != nil {
                        var model = ListPolicyAttachmentsResponseBody.PolicyAttachments.PolicyAttachment()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.policyAttachment = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var policyAttachments: ListPolicyAttachmentsResponseBody.PolicyAttachments?

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
        try self.policyAttachments?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.policyAttachments != nil {
            map["PolicyAttachments"] = self.policyAttachments?.toMap()
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
        if let value = dict["PolicyAttachments"] as? [String: Any?] {
            var model = ListPolicyAttachmentsResponseBody.PolicyAttachments()
            model.fromMap(value)
            self.policyAttachments = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListPolicyAttachmentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPolicyAttachmentsResponseBody?

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
            var model = ListPolicyAttachmentsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPolicyVersionsRequest : Tea.TeaModel {
    public var policyName: String?

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
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
    }
}

public class ListPolicyVersionsResponseBody : Tea.TeaModel {
    public class PolicyVersions : Tea.TeaModel {
        public class PolicyVersion : Tea.TeaModel {
            public var createDate: String?

            public var isDefaultVersion: Bool?

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
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.isDefaultVersion != nil {
                    map["IsDefaultVersion"] = self.isDefaultVersion!
                }
                if self.versionId != nil {
                    map["VersionId"] = self.versionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateDate"] as? String {
                    self.createDate = value
                }
                if let value = dict["IsDefaultVersion"] as? Bool {
                    self.isDefaultVersion = value
                }
                if let value = dict["VersionId"] as? String {
                    self.versionId = value
                }
            }
        }
        public var policyVersion: [ListPolicyVersionsResponseBody.PolicyVersions.PolicyVersion]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.policyVersion != nil {
                var tmp : [Any] = []
                for k in self.policyVersion! {
                    tmp.append(k.toMap())
                }
                map["PolicyVersion"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PolicyVersion"] as? [Any?] {
                var tmp : [ListPolicyVersionsResponseBody.PolicyVersions.PolicyVersion] = []
                for v in value {
                    if v != nil {
                        var model = ListPolicyVersionsResponseBody.PolicyVersions.PolicyVersion()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.policyVersion = tmp
            }
        }
    }
    public var policyVersions: ListPolicyVersionsResponseBody.PolicyVersions?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policyVersions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyVersions != nil {
            map["PolicyVersions"] = self.policyVersions?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyVersions"] as? [String: Any?] {
            var model = ListPolicyVersionsResponseBody.PolicyVersions()
            model.fromMap(value)
            self.policyVersions = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListPolicyVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPolicyVersionsResponseBody?

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
            var model = ListPolicyVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListResourceGroupsRequest : Tea.TeaModel {
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
    public var displayName: String?

    public var includeTags: Bool?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var resourceGroupIds: [String]?

    public var status: String?

    public var tag: [ListResourceGroupsRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.includeTags != nil {
            map["IncludeTags"] = self.includeTags!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceGroupIds != nil {
            map["ResourceGroupIds"] = self.resourceGroupIds!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["IncludeTags"] as? Bool {
            self.includeTags = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceGroupIds"] as? [String] {
            self.resourceGroupIds = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListResourceGroupsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListResourceGroupsRequest.Tag()
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

public class ListResourceGroupsResponseBody : Tea.TeaModel {
    public class ResourceGroups : Tea.TeaModel {
        public class ResourceGroup : Tea.TeaModel {
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
                public var tag: [ListResourceGroupsResponseBody.ResourceGroups.ResourceGroup.Tags.Tag]?

                public override init() {
                    super.init()
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
                        var tmp : [ListResourceGroupsResponseBody.ResourceGroups.ResourceGroup.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = ListResourceGroupsResponseBody.ResourceGroups.ResourceGroup.Tags.Tag()
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
            public var accountId: String?

            public var createDate: String?

            public var displayName: String?

            public var id: String?

            public var name: String?

            public var status: String?

            public var tags: ListResourceGroupsResponseBody.ResourceGroups.ResourceGroup.Tags?

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
                if self.accountId != nil {
                    map["AccountId"] = self.accountId!
                }
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccountId"] as? String {
                    self.accountId = value
                }
                if let value = dict["CreateDate"] as? String {
                    self.createDate = value
                }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = ListResourceGroupsResponseBody.ResourceGroups.ResourceGroup.Tags()
                    model.fromMap(value)
                    self.tags = model
                }
            }
        }
        public var resourceGroup: [ListResourceGroupsResponseBody.ResourceGroups.ResourceGroup]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resourceGroup != nil {
                var tmp : [Any] = []
                for k in self.resourceGroup! {
                    tmp.append(k.toMap())
                }
                map["ResourceGroup"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceGroup"] as? [Any?] {
                var tmp : [ListResourceGroupsResponseBody.ResourceGroups.ResourceGroup] = []
                for v in value {
                    if v != nil {
                        var model = ListResourceGroupsResponseBody.ResourceGroups.ResourceGroup()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.resourceGroup = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var resourceGroups: ListResourceGroupsResponseBody.ResourceGroups?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceGroups?.validate()
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
        if self.resourceGroups != nil {
            map["ResourceGroups"] = self.resourceGroups?.toMap()
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
        if let value = dict["ResourceGroups"] as? [String: Any?] {
            var model = ListResourceGroupsResponseBody.ResourceGroups()
            model.fromMap(value)
            self.resourceGroups = model
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListResourceGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceGroupsResponseBody?

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
            var model = ListResourceGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListResourceGroupsWithAuthDetailsRequest : Tea.TeaModel {
    public class ResourceTypes : Tea.TeaModel {
        public var resourceTypeCode: String?

        public var service: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resourceTypeCode != nil {
                map["ResourceTypeCode"] = self.resourceTypeCode!
            }
            if self.service != nil {
                map["Service"] = self.service!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceTypeCode"] as? String {
                self.resourceTypeCode = value
            }
            if let value = dict["Service"] as? String {
                self.service = value
            }
        }
    }
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
    public var displayName: String?

    public var includeTags: Bool?

    public var name: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupIds: [String]?

    public var resourceRegionId: String?

    public var resourceTypes: [ListResourceGroupsWithAuthDetailsRequest.ResourceTypes]?

    public var status: String?

    public var tag: [ListResourceGroupsWithAuthDetailsRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.includeTags != nil {
            map["IncludeTags"] = self.includeTags!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceGroupIds != nil {
            map["ResourceGroupIds"] = self.resourceGroupIds!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        if self.resourceTypes != nil {
            var tmp : [Any] = []
            for k in self.resourceTypes! {
                tmp.append(k.toMap())
            }
            map["ResourceTypes"] = tmp
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["IncludeTags"] as? Bool {
            self.includeTags = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceGroupIds"] as? [String] {
            self.resourceGroupIds = value
        }
        if let value = dict["ResourceRegionId"] as? String {
            self.resourceRegionId = value
        }
        if let value = dict["ResourceTypes"] as? [Any?] {
            var tmp : [ListResourceGroupsWithAuthDetailsRequest.ResourceTypes] = []
            for v in value {
                if v != nil {
                    var model = ListResourceGroupsWithAuthDetailsRequest.ResourceTypes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceTypes = tmp
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListResourceGroupsWithAuthDetailsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListResourceGroupsWithAuthDetailsRequest.Tag()
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

public class ListResourceGroupsWithAuthDetailsResponseBody : Tea.TeaModel {
    public class AuthDetails : Tea.TeaModel {
        public class AuthOfResourceGroups : Tea.TeaModel {
            public var hasPermission: Bool?

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
                if self.hasPermission != nil {
                    map["HasPermission"] = self.hasPermission!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["HasPermission"] as? Bool {
                    self.hasPermission = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
            }
        }
        public var accountScopeAuth: Bool?

        public var authOfResourceGroups: [ListResourceGroupsWithAuthDetailsResponseBody.AuthDetails.AuthOfResourceGroups]?

        public var resourceType: String?

        public var service: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountScopeAuth != nil {
                map["AccountScopeAuth"] = self.accountScopeAuth!
            }
            if self.authOfResourceGroups != nil {
                var tmp : [Any] = []
                for k in self.authOfResourceGroups! {
                    tmp.append(k.toMap())
                }
                map["AuthOfResourceGroups"] = tmp
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.service != nil {
                map["Service"] = self.service!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountScopeAuth"] as? Bool {
                self.accountScopeAuth = value
            }
            if let value = dict["AuthOfResourceGroups"] as? [Any?] {
                var tmp : [ListResourceGroupsWithAuthDetailsResponseBody.AuthDetails.AuthOfResourceGroups] = []
                for v in value {
                    if v != nil {
                        var model = ListResourceGroupsWithAuthDetailsResponseBody.AuthDetails.AuthOfResourceGroups()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.authOfResourceGroups = tmp
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["Service"] as? String {
                self.service = value
            }
        }
    }
    public class ResourceGroups : Tea.TeaModel {
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
        public var accountId: String?

        public var createDate: String?

        public var displayName: String?

        public var id: String?

        public var name: String?

        public var status: String?

        public var tags: [ListResourceGroupsWithAuthDetailsResponseBody.ResourceGroups.Tags]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.status != nil {
                map["Status"] = self.status!
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
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListResourceGroupsWithAuthDetailsResponseBody.ResourceGroups.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListResourceGroupsWithAuthDetailsResponseBody.ResourceGroups.Tags()
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
    public var authDetails: [ListResourceGroupsWithAuthDetailsResponseBody.AuthDetails]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var resourceGroups: [ListResourceGroupsWithAuthDetailsResponseBody.ResourceGroups]?

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
        if self.authDetails != nil {
            var tmp : [Any] = []
            for k in self.authDetails! {
                tmp.append(k.toMap())
            }
            map["AuthDetails"] = tmp
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
        if self.resourceGroups != nil {
            var tmp : [Any] = []
            for k in self.resourceGroups! {
                tmp.append(k.toMap())
            }
            map["ResourceGroups"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthDetails"] as? [Any?] {
            var tmp : [ListResourceGroupsWithAuthDetailsResponseBody.AuthDetails] = []
            for v in value {
                if v != nil {
                    var model = ListResourceGroupsWithAuthDetailsResponseBody.AuthDetails()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.authDetails = tmp
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
        if let value = dict["ResourceGroups"] as? [Any?] {
            var tmp : [ListResourceGroupsWithAuthDetailsResponseBody.ResourceGroups] = []
            for v in value {
                if v != nil {
                    var model = ListResourceGroupsWithAuthDetailsResponseBody.ResourceGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceGroups = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListResourceGroupsWithAuthDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceGroupsWithAuthDetailsResponseBody?

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
            var model = ListResourceGroupsWithAuthDetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListResourcesRequest : Tea.TeaModel {
    public class ResourceTypes : Tea.TeaModel {
        public var resourceType: String?

        public var service: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.service != nil {
                map["Service"] = self.service!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["Service"] as? String {
                self.service = value
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var region: String?

    public var resourceGroupId: String?

    public var resourceId: String?

    public var resourceType: String?

    public var resourceTypes: [ListResourcesRequest.ResourceTypes]?

    public var service: String?

    public override init() {
        super.init()
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
        if self.region != nil {
            map["Region"] = self.region!
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
        if self.resourceTypes != nil {
            var tmp : [Any] = []
            for k in self.resourceTypes! {
                tmp.append(k.toMap())
            }
            map["ResourceTypes"] = tmp
        }
        if self.service != nil {
            map["Service"] = self.service!
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
        if let value = dict["Region"] as? String {
            self.region = value
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
        if let value = dict["ResourceTypes"] as? [Any?] {
            var tmp : [ListResourcesRequest.ResourceTypes] = []
            for v in value {
                if v != nil {
                    var model = ListResourcesRequest.ResourceTypes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceTypes = tmp
        }
        if let value = dict["Service"] as? String {
            self.service = value
        }
    }
}

public class ListResourcesResponseBody : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public class Resource : Tea.TeaModel {
            public var createDate: String?

            public var regionId: String?

            public var resourceGroupId: String?

            public var resourceId: String?

            public var resourceType: String?

            public var service: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
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
                if self.service != nil {
                    map["Service"] = self.service!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateDate"] as? String {
                    self.createDate = value
                }
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
                if let value = dict["Service"] as? String {
                    self.service = value
                }
            }
        }
        public var resource: [ListResourcesResponseBody.Resources.Resource]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resource != nil {
                var tmp : [Any] = []
                for k in self.resource! {
                    tmp.append(k.toMap())
                }
                map["Resource"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Resource"] as? [Any?] {
                var tmp : [ListResourcesResponseBody.Resources.Resource] = []
                for v in value {
                    if v != nil {
                        var model = ListResourcesResponseBody.Resources.Resource()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.resource = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var resources: ListResourcesResponseBody.Resources?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resources?.validate()
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
        if self.resources != nil {
            map["Resources"] = self.resources?.toMap()
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
        if let value = dict["Resources"] as? [String: Any?] {
            var model = ListResourcesResponseBody.Resources()
            model.fromMap(value)
            self.resources = model
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourcesResponseBody?

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
            var model = ListResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRolesRequest : Tea.TeaModel {
    public var language: String?

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
        if self.language != nil {
            map["Language"] = self.language!
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
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListRolesResponseBody : Tea.TeaModel {
    public class Roles : Tea.TeaModel {
        public class Role : Tea.TeaModel {
            public class LatestDeletionTask : Tea.TeaModel {
                public var createDate: String?

                public var deletionTaskId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.createDate != nil {
                        map["CreateDate"] = self.createDate!
                    }
                    if self.deletionTaskId != nil {
                        map["DeletionTaskId"] = self.deletionTaskId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CreateDate"] as? String {
                        self.createDate = value
                    }
                    if let value = dict["DeletionTaskId"] as? String {
                        self.deletionTaskId = value
                    }
                }
            }
            public var arn: String?

            public var createDate: String?

            public var description_: String?

            public var isServiceLinkedRole: Bool?

            public var latestDeletionTask: ListRolesResponseBody.Roles.Role.LatestDeletionTask?

            public var maxSessionDuration: Int64?

            public var roleId: String?

            public var roleName: String?

            public var rolePrincipalName: String?

            public var updateDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.latestDeletionTask?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arn != nil {
                    map["Arn"] = self.arn!
                }
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.isServiceLinkedRole != nil {
                    map["IsServiceLinkedRole"] = self.isServiceLinkedRole!
                }
                if self.latestDeletionTask != nil {
                    map["LatestDeletionTask"] = self.latestDeletionTask?.toMap()
                }
                if self.maxSessionDuration != nil {
                    map["MaxSessionDuration"] = self.maxSessionDuration!
                }
                if self.roleId != nil {
                    map["RoleId"] = self.roleId!
                }
                if self.roleName != nil {
                    map["RoleName"] = self.roleName!
                }
                if self.rolePrincipalName != nil {
                    map["RolePrincipalName"] = self.rolePrincipalName!
                }
                if self.updateDate != nil {
                    map["UpdateDate"] = self.updateDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Arn"] as? String {
                    self.arn = value
                }
                if let value = dict["CreateDate"] as? String {
                    self.createDate = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["IsServiceLinkedRole"] as? Bool {
                    self.isServiceLinkedRole = value
                }
                if let value = dict["LatestDeletionTask"] as? [String: Any?] {
                    var model = ListRolesResponseBody.Roles.Role.LatestDeletionTask()
                    model.fromMap(value)
                    self.latestDeletionTask = model
                }
                if let value = dict["MaxSessionDuration"] as? Int64 {
                    self.maxSessionDuration = value
                }
                if let value = dict["RoleId"] as? String {
                    self.roleId = value
                }
                if let value = dict["RoleName"] as? String {
                    self.roleName = value
                }
                if let value = dict["RolePrincipalName"] as? String {
                    self.rolePrincipalName = value
                }
                if let value = dict["UpdateDate"] as? String {
                    self.updateDate = value
                }
            }
        }
        public var role: [ListRolesResponseBody.Roles.Role]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.role != nil {
                var tmp : [Any] = []
                for k in self.role! {
                    tmp.append(k.toMap())
                }
                map["Role"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Role"] as? [Any?] {
                var tmp : [ListRolesResponseBody.Roles.Role] = []
                for v in value {
                    if v != nil {
                        var model = ListRolesResponseBody.Roles.Role()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.role = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var roles: ListRolesResponseBody.Roles?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.roles?.validate()
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
        if self.roles != nil {
            map["Roles"] = self.roles?.toMap()
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
        if let value = dict["Roles"] as? [String: Any?] {
            var model = ListRolesResponseBody.Roles()
            model.fromMap(value)
            self.roles = model
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListRolesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRolesResponseBody?

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
            var model = ListRolesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTagKeysRequest : Tea.TeaModel {
    public var keyFilter: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.keyFilter != nil {
            map["KeyFilter"] = self.keyFilter!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyFilter"] as? String {
            self.keyFilter = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class ListTagKeysResponseBody : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
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
            if self.key != nil {
                map["Key"] = self.key!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var tags: [ListTagKeysResponseBody.Tags]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [ListTagKeysResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = ListTagKeysResponseBody.Tags()
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

public class ListTagKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagKeysResponseBody?

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
            var model = ListTagKeysResponseBody()
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
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: [ListTagResourcesResponseBody.TagResources]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
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
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagResources"] as? [Any?] {
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesResponseBody.TagResources()
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

public class ListTagValuesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var resourceType: String?

    public var tagKey: String?

    public var valueFilter: String?

    public override init() {
        super.init()
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
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        if self.valueFilter != nil {
            map["ValueFilter"] = self.valueFilter!
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
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKey"] as? String {
            self.tagKey = value
        }
        if let value = dict["ValueFilter"] as? String {
            self.valueFilter = value
        }
    }
}

public class ListTagValuesResponseBody : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
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
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var tags: [ListTagValuesResponseBody.Tags]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [ListTagValuesResponseBody.Tags] = []
            for v in value {
                if v != nil {
                    var model = ListTagValuesResponseBody.Tags()
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

public class ListTagValuesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagValuesResponseBody?

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
            var model = ListTagValuesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTargetAttachmentsForControlPolicyRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var policyId: String?

    public override init() {
        super.init()
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
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
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
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
    }
}

public class ListTargetAttachmentsForControlPolicyResponseBody : Tea.TeaModel {
    public class TargetAttachments : Tea.TeaModel {
        public class TargetAttachment : Tea.TeaModel {
            public var attachDate: String?

            public var targetId: String?

            public var targetName: String?

            public var targetType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attachDate != nil {
                    map["AttachDate"] = self.attachDate!
                }
                if self.targetId != nil {
                    map["TargetId"] = self.targetId!
                }
                if self.targetName != nil {
                    map["TargetName"] = self.targetName!
                }
                if self.targetType != nil {
                    map["TargetType"] = self.targetType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AttachDate"] as? String {
                    self.attachDate = value
                }
                if let value = dict["TargetId"] as? String {
                    self.targetId = value
                }
                if let value = dict["TargetName"] as? String {
                    self.targetName = value
                }
                if let value = dict["TargetType"] as? String {
                    self.targetType = value
                }
            }
        }
        public var targetAttachment: [ListTargetAttachmentsForControlPolicyResponseBody.TargetAttachments.TargetAttachment]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.targetAttachment != nil {
                var tmp : [Any] = []
                for k in self.targetAttachment! {
                    tmp.append(k.toMap())
                }
                map["TargetAttachment"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TargetAttachment"] as? [Any?] {
                var tmp : [ListTargetAttachmentsForControlPolicyResponseBody.TargetAttachments.TargetAttachment] = []
                for v in value {
                    if v != nil {
                        var model = ListTargetAttachmentsForControlPolicyResponseBody.TargetAttachments.TargetAttachment()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.targetAttachment = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var targetAttachments: ListTargetAttachmentsForControlPolicyResponseBody.TargetAttachments?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.targetAttachments?.validate()
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
        if self.targetAttachments != nil {
            map["TargetAttachments"] = self.targetAttachments?.toMap()
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
        if let value = dict["TargetAttachments"] as? [String: Any?] {
            var model = ListTargetAttachmentsForControlPolicyResponseBody.TargetAttachments()
            model.fromMap(value)
            self.targetAttachments = model
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListTargetAttachmentsForControlPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTargetAttachmentsForControlPolicyResponseBody?

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
            var model = ListTargetAttachmentsForControlPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTrustedServiceStatusRequest : Tea.TeaModel {
    public var adminAccountId: String?

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
        if self.adminAccountId != nil {
            map["AdminAccountId"] = self.adminAccountId!
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
        if let value = dict["AdminAccountId"] as? String {
            self.adminAccountId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListTrustedServiceStatusResponseBody : Tea.TeaModel {
    public class EnabledServicePrincipals : Tea.TeaModel {
        public class EnabledServicePrincipal : Tea.TeaModel {
            public var enableTime: String?

            public var servicePrincipal: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableTime != nil {
                    map["EnableTime"] = self.enableTime!
                }
                if self.servicePrincipal != nil {
                    map["ServicePrincipal"] = self.servicePrincipal!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EnableTime"] as? String {
                    self.enableTime = value
                }
                if let value = dict["ServicePrincipal"] as? String {
                    self.servicePrincipal = value
                }
            }
        }
        public var enabledServicePrincipal: [ListTrustedServiceStatusResponseBody.EnabledServicePrincipals.EnabledServicePrincipal]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enabledServicePrincipal != nil {
                var tmp : [Any] = []
                for k in self.enabledServicePrincipal! {
                    tmp.append(k.toMap())
                }
                map["EnabledServicePrincipal"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnabledServicePrincipal"] as? [Any?] {
                var tmp : [ListTrustedServiceStatusResponseBody.EnabledServicePrincipals.EnabledServicePrincipal] = []
                for v in value {
                    if v != nil {
                        var model = ListTrustedServiceStatusResponseBody.EnabledServicePrincipals.EnabledServicePrincipal()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.enabledServicePrincipal = tmp
            }
        }
    }
    public var enabledServicePrincipals: ListTrustedServiceStatusResponseBody.EnabledServicePrincipals?

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
        try self.enabledServicePrincipals?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enabledServicePrincipals != nil {
            map["EnabledServicePrincipals"] = self.enabledServicePrincipals?.toMap()
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
        if let value = dict["EnabledServicePrincipals"] as? [String: Any?] {
            var model = ListTrustedServiceStatusResponseBody.EnabledServicePrincipals()
            model.fromMap(value)
            self.enabledServicePrincipals = model
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

public class ListTrustedServiceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTrustedServiceStatusResponseBody?

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
            var model = ListTrustedServiceStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MoveAccountRequest : Tea.TeaModel {
    public var accountId: String?

    public var destinationFolderId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.destinationFolderId != nil {
            map["DestinationFolderId"] = self.destinationFolderId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["DestinationFolderId"] as? String {
            self.destinationFolderId = value
        }
    }
}

public class MoveAccountResponseBody : Tea.TeaModel {
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

public class MoveAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MoveAccountResponseBody?

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
            var model = MoveAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MoveResourcesRequest : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public var regionId: String?

        public var resourceId: String?

        public var resourceType: String?

        public var service: String?

        public override init() {
            super.init()
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
            if self.service != nil {
                map["Service"] = self.service!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["Service"] as? String {
                self.service = value
            }
        }
    }
    public var resourceGroupId: String?

    public var resources: [MoveResourcesRequest.Resources]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Resources"] as? [Any?] {
            var tmp : [MoveResourcesRequest.Resources] = []
            for v in value {
                if v != nil {
                    var model = MoveResourcesRequest.Resources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resources = tmp
        }
    }
}

public class MoveResourcesResponseBody : Tea.TeaModel {
    public class Responses : Tea.TeaModel {
        public var errorCode: String?

        public var errorMsg: String?

        public var regionId: String?

        public var requestId: String?

        public var resourceId: String?

        public var resourceType: String?

        public var service: String?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMsg != nil {
                map["ErrorMsg"] = self.errorMsg!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.service != nil {
                map["Service"] = self.service!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMsg"] as? String {
                self.errorMsg = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["Service"] as? String {
                self.service = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var requestId: String?

    public var responses: [MoveResourcesResponseBody.Responses]?

    public override init() {
        super.init()
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
        if self.responses != nil {
            var tmp : [Any] = []
            for k in self.responses! {
                tmp.append(k.toMap())
            }
            map["Responses"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Responses"] as? [Any?] {
            var tmp : [MoveResourcesResponseBody.Responses] = []
            for v in value {
                if v != nil {
                    var model = MoveResourcesResponseBody.Responses()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.responses = tmp
        }
    }
}

public class MoveResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MoveResourcesResponseBody?

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
            var model = MoveResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PromoteResourceAccountRequest : Tea.TeaModel {
    public var accountId: String?

    public var email: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
    }
}

public class PromoteResourceAccountResponseBody : Tea.TeaModel {
    public class Account : Tea.TeaModel {
        public var accountId: String?

        public var accountName: String?

        public var displayName: String?

        public var folderId: String?

        public var joinMethod: String?

        public var joinTime: String?

        public var modifyTime: String?

        public var recordId: String?

        public var resourceDirectoryId: String?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.folderId != nil {
                map["FolderId"] = self.folderId!
            }
            if self.joinMethod != nil {
                map["JoinMethod"] = self.joinMethod!
            }
            if self.joinTime != nil {
                map["JoinTime"] = self.joinTime!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.recordId != nil {
                map["RecordId"] = self.recordId!
            }
            if self.resourceDirectoryId != nil {
                map["ResourceDirectoryId"] = self.resourceDirectoryId!
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
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["AccountName"] as? String {
                self.accountName = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["FolderId"] as? String {
                self.folderId = value
            }
            if let value = dict["JoinMethod"] as? String {
                self.joinMethod = value
            }
            if let value = dict["JoinTime"] as? String {
                self.joinTime = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["RecordId"] as? String {
                self.recordId = value
            }
            if let value = dict["ResourceDirectoryId"] as? String {
                self.resourceDirectoryId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var account: PromoteResourceAccountResponseBody.Account?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.account?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.account != nil {
            map["Account"] = self.account?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? [String: Any?] {
            var model = PromoteResourceAccountResponseBody.Account()
            model.fromMap(value)
            self.account = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class PromoteResourceAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PromoteResourceAccountResponseBody?

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
            var model = PromoteResourceAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RegisterDelegatedAdministratorRequest : Tea.TeaModel {
    public var accountId: String?

    public var servicePrincipal: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.servicePrincipal != nil {
            map["ServicePrincipal"] = self.servicePrincipal!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["ServicePrincipal"] as? String {
            self.servicePrincipal = value
        }
    }
}

public class RegisterDelegatedAdministratorResponseBody : Tea.TeaModel {
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

public class RegisterDelegatedAdministratorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RegisterDelegatedAdministratorResponseBody?

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
            var model = RegisterDelegatedAdministratorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveCloudAccountRequest : Tea.TeaModel {
    public var accountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
    }
}

public class RemoveCloudAccountResponseBody : Tea.TeaModel {
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

public class RemoveCloudAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveCloudAccountResponseBody?

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
            var model = RemoveCloudAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResendCreateCloudAccountEmailRequest : Tea.TeaModel {
    public var recordId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RecordId"] as? String {
            self.recordId = value
        }
    }
}

public class ResendCreateCloudAccountEmailResponseBody : Tea.TeaModel {
    public class Account : Tea.TeaModel {
        public var accountId: String?

        public var accountName: String?

        public var displayName: String?

        public var folderId: String?

        public var joinMethod: String?

        public var joinTime: String?

        public var modifyTime: String?

        public var recordId: String?

        public var resourceDirectoryId: String?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.folderId != nil {
                map["FolderId"] = self.folderId!
            }
            if self.joinMethod != nil {
                map["JoinMethod"] = self.joinMethod!
            }
            if self.joinTime != nil {
                map["JoinTime"] = self.joinTime!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.recordId != nil {
                map["RecordId"] = self.recordId!
            }
            if self.resourceDirectoryId != nil {
                map["ResourceDirectoryId"] = self.resourceDirectoryId!
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
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["AccountName"] as? String {
                self.accountName = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["FolderId"] as? String {
                self.folderId = value
            }
            if let value = dict["JoinMethod"] as? String {
                self.joinMethod = value
            }
            if let value = dict["JoinTime"] as? String {
                self.joinTime = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["RecordId"] as? String {
                self.recordId = value
            }
            if let value = dict["ResourceDirectoryId"] as? String {
                self.resourceDirectoryId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var account: ResendCreateCloudAccountEmailResponseBody.Account?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.account?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.account != nil {
            map["Account"] = self.account?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? [String: Any?] {
            var model = ResendCreateCloudAccountEmailResponseBody.Account()
            model.fromMap(value)
            self.account = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ResendCreateCloudAccountEmailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResendCreateCloudAccountEmailResponseBody?

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
            var model = ResendCreateCloudAccountEmailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResendPromoteResourceAccountEmailRequest : Tea.TeaModel {
    public var recordId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.recordId != nil {
            map["RecordId"] = self.recordId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RecordId"] as? String {
            self.recordId = value
        }
    }
}

public class ResendPromoteResourceAccountEmailResponseBody : Tea.TeaModel {
    public class Account : Tea.TeaModel {
        public var accountId: String?

        public var accountName: String?

        public var displayName: String?

        public var folderId: String?

        public var joinMethod: String?

        public var joinTime: String?

        public var modifyTime: String?

        public var recordId: String?

        public var resourceDirectoryId: String?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.folderId != nil {
                map["FolderId"] = self.folderId!
            }
            if self.joinMethod != nil {
                map["JoinMethod"] = self.joinMethod!
            }
            if self.joinTime != nil {
                map["JoinTime"] = self.joinTime!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.recordId != nil {
                map["RecordId"] = self.recordId!
            }
            if self.resourceDirectoryId != nil {
                map["ResourceDirectoryId"] = self.resourceDirectoryId!
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
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["AccountName"] as? String {
                self.accountName = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["FolderId"] as? String {
                self.folderId = value
            }
            if let value = dict["JoinMethod"] as? String {
                self.joinMethod = value
            }
            if let value = dict["JoinTime"] as? String {
                self.joinTime = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["RecordId"] as? String {
                self.recordId = value
            }
            if let value = dict["ResourceDirectoryId"] as? String {
                self.resourceDirectoryId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var account: ResendPromoteResourceAccountEmailResponseBody.Account?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.account?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.account != nil {
            map["Account"] = self.account?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? [String: Any?] {
            var model = ResendPromoteResourceAccountEmailResponseBody.Account()
            model.fromMap(value)
            self.account = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ResendPromoteResourceAccountEmailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResendPromoteResourceAccountEmailResponseBody?

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
            var model = ResendPromoteResourceAccountEmailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RetryChangeAccountEmailRequest : Tea.TeaModel {
    public var accountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
    }
}

public class RetryChangeAccountEmailResponseBody : Tea.TeaModel {
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

public class RetryChangeAccountEmailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RetryChangeAccountEmailResponseBody?

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
            var model = RetryChangeAccountEmailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendVerificationCodeForBindSecureMobilePhoneRequest : Tea.TeaModel {
    public var accountId: String?

    public var secureMobilePhone: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.secureMobilePhone != nil {
            map["SecureMobilePhone"] = self.secureMobilePhone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["SecureMobilePhone"] as? String {
            self.secureMobilePhone = value
        }
    }
}

public class SendVerificationCodeForBindSecureMobilePhoneResponseBody : Tea.TeaModel {
    public var expirationDate: String?

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
        if self.expirationDate != nil {
            map["ExpirationDate"] = self.expirationDate!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExpirationDate"] as? String {
            self.expirationDate = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SendVerificationCodeForBindSecureMobilePhoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendVerificationCodeForBindSecureMobilePhoneResponseBody?

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
            var model = SendVerificationCodeForBindSecureMobilePhoneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendVerificationCodeForEnableRDRequest : Tea.TeaModel {
    public var secureMobilePhone: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.secureMobilePhone != nil {
            map["SecureMobilePhone"] = self.secureMobilePhone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SecureMobilePhone"] as? String {
            self.secureMobilePhone = value
        }
    }
}

public class SendVerificationCodeForEnableRDResponseBody : Tea.TeaModel {
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

public class SendVerificationCodeForEnableRDResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendVerificationCodeForEnableRDResponseBody?

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
            var model = SendVerificationCodeForEnableRDResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetDefaultPolicyVersionRequest : Tea.TeaModel {
    public var policyName: String?

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
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
        }
    }
}

public class SetDefaultPolicyVersionResponseBody : Tea.TeaModel {
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

public class SetDefaultPolicyVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDefaultPolicyVersionResponseBody?

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
            var model = SetDefaultPolicyVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetMemberDeletionPermissionRequest : Tea.TeaModel {
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class SetMemberDeletionPermissionResponseBody : Tea.TeaModel {
    public var managementAccountId: String?

    public var memberDeletionStatus: String?

    public var requestId: String?

    public var resourceDirectoryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.managementAccountId != nil {
            map["ManagementAccountId"] = self.managementAccountId!
        }
        if self.memberDeletionStatus != nil {
            map["MemberDeletionStatus"] = self.memberDeletionStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceDirectoryId != nil {
            map["ResourceDirectoryId"] = self.resourceDirectoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ManagementAccountId"] as? String {
            self.managementAccountId = value
        }
        if let value = dict["MemberDeletionStatus"] as? String {
            self.memberDeletionStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceDirectoryId"] as? String {
            self.resourceDirectoryId = value
        }
    }
}

public class SetMemberDeletionPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetMemberDeletionPermissionResponseBody?

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
            var model = SetMemberDeletionPermissionResponseBody()
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

public class UpdateAccountRequest : Tea.TeaModel {
    public var accountId: String?

    public var newAccountType: String?

    public var newDisplayName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.newAccountType != nil {
            map["NewAccountType"] = self.newAccountType!
        }
        if self.newDisplayName != nil {
            map["NewDisplayName"] = self.newDisplayName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["NewAccountType"] as? String {
            self.newAccountType = value
        }
        if let value = dict["NewDisplayName"] as? String {
            self.newDisplayName = value
        }
    }
}

public class UpdateAccountResponseBody : Tea.TeaModel {
    public class Account : Tea.TeaModel {
        public var accountId: String?

        public var accountName: String?

        public var displayName: String?

        public var folderId: String?

        public var joinMethod: String?

        public var joinTime: String?

        public var modifyTime: String?

        public var resourceDirectoryId: String?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.folderId != nil {
                map["FolderId"] = self.folderId!
            }
            if self.joinMethod != nil {
                map["JoinMethod"] = self.joinMethod!
            }
            if self.joinTime != nil {
                map["JoinTime"] = self.joinTime!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.resourceDirectoryId != nil {
                map["ResourceDirectoryId"] = self.resourceDirectoryId!
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
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["AccountName"] as? String {
                self.accountName = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["FolderId"] as? String {
                self.folderId = value
            }
            if let value = dict["JoinMethod"] as? String {
                self.joinMethod = value
            }
            if let value = dict["JoinTime"] as? String {
                self.joinTime = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["ResourceDirectoryId"] as? String {
                self.resourceDirectoryId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var account: UpdateAccountResponseBody.Account?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.account?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.account != nil {
            map["Account"] = self.account?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? [String: Any?] {
            var model = UpdateAccountResponseBody.Account()
            model.fromMap(value)
            self.account = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAccountResponseBody?

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
            var model = UpdateAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAssociatedTransferSettingRequest : Tea.TeaModel {
    public class RuleSettings : Tea.TeaModel {
        public var associatedResourceType: String?

        public var associatedService: String?

        public var masterResourceType: String?

        public var masterService: String?

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
            if self.associatedResourceType != nil {
                map["AssociatedResourceType"] = self.associatedResourceType!
            }
            if self.associatedService != nil {
                map["AssociatedService"] = self.associatedService!
            }
            if self.masterResourceType != nil {
                map["MasterResourceType"] = self.masterResourceType!
            }
            if self.masterService != nil {
                map["MasterService"] = self.masterService!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AssociatedResourceType"] as? String {
                self.associatedResourceType = value
            }
            if let value = dict["AssociatedService"] as? String {
                self.associatedService = value
            }
            if let value = dict["MasterResourceType"] as? String {
                self.masterResourceType = value
            }
            if let value = dict["MasterService"] as? String {
                self.masterService = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var enableExistingResourcesTransfer: String?

    public var ruleSettings: [UpdateAssociatedTransferSettingRequest.RuleSettings]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enableExistingResourcesTransfer != nil {
            map["EnableExistingResourcesTransfer"] = self.enableExistingResourcesTransfer!
        }
        if self.ruleSettings != nil {
            var tmp : [Any] = []
            for k in self.ruleSettings! {
                tmp.append(k.toMap())
            }
            map["RuleSettings"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnableExistingResourcesTransfer"] as? String {
            self.enableExistingResourcesTransfer = value
        }
        if let value = dict["RuleSettings"] as? [Any?] {
            var tmp : [UpdateAssociatedTransferSettingRequest.RuleSettings] = []
            for v in value {
                if v != nil {
                    var model = UpdateAssociatedTransferSettingRequest.RuleSettings()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ruleSettings = tmp
        }
    }
}

public class UpdateAssociatedTransferSettingResponseBody : Tea.TeaModel {
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

public class UpdateAssociatedTransferSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAssociatedTransferSettingResponseBody?

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
            var model = UpdateAssociatedTransferSettingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAutoGroupingConfigRequest : Tea.TeaModel {
    public var enableExistingResourcesTransfer: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enableExistingResourcesTransfer != nil {
            map["EnableExistingResourcesTransfer"] = self.enableExistingResourcesTransfer!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnableExistingResourcesTransfer"] as? Bool {
            self.enableExistingResourcesTransfer = value
        }
    }
}

public class UpdateAutoGroupingConfigResponseBody : Tea.TeaModel {
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

public class UpdateAutoGroupingConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAutoGroupingConfigResponseBody?

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
            var model = UpdateAutoGroupingConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAutoGroupingRuleRequest : Tea.TeaModel {
    public class RuleContents : Tea.TeaModel {
        public var autoGroupingScopeCondition: String?

        public var ruleContentId: String?

        public var targetResourceGroupCondition: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoGroupingScopeCondition != nil {
                map["AutoGroupingScopeCondition"] = self.autoGroupingScopeCondition!
            }
            if self.ruleContentId != nil {
                map["RuleContentId"] = self.ruleContentId!
            }
            if self.targetResourceGroupCondition != nil {
                map["TargetResourceGroupCondition"] = self.targetResourceGroupCondition!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoGroupingScopeCondition"] as? String {
                self.autoGroupingScopeCondition = value
            }
            if let value = dict["RuleContentId"] as? String {
                self.ruleContentId = value
            }
            if let value = dict["TargetResourceGroupCondition"] as? String {
                self.targetResourceGroupCondition = value
            }
        }
    }
    public var excludeRegionIdsScope: String?

    public var excludeResourceGroupIdsScope: String?

    public var excludeResourceIdsScope: String?

    public var excludeResourceTypesScope: String?

    public var regionIdsScope: String?

    public var resourceGroupIdsScope: String?

    public var resourceIdsScope: String?

    public var resourceTypesScope: String?

    public var ruleContents: [UpdateAutoGroupingRuleRequest.RuleContents]?

    public var ruleDesc: String?

    public var ruleId: String?

    public var ruleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.excludeRegionIdsScope != nil {
            map["ExcludeRegionIdsScope"] = self.excludeRegionIdsScope!
        }
        if self.excludeResourceGroupIdsScope != nil {
            map["ExcludeResourceGroupIdsScope"] = self.excludeResourceGroupIdsScope!
        }
        if self.excludeResourceIdsScope != nil {
            map["ExcludeResourceIdsScope"] = self.excludeResourceIdsScope!
        }
        if self.excludeResourceTypesScope != nil {
            map["ExcludeResourceTypesScope"] = self.excludeResourceTypesScope!
        }
        if self.regionIdsScope != nil {
            map["RegionIdsScope"] = self.regionIdsScope!
        }
        if self.resourceGroupIdsScope != nil {
            map["ResourceGroupIdsScope"] = self.resourceGroupIdsScope!
        }
        if self.resourceIdsScope != nil {
            map["ResourceIdsScope"] = self.resourceIdsScope!
        }
        if self.resourceTypesScope != nil {
            map["ResourceTypesScope"] = self.resourceTypesScope!
        }
        if self.ruleContents != nil {
            var tmp : [Any] = []
            for k in self.ruleContents! {
                tmp.append(k.toMap())
            }
            map["RuleContents"] = tmp
        }
        if self.ruleDesc != nil {
            map["RuleDesc"] = self.ruleDesc!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExcludeRegionIdsScope"] as? String {
            self.excludeRegionIdsScope = value
        }
        if let value = dict["ExcludeResourceGroupIdsScope"] as? String {
            self.excludeResourceGroupIdsScope = value
        }
        if let value = dict["ExcludeResourceIdsScope"] as? String {
            self.excludeResourceIdsScope = value
        }
        if let value = dict["ExcludeResourceTypesScope"] as? String {
            self.excludeResourceTypesScope = value
        }
        if let value = dict["RegionIdsScope"] as? String {
            self.regionIdsScope = value
        }
        if let value = dict["ResourceGroupIdsScope"] as? String {
            self.resourceGroupIdsScope = value
        }
        if let value = dict["ResourceIdsScope"] as? String {
            self.resourceIdsScope = value
        }
        if let value = dict["ResourceTypesScope"] as? String {
            self.resourceTypesScope = value
        }
        if let value = dict["RuleContents"] as? [Any?] {
            var tmp : [UpdateAutoGroupingRuleRequest.RuleContents] = []
            for v in value {
                if v != nil {
                    var model = UpdateAutoGroupingRuleRequest.RuleContents()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ruleContents = tmp
        }
        if let value = dict["RuleDesc"] as? String {
            self.ruleDesc = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
    }
}

public class UpdateAutoGroupingRuleResponseBody : Tea.TeaModel {
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

public class UpdateAutoGroupingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAutoGroupingRuleResponseBody?

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
            var model = UpdateAutoGroupingRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateControlPolicyRequest : Tea.TeaModel {
    public var newDescription: String?

    public var newPolicyDocument: String?

    public var newPolicyName: String?

    public var policyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newDescription != nil {
            map["NewDescription"] = self.newDescription!
        }
        if self.newPolicyDocument != nil {
            map["NewPolicyDocument"] = self.newPolicyDocument!
        }
        if self.newPolicyName != nil {
            map["NewPolicyName"] = self.newPolicyName!
        }
        if self.policyId != nil {
            map["PolicyId"] = self.policyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewDescription"] as? String {
            self.newDescription = value
        }
        if let value = dict["NewPolicyDocument"] as? String {
            self.newPolicyDocument = value
        }
        if let value = dict["NewPolicyName"] as? String {
            self.newPolicyName = value
        }
        if let value = dict["PolicyId"] as? String {
            self.policyId = value
        }
    }
}

public class UpdateControlPolicyResponseBody : Tea.TeaModel {
    public class ControlPolicy : Tea.TeaModel {
        public var attachmentCount: String?

        public var createDate: String?

        public var description_: String?

        public var effectScope: String?

        public var policyId: String?

        public var policyName: String?

        public var policyType: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attachmentCount != nil {
                map["AttachmentCount"] = self.attachmentCount!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.effectScope != nil {
                map["EffectScope"] = self.effectScope!
            }
            if self.policyId != nil {
                map["PolicyId"] = self.policyId!
            }
            if self.policyName != nil {
                map["PolicyName"] = self.policyName!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttachmentCount"] as? String {
                self.attachmentCount = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EffectScope"] as? String {
                self.effectScope = value
            }
            if let value = dict["PolicyId"] as? String {
                self.policyId = value
            }
            if let value = dict["PolicyName"] as? String {
                self.policyName = value
            }
            if let value = dict["PolicyType"] as? String {
                self.policyType = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var controlPolicy: UpdateControlPolicyResponseBody.ControlPolicy?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.controlPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.controlPolicy != nil {
            map["ControlPolicy"] = self.controlPolicy?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ControlPolicy"] as? [String: Any?] {
            var model = UpdateControlPolicyResponseBody.ControlPolicy()
            model.fromMap(value)
            self.controlPolicy = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateControlPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateControlPolicyResponseBody?

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
            var model = UpdateControlPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateFolderRequest : Tea.TeaModel {
    public var folderId: String?

    public var newFolderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.folderId != nil {
            map["FolderId"] = self.folderId!
        }
        if self.newFolderName != nil {
            map["NewFolderName"] = self.newFolderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FolderId"] as? String {
            self.folderId = value
        }
        if let value = dict["NewFolderName"] as? String {
            self.newFolderName = value
        }
    }
}

public class UpdateFolderResponseBody : Tea.TeaModel {
    public class Folder : Tea.TeaModel {
        public var createTime: String?

        public var folderId: String?

        public var folderName: String?

        public var parentFolderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.folderId != nil {
                map["FolderId"] = self.folderId!
            }
            if self.folderName != nil {
                map["FolderName"] = self.folderName!
            }
            if self.parentFolderId != nil {
                map["ParentFolderId"] = self.parentFolderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["FolderId"] as? String {
                self.folderId = value
            }
            if let value = dict["FolderName"] as? String {
                self.folderName = value
            }
            if let value = dict["ParentFolderId"] as? String {
                self.parentFolderId = value
            }
        }
    }
    public var folder: UpdateFolderResponseBody.Folder?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.folder?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.folder != nil {
            map["Folder"] = self.folder?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Folder"] as? [String: Any?] {
            var model = UpdateFolderResponseBody.Folder()
            model.fromMap(value)
            self.folder = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateFolderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFolderResponseBody?

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
            var model = UpdateFolderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateResourceGroupRequest : Tea.TeaModel {
    public var newDisplayName: String?

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
        if self.newDisplayName != nil {
            map["NewDisplayName"] = self.newDisplayName!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewDisplayName"] as? String {
            self.newDisplayName = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class UpdateResourceGroupResponseBody : Tea.TeaModel {
    public class ResourceGroup : Tea.TeaModel {
        public var accountId: String?

        public var createDate: String?

        public var displayName: String?

        public var id: String?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public var requestId: String?

    public var resourceGroup: UpdateResourceGroupResponseBody.ResourceGroup?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resourceGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroup != nil {
            map["ResourceGroup"] = self.resourceGroup?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroup"] as? [String: Any?] {
            var model = UpdateResourceGroupResponseBody.ResourceGroup()
            model.fromMap(value)
            self.resourceGroup = model
        }
    }
}

public class UpdateResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResourceGroupResponseBody?

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
            var model = UpdateResourceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateResourceGroupAdminSettingRequest : Tea.TeaModel {
    public var creatorAsAdmin: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.creatorAsAdmin != nil {
            map["CreatorAsAdmin"] = self.creatorAsAdmin!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatorAsAdmin"] as? Bool {
            self.creatorAsAdmin = value
        }
    }
}

public class UpdateResourceGroupAdminSettingResponseBody : Tea.TeaModel {
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

public class UpdateResourceGroupAdminSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResourceGroupAdminSettingResponseBody?

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
            var model = UpdateResourceGroupAdminSettingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateRoleRequest : Tea.TeaModel {
    public var newAssumeRolePolicyDocument: String?

    public var newDescription: String?

    public var newMaxSessionDuration: Int64?

    public var roleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newAssumeRolePolicyDocument != nil {
            map["NewAssumeRolePolicyDocument"] = self.newAssumeRolePolicyDocument!
        }
        if self.newDescription != nil {
            map["NewDescription"] = self.newDescription!
        }
        if self.newMaxSessionDuration != nil {
            map["NewMaxSessionDuration"] = self.newMaxSessionDuration!
        }
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewAssumeRolePolicyDocument"] as? String {
            self.newAssumeRolePolicyDocument = value
        }
        if let value = dict["NewDescription"] as? String {
            self.newDescription = value
        }
        if let value = dict["NewMaxSessionDuration"] as? Int64 {
            self.newMaxSessionDuration = value
        }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
        }
    }
}

public class UpdateRoleResponseBody : Tea.TeaModel {
    public class Role : Tea.TeaModel {
        public var arn: String?

        public var assumeRolePolicyDocument: String?

        public var createDate: String?

        public var description_: String?

        public var maxSessionDuration: Int64?

        public var roleId: String?

        public var roleName: String?

        public var rolePrincipalName: String?

        public var updateDate: String?

        public override init() {
            super.init()
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
            if self.assumeRolePolicyDocument != nil {
                map["AssumeRolePolicyDocument"] = self.assumeRolePolicyDocument!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.maxSessionDuration != nil {
                map["MaxSessionDuration"] = self.maxSessionDuration!
            }
            if self.roleId != nil {
                map["RoleId"] = self.roleId!
            }
            if self.roleName != nil {
                map["RoleName"] = self.roleName!
            }
            if self.rolePrincipalName != nil {
                map["RolePrincipalName"] = self.rolePrincipalName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Arn"] as? String {
                self.arn = value
            }
            if let value = dict["AssumeRolePolicyDocument"] as? String {
                self.assumeRolePolicyDocument = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["MaxSessionDuration"] as? Int64 {
                self.maxSessionDuration = value
            }
            if let value = dict["RoleId"] as? String {
                self.roleId = value
            }
            if let value = dict["RoleName"] as? String {
                self.roleName = value
            }
            if let value = dict["RolePrincipalName"] as? String {
                self.rolePrincipalName = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
        }
    }
    public var requestId: String?

    public var role: UpdateRoleResponseBody.Role?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.role?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.role != nil {
            map["Role"] = self.role?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Role"] as? [String: Any?] {
            var model = UpdateRoleResponseBody.Role()
            model.fromMap(value)
            self.role = model
        }
    }
}

public class UpdateRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRoleResponseBody?

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
            var model = UpdateRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
