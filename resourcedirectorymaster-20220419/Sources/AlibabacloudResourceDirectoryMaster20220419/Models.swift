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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HandshakeId") && dict["HandshakeId"] != nil {
            self.handshakeId = dict["HandshakeId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("HandshakeId") && dict["HandshakeId"] != nil {
                self.handshakeId = dict["HandshakeId"] as! String
            }
            if dict.keys.contains("MasterAccountId") && dict["MasterAccountId"] != nil {
                self.masterAccountId = dict["MasterAccountId"] as! String
            }
            if dict.keys.contains("MasterAccountName") && dict["MasterAccountName"] != nil {
                self.masterAccountName = dict["MasterAccountName"] as! String
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("Note") && dict["Note"] != nil {
                self.note = dict["Note"] as! String
            }
            if dict.keys.contains("ResourceDirectoryId") && dict["ResourceDirectoryId"] != nil {
                self.resourceDirectoryId = dict["ResourceDirectoryId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TargetEntity") && dict["TargetEntity"] != nil {
                self.targetEntity = dict["TargetEntity"] as! String
            }
            if dict.keys.contains("TargetType") && dict["TargetType"] != nil {
                self.targetType = dict["TargetType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Handshake") && dict["Handshake"] != nil {
            var model = AcceptHandshakeResponseBody.Handshake()
            model.fromMap(dict["Handshake"] as! [String: Any])
            self.handshake = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = AcceptHandshakeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EmailAddress") && dict["EmailAddress"] != nil {
            self.emailAddress = dict["EmailAddress"] as! String
        }
        if dict.keys.contains("MessageTypes") && dict["MessageTypes"] != nil {
            self.messageTypes = dict["MessageTypes"] as! [String]
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContactId") && dict["ContactId"] != nil {
                self.contactId = dict["ContactId"] as! String
            }
            if dict.keys.contains("CreateDate") && dict["CreateDate"] != nil {
                self.createDate = dict["CreateDate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Contact") && dict["Contact"] != nil {
            var model = AddMessageContactResponseBody.Contact()
            model.fromMap(dict["Contact"] as! [String: Any])
            self.contact = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = AddMessageContactResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactId") && dict["ContactId"] != nil {
            self.contactId = dict["ContactId"] as! String
        }
        if dict.keys.contains("Members") && dict["Members"] != nil {
            self.members = dict["Members"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContactId") && dict["ContactId"] != nil {
                self.contactId = dict["ContactId"] as! String
            }
            if dict.keys.contains("MemberId") && dict["MemberId"] != nil {
                self.memberId = dict["MemberId"] as! String
            }
            if dict.keys.contains("ModifyDate") && dict["ModifyDate"] != nil {
                self.modifyDate = dict["ModifyDate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Members") && dict["Members"] != nil {
            var tmp : [AssociateMembersResponseBody.Members] = []
            for v in dict["Members"] as! [Any] {
                var model = AssociateMembersResponseBody.Members()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.members = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = AssociateMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("TargetId") && dict["TargetId"] != nil {
            self.targetId = dict["TargetId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = AttachControlPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("SecureMobilePhone") && dict["SecureMobilePhone"] != nil {
            self.secureMobilePhone = dict["SecureMobilePhone"] as! String
        }
        if dict.keys.contains("VerificationCode") && dict["VerificationCode"] != nil {
            self.verificationCode = dict["VerificationCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = BindSecureMobilePhoneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
            self.accountId = dict["AccountId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = CancelChangeAccountEmailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HandshakeId") && dict["HandshakeId"] != nil {
            self.handshakeId = dict["HandshakeId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("HandshakeId") && dict["HandshakeId"] != nil {
                self.handshakeId = dict["HandshakeId"] as! String
            }
            if dict.keys.contains("MasterAccountId") && dict["MasterAccountId"] != nil {
                self.masterAccountId = dict["MasterAccountId"] as! String
            }
            if dict.keys.contains("MasterAccountName") && dict["MasterAccountName"] != nil {
                self.masterAccountName = dict["MasterAccountName"] as! String
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("Note") && dict["Note"] != nil {
                self.note = dict["Note"] as! String
            }
            if dict.keys.contains("ResourceDirectoryId") && dict["ResourceDirectoryId"] != nil {
                self.resourceDirectoryId = dict["ResourceDirectoryId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TargetEntity") && dict["TargetEntity"] != nil {
                self.targetEntity = dict["TargetEntity"] as! String
            }
            if dict.keys.contains("TargetType") && dict["TargetType"] != nil {
                self.targetType = dict["TargetType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Handshake") && dict["Handshake"] != nil {
            var model = CancelHandshakeResponseBody.Handshake()
            model.fromMap(dict["Handshake"] as! [String: Any])
            self.handshake = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = CancelHandshakeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactId") && dict["ContactId"] != nil {
            self.contactId = dict["ContactId"] as! String
        }
        if dict.keys.contains("EmailAddress") && dict["EmailAddress"] != nil {
            self.emailAddress = dict["EmailAddress"] as! String
        }
        if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
            self.phoneNumber = dict["PhoneNumber"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = CancelMessageContactUpdateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ChangeAccountEmailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
            self.accountId = dict["AccountId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = CheckAccountDeleteResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EffectScope") && dict["EffectScope"] != nil {
            self.effectScope = dict["EffectScope"] as! String
        }
        if dict.keys.contains("PolicyDocument") && dict["PolicyDocument"] != nil {
            self.policyDocument = dict["PolicyDocument"] as! String
        }
        if dict.keys.contains("PolicyName") && dict["PolicyName"] != nil {
            self.policyName = dict["PolicyName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AttachmentCount") && dict["AttachmentCount"] != nil {
                self.attachmentCount = dict["AttachmentCount"] as! String
            }
            if dict.keys.contains("CreateDate") && dict["CreateDate"] != nil {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EffectScope") && dict["EffectScope"] != nil {
                self.effectScope = dict["EffectScope"] as! String
            }
            if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("PolicyName") && dict["PolicyName"] != nil {
                self.policyName = dict["PolicyName"] as! String
            }
            if dict.keys.contains("PolicyType") && dict["PolicyType"] != nil {
                self.policyType = dict["PolicyType"] as! String
            }
            if dict.keys.contains("UpdateDate") && dict["UpdateDate"] != nil {
                self.updateDate = dict["UpdateDate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ControlPolicy") && dict["ControlPolicy"] != nil {
            var model = CreateControlPolicyResponseBody.ControlPolicy()
            model.fromMap(dict["ControlPolicy"] as! [String: Any])
            self.controlPolicy = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = CreateControlPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FolderName") && dict["FolderName"] != nil {
            self.folderName = dict["FolderName"] as! String
        }
        if dict.keys.contains("ParentFolderId") && dict["ParentFolderId"] != nil {
            self.parentFolderId = dict["ParentFolderId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("FolderId") && dict["FolderId"] != nil {
                self.folderId = dict["FolderId"] as! String
            }
            if dict.keys.contains("FolderName") && dict["FolderName"] != nil {
                self.folderName = dict["FolderName"] as! String
            }
            if dict.keys.contains("ParentFolderId") && dict["ParentFolderId"] != nil {
                self.parentFolderId = dict["ParentFolderId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Folder") && dict["Folder"] != nil {
            var model = CreateFolderResponseBody.Folder()
            model.fromMap(dict["Folder"] as! [String: Any])
            self.folder = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = CreateFolderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountNamePrefix") && dict["AccountNamePrefix"] != nil {
            self.accountNamePrefix = dict["AccountNamePrefix"] as! String
        }
        if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("ParentFolderId") && dict["ParentFolderId"] != nil {
            self.parentFolderId = dict["ParentFolderId"] as! String
        }
        if dict.keys.contains("PayerAccountId") && dict["PayerAccountId"] != nil {
            self.payerAccountId = dict["PayerAccountId"] as! String
        }
        if dict.keys.contains("ResellAccountType") && dict["ResellAccountType"] != nil {
            self.resellAccountType = dict["ResellAccountType"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [CreateResourceAccountRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateResourceAccountRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("FolderId") && dict["FolderId"] != nil {
                self.folderId = dict["FolderId"] as! String
            }
            if dict.keys.contains("JoinMethod") && dict["JoinMethod"] != nil {
                self.joinMethod = dict["JoinMethod"] as! String
            }
            if dict.keys.contains("JoinTime") && dict["JoinTime"] != nil {
                self.joinTime = dict["JoinTime"] as! String
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("ResourceDirectoryId") && dict["ResourceDirectoryId"] != nil {
                self.resourceDirectoryId = dict["ResourceDirectoryId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") && dict["Account"] != nil {
            var model = CreateResourceAccountResponseBody.Account()
            model.fromMap(dict["Account"] as! [String: Any])
            self.account = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = CreateResourceAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HandshakeId") && dict["HandshakeId"] != nil {
            self.handshakeId = dict["HandshakeId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("HandshakeId") && dict["HandshakeId"] != nil {
                self.handshakeId = dict["HandshakeId"] as! String
            }
            if dict.keys.contains("MasterAccountId") && dict["MasterAccountId"] != nil {
                self.masterAccountId = dict["MasterAccountId"] as! String
            }
            if dict.keys.contains("MasterAccountName") && dict["MasterAccountName"] != nil {
                self.masterAccountName = dict["MasterAccountName"] as! String
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("Note") && dict["Note"] != nil {
                self.note = dict["Note"] as! String
            }
            if dict.keys.contains("ResourceDirectoryId") && dict["ResourceDirectoryId"] != nil {
                self.resourceDirectoryId = dict["ResourceDirectoryId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TargetEntity") && dict["TargetEntity"] != nil {
                self.targetEntity = dict["TargetEntity"] as! String
            }
            if dict.keys.contains("TargetType") && dict["TargetType"] != nil {
                self.targetType = dict["TargetType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Handshake") && dict["Handshake"] != nil {
            var model = DeclineHandshakeResponseBody.Handshake()
            model.fromMap(dict["Handshake"] as! [String: Any])
            self.handshake = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DeclineHandshakeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AbandonableCheckId") && dict["AbandonableCheckId"] != nil {
            self.abandonableCheckId = dict["AbandonableCheckId"] as! [String]
        }
        if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
            self.accountId = dict["AccountId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AbandonableCheckId") && dict["AbandonableCheckId"] != nil {
            self.abandonableCheckIdShrink = dict["AbandonableCheckId"] as! String
        }
        if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
            self.accountId = dict["AccountId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeletionType") && dict["DeletionType"] != nil {
            self.deletionType = dict["DeletionType"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DeleteAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DeleteControlPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FolderId") && dict["FolderId"] != nil {
            self.folderId = dict["FolderId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DeleteFolderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactId") && dict["ContactId"] != nil {
            self.contactId = dict["ContactId"] as! String
        }
        if dict.keys.contains("RetainContactInMembers") && dict["RetainContactInMembers"] != nil {
            self.retainContactInMembers = dict["RetainContactInMembers"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
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
            var model = DeleteMessageContactResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("ServicePrincipal") && dict["ServicePrincipal"] != nil {
            self.servicePrincipal = dict["ServicePrincipal"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DeregisterDelegatedAdministratorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DestroyResourceDirectoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
        }
        if dict.keys.contains("TargetId") && dict["TargetId"] != nil {
            self.targetId = dict["TargetId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DetachControlPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnablementStatus") && dict["EnablementStatus"] != nil {
            self.enablementStatus = dict["EnablementStatus"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DisableControlPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactId") && dict["ContactId"] != nil {
            self.contactId = dict["ContactId"] as! String
        }
        if dict.keys.contains("Members") && dict["Members"] != nil {
            self.members = dict["Members"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContactId") && dict["ContactId"] != nil {
                self.contactId = dict["ContactId"] as! String
            }
            if dict.keys.contains("MemberId") && dict["MemberId"] != nil {
                self.memberId = dict["MemberId"] as! String
            }
            if dict.keys.contains("ModifyDate") && dict["ModifyDate"] != nil {
                self.modifyDate = dict["ModifyDate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Members") && dict["Members"] != nil {
            var tmp : [DisassociateMembersResponseBody.Members] = []
            for v in dict["Members"] as! [Any] {
                var model = DisassociateMembersResponseBody.Members()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.members = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = DisassociateMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnablementStatus") && dict["EnablementStatus"] != nil {
            self.enablementStatus = dict["EnablementStatus"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = EnableControlPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnableMode") && dict["EnableMode"] != nil {
            self.enableMode = dict["EnableMode"] as! String
        }
        if dict.keys.contains("MAName") && dict["MAName"] != nil {
            self.MAName = dict["MAName"] as! String
        }
        if dict.keys.contains("MASecureMobilePhone") && dict["MASecureMobilePhone"] != nil {
            self.MASecureMobilePhone = dict["MASecureMobilePhone"] as! String
        }
        if dict.keys.contains("VerificationCode") && dict["VerificationCode"] != nil {
            self.verificationCode = dict["VerificationCode"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("MasterAccountId") && dict["MasterAccountId"] != nil {
                self.masterAccountId = dict["MasterAccountId"] as! String
            }
            if dict.keys.contains("MasterAccountName") && dict["MasterAccountName"] != nil {
                self.masterAccountName = dict["MasterAccountName"] as! String
            }
            if dict.keys.contains("ResourceDirectoryId") && dict["ResourceDirectoryId"] != nil {
                self.resourceDirectoryId = dict["ResourceDirectoryId"] as! String
            }
            if dict.keys.contains("RootFolderId") && dict["RootFolderId"] != nil {
                self.rootFolderId = dict["RootFolderId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceDirectory") && dict["ResourceDirectory"] != nil {
            var model = EnableResourceDirectoryResponseBody.ResourceDirectory()
            model.fromMap(dict["ResourceDirectory"] as! [String: Any])
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
            var model = EnableResourceDirectoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("IncludeTags") && dict["IncludeTags"] != nil {
            self.includeTags = dict["IncludeTags"] as! Bool
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("EmailStatus") && dict["EmailStatus"] != nil {
                self.emailStatus = dict["EmailStatus"] as! String
            }
            if dict.keys.contains("FolderId") && dict["FolderId"] != nil {
                self.folderId = dict["FolderId"] as! String
            }
            if dict.keys.contains("IdentityInformation") && dict["IdentityInformation"] != nil {
                self.identityInformation = dict["IdentityInformation"] as! String
            }
            if dict.keys.contains("JoinMethod") && dict["JoinMethod"] != nil {
                self.joinMethod = dict["JoinMethod"] as! String
            }
            if dict.keys.contains("JoinTime") && dict["JoinTime"] != nil {
                self.joinTime = dict["JoinTime"] as! String
            }
            if dict.keys.contains("Location") && dict["Location"] != nil {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("ResourceDirectoryId") && dict["ResourceDirectoryId"] != nil {
                self.resourceDirectoryId = dict["ResourceDirectoryId"] as! String
            }
            if dict.keys.contains("ResourceDirectoryPath") && dict["ResourceDirectoryPath"] != nil {
                self.resourceDirectoryPath = dict["ResourceDirectoryPath"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Tags") && dict["Tags"] != nil {
                var tmp : [GetAccountResponseBody.Account.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = GetAccountResponseBody.Account.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") && dict["Account"] != nil {
            var model = GetAccountResponseBody.Account()
            model.fromMap(dict["Account"] as! [String: Any])
            self.account = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = GetAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
            self.accountId = dict["AccountId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CheckId") && dict["CheckId"] != nil {
                    self.checkId = dict["CheckId"] as! String
                }
                if dict.keys.contains("CheckName") && dict["CheckName"] != nil {
                    self.checkName = dict["CheckName"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CheckId") && dict["CheckId"] != nil {
                    self.checkId = dict["CheckId"] as! String
                }
                if dict.keys.contains("CheckName") && dict["CheckName"] != nil {
                    self.checkName = dict["CheckName"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AbandonableChecks") && dict["AbandonableChecks"] != nil {
                var tmp : [GetAccountDeletionCheckResultResponseBody.AccountDeletionCheckResultInfo.AbandonableChecks] = []
                for v in dict["AbandonableChecks"] as! [Any] {
                    var model = GetAccountDeletionCheckResultResponseBody.AccountDeletionCheckResultInfo.AbandonableChecks()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.abandonableChecks = tmp
            }
            if dict.keys.contains("AllowDelete") && dict["AllowDelete"] != nil {
                self.allowDelete = dict["AllowDelete"] as! String
            }
            if dict.keys.contains("NotAllowReason") && dict["NotAllowReason"] != nil {
                var tmp : [GetAccountDeletionCheckResultResponseBody.AccountDeletionCheckResultInfo.NotAllowReason] = []
                for v in dict["NotAllowReason"] as! [Any] {
                    var model = GetAccountDeletionCheckResultResponseBody.AccountDeletionCheckResultInfo.NotAllowReason()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.notAllowReason = tmp
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountDeletionCheckResultInfo") && dict["AccountDeletionCheckResultInfo"] != nil {
            var model = GetAccountDeletionCheckResultResponseBody.AccountDeletionCheckResultInfo()
            model.fromMap(dict["AccountDeletionCheckResultInfo"] as! [String: Any])
            self.accountDeletionCheckResultInfo = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = GetAccountDeletionCheckResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
            self.accountId = dict["AccountId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DeletionTime") && dict["DeletionTime"] != nil {
                self.deletionTime = dict["DeletionTime"] as! String
            }
            if dict.keys.contains("DeletionType") && dict["DeletionType"] != nil {
                self.deletionType = dict["DeletionType"] as! String
            }
            if dict.keys.contains("FailReasonList") && dict["FailReasonList"] != nil {
                var tmp : [GetAccountDeletionStatusResponseBody.RdAccountDeletionStatus.FailReasonList] = []
                for v in dict["FailReasonList"] as! [Any] {
                    var model = GetAccountDeletionStatusResponseBody.RdAccountDeletionStatus.FailReasonList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.failReasonList = tmp
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RdAccountDeletionStatus") && dict["RdAccountDeletionStatus"] != nil {
            var model = GetAccountDeletionStatusResponseBody.RdAccountDeletionStatus()
            model.fromMap(dict["RdAccountDeletionStatus"] as! [String: Any])
            self.rdAccountDeletionStatus = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = GetAccountDeletionStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AttachmentCount") && dict["AttachmentCount"] != nil {
                self.attachmentCount = dict["AttachmentCount"] as! String
            }
            if dict.keys.contains("CreateDate") && dict["CreateDate"] != nil {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EffectScope") && dict["EffectScope"] != nil {
                self.effectScope = dict["EffectScope"] as! String
            }
            if dict.keys.contains("PolicyDocument") && dict["PolicyDocument"] != nil {
                self.policyDocument = dict["PolicyDocument"] as! String
            }
            if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("PolicyName") && dict["PolicyName"] != nil {
                self.policyName = dict["PolicyName"] as! String
            }
            if dict.keys.contains("PolicyType") && dict["PolicyType"] != nil {
                self.policyType = dict["PolicyType"] as! String
            }
            if dict.keys.contains("UpdateDate") && dict["UpdateDate"] != nil {
                self.updateDate = dict["UpdateDate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ControlPolicy") && dict["ControlPolicy"] != nil {
            var model = GetControlPolicyResponseBody.ControlPolicy()
            model.fromMap(dict["ControlPolicy"] as! [String: Any])
            self.controlPolicy = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = GetControlPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnablementStatus") && dict["EnablementStatus"] != nil {
            self.enablementStatus = dict["EnablementStatus"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = GetControlPolicyEnablementStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FolderId") && dict["FolderId"] != nil {
            self.folderId = dict["FolderId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("FolderId") && dict["FolderId"] != nil {
                self.folderId = dict["FolderId"] as! String
            }
            if dict.keys.contains("FolderName") && dict["FolderName"] != nil {
                self.folderName = dict["FolderName"] as! String
            }
            if dict.keys.contains("ParentFolderId") && dict["ParentFolderId"] != nil {
                self.parentFolderId = dict["ParentFolderId"] as! String
            }
            if dict.keys.contains("ResourceDirectoryPath") && dict["ResourceDirectoryPath"] != nil {
                self.resourceDirectoryPath = dict["ResourceDirectoryPath"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Folder") && dict["Folder"] != nil {
            var model = GetFolderResponseBody.Folder()
            model.fromMap(dict["Folder"] as! [String: Any])
            self.folder = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = GetFolderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HandshakeId") && dict["HandshakeId"] != nil {
            self.handshakeId = dict["HandshakeId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("HandshakeId") && dict["HandshakeId"] != nil {
                self.handshakeId = dict["HandshakeId"] as! String
            }
            if dict.keys.contains("InvitedAccountRealName") && dict["InvitedAccountRealName"] != nil {
                self.invitedAccountRealName = dict["InvitedAccountRealName"] as! String
            }
            if dict.keys.contains("MasterAccountId") && dict["MasterAccountId"] != nil {
                self.masterAccountId = dict["MasterAccountId"] as! String
            }
            if dict.keys.contains("MasterAccountName") && dict["MasterAccountName"] != nil {
                self.masterAccountName = dict["MasterAccountName"] as! String
            }
            if dict.keys.contains("MasterAccountRealName") && dict["MasterAccountRealName"] != nil {
                self.masterAccountRealName = dict["MasterAccountRealName"] as! String
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("Note") && dict["Note"] != nil {
                self.note = dict["Note"] as! String
            }
            if dict.keys.contains("ResourceDirectoryId") && dict["ResourceDirectoryId"] != nil {
                self.resourceDirectoryId = dict["ResourceDirectoryId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TargetEntity") && dict["TargetEntity"] != nil {
                self.targetEntity = dict["TargetEntity"] as! String
            }
            if dict.keys.contains("TargetType") && dict["TargetType"] != nil {
                self.targetType = dict["TargetType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Handshake") && dict["Handshake"] != nil {
            var model = GetHandshakeResponseBody.Handshake()
            model.fromMap(dict["Handshake"] as! [String: Any])
            self.handshake = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = GetHandshakeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactId") && dict["ContactId"] != nil {
            self.contactId = dict["ContactId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContactId") && dict["ContactId"] != nil {
                self.contactId = dict["ContactId"] as! String
            }
            if dict.keys.contains("CreateDate") && dict["CreateDate"] != nil {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("EmailAddress") && dict["EmailAddress"] != nil {
                self.emailAddress = dict["EmailAddress"] as! String
            }
            if dict.keys.contains("Members") && dict["Members"] != nil {
                self.members = dict["Members"] as! [String]
            }
            if dict.keys.contains("MessageTypes") && dict["MessageTypes"] != nil {
                self.messageTypes = dict["MessageTypes"] as! [String]
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Contact") && dict["Contact"] != nil {
            var model = GetMessageContactResponseBody.Contact()
            model.fromMap(dict["Contact"] as! [String: Any])
            self.contact = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = GetMessageContactResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactId") && dict["ContactId"] != nil {
            self.contactId = dict["ContactId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
                    self.accountId = dict["AccountId"] as! String
                }
                if dict.keys.contains("MessageTypes") && dict["MessageTypes"] != nil {
                    self.messageTypes = dict["MessageTypes"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContactId") && dict["ContactId"] != nil {
                self.contactId = dict["ContactId"] as! String
            }
            if dict.keys.contains("FailReasonList") && dict["FailReasonList"] != nil {
                var tmp : [GetMessageContactDeletionStatusResponseBody.ContactDeletionStatus.FailReasonList] = []
                for v in dict["FailReasonList"] as! [Any] {
                    var model = GetMessageContactDeletionStatusResponseBody.ContactDeletionStatus.FailReasonList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.failReasonList = tmp
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactDeletionStatus") && dict["ContactDeletionStatus"] != nil {
            var model = GetMessageContactDeletionStatusResponseBody.ContactDeletionStatus()
            model.fromMap(dict["ContactDeletionStatus"] as! [String: Any])
            self.contactDeletionStatus = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = GetMessageContactDeletionStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
            self.accountId = dict["AccountId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PayerAccountId") && dict["PayerAccountId"] != nil {
            self.payerAccountId = dict["PayerAccountId"] as! String
        }
        if dict.keys.contains("PayerAccountName") && dict["PayerAccountName"] != nil {
            self.payerAccountName = dict["PayerAccountName"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = GetPayerForAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ControlPolicyStatus") && dict["ControlPolicyStatus"] != nil {
                self.controlPolicyStatus = dict["ControlPolicyStatus"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("IdentityInformation") && dict["IdentityInformation"] != nil {
                self.identityInformation = dict["IdentityInformation"] as! String
            }
            if dict.keys.contains("MasterAccountId") && dict["MasterAccountId"] != nil {
                self.masterAccountId = dict["MasterAccountId"] as! String
            }
            if dict.keys.contains("MasterAccountName") && dict["MasterAccountName"] != nil {
                self.masterAccountName = dict["MasterAccountName"] as! String
            }
            if dict.keys.contains("MemberDeletionStatus") && dict["MemberDeletionStatus"] != nil {
                self.memberDeletionStatus = dict["MemberDeletionStatus"] as! String
            }
            if dict.keys.contains("ResourceDirectoryId") && dict["ResourceDirectoryId"] != nil {
                self.resourceDirectoryId = dict["ResourceDirectoryId"] as! String
            }
            if dict.keys.contains("RootFolderId") && dict["RootFolderId"] != nil {
                self.rootFolderId = dict["RootFolderId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceDirectory") && dict["ResourceDirectory"] != nil {
            var model = GetResourceDirectoryResponseBody.ResourceDirectory()
            model.fromMap(dict["ResourceDirectory"] as! [String: Any])
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
            var model = GetResourceDirectoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Note") && dict["Note"] != nil {
            self.note = dict["Note"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [InviteAccountToResourceDirectoryRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = InviteAccountToResourceDirectoryRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("TargetEntity") && dict["TargetEntity"] != nil {
            self.targetEntity = dict["TargetEntity"] as! String
        }
        if dict.keys.contains("TargetType") && dict["TargetType"] != nil {
            self.targetType = dict["TargetType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("HandshakeId") && dict["HandshakeId"] != nil {
                self.handshakeId = dict["HandshakeId"] as! String
            }
            if dict.keys.contains("MasterAccountId") && dict["MasterAccountId"] != nil {
                self.masterAccountId = dict["MasterAccountId"] as! String
            }
            if dict.keys.contains("MasterAccountName") && dict["MasterAccountName"] != nil {
                self.masterAccountName = dict["MasterAccountName"] as! String
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("Note") && dict["Note"] != nil {
                self.note = dict["Note"] as! String
            }
            if dict.keys.contains("ResourceDirectoryId") && dict["ResourceDirectoryId"] != nil {
                self.resourceDirectoryId = dict["ResourceDirectoryId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TargetEntity") && dict["TargetEntity"] != nil {
                self.targetEntity = dict["TargetEntity"] as! String
            }
            if dict.keys.contains("TargetType") && dict["TargetType"] != nil {
                self.targetType = dict["TargetType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Handshake") && dict["Handshake"] != nil {
            var model = InviteAccountToResourceDirectoryResponseBody.Handshake()
            model.fromMap(dict["Handshake"] as! [String: Any])
            self.handshake = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = InviteAccountToResourceDirectoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var includeTags: Bool?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IncludeTags") && dict["IncludeTags"] != nil {
            self.includeTags = dict["IncludeTags"] as! Bool
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryKeyword") && dict["QueryKeyword"] != nil {
            self.queryKeyword = dict["QueryKeyword"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [ListAccountsRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListAccountsRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") && dict["Key"] != nil {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") && dict["Value"] != nil {
                            self.value = dict["Value"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Tag") && dict["Tag"] != nil {
                        var tmp : [ListAccountsResponseBody.Accounts.Account.Tags.Tag] = []
                        for v in dict["Tag"] as! [Any] {
                            var model = ListAccountsResponseBody.Accounts.Account.Tags.Tag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tag = tmp
                    }
                }
            }
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
                    self.accountId = dict["AccountId"] as! String
                }
                if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
                    self.accountName = dict["AccountName"] as! String
                }
                if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
                    self.displayName = dict["DisplayName"] as! String
                }
                if dict.keys.contains("FolderId") && dict["FolderId"] != nil {
                    self.folderId = dict["FolderId"] as! String
                }
                if dict.keys.contains("JoinMethod") && dict["JoinMethod"] != nil {
                    self.joinMethod = dict["JoinMethod"] as! String
                }
                if dict.keys.contains("JoinTime") && dict["JoinTime"] != nil {
                    self.joinTime = dict["JoinTime"] as! String
                }
                if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                    self.modifyTime = dict["ModifyTime"] as! String
                }
                if dict.keys.contains("ResourceDirectoryId") && dict["ResourceDirectoryId"] != nil {
                    self.resourceDirectoryId = dict["ResourceDirectoryId"] as! String
                }
                if dict.keys.contains("ResourceDirectoryPath") && dict["ResourceDirectoryPath"] != nil {
                    self.resourceDirectoryPath = dict["ResourceDirectoryPath"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Tags") && dict["Tags"] != nil {
                    var model = ListAccountsResponseBody.Accounts.Account.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Account") && dict["Account"] != nil {
                var tmp : [ListAccountsResponseBody.Accounts.Account] = []
                for v in dict["Account"] as! [Any] {
                    var model = ListAccountsResponseBody.Accounts.Account()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accounts") && dict["Accounts"] != nil {
            var model = ListAccountsResponseBody.Accounts()
            model.fromMap(dict["Accounts"] as! [String: Any])
            self.accounts = model
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
            var model = ListAccountsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IncludeTags") && dict["IncludeTags"] != nil {
            self.includeTags = dict["IncludeTags"] as! Bool
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ParentFolderId") && dict["ParentFolderId"] != nil {
            self.parentFolderId = dict["ParentFolderId"] as! String
        }
        if dict.keys.contains("QueryKeyword") && dict["QueryKeyword"] != nil {
            self.queryKeyword = dict["QueryKeyword"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [ListAccountsForParentRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListAccountsForParentRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") && dict["Key"] != nil {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") && dict["Value"] != nil {
                            self.value = dict["Value"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Tag") && dict["Tag"] != nil {
                        var tmp : [ListAccountsForParentResponseBody.Accounts.Account.Tags.Tag] = []
                        for v in dict["Tag"] as! [Any] {
                            var model = ListAccountsForParentResponseBody.Accounts.Account.Tags.Tag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tag = tmp
                    }
                }
            }
            public var accountId: String?

            public var accountName: String?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
                    self.accountId = dict["AccountId"] as! String
                }
                if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
                    self.accountName = dict["AccountName"] as! String
                }
                if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
                    self.displayName = dict["DisplayName"] as! String
                }
                if dict.keys.contains("FolderId") && dict["FolderId"] != nil {
                    self.folderId = dict["FolderId"] as! String
                }
                if dict.keys.contains("JoinMethod") && dict["JoinMethod"] != nil {
                    self.joinMethod = dict["JoinMethod"] as! String
                }
                if dict.keys.contains("JoinTime") && dict["JoinTime"] != nil {
                    self.joinTime = dict["JoinTime"] as! String
                }
                if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                    self.modifyTime = dict["ModifyTime"] as! String
                }
                if dict.keys.contains("ResourceDirectoryId") && dict["ResourceDirectoryId"] != nil {
                    self.resourceDirectoryId = dict["ResourceDirectoryId"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Tags") && dict["Tags"] != nil {
                    var model = ListAccountsForParentResponseBody.Accounts.Account.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Account") && dict["Account"] != nil {
                var tmp : [ListAccountsForParentResponseBody.Accounts.Account] = []
                for v in dict["Account"] as! [Any] {
                    var model = ListAccountsForParentResponseBody.Accounts.Account()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accounts") && dict["Accounts"] != nil {
            var model = ListAccountsForParentResponseBody.Accounts()
            model.fromMap(dict["Accounts"] as! [String: Any])
            self.accounts = model
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
            var model = ListAccountsForParentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChildId") && dict["ChildId"] != nil {
            self.childId = dict["ChildId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("FolderId") && dict["FolderId"] != nil {
                    self.folderId = dict["FolderId"] as! String
                }
                if dict.keys.contains("FolderName") && dict["FolderName"] != nil {
                    self.folderName = dict["FolderName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Folder") && dict["Folder"] != nil {
                var tmp : [ListAncestorsResponseBody.Folders.Folder] = []
                for v in dict["Folder"] as! [Any] {
                    var model = ListAncestorsResponseBody.Folders.Folder()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Folders") && dict["Folders"] != nil {
            var model = ListAncestorsResponseBody.Folders()
            model.fromMap(dict["Folders"] as! [String: Any])
            self.folders = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ListAncestorsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PolicyType") && dict["PolicyType"] != nil {
            self.policyType = dict["PolicyType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AttachmentCount") && dict["AttachmentCount"] != nil {
                    self.attachmentCount = dict["AttachmentCount"] as! String
                }
                if dict.keys.contains("CreateDate") && dict["CreateDate"] != nil {
                    self.createDate = dict["CreateDate"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("EffectScope") && dict["EffectScope"] != nil {
                    self.effectScope = dict["EffectScope"] as! String
                }
                if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
                    self.policyId = dict["PolicyId"] as! String
                }
                if dict.keys.contains("PolicyName") && dict["PolicyName"] != nil {
                    self.policyName = dict["PolicyName"] as! String
                }
                if dict.keys.contains("PolicyType") && dict["PolicyType"] != nil {
                    self.policyType = dict["PolicyType"] as! String
                }
                if dict.keys.contains("UpdateDate") && dict["UpdateDate"] != nil {
                    self.updateDate = dict["UpdateDate"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ControlPolicy") && dict["ControlPolicy"] != nil {
                var tmp : [ListControlPoliciesResponseBody.ControlPolicies.ControlPolicy] = []
                for v in dict["ControlPolicy"] as! [Any] {
                    var model = ListControlPoliciesResponseBody.ControlPolicies.ControlPolicy()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ControlPolicies") && dict["ControlPolicies"] != nil {
            var model = ListControlPoliciesResponseBody.ControlPolicies()
            model.fromMap(dict["ControlPolicies"] as! [String: Any])
            self.controlPolicies = model
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
            var model = ListControlPoliciesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Language") && dict["Language"] != nil {
            self.language = dict["Language"] as! String
        }
        if dict.keys.contains("TargetId") && dict["TargetId"] != nil {
            self.targetId = dict["TargetId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AttachDate") && dict["AttachDate"] != nil {
                    self.attachDate = dict["AttachDate"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("EffectScope") && dict["EffectScope"] != nil {
                    self.effectScope = dict["EffectScope"] as! String
                }
                if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
                    self.policyId = dict["PolicyId"] as! String
                }
                if dict.keys.contains("PolicyName") && dict["PolicyName"] != nil {
                    self.policyName = dict["PolicyName"] as! String
                }
                if dict.keys.contains("PolicyType") && dict["PolicyType"] != nil {
                    self.policyType = dict["PolicyType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ControlPolicyAttachment") && dict["ControlPolicyAttachment"] != nil {
                var tmp : [ListControlPolicyAttachmentsForTargetResponseBody.ControlPolicyAttachments.ControlPolicyAttachment] = []
                for v in dict["ControlPolicyAttachment"] as! [Any] {
                    var model = ListControlPolicyAttachmentsForTargetResponseBody.ControlPolicyAttachments.ControlPolicyAttachment()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ControlPolicyAttachments") && dict["ControlPolicyAttachments"] != nil {
            var model = ListControlPolicyAttachmentsForTargetResponseBody.ControlPolicyAttachments()
            model.fromMap(dict["ControlPolicyAttachments"] as! [String: Any])
            self.controlPolicyAttachments = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ListControlPolicyAttachmentsForTargetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ServicePrincipal") && dict["ServicePrincipal"] != nil {
            self.servicePrincipal = dict["ServicePrincipal"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
                    self.accountId = dict["AccountId"] as! String
                }
                if dict.keys.contains("DelegationEnabledTime") && dict["DelegationEnabledTime"] != nil {
                    self.delegationEnabledTime = dict["DelegationEnabledTime"] as! String
                }
                if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
                    self.displayName = dict["DisplayName"] as! String
                }
                if dict.keys.contains("JoinMethod") && dict["JoinMethod"] != nil {
                    self.joinMethod = dict["JoinMethod"] as! String
                }
                if dict.keys.contains("ServicePrincipal") && dict["ServicePrincipal"] != nil {
                    self.servicePrincipal = dict["ServicePrincipal"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Account") && dict["Account"] != nil {
                var tmp : [ListDelegatedAdministratorsResponseBody.Accounts.Account] = []
                for v in dict["Account"] as! [Any] {
                    var model = ListDelegatedAdministratorsResponseBody.Accounts.Account()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accounts") && dict["Accounts"] != nil {
            var model = ListDelegatedAdministratorsResponseBody.Accounts()
            model.fromMap(dict["Accounts"] as! [String: Any])
            self.accounts = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
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
            var model = ListDelegatedAdministratorsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
            self.accountId = dict["AccountId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DelegationEnabledTime") && dict["DelegationEnabledTime"] != nil {
                    self.delegationEnabledTime = dict["DelegationEnabledTime"] as! String
                }
                if dict.keys.contains("ServicePrincipal") && dict["ServicePrincipal"] != nil {
                    self.servicePrincipal = dict["ServicePrincipal"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DelegatedService") && dict["DelegatedService"] != nil {
                var tmp : [ListDelegatedServicesForAccountResponseBody.DelegatedServices.DelegatedService] = []
                for v in dict["DelegatedService"] as! [Any] {
                    var model = ListDelegatedServicesForAccountResponseBody.DelegatedServices.DelegatedService()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DelegatedServices") && dict["DelegatedServices"] != nil {
            var model = ListDelegatedServicesForAccountResponseBody.DelegatedServices()
            model.fromMap(dict["DelegatedServices"] as! [String: Any])
            self.delegatedServices = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = ListDelegatedServicesForAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ParentFolderId") && dict["ParentFolderId"] != nil {
            self.parentFolderId = dict["ParentFolderId"] as! String
        }
        if dict.keys.contains("QueryKeyword") && dict["QueryKeyword"] != nil {
            self.queryKeyword = dict["QueryKeyword"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("FolderId") && dict["FolderId"] != nil {
                    self.folderId = dict["FolderId"] as! String
                }
                if dict.keys.contains("FolderName") && dict["FolderName"] != nil {
                    self.folderName = dict["FolderName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Folder") && dict["Folder"] != nil {
                var tmp : [ListFoldersForParentResponseBody.Folders.Folder] = []
                for v in dict["Folder"] as! [Any] {
                    var model = ListFoldersForParentResponseBody.Folders.Folder()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Folders") && dict["Folders"] != nil {
            var model = ListFoldersForParentResponseBody.Folders()
            model.fromMap(dict["Folders"] as! [String: Any])
            self.folders = model
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
            var model = ListFoldersForParentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("HandshakeId") && dict["HandshakeId"] != nil {
                    self.handshakeId = dict["HandshakeId"] as! String
                }
                if dict.keys.contains("MasterAccountId") && dict["MasterAccountId"] != nil {
                    self.masterAccountId = dict["MasterAccountId"] as! String
                }
                if dict.keys.contains("MasterAccountName") && dict["MasterAccountName"] != nil {
                    self.masterAccountName = dict["MasterAccountName"] as! String
                }
                if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                    self.modifyTime = dict["ModifyTime"] as! String
                }
                if dict.keys.contains("Note") && dict["Note"] != nil {
                    self.note = dict["Note"] as! String
                }
                if dict.keys.contains("ResourceDirectoryId") && dict["ResourceDirectoryId"] != nil {
                    self.resourceDirectoryId = dict["ResourceDirectoryId"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TargetEntity") && dict["TargetEntity"] != nil {
                    self.targetEntity = dict["TargetEntity"] as! String
                }
                if dict.keys.contains("TargetType") && dict["TargetType"] != nil {
                    self.targetType = dict["TargetType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Handshake") && dict["Handshake"] != nil {
                var tmp : [ListHandshakesForAccountResponseBody.Handshakes.Handshake] = []
                for v in dict["Handshake"] as! [Any] {
                    var model = ListHandshakesForAccountResponseBody.Handshakes.Handshake()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Handshakes") && dict["Handshakes"] != nil {
            var model = ListHandshakesForAccountResponseBody.Handshakes()
            model.fromMap(dict["Handshakes"] as! [String: Any])
            self.handshakes = model
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
            var model = ListHandshakesForAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("HandshakeId") && dict["HandshakeId"] != nil {
                    self.handshakeId = dict["HandshakeId"] as! String
                }
                if dict.keys.contains("MasterAccountId") && dict["MasterAccountId"] != nil {
                    self.masterAccountId = dict["MasterAccountId"] as! String
                }
                if dict.keys.contains("MasterAccountName") && dict["MasterAccountName"] != nil {
                    self.masterAccountName = dict["MasterAccountName"] as! String
                }
                if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                    self.modifyTime = dict["ModifyTime"] as! String
                }
                if dict.keys.contains("Note") && dict["Note"] != nil {
                    self.note = dict["Note"] as! String
                }
                if dict.keys.contains("ResourceDirectoryId") && dict["ResourceDirectoryId"] != nil {
                    self.resourceDirectoryId = dict["ResourceDirectoryId"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TargetEntity") && dict["TargetEntity"] != nil {
                    self.targetEntity = dict["TargetEntity"] as! String
                }
                if dict.keys.contains("TargetType") && dict["TargetType"] != nil {
                    self.targetType = dict["TargetType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Handshake") && dict["Handshake"] != nil {
                var tmp : [ListHandshakesForResourceDirectoryResponseBody.Handshakes.Handshake] = []
                for v in dict["Handshake"] as! [Any] {
                    var model = ListHandshakesForResourceDirectoryResponseBody.Handshakes.Handshake()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Handshakes") && dict["Handshakes"] != nil {
            var model = ListHandshakesForResourceDirectoryResponseBody.Handshakes()
            model.fromMap(dict["Handshakes"] as! [String: Any])
            self.handshakes = model
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
            var model = ListHandshakesForResourceDirectoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactId") && dict["ContactId"] != nil {
            self.contactId = dict["ContactId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContactId") && dict["ContactId"] != nil {
                self.contactId = dict["ContactId"] as! String
            }
            if dict.keys.contains("Target") && dict["Target"] != nil {
                self.target = dict["Target"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactVerifications") && dict["ContactVerifications"] != nil {
            var tmp : [ListMessageContactVerificationsResponseBody.ContactVerifications] = []
            for v in dict["ContactVerifications"] as! [Any] {
                var model = ListMessageContactVerificationsResponseBody.ContactVerifications()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.contactVerifications = tmp
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
            var model = ListMessageContactVerificationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactId") && dict["ContactId"] != nil {
            self.contactId = dict["ContactId"] as! String
        }
        if dict.keys.contains("Member") && dict["Member"] != nil {
            self.member = dict["Member"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AssociatedDate") && dict["AssociatedDate"] != nil {
                self.associatedDate = dict["AssociatedDate"] as! String
            }
            if dict.keys.contains("ContactId") && dict["ContactId"] != nil {
                self.contactId = dict["ContactId"] as! String
            }
            if dict.keys.contains("CreateDate") && dict["CreateDate"] != nil {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("EmailAddress") && dict["EmailAddress"] != nil {
                self.emailAddress = dict["EmailAddress"] as! String
            }
            if dict.keys.contains("Members") && dict["Members"] != nil {
                self.members = dict["Members"] as! [String]
            }
            if dict.keys.contains("MessageTypes") && dict["MessageTypes"] != nil {
                self.messageTypes = dict["MessageTypes"] as! [String]
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Title") && dict["Title"] != nil {
                self.title = dict["Title"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Contacts") && dict["Contacts"] != nil {
            var tmp : [ListMessageContactsResponseBody.Contacts] = []
            for v in dict["Contacts"] as! [Any] {
                var model = ListMessageContactsResponseBody.Contacts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.contacts = tmp
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
            var model = ListMessageContactsResponseBody()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") && dict["MaxResults"] != nil {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") && dict["TagResources"] != nil {
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in dict["TagResources"] as! [Any] {
                var model = ListTagResourcesResponseBody.TagResources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AttachDate") && dict["AttachDate"] != nil {
                    self.attachDate = dict["AttachDate"] as! String
                }
                if dict.keys.contains("TargetId") && dict["TargetId"] != nil {
                    self.targetId = dict["TargetId"] as! String
                }
                if dict.keys.contains("TargetName") && dict["TargetName"] != nil {
                    self.targetName = dict["TargetName"] as! String
                }
                if dict.keys.contains("TargetType") && dict["TargetType"] != nil {
                    self.targetType = dict["TargetType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TargetAttachment") && dict["TargetAttachment"] != nil {
                var tmp : [ListTargetAttachmentsForControlPolicyResponseBody.TargetAttachments.TargetAttachment] = []
                for v in dict["TargetAttachment"] as! [Any] {
                    var model = ListTargetAttachmentsForControlPolicyResponseBody.TargetAttachments.TargetAttachment()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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
        if dict.keys.contains("TargetAttachments") && dict["TargetAttachments"] != nil {
            var model = ListTargetAttachmentsForControlPolicyResponseBody.TargetAttachments()
            model.fromMap(dict["TargetAttachments"] as! [String: Any])
            self.targetAttachments = model
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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
            var model = ListTargetAttachmentsForControlPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdminAccountId") && dict["AdminAccountId"] != nil {
            self.adminAccountId = dict["AdminAccountId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EnableTime") && dict["EnableTime"] != nil {
                    self.enableTime = dict["EnableTime"] as! String
                }
                if dict.keys.contains("ServicePrincipal") && dict["ServicePrincipal"] != nil {
                    self.servicePrincipal = dict["ServicePrincipal"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnabledServicePrincipal") && dict["EnabledServicePrincipal"] != nil {
                var tmp : [ListTrustedServiceStatusResponseBody.EnabledServicePrincipals.EnabledServicePrincipal] = []
                for v in dict["EnabledServicePrincipal"] as! [Any] {
                    var model = ListTrustedServiceStatusResponseBody.EnabledServicePrincipals.EnabledServicePrincipal()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnabledServicePrincipals") && dict["EnabledServicePrincipals"] != nil {
            var model = ListTrustedServiceStatusResponseBody.EnabledServicePrincipals()
            model.fromMap(dict["EnabledServicePrincipals"] as! [String: Any])
            self.enabledServicePrincipals = model
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
            var model = ListTrustedServiceStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("DestinationFolderId") && dict["DestinationFolderId"] != nil {
            self.destinationFolderId = dict["DestinationFolderId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = MoveAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("ServicePrincipal") && dict["ServicePrincipal"] != nil {
            self.servicePrincipal = dict["ServicePrincipal"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = RegisterDelegatedAdministratorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
            self.accountId = dict["AccountId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = RemoveCloudAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
            self.accountId = dict["AccountId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = RetryChangeAccountEmailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactId") && dict["ContactId"] != nil {
            self.contactId = dict["ContactId"] as! String
        }
        if dict.keys.contains("EmailAddress") && dict["EmailAddress"] != nil {
            self.emailAddress = dict["EmailAddress"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = SendEmailVerificationForMessageContactResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactId") && dict["ContactId"] != nil {
            self.contactId = dict["ContactId"] as! String
        }
        if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
            self.phoneNumber = dict["PhoneNumber"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = SendPhoneVerificationForMessageContactResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("SecureMobilePhone") && dict["SecureMobilePhone"] != nil {
            self.secureMobilePhone = dict["SecureMobilePhone"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExpirationDate") && dict["ExpirationDate"] != nil {
            self.expirationDate = dict["ExpirationDate"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = SendVerificationCodeForBindSecureMobilePhoneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SecureMobilePhone") && dict["SecureMobilePhone"] != nil {
            self.secureMobilePhone = dict["SecureMobilePhone"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = SendVerificationCodeForEnableRDResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ManagementAccountId") && dict["ManagementAccountId"] != nil {
            self.managementAccountId = dict["ManagementAccountId"] as! String
        }
        if dict.keys.contains("MemberDeletionStatus") && dict["MemberDeletionStatus"] != nil {
            self.memberDeletionStatus = dict["MemberDeletionStatus"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceDirectoryId") && dict["ResourceDirectoryId"] != nil {
            self.resourceDirectoryId = dict["ResourceDirectoryId"] as! String
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
            var model = SetMemberDeletionPermissionResponseBody()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("NewAccountType") && dict["NewAccountType"] != nil {
            self.newAccountType = dict["NewAccountType"] as! String
        }
        if dict.keys.contains("NewDisplayName") && dict["NewDisplayName"] != nil {
            self.newDisplayName = dict["NewDisplayName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("DisplayName") && dict["DisplayName"] != nil {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("FolderId") && dict["FolderId"] != nil {
                self.folderId = dict["FolderId"] as! String
            }
            if dict.keys.contains("JoinMethod") && dict["JoinMethod"] != nil {
                self.joinMethod = dict["JoinMethod"] as! String
            }
            if dict.keys.contains("JoinTime") && dict["JoinTime"] != nil {
                self.joinTime = dict["JoinTime"] as! String
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("ResourceDirectoryId") && dict["ResourceDirectoryId"] != nil {
                self.resourceDirectoryId = dict["ResourceDirectoryId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") && dict["Account"] != nil {
            var model = UpdateAccountResponseBody.Account()
            model.fromMap(dict["Account"] as! [String: Any])
            self.account = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = UpdateAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewDescription") && dict["NewDescription"] != nil {
            self.newDescription = dict["NewDescription"] as! String
        }
        if dict.keys.contains("NewPolicyDocument") && dict["NewPolicyDocument"] != nil {
            self.newPolicyDocument = dict["NewPolicyDocument"] as! String
        }
        if dict.keys.contains("NewPolicyName") && dict["NewPolicyName"] != nil {
            self.newPolicyName = dict["NewPolicyName"] as! String
        }
        if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
            self.policyId = dict["PolicyId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AttachmentCount") && dict["AttachmentCount"] != nil {
                self.attachmentCount = dict["AttachmentCount"] as! String
            }
            if dict.keys.contains("CreateDate") && dict["CreateDate"] != nil {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EffectScope") && dict["EffectScope"] != nil {
                self.effectScope = dict["EffectScope"] as! String
            }
            if dict.keys.contains("PolicyId") && dict["PolicyId"] != nil {
                self.policyId = dict["PolicyId"] as! String
            }
            if dict.keys.contains("PolicyName") && dict["PolicyName"] != nil {
                self.policyName = dict["PolicyName"] as! String
            }
            if dict.keys.contains("PolicyType") && dict["PolicyType"] != nil {
                self.policyType = dict["PolicyType"] as! String
            }
            if dict.keys.contains("UpdateDate") && dict["UpdateDate"] != nil {
                self.updateDate = dict["UpdateDate"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ControlPolicy") && dict["ControlPolicy"] != nil {
            var model = UpdateControlPolicyResponseBody.ControlPolicy()
            model.fromMap(dict["ControlPolicy"] as! [String: Any])
            self.controlPolicy = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = UpdateControlPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FolderId") && dict["FolderId"] != nil {
            self.folderId = dict["FolderId"] as! String
        }
        if dict.keys.contains("NewFolderName") && dict["NewFolderName"] != nil {
            self.newFolderName = dict["NewFolderName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("FolderId") && dict["FolderId"] != nil {
                self.folderId = dict["FolderId"] as! String
            }
            if dict.keys.contains("FolderName") && dict["FolderName"] != nil {
                self.folderName = dict["FolderName"] as! String
            }
            if dict.keys.contains("ParentFolderId") && dict["ParentFolderId"] != nil {
                self.parentFolderId = dict["ParentFolderId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Folder") && dict["Folder"] != nil {
            var model = UpdateFolderResponseBody.Folder()
            model.fromMap(dict["Folder"] as! [String: Any])
            self.folder = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = UpdateFolderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContactId") && dict["ContactId"] != nil {
            self.contactId = dict["ContactId"] as! String
        }
        if dict.keys.contains("EmailAddress") && dict["EmailAddress"] != nil {
            self.emailAddress = dict["EmailAddress"] as! String
        }
        if dict.keys.contains("MessageTypes") && dict["MessageTypes"] != nil {
            self.messageTypes = dict["MessageTypes"] as! [String]
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = UpdateMessageContactResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
