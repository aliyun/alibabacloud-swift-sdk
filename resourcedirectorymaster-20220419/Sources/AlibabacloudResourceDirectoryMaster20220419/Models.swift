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

public class AddMessageContactRequest : Tea.TeaModel {
    public var emailAddress: String?

    public var messageTypes: [String]?

    public var name: String?

    public var phoneNumber: String?

    public var title: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.emailAddress != nil {
            map["EmailAddress"] = self.emailAddress!
        }
        if self.messageTypes != nil {
            map["MessageTypes"] = self.messageTypes!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EmailAddress"] as? String {
            self.emailAddress = value
        }
        if let value = dict["MessageTypes"] as? [String] {
            self.messageTypes = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class AddMessageContactResponseBody : Tea.TeaModel {
    public class Contact : Tea.TeaModel {
        public var contactId: String?

        public var createDate: String?

        public override init() {
            super.init()
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
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContactId"] as? String {
                self.contactId = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
        }
    }
    public var contact: AddMessageContactResponseBody.Contact?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.contact?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contact != nil {
            map["Contact"] = self.contact?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Contact"] as? [String: Any?] {
            var model = AddMessageContactResponseBody.Contact()
            model.fromMap(value)
            self.contact = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AddMessageContactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddMessageContactResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddMessageContactResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AssociateMembersRequest : Tea.TeaModel {
    public var contactId: String?

    public var members: [String]?

    public override init() {
        super.init()
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
        if self.members != nil {
            map["Members"] = self.members!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactId"] as? String {
            self.contactId = value
        }
        if let value = dict["Members"] as? [String] {
            self.members = value
        }
    }
}

public class AssociateMembersResponseBody : Tea.TeaModel {
    public class Members : Tea.TeaModel {
        public var contactId: String?

        public var memberId: String?

        public var modifyDate: String?

        public override init() {
            super.init()
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
            if self.memberId != nil {
                map["MemberId"] = self.memberId!
            }
            if self.modifyDate != nil {
                map["ModifyDate"] = self.modifyDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContactId"] as? String {
                self.contactId = value
            }
            if let value = dict["MemberId"] as? String {
                self.memberId = value
            }
            if let value = dict["ModifyDate"] as? String {
                self.modifyDate = value
            }
        }
    }
    public var members: [AssociateMembersResponseBody.Members]?

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
        if self.members != nil {
            var tmp : [Any] = []
            for k in self.members! {
                tmp.append(k.toMap())
            }
            map["Members"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Members"] as? [Any?] {
            var tmp : [AssociateMembersResponseBody.Members] = []
            for v in value {
                if v != nil {
                    var model = AssociateMembersResponseBody.Members()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.members = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AssociateMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AssociateMembersResponseBody()
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

public class CancelMessageContactUpdateRequest : Tea.TeaModel {
    public var contactId: String?

    public var emailAddress: String?

    public var phoneNumber: String?

    public override init() {
        super.init()
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
        if self.emailAddress != nil {
            map["EmailAddress"] = self.emailAddress!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactId"] as? String {
            self.contactId = value
        }
        if let value = dict["EmailAddress"] as? String {
            self.emailAddress = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
    }
}

public class CancelMessageContactUpdateResponseBody : Tea.TeaModel {
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

public class CancelMessageContactUpdateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelMessageContactUpdateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CancelMessageContactUpdateResponseBody()
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

public class CreateControlPolicyRequest : Tea.TeaModel {
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
    public var description_: String?

    public var effectScope: String?

    public var policyDocument: String?

    public var policyName: String?

    public var tag: [CreateControlPolicyRequest.Tag]?

    public override init() {
        super.init()
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
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateControlPolicyRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateControlPolicyRequest.Tag()
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
    public var folderName: String?

    public var parentFolderId: String?

    public var tag: [CreateFolderRequest.Tag]?

    public override init() {
        super.init()
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
        if let value = dict["FolderName"] as? String {
            self.folderName = value
        }
        if let value = dict["ParentFolderId"] as? String {
            self.parentFolderId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateFolderRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateFolderRequest.Tag()
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

    public var dryRun: Bool?

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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
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
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
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

public class DeleteMessageContactRequest : Tea.TeaModel {
    public var contactId: String?

    public var retainContactInMembers: Bool?

    public override init() {
        super.init()
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
        if self.retainContactInMembers != nil {
            map["RetainContactInMembers"] = self.retainContactInMembers!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactId"] as? String {
            self.contactId = value
        }
        if let value = dict["RetainContactInMembers"] as? Bool {
            self.retainContactInMembers = value
        }
    }
}

public class DeleteMessageContactResponseBody : Tea.TeaModel {
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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class DeleteMessageContactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMessageContactResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteMessageContactResponseBody()
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

public class DisassociateMembersRequest : Tea.TeaModel {
    public var contactId: String?

    public var members: [String]?

    public override init() {
        super.init()
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
        if self.members != nil {
            map["Members"] = self.members!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactId"] as? String {
            self.contactId = value
        }
        if let value = dict["Members"] as? [String] {
            self.members = value
        }
    }
}

public class DisassociateMembersResponseBody : Tea.TeaModel {
    public class Members : Tea.TeaModel {
        public var contactId: String?

        public var memberId: String?

        public var modifyDate: String?

        public override init() {
            super.init()
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
            if self.memberId != nil {
                map["MemberId"] = self.memberId!
            }
            if self.modifyDate != nil {
                map["ModifyDate"] = self.modifyDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContactId"] as? String {
                self.contactId = value
            }
            if let value = dict["MemberId"] as? String {
                self.memberId = value
            }
            if let value = dict["ModifyDate"] as? String {
                self.modifyDate = value
            }
        }
    }
    public var members: [DisassociateMembersResponseBody.Members]?

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
        if self.members != nil {
            var tmp : [Any] = []
            for k in self.members! {
                tmp.append(k.toMap())
            }
            map["Members"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Members"] as? [Any?] {
            var tmp : [DisassociateMembersResponseBody.Members] = []
            for v in value {
                if v != nil {
                    var model = DisassociateMembersResponseBody.Members()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.members = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DisassociateMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisassociateMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DisassociateMembersResponseBody()
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
    public var dryRun: Bool?

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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
        }
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
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
        }
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

        public var hasSecureMobilePhone: Bool?

        public var identityInformation: String?

        public var joinMethod: String?

        public var joinTime: String?

        public var location: String?

        public var modifyTime: String?

        public var resourceDirectoryId: String?

        public var resourceDirectoryPath: String?

        public var secureMobilePhone: String?

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
            if self.hasSecureMobilePhone != nil {
                map["HasSecureMobilePhone"] = self.hasSecureMobilePhone!
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
            if self.secureMobilePhone != nil {
                map["SecureMobilePhone"] = self.secureMobilePhone!
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
            if let value = dict["HasSecureMobilePhone"] as? Bool {
                self.hasSecureMobilePhone = value
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
            if let value = dict["SecureMobilePhone"] as? String {
                self.secureMobilePhone = value
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

public class GetMessageContactRequest : Tea.TeaModel {
    public var contactId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactId"] as? String {
            self.contactId = value
        }
    }
}

public class GetMessageContactResponseBody : Tea.TeaModel {
    public class Contact : Tea.TeaModel {
        public var contactId: String?

        public var createDate: String?

        public var emailAddress: String?

        public var members: [String]?

        public var messageTypes: [String]?

        public var name: String?

        public var phoneNumber: String?

        public var status: String?

        public var title: String?

        public override init() {
            super.init()
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
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.emailAddress != nil {
                map["EmailAddress"] = self.emailAddress!
            }
            if self.members != nil {
                map["Members"] = self.members!
            }
            if self.messageTypes != nil {
                map["MessageTypes"] = self.messageTypes!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContactId"] as? String {
                self.contactId = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["EmailAddress"] as? String {
                self.emailAddress = value
            }
            if let value = dict["Members"] as? [String] {
                self.members = value
            }
            if let value = dict["MessageTypes"] as? [String] {
                self.messageTypes = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["PhoneNumber"] as? String {
                self.phoneNumber = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
        }
    }
    public var contact: GetMessageContactResponseBody.Contact?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.contact?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contact != nil {
            map["Contact"] = self.contact?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Contact"] as? [String: Any?] {
            var model = GetMessageContactResponseBody.Contact()
            model.fromMap(value)
            self.contact = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetMessageContactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMessageContactResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMessageContactResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMessageContactDeletionStatusRequest : Tea.TeaModel {
    public var contactId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactId"] as? String {
            self.contactId = value
        }
    }
}

public class GetMessageContactDeletionStatusResponseBody : Tea.TeaModel {
    public class ContactDeletionStatus : Tea.TeaModel {
        public class FailReasonList : Tea.TeaModel {
            public var accountId: String?

            public var messageTypes: [String]?

            public override init() {
                super.init()
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
                if self.messageTypes != nil {
                    map["MessageTypes"] = self.messageTypes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccountId"] as? String {
                    self.accountId = value
                }
                if let value = dict["MessageTypes"] as? [String] {
                    self.messageTypes = value
                }
            }
        }
        public var contactId: String?

        public var failReasonList: [GetMessageContactDeletionStatusResponseBody.ContactDeletionStatus.FailReasonList]?

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
            if self.contactId != nil {
                map["ContactId"] = self.contactId!
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
            if let value = dict["ContactId"] as? String {
                self.contactId = value
            }
            if let value = dict["FailReasonList"] as? [Any?] {
                var tmp : [GetMessageContactDeletionStatusResponseBody.ContactDeletionStatus.FailReasonList] = []
                for v in value {
                    if v != nil {
                        var model = GetMessageContactDeletionStatusResponseBody.ContactDeletionStatus.FailReasonList()
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
    public var contactDeletionStatus: GetMessageContactDeletionStatusResponseBody.ContactDeletionStatus?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.contactDeletionStatus?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contactDeletionStatus != nil {
            map["ContactDeletionStatus"] = self.contactDeletionStatus?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactDeletionStatus"] as? [String: Any?] {
            var model = GetMessageContactDeletionStatusResponseBody.ContactDeletionStatus()
            model.fromMap(value)
            self.contactDeletionStatus = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetMessageContactDeletionStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMessageContactDeletionStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMessageContactDeletionStatusResponseBody()
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

public class GetResourceDirectoryResponseBody : Tea.TeaModel {
    public class ResourceDirectory : Tea.TeaModel {
        public var controlPolicyStatus: String?

        public var createTime: String?

        public var identityInformation: String?

        public var masterAccountId: String?

        public var masterAccountName: String?

        public var memberAccountDisplayNameSyncStatus: String?

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
            if self.memberAccountDisplayNameSyncStatus != nil {
                map["MemberAccountDisplayNameSyncStatus"] = self.memberAccountDisplayNameSyncStatus!
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
            if let value = dict["MemberAccountDisplayNameSyncStatus"] as? String {
                self.memberAccountDisplayNameSyncStatus = value
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

    public var parentFolderId: String?

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
        if self.parentFolderId != nil {
            map["ParentFolderId"] = self.parentFolderId!
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
        if let value = dict["ParentFolderId"] as? String {
            self.parentFolderId = value
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

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryKeyword: String?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueryKeyword"] as? String {
            self.queryKeyword = value
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

            public var accountName: String?

            public var deletionStatus: String?

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
                if self.accountName != nil {
                    map["AccountName"] = self.accountName!
                }
                if self.deletionStatus != nil {
                    map["DeletionStatus"] = self.deletionStatus!
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
                if let value = dict["AccountName"] as? String {
                    self.accountName = value
                }
                if let value = dict["DeletionStatus"] as? String {
                    self.deletionStatus = value
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

    public var nextToken: String?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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

            public var accountName: String?

            public var deletionStatus: String?

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
                if self.accountName != nil {
                    map["AccountName"] = self.accountName!
                }
                if self.deletionStatus != nil {
                    map["DeletionStatus"] = self.deletionStatus!
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
                if let value = dict["AccountName"] as? String {
                    self.accountName = value
                }
                if let value = dict["DeletionStatus"] as? String {
                    self.deletionStatus = value
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

public class ListAuthorizedAccountsRequest : Tea.TeaModel {
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

public class ListAuthorizedAccountsResponseBody : Tea.TeaModel {
    public class Accounts : Tea.TeaModel {
        public class Account : Tea.TeaModel {
            public var accountId: String?

            public var accountName: String?

            public var displayName: String?

            public var folderId: String?

            public var joinMethod: String?

            public var joinTime: String?

            public var modifyTime: String?

            public var resourceDirectoryId: String?

            public var resourceDirectoryPath: String?

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
                if self.resourceDirectoryPath != nil {
                    map["ResourceDirectoryPath"] = self.resourceDirectoryPath!
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
                if let value = dict["ResourceDirectoryPath"] as? String {
                    self.resourceDirectoryPath = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var account: [ListAuthorizedAccountsResponseBody.Accounts.Account]?

        public override init() {
            super.init()
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
                var tmp : [ListAuthorizedAccountsResponseBody.Accounts.Account] = []
                for v in value {
                    if v != nil {
                        var model = ListAuthorizedAccountsResponseBody.Accounts.Account()
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
    public var accounts: ListAuthorizedAccountsResponseBody.Accounts?

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
            var model = ListAuthorizedAccountsResponseBody.Accounts()
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

public class ListAuthorizedAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAuthorizedAccountsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAuthorizedAccountsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAuthorizedFoldersRequest : Tea.TeaModel {
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

public class ListAuthorizedFoldersResponseBody : Tea.TeaModel {
    public class Folders : Tea.TeaModel {
        public class Folder : Tea.TeaModel {
            public var folderId: String?

            public var folderName: String?

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
                if self.folderId != nil {
                    map["FolderId"] = self.folderId!
                }
                if self.folderName != nil {
                    map["FolderName"] = self.folderName!
                }
                if self.resourceDirectoryPath != nil {
                    map["ResourceDirectoryPath"] = self.resourceDirectoryPath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FolderId"] as? String {
                    self.folderId = value
                }
                if let value = dict["FolderName"] as? String {
                    self.folderName = value
                }
                if let value = dict["ResourceDirectoryPath"] as? String {
                    self.resourceDirectoryPath = value
                }
            }
        }
        public var folder: [ListAuthorizedFoldersResponseBody.Folders.Folder]?

        public override init() {
            super.init()
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
                var tmp : [ListAuthorizedFoldersResponseBody.Folders.Folder] = []
                for v in value {
                    if v != nil {
                        var model = ListAuthorizedFoldersResponseBody.Folders.Folder()
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
    public var folders: ListAuthorizedFoldersResponseBody.Folders?

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
            var model = ListAuthorizedFoldersResponseBody.Folders()
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

public class ListAuthorizedFoldersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAuthorizedFoldersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAuthorizedFoldersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListControlPoliciesRequest : Tea.TeaModel {
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
    public var language: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var policyType: String?

    public var tag: [ListControlPoliciesRequest.Tag]?

    public override init() {
        super.init()
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
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListControlPoliciesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListControlPoliciesRequest.Tag()
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

public class ListControlPoliciesResponseBody : Tea.TeaModel {
    public class ControlPolicies : Tea.TeaModel {
        public class ControlPolicy : Tea.TeaModel {
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
                public var tag: [ListControlPoliciesResponseBody.ControlPolicies.ControlPolicy.Tags.Tag]?

                public override init() {
                    super.init()
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
                        var tmp : [ListControlPoliciesResponseBody.ControlPolicies.ControlPolicy.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = ListControlPoliciesResponseBody.ControlPolicies.ControlPolicy.Tags.Tag()
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
            public var attachmentCount: String?

            public var createDate: String?

            public var description_: String?

            public var effectScope: String?

            public var policyId: String?

            public var policyName: String?

            public var policyType: String?

            public var tags: ListControlPoliciesResponseBody.ControlPolicies.ControlPolicy.Tags?

            public var updateDate: String?

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
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
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
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = ListControlPoliciesResponseBody.ControlPolicies.ControlPolicy.Tags()
                    model.fromMap(value)
                    self.tags = model
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
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var parentFolderId: String?

    public var queryKeyword: String?

    public var tag: [ListFoldersForParentRequest.Tag]?

    public override init() {
        super.init()
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
            var tmp : [ListFoldersForParentRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListFoldersForParentRequest.Tag()
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

public class ListFoldersForParentResponseBody : Tea.TeaModel {
    public class Folders : Tea.TeaModel {
        public class Folder : Tea.TeaModel {
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
                public var tag: [ListFoldersForParentResponseBody.Folders.Folder.Tags.Tag]?

                public override init() {
                    super.init()
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
                        var tmp : [ListFoldersForParentResponseBody.Folders.Folder.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = ListFoldersForParentResponseBody.Folders.Folder.Tags.Tag()
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

            public var folderId: String?

            public var folderName: String?

            public var tags: ListFoldersForParentResponseBody.Folders.Folder.Tags?

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
                if self.folderId != nil {
                    map["FolderId"] = self.folderId!
                }
                if self.folderName != nil {
                    map["FolderName"] = self.folderName!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
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
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = ListFoldersForParentResponseBody.Folders.Folder.Tags()
                    model.fromMap(value)
                    self.tags = model
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

public class ListMessageContactVerificationsRequest : Tea.TeaModel {
    public var contactId: String?

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
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
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
        if let value = dict["ContactId"] as? String {
            self.contactId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListMessageContactVerificationsResponseBody : Tea.TeaModel {
    public class ContactVerifications : Tea.TeaModel {
        public var contactId: String?

        public var target: String?

        public override init() {
            super.init()
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
            if self.target != nil {
                map["Target"] = self.target!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContactId"] as? String {
                self.contactId = value
            }
            if let value = dict["Target"] as? String {
                self.target = value
            }
        }
    }
    public var contactVerifications: [ListMessageContactVerificationsResponseBody.ContactVerifications]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contactVerifications != nil {
            var tmp : [Any] = []
            for k in self.contactVerifications! {
                tmp.append(k.toMap())
            }
            map["ContactVerifications"] = tmp
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
        if let value = dict["ContactVerifications"] as? [Any?] {
            var tmp : [ListMessageContactVerificationsResponseBody.ContactVerifications] = []
            for v in value {
                if v != nil {
                    var model = ListMessageContactVerificationsResponseBody.ContactVerifications()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.contactVerifications = tmp
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

public class ListMessageContactVerificationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMessageContactVerificationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListMessageContactVerificationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMessageContactsRequest : Tea.TeaModel {
    public var contactId: String?

    public var member: String?

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
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.member != nil {
            map["Member"] = self.member!
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
        if let value = dict["ContactId"] as? String {
            self.contactId = value
        }
        if let value = dict["Member"] as? String {
            self.member = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListMessageContactsResponseBody : Tea.TeaModel {
    public class Contacts : Tea.TeaModel {
        public var associatedDate: String?

        public var contactId: String?

        public var createDate: String?

        public var emailAddress: String?

        public var members: [String]?

        public var messageTypes: [String]?

        public var name: String?

        public var phoneNumber: String?

        public var status: String?

        public var title: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.associatedDate != nil {
                map["AssociatedDate"] = self.associatedDate!
            }
            if self.contactId != nil {
                map["ContactId"] = self.contactId!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.emailAddress != nil {
                map["EmailAddress"] = self.emailAddress!
            }
            if self.members != nil {
                map["Members"] = self.members!
            }
            if self.messageTypes != nil {
                map["MessageTypes"] = self.messageTypes!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.title != nil {
                map["Title"] = self.title!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AssociatedDate"] as? String {
                self.associatedDate = value
            }
            if let value = dict["ContactId"] as? String {
                self.contactId = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["EmailAddress"] as? String {
                self.emailAddress = value
            }
            if let value = dict["Members"] as? [String] {
                self.members = value
            }
            if let value = dict["MessageTypes"] as? [String] {
                self.messageTypes = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["PhoneNumber"] as? String {
                self.phoneNumber = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Title"] as? String {
                self.title = value
            }
        }
    }
    public var contacts: [ListMessageContactsResponseBody.Contacts]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contacts != nil {
            var tmp : [Any] = []
            for k in self.contacts! {
                tmp.append(k.toMap())
            }
            map["Contacts"] = tmp
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
        if let value = dict["Contacts"] as? [Any?] {
            var tmp : [ListMessageContactsResponseBody.Contacts] = []
            for v in value {
                if v != nil {
                    var model = ListMessageContactsResponseBody.Contacts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.contacts = tmp
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

public class ListMessageContactsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMessageContactsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListMessageContactsResponseBody()
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

public class PrecheckForConsolidatedBillingAccountRequest : Tea.TeaModel {
    public var billingAccountId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.billingAccountId != nil {
            map["BillingAccountId"] = self.billingAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BillingAccountId"] as? String {
            self.billingAccountId = value
        }
    }
}

public class PrecheckForConsolidatedBillingAccountResponseBody : Tea.TeaModel {
    public class Reasons : Tea.TeaModel {
        public var code: String?

        public var message: String?

        public override init() {
            super.init()
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
        }
    }
    public var reasons: [PrecheckForConsolidatedBillingAccountResponseBody.Reasons]?

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
        if self.reasons != nil {
            var tmp : [Any] = []
            for k in self.reasons! {
                tmp.append(k.toMap())
            }
            map["Reasons"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Reasons"] as? [Any?] {
            var tmp : [PrecheckForConsolidatedBillingAccountResponseBody.Reasons] = []
            for v in value {
                if v != nil {
                    var model = PrecheckForConsolidatedBillingAccountResponseBody.Reasons()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.reasons = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
    }
}

public class PrecheckForConsolidatedBillingAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PrecheckForConsolidatedBillingAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PrecheckForConsolidatedBillingAccountResponseBody()
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

public class SendEmailVerificationForMessageContactRequest : Tea.TeaModel {
    public var contactId: String?

    public var emailAddress: String?

    public override init() {
        super.init()
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
        if self.emailAddress != nil {
            map["EmailAddress"] = self.emailAddress!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactId"] as? String {
            self.contactId = value
        }
        if let value = dict["EmailAddress"] as? String {
            self.emailAddress = value
        }
    }
}

public class SendEmailVerificationForMessageContactResponseBody : Tea.TeaModel {
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

public class SendEmailVerificationForMessageContactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendEmailVerificationForMessageContactResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SendEmailVerificationForMessageContactResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendPhoneVerificationForMessageContactRequest : Tea.TeaModel {
    public var contactId: String?

    public var phoneNumber: String?

    public override init() {
        super.init()
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
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactId"] as? String {
            self.contactId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
    }
}

public class SendPhoneVerificationForMessageContactResponseBody : Tea.TeaModel {
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

public class SendPhoneVerificationForMessageContactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendPhoneVerificationForMessageContactResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SendPhoneVerificationForMessageContactResponseBody()
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

public class SetMemberDisplayNameSyncStatusRequest : Tea.TeaModel {
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

public class SetMemberDisplayNameSyncStatusResponseBody : Tea.TeaModel {
    public var memberAccountDisplayNameSyncStatus: String?

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
        if self.memberAccountDisplayNameSyncStatus != nil {
            map["MemberAccountDisplayNameSyncStatus"] = self.memberAccountDisplayNameSyncStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MemberAccountDisplayNameSyncStatus"] as? String {
            self.memberAccountDisplayNameSyncStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SetMemberDisplayNameSyncStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetMemberDisplayNameSyncStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetMemberDisplayNameSyncStatusResponseBody()
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

    public var dryRun: Bool?

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
        if self.dryRun != nil {
            map["DryRun"] = self.dryRun!
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
        if let value = dict["DryRun"] as? Bool {
            self.dryRun = value
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

public class UpdateMessageContactRequest : Tea.TeaModel {
    public var contactId: String?

    public var emailAddress: String?

    public var messageTypes: [String]?

    public var name: String?

    public var phoneNumber: String?

    public var title: String?

    public override init() {
        super.init()
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
        if self.emailAddress != nil {
            map["EmailAddress"] = self.emailAddress!
        }
        if self.messageTypes != nil {
            map["MessageTypes"] = self.messageTypes!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContactId"] as? String {
            self.contactId = value
        }
        if let value = dict["EmailAddress"] as? String {
            self.emailAddress = value
        }
        if let value = dict["MessageTypes"] as? [String] {
            self.messageTypes = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class UpdateMessageContactResponseBody : Tea.TeaModel {
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

public class UpdateMessageContactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMessageContactResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateMessageContactResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePayerForAccountRequest : Tea.TeaModel {
    public var accountId: String?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.payerAccountId != nil {
            map["PayerAccountId"] = self.payerAccountId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["PayerAccountId"] as? String {
            self.payerAccountId = value
        }
    }
}

public class UpdatePayerForAccountResponseBody : Tea.TeaModel {
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

public class UpdatePayerForAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePayerForAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdatePayerForAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
