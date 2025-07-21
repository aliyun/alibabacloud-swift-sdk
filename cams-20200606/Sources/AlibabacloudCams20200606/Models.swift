import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddChatGroupRequest : Tea.TeaModel {
    public var businessNumber: String?

    public var channelType: String?

    public var custSpaceId: String?

    public var description_: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subject: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessNumber != nil {
            map["BusinessNumber"] = self.businessNumber!
        }
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
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
        if self.subject != nil {
            map["Subject"] = self.subject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessNumber"] as? String {
            self.businessNumber = value
        }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Subject"] as? String {
            self.subject = value
        }
    }
}

public class AddChatGroupResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var uniqueCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.uniqueCode != nil {
            map["UniqueCode"] = self.uniqueCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["UniqueCode"] as? String {
            self.uniqueCode = value
        }
    }
}

public class AddChatGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddChatGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddChatGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddChatGroupInviteLinkRequest : Tea.TeaModel {
    public var businessNumber: String?

    public var channelType: String?

    public var custSpaceId: String?

    public var groupId: String?

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
        if self.businessNumber != nil {
            map["BusinessNumber"] = self.businessNumber!
        }
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessNumber"] as? String {
            self.businessNumber = value
        }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class AddChatGroupInviteLinkResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var inviteLink: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.inviteLink != nil {
            map["InviteLink"] = self.inviteLink!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["InviteLink"] as? String {
            self.inviteLink = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddChatGroupInviteLinkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddChatGroupInviteLinkResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddChatGroupInviteLinkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddChatappPhoneNumberRequest : Tea.TeaModel {
    public var cc: String?

    public var custSpaceId: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var preValidateId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var verifiedName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cc != nil {
            map["Cc"] = self.cc!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.preValidateId != nil {
            map["PreValidateId"] = self.preValidateId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.verifiedName != nil {
            map["VerifiedName"] = self.verifiedName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cc"] as? String {
            self.cc = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["PreValidateId"] as? String {
            self.preValidateId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["VerifiedName"] as? String {
            self.verifiedName = value
        }
    }
}

public class AddChatappPhoneNumberResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddChatappPhoneNumberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddChatappPhoneNumberResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddChatappPhoneNumberResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatappBindWabaRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var wabaId: String?

    public override init() {
        super.init()
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
        if self.wabaId != nil {
            map["WabaId"] = self.wabaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["WabaId"] as? String {
            self.wabaId = value
        }
    }
}

public class ChatappBindWabaResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var custSpaceId: String?

        public var wabaId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.custSpaceId != nil {
                map["CustSpaceId"] = self.custSpaceId!
            }
            if self.wabaId != nil {
                map["WabaId"] = self.wabaId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustSpaceId"] as? String {
                self.custSpaceId = value
            }
            if let value = dict["WabaId"] as? String {
                self.wabaId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: ChatappBindWabaResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ChatappBindWabaResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatappBindWabaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatappBindWabaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ChatappBindWabaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatappEmbedSignUpRequest : Tea.TeaModel {
    public var inputToken: String?

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
        if self.inputToken != nil {
            map["InputToken"] = self.inputToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InputToken"] as? String {
            self.inputToken = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ChatappEmbedSignUpResponseBody : Tea.TeaModel {
    public class Wabas : Tea.TeaModel {
        public var accountReviewStatus: String?

        public var currency: String?

        public var id: String?

        public var messageTemplateNamespace: String?

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
            if self.accountReviewStatus != nil {
                map["AccountReviewStatus"] = self.accountReviewStatus!
            }
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.messageTemplateNamespace != nil {
                map["MessageTemplateNamespace"] = self.messageTemplateNamespace!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountReviewStatus"] as? String {
                self.accountReviewStatus = value
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["MessageTemplateNamespace"] as? String {
                self.messageTemplateNamespace = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var wabas: [ChatappEmbedSignUpResponseBody.Wabas]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.wabas != nil {
            var tmp : [Any] = []
            for k in self.wabas! {
                tmp.append(k.toMap())
            }
            map["Wabas"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Wabas"] as? [Any?] {
            var tmp : [ChatappEmbedSignUpResponseBody.Wabas] = []
            for v in value {
                if v != nil {
                    var model = ChatappEmbedSignUpResponseBody.Wabas()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.wabas = tmp
        }
    }
}

public class ChatappEmbedSignUpResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatappEmbedSignUpResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ChatappEmbedSignUpResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatappMigrationRegisterRequest : Tea.TeaModel {
    public var custSpaceId: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ChatappMigrationRegisterResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ChatappMigrationRegisterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatappMigrationRegisterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ChatappMigrationRegisterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatappMigrationVerifiedRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var verifyCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
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
        if self.verifyCode != nil {
            map["VerifyCode"] = self.verifyCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["VerifyCode"] as? String {
            self.verifyCode = value
        }
    }
}

public class ChatappMigrationVerifiedResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["PhoneNumber"] as? String {
                self.phoneNumber = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: ChatappMigrationVerifiedResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ChatappMigrationVerifiedResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ChatappMigrationVerifiedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatappMigrationVerifiedResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ChatappMigrationVerifiedResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatappPhoneNumberDeregisterRequest : Tea.TeaModel {
    public var custSpaceId: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ChatappPhoneNumberDeregisterResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ChatappPhoneNumberDeregisterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatappPhoneNumberDeregisterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ChatappPhoneNumberDeregisterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatappPhoneNumberRegisterRequest : Tea.TeaModel {
    public var custSpaceId: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ChatappPhoneNumberRegisterResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatappPhoneNumberRegisterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatappPhoneNumberRegisterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ChatappPhoneNumberRegisterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatappSyncPhoneNumberRequest : Tea.TeaModel {
    public var custSpaceId: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ChatappSyncPhoneNumberResponseBody : Tea.TeaModel {
    public class PhoneNumbers : Tea.TeaModel {
        public var codeVerificationStatus: String?

        public var isOfficial: String?

        public var messagingLimitTier: String?

        public var nameStatus: String?

        public var newNameStatus: String?

        public var phoneNumber: String?

        public var qualityRating: String?

        public var status: String?

        public var statusCallbackUrl: String?

        public var statusQueue: String?

        public var upCallbackUrl: String?

        public var upQueue: String?

        public var verifiedName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.codeVerificationStatus != nil {
                map["CodeVerificationStatus"] = self.codeVerificationStatus!
            }
            if self.isOfficial != nil {
                map["IsOfficial"] = self.isOfficial!
            }
            if self.messagingLimitTier != nil {
                map["MessagingLimitTier"] = self.messagingLimitTier!
            }
            if self.nameStatus != nil {
                map["NameStatus"] = self.nameStatus!
            }
            if self.newNameStatus != nil {
                map["NewNameStatus"] = self.newNameStatus!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.qualityRating != nil {
                map["QualityRating"] = self.qualityRating!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusCallbackUrl != nil {
                map["StatusCallbackUrl"] = self.statusCallbackUrl!
            }
            if self.statusQueue != nil {
                map["StatusQueue"] = self.statusQueue!
            }
            if self.upCallbackUrl != nil {
                map["UpCallbackUrl"] = self.upCallbackUrl!
            }
            if self.upQueue != nil {
                map["UpQueue"] = self.upQueue!
            }
            if self.verifiedName != nil {
                map["VerifiedName"] = self.verifiedName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CodeVerificationStatus"] as? String {
                self.codeVerificationStatus = value
            }
            if let value = dict["IsOfficial"] as? String {
                self.isOfficial = value
            }
            if let value = dict["MessagingLimitTier"] as? String {
                self.messagingLimitTier = value
            }
            if let value = dict["NameStatus"] as? String {
                self.nameStatus = value
            }
            if let value = dict["NewNameStatus"] as? String {
                self.newNameStatus = value
            }
            if let value = dict["PhoneNumber"] as? String {
                self.phoneNumber = value
            }
            if let value = dict["QualityRating"] as? String {
                self.qualityRating = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusCallbackUrl"] as? String {
                self.statusCallbackUrl = value
            }
            if let value = dict["StatusQueue"] as? String {
                self.statusQueue = value
            }
            if let value = dict["UpCallbackUrl"] as? String {
                self.upCallbackUrl = value
            }
            if let value = dict["UpQueue"] as? String {
                self.upQueue = value
            }
            if let value = dict["VerifiedName"] as? String {
                self.verifiedName = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var phoneNumbers: [ChatappSyncPhoneNumberResponseBody.PhoneNumbers]?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.phoneNumbers != nil {
            var tmp : [Any] = []
            for k in self.phoneNumbers! {
                tmp.append(k.toMap())
            }
            map["PhoneNumbers"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PhoneNumbers"] as? [Any?] {
            var tmp : [ChatappSyncPhoneNumberResponseBody.PhoneNumbers] = []
            for v in value {
                if v != nil {
                    var model = ChatappSyncPhoneNumberResponseBody.PhoneNumbers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.phoneNumbers = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatappSyncPhoneNumberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatappSyncPhoneNumberResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ChatappSyncPhoneNumberResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatappVerifyAndRegisterRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var verifyCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
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
        if self.verifyCode != nil {
            map["VerifyCode"] = self.verifyCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["VerifyCode"] as? String {
            self.verifyCode = value
        }
    }
}

public class ChatappVerifyAndRegisterResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatappVerifyAndRegisterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatappVerifyAndRegisterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ChatappVerifyAndRegisterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateChatFlowRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtend: [String: Any]?

    public var flowTriggerType: String?

    public var ownerId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtend != nil {
            map["BizExtend"] = self.bizExtend!
        }
        if self.flowTriggerType != nil {
            map["FlowTriggerType"] = self.flowTriggerType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? [String: Any] {
            self.bizExtend = value
        }
        if let value = dict["FlowTriggerType"] as? String {
            self.flowTriggerType = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class CreateChatFlowShrinkRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtendShrink: String?

    public var flowTriggerType: String?

    public var ownerId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtendShrink != nil {
            map["BizExtend"] = self.bizExtendShrink!
        }
        if self.flowTriggerType != nil {
            map["FlowTriggerType"] = self.flowTriggerType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? String {
            self.bizExtendShrink = value
        }
        if let value = dict["FlowTriggerType"] as? String {
            self.flowTriggerType = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class CreateChatFlowResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [String: Any]?

    public var message: String?

    public var requestId: String?

    public var response: [String: Any]?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.response != nil {
            map["Response"] = self.response!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Response"] as? [String: Any] {
            self.response = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateChatFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateChatFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateChatFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateChatFlowByImportRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtend: [String: Any]?

    public var flowViewModel: String?

    public var ownerId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtend != nil {
            map["BizExtend"] = self.bizExtend!
        }
        if self.flowViewModel != nil {
            map["FlowViewModel"] = self.flowViewModel!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? [String: Any] {
            self.bizExtend = value
        }
        if let value = dict["FlowViewModel"] as? String {
            self.flowViewModel = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class CreateChatFlowByImportShrinkRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtendShrink: String?

    public var flowViewModel: String?

    public var ownerId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtendShrink != nil {
            map["BizExtend"] = self.bizExtendShrink!
        }
        if self.flowViewModel != nil {
            map["FlowViewModel"] = self.flowViewModel!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? String {
            self.bizExtendShrink = value
        }
        if let value = dict["FlowViewModel"] as? String {
            self.flowViewModel = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class CreateChatFlowByImportResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [String: Any]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateChatFlowByImportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateChatFlowByImportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateChatFlowByImportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateChatFlowLogSettingRequest : Tea.TeaModel {
    public var flowCode: String?

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
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CreateChatFlowLogSettingResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [String: Any]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateChatFlowLogSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateChatFlowLogSettingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateChatFlowLogSettingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateChatappMigrationInitiateRequest : Tea.TeaModel {
    public var countryCode: String?

    public var custSpaceId: String?

    public var mobileNumber: String?

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
        if self.countryCode != nil {
            map["CountryCode"] = self.countryCode!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.mobileNumber != nil {
            map["MobileNumber"] = self.mobileNumber!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CountryCode"] as? String {
            self.countryCode = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["MobileNumber"] as? String {
            self.mobileNumber = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CreateChatappMigrationInitiateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

        public var phoneNumber: String?

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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["PhoneNumber"] as? String {
                self.phoneNumber = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CreateChatappMigrationInitiateResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateChatappMigrationInitiateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateChatappMigrationInitiateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateChatappMigrationInitiateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateChatappMigrationInitiateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateChatappTemplateRequest : Tea.TeaModel {
    public class Components : Tea.TeaModel {
        public class Buttons : Tea.TeaModel {
            public class SupportedApps : Tea.TeaModel {
                public var packageName: String?

                public var signatureHash: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.packageName != nil {
                        map["PackageName"] = self.packageName!
                    }
                    if self.signatureHash != nil {
                        map["SignatureHash"] = self.signatureHash!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["PackageName"] as? String {
                        self.packageName = value
                    }
                    if let value = dict["SignatureHash"] as? String {
                        self.signatureHash = value
                    }
                }
            }
            public var autofillText: String?

            public var couponCode: String?

            public var flowAction: String?

            public var flowId: String?

            public var isOptOut: Bool?

            public var navigateScreen: String?

            public var packageName: String?

            public var phoneNumber: String?

            public var signatureHash: String?

            public var supportedApps: [CreateChatappTemplateRequest.Components.Buttons.SupportedApps]?

            public var text: String?

            public var type: String?

            public var url: String?

            public var urlType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autofillText != nil {
                    map["AutofillText"] = self.autofillText!
                }
                if self.couponCode != nil {
                    map["CouponCode"] = self.couponCode!
                }
                if self.flowAction != nil {
                    map["FlowAction"] = self.flowAction!
                }
                if self.flowId != nil {
                    map["FlowId"] = self.flowId!
                }
                if self.isOptOut != nil {
                    map["IsOptOut"] = self.isOptOut!
                }
                if self.navigateScreen != nil {
                    map["NavigateScreen"] = self.navigateScreen!
                }
                if self.packageName != nil {
                    map["PackageName"] = self.packageName!
                }
                if self.phoneNumber != nil {
                    map["PhoneNumber"] = self.phoneNumber!
                }
                if self.signatureHash != nil {
                    map["SignatureHash"] = self.signatureHash!
                }
                if self.supportedApps != nil {
                    var tmp : [Any] = []
                    for k in self.supportedApps! {
                        tmp.append(k.toMap())
                    }
                    map["SupportedApps"] = tmp
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                if self.urlType != nil {
                    map["UrlType"] = self.urlType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutofillText"] as? String {
                    self.autofillText = value
                }
                if let value = dict["CouponCode"] as? String {
                    self.couponCode = value
                }
                if let value = dict["FlowAction"] as? String {
                    self.flowAction = value
                }
                if let value = dict["FlowId"] as? String {
                    self.flowId = value
                }
                if let value = dict["IsOptOut"] as? Bool {
                    self.isOptOut = value
                }
                if let value = dict["NavigateScreen"] as? String {
                    self.navigateScreen = value
                }
                if let value = dict["PackageName"] as? String {
                    self.packageName = value
                }
                if let value = dict["PhoneNumber"] as? String {
                    self.phoneNumber = value
                }
                if let value = dict["SignatureHash"] as? String {
                    self.signatureHash = value
                }
                if let value = dict["SupportedApps"] as? [Any?] {
                    var tmp : [CreateChatappTemplateRequest.Components.Buttons.SupportedApps] = []
                    for v in value {
                        if v != nil {
                            var model = CreateChatappTemplateRequest.Components.Buttons.SupportedApps()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.supportedApps = tmp
                }
                if let value = dict["Text"] as? String {
                    self.text = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
                if let value = dict["UrlType"] as? String {
                    self.urlType = value
                }
            }
        }
        public class Cards : Tea.TeaModel {
            public class CardComponents : Tea.TeaModel {
                public class Buttons : Tea.TeaModel {
                    public var phoneNumber: String?

                    public var text: String?

                    public var type: String?

                    public var url: String?

                    public var urlType: String?

                    public override init() {
                        super.init()
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
                        if self.text != nil {
                            map["Text"] = self.text!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.url != nil {
                            map["Url"] = self.url!
                        }
                        if self.urlType != nil {
                            map["UrlType"] = self.urlType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["PhoneNumber"] as? String {
                            self.phoneNumber = value
                        }
                        if let value = dict["Text"] as? String {
                            self.text = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                        if let value = dict["Url"] as? String {
                            self.url = value
                        }
                        if let value = dict["UrlType"] as? String {
                            self.urlType = value
                        }
                    }
                }
                public var buttons: [CreateChatappTemplateRequest.Components.Cards.CardComponents.Buttons]?

                public var format: String?

                public var text: String?

                public var type: String?

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
                    if self.buttons != nil {
                        var tmp : [Any] = []
                        for k in self.buttons! {
                            tmp.append(k.toMap())
                        }
                        map["Buttons"] = tmp
                    }
                    if self.format != nil {
                        map["Format"] = self.format!
                    }
                    if self.text != nil {
                        map["Text"] = self.text!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Buttons"] as? [Any?] {
                        var tmp : [CreateChatappTemplateRequest.Components.Cards.CardComponents.Buttons] = []
                        for v in value {
                            if v != nil {
                                var model = CreateChatappTemplateRequest.Components.Cards.CardComponents.Buttons()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.buttons = tmp
                    }
                    if let value = dict["Format"] as? String {
                        self.format = value
                    }
                    if let value = dict["Text"] as? String {
                        self.text = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["Url"] as? String {
                        self.url = value
                    }
                }
            }
            public var cardComponents: [CreateChatappTemplateRequest.Components.Cards.CardComponents]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cardComponents != nil {
                    var tmp : [Any] = []
                    for k in self.cardComponents! {
                        tmp.append(k.toMap())
                    }
                    map["CardComponents"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CardComponents"] as? [Any?] {
                    var tmp : [CreateChatappTemplateRequest.Components.Cards.CardComponents] = []
                    for v in value {
                        if v != nil {
                            var model = CreateChatappTemplateRequest.Components.Cards.CardComponents()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.cardComponents = tmp
                }
            }
        }
        public var addSecretRecommendation: Bool?

        public var buttons: [CreateChatappTemplateRequest.Components.Buttons]?

        public var caption: String?

        public var cards: [CreateChatappTemplateRequest.Components.Cards]?

        public var codeExpirationMinutes: Int32?

        public var duration: Int32?

        public var fileName: String?

        public var fileType: String?

        public var format: String?

        public var hasExpiration: Bool?

        public var text: String?

        public var thumbUrl: String?

        public var type: String?

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
            if self.addSecretRecommendation != nil {
                map["AddSecretRecommendation"] = self.addSecretRecommendation!
            }
            if self.buttons != nil {
                var tmp : [Any] = []
                for k in self.buttons! {
                    tmp.append(k.toMap())
                }
                map["Buttons"] = tmp
            }
            if self.caption != nil {
                map["Caption"] = self.caption!
            }
            if self.cards != nil {
                var tmp : [Any] = []
                for k in self.cards! {
                    tmp.append(k.toMap())
                }
                map["Cards"] = tmp
            }
            if self.codeExpirationMinutes != nil {
                map["CodeExpirationMinutes"] = self.codeExpirationMinutes!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.fileType != nil {
                map["FileType"] = self.fileType!
            }
            if self.format != nil {
                map["Format"] = self.format!
            }
            if self.hasExpiration != nil {
                map["HasExpiration"] = self.hasExpiration!
            }
            if self.text != nil {
                map["Text"] = self.text!
            }
            if self.thumbUrl != nil {
                map["ThumbUrl"] = self.thumbUrl!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddSecretRecommendation"] as? Bool {
                self.addSecretRecommendation = value
            }
            if let value = dict["Buttons"] as? [Any?] {
                var tmp : [CreateChatappTemplateRequest.Components.Buttons] = []
                for v in value {
                    if v != nil {
                        var model = CreateChatappTemplateRequest.Components.Buttons()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.buttons = tmp
            }
            if let value = dict["Caption"] as? String {
                self.caption = value
            }
            if let value = dict["Cards"] as? [Any?] {
                var tmp : [CreateChatappTemplateRequest.Components.Cards] = []
                for v in value {
                    if v != nil {
                        var model = CreateChatappTemplateRequest.Components.Cards()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.cards = tmp
            }
            if let value = dict["CodeExpirationMinutes"] as? Int32 {
                self.codeExpirationMinutes = value
            }
            if let value = dict["Duration"] as? Int32 {
                self.duration = value
            }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["FileType"] as? String {
                self.fileType = value
            }
            if let value = dict["Format"] as? String {
                self.format = value
            }
            if let value = dict["HasExpiration"] as? Bool {
                self.hasExpiration = value
            }
            if let value = dict["Text"] as? String {
                self.text = value
            }
            if let value = dict["ThumbUrl"] as? String {
                self.thumbUrl = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var allowCategoryChange: Bool?

    public var category: String?

    public var categoryChangePaused: Bool?

    public var components: [CreateChatappTemplateRequest.Components]?

    public var custSpaceId: String?

    public var custWabaId: String?

    public var example: [String: String]?

    public var isvCode: String?

    public var language: String?

    public var messageSendTtlSeconds: Int32?

    public var name: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowCategoryChange != nil {
            map["AllowCategoryChange"] = self.allowCategoryChange!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.categoryChangePaused != nil {
            map["CategoryChangePaused"] = self.categoryChangePaused!
        }
        if self.components != nil {
            var tmp : [Any] = []
            for k in self.components! {
                tmp.append(k.toMap())
            }
            map["Components"] = tmp
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.example != nil {
            map["Example"] = self.example!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.messageSendTtlSeconds != nil {
            map["MessageSendTtlSeconds"] = self.messageSendTtlSeconds!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowCategoryChange"] as? Bool {
            self.allowCategoryChange = value
        }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["CategoryChangePaused"] as? Bool {
            self.categoryChangePaused = value
        }
        if let value = dict["Components"] as? [Any?] {
            var tmp : [CreateChatappTemplateRequest.Components] = []
            for v in value {
                if v != nil {
                    var model = CreateChatappTemplateRequest.Components()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.components = tmp
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["CustWabaId"] as? String {
            self.custWabaId = value
        }
        if let value = dict["Example"] as? [String: String] {
            self.example = value
        }
        if let value = dict["IsvCode"] as? String {
            self.isvCode = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["MessageSendTtlSeconds"] as? Int32 {
            self.messageSendTtlSeconds = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["TemplateType"] as? String {
            self.templateType = value
        }
    }
}

public class CreateChatappTemplateShrinkRequest : Tea.TeaModel {
    public var allowCategoryChange: Bool?

    public var category: String?

    public var categoryChangePaused: Bool?

    public var componentsShrink: String?

    public var custSpaceId: String?

    public var custWabaId: String?

    public var exampleShrink: String?

    public var isvCode: String?

    public var language: String?

    public var messageSendTtlSeconds: Int32?

    public var name: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowCategoryChange != nil {
            map["AllowCategoryChange"] = self.allowCategoryChange!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.categoryChangePaused != nil {
            map["CategoryChangePaused"] = self.categoryChangePaused!
        }
        if self.componentsShrink != nil {
            map["Components"] = self.componentsShrink!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.exampleShrink != nil {
            map["Example"] = self.exampleShrink!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.messageSendTtlSeconds != nil {
            map["MessageSendTtlSeconds"] = self.messageSendTtlSeconds!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowCategoryChange"] as? Bool {
            self.allowCategoryChange = value
        }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["CategoryChangePaused"] as? Bool {
            self.categoryChangePaused = value
        }
        if let value = dict["Components"] as? String {
            self.componentsShrink = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["CustWabaId"] as? String {
            self.custWabaId = value
        }
        if let value = dict["Example"] as? String {
            self.exampleShrink = value
        }
        if let value = dict["IsvCode"] as? String {
            self.isvCode = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["MessageSendTtlSeconds"] as? Int32 {
            self.messageSendTtlSeconds = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["TemplateType"] as? String {
            self.templateType = value
        }
    }
}

public class CreateChatappTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var templateCode: String?

        public var templateName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.templateCode != nil {
                map["TemplateCode"] = self.templateCode!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TemplateCode"] as? String {
                self.templateCode = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CreateChatappTemplateResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateChatappTemplateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateChatappTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateChatappTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateChatappTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFlowRequest : Tea.TeaModel {
    public var categories: [String]?

    public var custSpaceId: String?

    public var flowName: String?

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
        if self.categories != nil {
            map["Categories"] = self.categories!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Categories"] as? [String] {
            self.categories = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CreateFlowShrinkRequest : Tea.TeaModel {
    public var categoriesShrink: String?

    public var custSpaceId: String?

    public var flowName: String?

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
        if self.categoriesShrink != nil {
            map["Categories"] = self.categoriesShrink!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Categories"] as? String {
            self.categoriesShrink = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CreateFlowResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var categories: [String]?

        public var flowId: String?

        public var flowName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categories != nil {
                map["Categories"] = self.categories!
            }
            if self.flowId != nil {
                map["FlowId"] = self.flowId!
            }
            if self.flowName != nil {
                map["FlowName"] = self.flowName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Categories"] as? [String] {
                self.categories = value
            }
            if let value = dict["FlowId"] as? String {
                self.flowId = value
            }
            if let value = dict["FlowName"] as? String {
                self.flowName = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CreateFlowResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateFlowResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFlowVersionRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtend: [String: Any]?

    public var flowCode: String?

    public var flowVersionCopyFrom: String?

    public var ownerId: Int64?

    public var remark: String?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtend != nil {
            map["BizExtend"] = self.bizExtend!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.flowVersionCopyFrom != nil {
            map["FlowVersionCopyFrom"] = self.flowVersionCopyFrom!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? [String: Any] {
            self.bizExtend = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["FlowVersionCopyFrom"] as? String {
            self.flowVersionCopyFrom = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CreateFlowVersionShrinkRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtendShrink: String?

    public var flowCode: String?

    public var flowVersionCopyFrom: String?

    public var ownerId: Int64?

    public var remark: String?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtendShrink != nil {
            map["BizExtend"] = self.bizExtendShrink!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.flowVersionCopyFrom != nil {
            map["FlowVersionCopyFrom"] = self.flowVersionCopyFrom!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? String {
            self.bizExtendShrink = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["FlowVersionCopyFrom"] as? String {
            self.flowVersionCopyFrom = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CreateFlowVersionResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var response: [String: Any]?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.response != nil {
            map["Response"] = self.response!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Response"] as? [String: Any] {
            self.response = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateFlowVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFlowVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateFlowVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePhoneMessageQrdlRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var generateQrImage: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var prefilledMessage: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.generateQrImage != nil {
            map["GenerateQrImage"] = self.generateQrImage!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.prefilledMessage != nil {
            map["PrefilledMessage"] = self.prefilledMessage!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["GenerateQrImage"] as? String {
            self.generateQrImage = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["PrefilledMessage"] as? String {
            self.prefilledMessage = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CreatePhoneMessageQrdlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deepLinkUrl: String?

        public var generateQrImage: String?

        public var phoneNumber: String?

        public var prefilledMessage: String?

        public var qrImageUrl: String?

        public var qrdlCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deepLinkUrl != nil {
                map["DeepLinkUrl"] = self.deepLinkUrl!
            }
            if self.generateQrImage != nil {
                map["GenerateQrImage"] = self.generateQrImage!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.prefilledMessage != nil {
                map["PrefilledMessage"] = self.prefilledMessage!
            }
            if self.qrImageUrl != nil {
                map["QrImageUrl"] = self.qrImageUrl!
            }
            if self.qrdlCode != nil {
                map["QrdlCode"] = self.qrdlCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeepLinkUrl"] as? String {
                self.deepLinkUrl = value
            }
            if let value = dict["GenerateQrImage"] as? String {
                self.generateQrImage = value
            }
            if let value = dict["PhoneNumber"] as? String {
                self.phoneNumber = value
            }
            if let value = dict["PrefilledMessage"] as? String {
                self.prefilledMessage = value
            }
            if let value = dict["QrImageUrl"] as? String {
                self.qrImageUrl = value
            }
            if let value = dict["QrdlCode"] as? String {
                self.qrdlCode = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: CreatePhoneMessageQrdlResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreatePhoneMessageQrdlResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreatePhoneMessageQrdlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePhoneMessageQrdlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePhoneMessageQrdlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteChatFlowRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtend: [String: Any]?

    public var flowCode: String?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtend != nil {
            map["BizExtend"] = self.bizExtend!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? [String: Any] {
            self.bizExtend = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DeleteChatFlowShrinkRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtendShrink: String?

    public var flowCode: String?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtendShrink != nil {
            map["BizExtend"] = self.bizExtendShrink!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? String {
            self.bizExtendShrink = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DeleteChatFlowResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var response: [String: Any]?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.response != nil {
            map["Response"] = self.response!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Response"] as? [String: Any] {
            self.response = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteChatFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteChatFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteChatFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteChatGroupRequest : Tea.TeaModel {
    public var businessNumber: String?

    public var channelType: String?

    public var custSpaceId: String?

    public var groupId: String?

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
        if self.businessNumber != nil {
            map["BusinessNumber"] = self.businessNumber!
        }
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessNumber"] as? String {
            self.businessNumber = value
        }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DeleteChatGroupResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: Int64?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Int64 {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteChatGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteChatGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteChatGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteChatGroupInviteLinkRequest : Tea.TeaModel {
    public var businessNumber: String?

    public var channelType: String?

    public var custSpaceId: String?

    public var groupId: String?

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
        if self.businessNumber != nil {
            map["BusinessNumber"] = self.businessNumber!
        }
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessNumber"] as? String {
            self.businessNumber = value
        }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DeleteChatGroupInviteLinkResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: Int64?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Int64 {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteChatGroupInviteLinkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteChatGroupInviteLinkResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteChatGroupInviteLinkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteChatGroupParticipantsRequest : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var participantNumber: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.participantNumber != nil {
                map["ParticipantNumber"] = self.participantNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ParticipantNumber"] as? String {
                self.participantNumber = value
            }
        }
    }
    public var businessNumber: String?

    public var channelType: String?

    public var custSpaceId: String?

    public var groupId: String?

    public var list: [DeleteChatGroupParticipantsRequest.List]?

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
        if self.businessNumber != nil {
            map["BusinessNumber"] = self.businessNumber!
        }
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["List"] = tmp
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessNumber"] as? String {
            self.businessNumber = value
        }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["List"] as? [Any?] {
            var tmp : [DeleteChatGroupParticipantsRequest.List] = []
            for v in value {
                if v != nil {
                    var model = DeleteChatGroupParticipantsRequest.List()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.list = tmp
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DeleteChatGroupParticipantsShrinkRequest : Tea.TeaModel {
    public var businessNumber: String?

    public var channelType: String?

    public var custSpaceId: String?

    public var groupId: String?

    public var listShrink: String?

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
        if self.businessNumber != nil {
            map["BusinessNumber"] = self.businessNumber!
        }
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.listShrink != nil {
            map["List"] = self.listShrink!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessNumber"] as? String {
            self.businessNumber = value
        }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["List"] as? String {
            self.listShrink = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DeleteChatGroupParticipantsResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: Int64?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Int64 {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteChatGroupParticipantsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteChatGroupParticipantsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteChatGroupParticipantsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteChatappTemplateRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var custWabaId: String?

    public var isvCode: String?

    public var language: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var templateCode: String?

    public var templateName: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
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
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["CustWabaId"] as? String {
            self.custWabaId = value
        }
        if let value = dict["IsvCode"] as? String {
            self.isvCode = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateType"] as? String {
            self.templateType = value
        }
    }
}

public class DeleteChatappTemplateResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteChatappTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteChatappTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteChatappTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFlowRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var flowId: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["FlowId"] as? String {
            self.flowId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DeleteFlowResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteFlowVersionRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtend: [String: Any]?

    public var flowCode: String?

    public var flowVersion: String?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtend != nil {
            map["BizExtend"] = self.bizExtend!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? [String: Any] {
            self.bizExtend = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["FlowVersion"] as? String {
            self.flowVersion = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DeleteFlowVersionShrinkRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtendShrink: String?

    public var flowCode: String?

    public var flowVersion: String?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtendShrink != nil {
            map["BizExtend"] = self.bizExtendShrink!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? String {
            self.bizExtendShrink = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["FlowVersion"] as? String {
            self.flowVersion = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DeleteFlowVersionResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var response: [String: Any]?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.response != nil {
            map["Response"] = self.response!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Response"] as? [String: Any] {
            self.response = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteFlowVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFlowVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteFlowVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePhoneMessageQrdlRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var qrdlCode: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.qrdlCode != nil {
            map["QrdlCode"] = self.qrdlCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["QrdlCode"] as? String {
            self.qrdlCode = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DeletePhoneMessageQrdlResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeletePhoneMessageQrdlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePhoneMessageQrdlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeletePhoneMessageQrdlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeprecateFlowRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var flowId: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["FlowId"] as? String {
            self.flowId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DeprecateFlowResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeprecateFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeprecateFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeprecateFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableWhatsappROIMetricRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var isvCode: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["IsvCode"] as? String {
            self.isvCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class EnableWhatsappROIMetricResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class EnableWhatsappROIMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableWhatsappROIMetricResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EnableWhatsappROIMetricResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FlowBindPhoneRequest : Tea.TeaModel {
    public var channelCode: String?

    public var channelType: String?

    public var flowCode: String?

    public var flowVersion: String?

    public var ownerId: Int64?

    public var phoneNumbers: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var wabaId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelCode != nil {
            map["ChannelCode"] = self.channelCode!
        }
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumbers != nil {
            map["PhoneNumbers"] = self.phoneNumbers!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.wabaId != nil {
            map["WabaId"] = self.wabaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelCode"] as? String {
            self.channelCode = value
        }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["FlowVersion"] as? String {
            self.flowVersion = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumbers"] as? [String] {
            self.phoneNumbers = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["WabaId"] as? String {
            self.wabaId = value
        }
    }
}

public class FlowBindPhoneShrinkRequest : Tea.TeaModel {
    public var channelCode: String?

    public var channelType: String?

    public var flowCode: String?

    public var flowVersion: String?

    public var ownerId: Int64?

    public var phoneNumbersShrink: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var wabaId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelCode != nil {
            map["ChannelCode"] = self.channelCode!
        }
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumbersShrink != nil {
            map["PhoneNumbers"] = self.phoneNumbersShrink!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.wabaId != nil {
            map["WabaId"] = self.wabaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelCode"] as? String {
            self.channelCode = value
        }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["FlowVersion"] as? String {
            self.flowVersion = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumbers"] as? String {
            self.phoneNumbersShrink = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["WabaId"] as? String {
            self.wabaId = value
        }
    }
}

public class FlowBindPhoneResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: Bool?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? Bool {
            self.model = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class FlowBindPhoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FlowBindPhoneResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = FlowBindPhoneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FlowRebindPhoneRequest : Tea.TeaModel {
    public var channelCode: String?

    public var channelType: String?

    public var flowCode: String?

    public var flowVersion: String?

    public var ownerId: Int64?

    public var phoneNumbers: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var wabaId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelCode != nil {
            map["ChannelCode"] = self.channelCode!
        }
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumbers != nil {
            map["PhoneNumbers"] = self.phoneNumbers!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.wabaId != nil {
            map["WabaId"] = self.wabaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelCode"] as? String {
            self.channelCode = value
        }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["FlowVersion"] as? String {
            self.flowVersion = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumbers"] as? [String] {
            self.phoneNumbers = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["WabaId"] as? String {
            self.wabaId = value
        }
    }
}

public class FlowRebindPhoneShrinkRequest : Tea.TeaModel {
    public var channelCode: String?

    public var channelType: String?

    public var flowCode: String?

    public var flowVersion: String?

    public var ownerId: Int64?

    public var phoneNumbersShrink: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var wabaId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelCode != nil {
            map["ChannelCode"] = self.channelCode!
        }
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumbersShrink != nil {
            map["PhoneNumbers"] = self.phoneNumbersShrink!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.wabaId != nil {
            map["WabaId"] = self.wabaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelCode"] as? String {
            self.channelCode = value
        }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["FlowVersion"] as? String {
            self.flowVersion = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumbers"] as? String {
            self.phoneNumbersShrink = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["WabaId"] as? String {
            self.wabaId = value
        }
    }
}

public class FlowRebindPhoneResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: Bool?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? Bool {
            self.model = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class FlowRebindPhoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FlowRebindPhoneResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = FlowRebindPhoneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FlowUnbindPhoneRequest : Tea.TeaModel {
    public var channelType: String?

    public var flowCode: String?

    public var flowVersion: String?

    public var ownerId: Int64?

    public var phoneNumbers: [String]?

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
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumbers != nil {
            map["PhoneNumbers"] = self.phoneNumbers!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["FlowVersion"] as? String {
            self.flowVersion = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumbers"] as? [String] {
            self.phoneNumbers = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class FlowUnbindPhoneShrinkRequest : Tea.TeaModel {
    public var channelType: String?

    public var flowCode: String?

    public var flowVersion: String?

    public var ownerId: Int64?

    public var phoneNumbersShrink: String?

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
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumbersShrink != nil {
            map["PhoneNumbers"] = self.phoneNumbersShrink!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["FlowVersion"] as? String {
            self.flowVersion = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumbers"] as? String {
            self.phoneNumbersShrink = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class FlowUnbindPhoneResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: Bool?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? Bool {
            self.model = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class FlowUnbindPhoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FlowUnbindPhoneResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = FlowUnbindPhoneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetChatFlowMetricRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtend: [String: Any]?

    public var flowCode: String?

    public var flowVersion: String?

    public var from: Int64?

    public var metricName: String?

    public var metricParam: [String: Any]?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var to: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtend != nil {
            map["BizExtend"] = self.bizExtend!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.metricName != nil {
            map["MetricName"] = self.metricName!
        }
        if self.metricParam != nil {
            map["MetricParam"] = self.metricParam!
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
        if self.to != nil {
            map["To"] = self.to!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? [String: Any] {
            self.bizExtend = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["FlowVersion"] as? String {
            self.flowVersion = value
        }
        if let value = dict["From"] as? Int64 {
            self.from = value
        }
        if let value = dict["MetricName"] as? String {
            self.metricName = value
        }
        if let value = dict["MetricParam"] as? [String: Any] {
            self.metricParam = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["To"] as? Int64 {
            self.to = value
        }
    }
}

public class GetChatFlowMetricShrinkRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtendShrink: String?

    public var flowCode: String?

    public var flowVersion: String?

    public var from: Int64?

    public var metricName: String?

    public var metricParamShrink: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var to: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtendShrink != nil {
            map["BizExtend"] = self.bizExtendShrink!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.metricName != nil {
            map["MetricName"] = self.metricName!
        }
        if self.metricParamShrink != nil {
            map["MetricParam"] = self.metricParamShrink!
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
        if self.to != nil {
            map["To"] = self.to!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? String {
            self.bizExtendShrink = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["FlowVersion"] as? String {
            self.flowVersion = value
        }
        if let value = dict["From"] as? Int64 {
            self.from = value
        }
        if let value = dict["MetricName"] as? String {
            self.metricName = value
        }
        if let value = dict["MetricParam"] as? String {
            self.metricParamShrink = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["To"] as? Int64 {
            self.to = value
        }
    }
}

public class GetChatFlowMetricResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [String: Any]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetChatFlowMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetChatFlowMetricResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetChatFlowMetricResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetChatFlowTemplateRequest : Tea.TeaModel {
    public var bizCode: String?

    public var id: Int64?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.id != nil {
            map["Id"] = self.id!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class GetChatFlowTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var response: [String: Any]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.response != nil {
                map["Response"] = self.response!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Response"] as? [String: Any] {
                self.response = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetChatFlowTemplateResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetChatFlowTemplateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetChatFlowTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetChatFlowTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetChatFlowTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetChatappPhoneNumberMetricRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var end: Int64?

    public var granularity: String?

    public var isvCode: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var start: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.end != nil {
            map["End"] = self.end!
        }
        if self.granularity != nil {
            map["Granularity"] = self.granularity!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
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
        if self.start != nil {
            map["Start"] = self.start!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["End"] as? Int64 {
            self.end = value
        }
        if let value = dict["Granularity"] as? String {
            self.granularity = value
        }
        if let value = dict["IsvCode"] as? String {
            self.isvCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Start"] as? Int64 {
            self.start = value
        }
    }
}

public class GetChatappPhoneNumberMetricResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deliveredCount: Int32?

        public var end: Int64?

        public var granularity: String?

        public var phoneNumber: String?

        public var sentCount: Int32?

        public var start: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deliveredCount != nil {
                map["DeliveredCount"] = self.deliveredCount!
            }
            if self.end != nil {
                map["End"] = self.end!
            }
            if self.granularity != nil {
                map["Granularity"] = self.granularity!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.sentCount != nil {
                map["SentCount"] = self.sentCount!
            }
            if self.start != nil {
                map["Start"] = self.start!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeliveredCount"] as? Int32 {
                self.deliveredCount = value
            }
            if let value = dict["End"] as? Int64 {
                self.end = value
            }
            if let value = dict["Granularity"] as? String {
                self.granularity = value
            }
            if let value = dict["PhoneNumber"] as? String {
                self.phoneNumber = value
            }
            if let value = dict["SentCount"] as? Int32 {
                self.sentCount = value
            }
            if let value = dict["Start"] as? Int64 {
                self.start = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [GetChatappPhoneNumberMetricResponseBody.Data]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetChatappPhoneNumberMetricResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetChatappPhoneNumberMetricResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetChatappPhoneNumberMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetChatappPhoneNumberMetricResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetChatappPhoneNumberMetricResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetChatappTemplateDetailRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var custWabaId: String?

    public var isvCode: String?

    public var language: String?

    public var templateCode: String?

    public var templateName: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["CustWabaId"] as? String {
            self.custWabaId = value
        }
        if let value = dict["IsvCode"] as? String {
            self.isvCode = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateType"] as? String {
            self.templateType = value
        }
    }
}

public class GetChatappTemplateDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Components : Tea.TeaModel {
            public class Buttons : Tea.TeaModel {
                public class ExtendAttrs : Tea.TeaModel {
                    public var action: String?

                    public var intentCode: String?

                    public var nextLanguageCode: String?

                    public var nextTemplateCode: String?

                    public var nextTemplateName: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.action != nil {
                            map["Action"] = self.action!
                        }
                        if self.intentCode != nil {
                            map["IntentCode"] = self.intentCode!
                        }
                        if self.nextLanguageCode != nil {
                            map["NextLanguageCode"] = self.nextLanguageCode!
                        }
                        if self.nextTemplateCode != nil {
                            map["NextTemplateCode"] = self.nextTemplateCode!
                        }
                        if self.nextTemplateName != nil {
                            map["NextTemplateName"] = self.nextTemplateName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Action"] as? String {
                            self.action = value
                        }
                        if let value = dict["IntentCode"] as? String {
                            self.intentCode = value
                        }
                        if let value = dict["NextLanguageCode"] as? String {
                            self.nextLanguageCode = value
                        }
                        if let value = dict["NextTemplateCode"] as? String {
                            self.nextTemplateCode = value
                        }
                        if let value = dict["NextTemplateName"] as? String {
                            self.nextTemplateName = value
                        }
                    }
                }
                public class SupportedApps : Tea.TeaModel {
                    public var packageName: String?

                    public var signatureHash: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.packageName != nil {
                            map["PackageName"] = self.packageName!
                        }
                        if self.signatureHash != nil {
                            map["SignatureHash"] = self.signatureHash!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["PackageName"] as? String {
                            self.packageName = value
                        }
                        if let value = dict["SignatureHash"] as? String {
                            self.signatureHash = value
                        }
                    }
                }
                public var autofillText: String?

                public var couponCode: String?

                public var extendAttrs: GetChatappTemplateDetailResponseBody.Data.Components.Buttons.ExtendAttrs?

                public var flowAction: String?

                public var flowId: String?

                public var isOptOut: Bool?

                public var navigateScreen: String?

                public var packageName: String?

                public var phoneNumber: String?

                public var signatureHash: String?

                public var supportedApps: [GetChatappTemplateDetailResponseBody.Data.Components.Buttons.SupportedApps]?

                public var text: String?

                public var type: String?

                public var url: String?

                public var urlType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.extendAttrs?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.autofillText != nil {
                        map["AutofillText"] = self.autofillText!
                    }
                    if self.couponCode != nil {
                        map["CouponCode"] = self.couponCode!
                    }
                    if self.extendAttrs != nil {
                        map["ExtendAttrs"] = self.extendAttrs?.toMap()
                    }
                    if self.flowAction != nil {
                        map["FlowAction"] = self.flowAction!
                    }
                    if self.flowId != nil {
                        map["FlowId"] = self.flowId!
                    }
                    if self.isOptOut != nil {
                        map["IsOptOut"] = self.isOptOut!
                    }
                    if self.navigateScreen != nil {
                        map["NavigateScreen"] = self.navigateScreen!
                    }
                    if self.packageName != nil {
                        map["PackageName"] = self.packageName!
                    }
                    if self.phoneNumber != nil {
                        map["PhoneNumber"] = self.phoneNumber!
                    }
                    if self.signatureHash != nil {
                        map["SignatureHash"] = self.signatureHash!
                    }
                    if self.supportedApps != nil {
                        var tmp : [Any] = []
                        for k in self.supportedApps! {
                            tmp.append(k.toMap())
                        }
                        map["SupportedApps"] = tmp
                    }
                    if self.text != nil {
                        map["Text"] = self.text!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    if self.urlType != nil {
                        map["UrlType"] = self.urlType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AutofillText"] as? String {
                        self.autofillText = value
                    }
                    if let value = dict["CouponCode"] as? String {
                        self.couponCode = value
                    }
                    if let value = dict["ExtendAttrs"] as? [String: Any?] {
                        var model = GetChatappTemplateDetailResponseBody.Data.Components.Buttons.ExtendAttrs()
                        model.fromMap(value)
                        self.extendAttrs = model
                    }
                    if let value = dict["FlowAction"] as? String {
                        self.flowAction = value
                    }
                    if let value = dict["FlowId"] as? String {
                        self.flowId = value
                    }
                    if let value = dict["IsOptOut"] as? Bool {
                        self.isOptOut = value
                    }
                    if let value = dict["NavigateScreen"] as? String {
                        self.navigateScreen = value
                    }
                    if let value = dict["PackageName"] as? String {
                        self.packageName = value
                    }
                    if let value = dict["PhoneNumber"] as? String {
                        self.phoneNumber = value
                    }
                    if let value = dict["SignatureHash"] as? String {
                        self.signatureHash = value
                    }
                    if let value = dict["SupportedApps"] as? [Any?] {
                        var tmp : [GetChatappTemplateDetailResponseBody.Data.Components.Buttons.SupportedApps] = []
                        for v in value {
                            if v != nil {
                                var model = GetChatappTemplateDetailResponseBody.Data.Components.Buttons.SupportedApps()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.supportedApps = tmp
                    }
                    if let value = dict["Text"] as? String {
                        self.text = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["Url"] as? String {
                        self.url = value
                    }
                    if let value = dict["UrlType"] as? String {
                        self.urlType = value
                    }
                }
            }
            public class Cards : Tea.TeaModel {
                public class CardComponents : Tea.TeaModel {
                    public class Buttons : Tea.TeaModel {
                        public var phoneNumber: String?

                        public var text: String?

                        public var type: String?

                        public var url: String?

                        public var urlType: String?

                        public override init() {
                            super.init()
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
                            if self.text != nil {
                                map["Text"] = self.text!
                            }
                            if self.type != nil {
                                map["Type"] = self.type!
                            }
                            if self.url != nil {
                                map["Url"] = self.url!
                            }
                            if self.urlType != nil {
                                map["UrlType"] = self.urlType!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["PhoneNumber"] as? String {
                                self.phoneNumber = value
                            }
                            if let value = dict["Text"] as? String {
                                self.text = value
                            }
                            if let value = dict["Type"] as? String {
                                self.type = value
                            }
                            if let value = dict["Url"] as? String {
                                self.url = value
                            }
                            if let value = dict["UrlType"] as? String {
                                self.urlType = value
                            }
                        }
                    }
                    public var buttons: [GetChatappTemplateDetailResponseBody.Data.Components.Cards.CardComponents.Buttons]?

                    public var format: String?

                    public var text: String?

                    public var type: String?

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
                        if self.buttons != nil {
                            var tmp : [Any] = []
                            for k in self.buttons! {
                                tmp.append(k.toMap())
                            }
                            map["Buttons"] = tmp
                        }
                        if self.format != nil {
                            map["Format"] = self.format!
                        }
                        if self.text != nil {
                            map["Text"] = self.text!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.url != nil {
                            map["Url"] = self.url!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Buttons"] as? [Any?] {
                            var tmp : [GetChatappTemplateDetailResponseBody.Data.Components.Cards.CardComponents.Buttons] = []
                            for v in value {
                                if v != nil {
                                    var model = GetChatappTemplateDetailResponseBody.Data.Components.Cards.CardComponents.Buttons()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
                            }
                            self.buttons = tmp
                        }
                        if let value = dict["Format"] as? String {
                            self.format = value
                        }
                        if let value = dict["Text"] as? String {
                            self.text = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                        if let value = dict["Url"] as? String {
                            self.url = value
                        }
                    }
                }
                public var cardComponents: [GetChatappTemplateDetailResponseBody.Data.Components.Cards.CardComponents]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cardComponents != nil {
                        var tmp : [Any] = []
                        for k in self.cardComponents! {
                            tmp.append(k.toMap())
                        }
                        map["CardComponents"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CardComponents"] as? [Any?] {
                        var tmp : [GetChatappTemplateDetailResponseBody.Data.Components.Cards.CardComponents] = []
                        for v in value {
                            if v != nil {
                                var model = GetChatappTemplateDetailResponseBody.Data.Components.Cards.CardComponents()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.cardComponents = tmp
                    }
                }
            }
            public var addSecretRecommendation: Bool?

            public var buttons: [GetChatappTemplateDetailResponseBody.Data.Components.Buttons]?

            public var caption: String?

            public var cards: [GetChatappTemplateDetailResponseBody.Data.Components.Cards]?

            public var codeExpirationMinutes: Int32?

            public var duration: Int32?

            public var fileName: String?

            public var fileType: String?

            public var format: String?

            public var latitude: String?

            public var locationAddress: String?

            public var locationName: String?

            public var longitude: String?

            public var offerExpirationTimeMs: String?

            public var text: String?

            public var thumbUrl: String?

            public var type: String?

            public var url: String?

            public var hasExpiration: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.addSecretRecommendation != nil {
                    map["AddSecretRecommendation"] = self.addSecretRecommendation!
                }
                if self.buttons != nil {
                    var tmp : [Any] = []
                    for k in self.buttons! {
                        tmp.append(k.toMap())
                    }
                    map["Buttons"] = tmp
                }
                if self.caption != nil {
                    map["Caption"] = self.caption!
                }
                if self.cards != nil {
                    var tmp : [Any] = []
                    for k in self.cards! {
                        tmp.append(k.toMap())
                    }
                    map["Cards"] = tmp
                }
                if self.codeExpirationMinutes != nil {
                    map["CodeExpirationMinutes"] = self.codeExpirationMinutes!
                }
                if self.duration != nil {
                    map["Duration"] = self.duration!
                }
                if self.fileName != nil {
                    map["FileName"] = self.fileName!
                }
                if self.fileType != nil {
                    map["FileType"] = self.fileType!
                }
                if self.format != nil {
                    map["Format"] = self.format!
                }
                if self.latitude != nil {
                    map["Latitude"] = self.latitude!
                }
                if self.locationAddress != nil {
                    map["LocationAddress"] = self.locationAddress!
                }
                if self.locationName != nil {
                    map["LocationName"] = self.locationName!
                }
                if self.longitude != nil {
                    map["Longitude"] = self.longitude!
                }
                if self.offerExpirationTimeMs != nil {
                    map["OfferExpirationTimeMs"] = self.offerExpirationTimeMs!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                if self.thumbUrl != nil {
                    map["ThumbUrl"] = self.thumbUrl!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                if self.hasExpiration != nil {
                    map["hasExpiration"] = self.hasExpiration!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AddSecretRecommendation"] as? Bool {
                    self.addSecretRecommendation = value
                }
                if let value = dict["Buttons"] as? [Any?] {
                    var tmp : [GetChatappTemplateDetailResponseBody.Data.Components.Buttons] = []
                    for v in value {
                        if v != nil {
                            var model = GetChatappTemplateDetailResponseBody.Data.Components.Buttons()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.buttons = tmp
                }
                if let value = dict["Caption"] as? String {
                    self.caption = value
                }
                if let value = dict["Cards"] as? [Any?] {
                    var tmp : [GetChatappTemplateDetailResponseBody.Data.Components.Cards] = []
                    for v in value {
                        if v != nil {
                            var model = GetChatappTemplateDetailResponseBody.Data.Components.Cards()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.cards = tmp
                }
                if let value = dict["CodeExpirationMinutes"] as? Int32 {
                    self.codeExpirationMinutes = value
                }
                if let value = dict["Duration"] as? Int32 {
                    self.duration = value
                }
                if let value = dict["FileName"] as? String {
                    self.fileName = value
                }
                if let value = dict["FileType"] as? String {
                    self.fileType = value
                }
                if let value = dict["Format"] as? String {
                    self.format = value
                }
                if let value = dict["Latitude"] as? String {
                    self.latitude = value
                }
                if let value = dict["LocationAddress"] as? String {
                    self.locationAddress = value
                }
                if let value = dict["LocationName"] as? String {
                    self.locationName = value
                }
                if let value = dict["Longitude"] as? String {
                    self.longitude = value
                }
                if let value = dict["OfferExpirationTimeMs"] as? String {
                    self.offerExpirationTimeMs = value
                }
                if let value = dict["Text"] as? String {
                    self.text = value
                }
                if let value = dict["ThumbUrl"] as? String {
                    self.thumbUrl = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
                if let value = dict["hasExpiration"] as? Bool {
                    self.hasExpiration = value
                }
            }
        }
        public var allowSend: Bool?

        public var auditStatus: String?

        public var category: String?

        public var categoryChangePaused: Bool?

        public var components: [GetChatappTemplateDetailResponseBody.Data.Components]?

        public var example: [String: String]?

        public var language: String?

        public var messageSendTtlSeconds: Int32?

        public var name: String?

        public var qualityScore: String?

        public var reason: String?

        public var templateCode: String?

        public var templateType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowSend != nil {
                map["AllowSend"] = self.allowSend!
            }
            if self.auditStatus != nil {
                map["AuditStatus"] = self.auditStatus!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.categoryChangePaused != nil {
                map["CategoryChangePaused"] = self.categoryChangePaused!
            }
            if self.components != nil {
                var tmp : [Any] = []
                for k in self.components! {
                    tmp.append(k.toMap())
                }
                map["Components"] = tmp
            }
            if self.example != nil {
                map["Example"] = self.example!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.messageSendTtlSeconds != nil {
                map["MessageSendTtlSeconds"] = self.messageSendTtlSeconds!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.qualityScore != nil {
                map["QualityScore"] = self.qualityScore!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.templateCode != nil {
                map["TemplateCode"] = self.templateCode!
            }
            if self.templateType != nil {
                map["TemplateType"] = self.templateType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllowSend"] as? Bool {
                self.allowSend = value
            }
            if let value = dict["AuditStatus"] as? String {
                self.auditStatus = value
            }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["CategoryChangePaused"] as? Bool {
                self.categoryChangePaused = value
            }
            if let value = dict["Components"] as? [Any?] {
                var tmp : [GetChatappTemplateDetailResponseBody.Data.Components] = []
                for v in value {
                    if v != nil {
                        var model = GetChatappTemplateDetailResponseBody.Data.Components()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.components = tmp
            }
            if let value = dict["Example"] as? [String: String] {
                self.example = value
            }
            if let value = dict["Language"] as? String {
                self.language = value
            }
            if let value = dict["MessageSendTtlSeconds"] as? Int32 {
                self.messageSendTtlSeconds = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["QualityScore"] as? String {
                self.qualityScore = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
            if let value = dict["TemplateCode"] as? String {
                self.templateCode = value
            }
            if let value = dict["TemplateType"] as? String {
                self.templateType = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetChatappTemplateDetailResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetChatappTemplateDetailResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetChatappTemplateDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetChatappTemplateDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetChatappTemplateDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetChatappTemplateMetricRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var end: Int64?

    public var granularity: String?

    public var isvCode: String?

    public var language: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var start: Int64?

    public var templateCode: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.end != nil {
            map["End"] = self.end!
        }
        if self.granularity != nil {
            map["Granularity"] = self.granularity!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
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
        if self.start != nil {
            map["Start"] = self.start!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["End"] as? Int64 {
            self.end = value
        }
        if let value = dict["Granularity"] as? String {
            self.granularity = value
        }
        if let value = dict["IsvCode"] as? String {
            self.isvCode = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Start"] as? Int64 {
            self.start = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateType"] as? String {
            self.templateType = value
        }
    }
}

public class GetChatappTemplateMetricResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Cliented : Tea.TeaModel {
            public var buttonContent: String?

            public var count: Int32?

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
                if self.buttonContent != nil {
                    map["ButtonContent"] = self.buttonContent!
                }
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ButtonContent"] as? String {
                    self.buttonContent = value
                }
                if let value = dict["Count"] as? Int32 {
                    self.count = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var cliented: [GetChatappTemplateMetricResponseBody.Data.Cliented]?

        public var deliveredCount: Int32?

        public var end: Int64?

        public var language: String?

        public var readCount: Int32?

        public var sentCount: Int32?

        public var start: Int64?

        public var templateCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cliented != nil {
                var tmp : [Any] = []
                for k in self.cliented! {
                    tmp.append(k.toMap())
                }
                map["Cliented"] = tmp
            }
            if self.deliveredCount != nil {
                map["DeliveredCount"] = self.deliveredCount!
            }
            if self.end != nil {
                map["End"] = self.end!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.readCount != nil {
                map["ReadCount"] = self.readCount!
            }
            if self.sentCount != nil {
                map["SentCount"] = self.sentCount!
            }
            if self.start != nil {
                map["Start"] = self.start!
            }
            if self.templateCode != nil {
                map["TemplateCode"] = self.templateCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Cliented"] as? [Any?] {
                var tmp : [GetChatappTemplateMetricResponseBody.Data.Cliented] = []
                for v in value {
                    if v != nil {
                        var model = GetChatappTemplateMetricResponseBody.Data.Cliented()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.cliented = tmp
            }
            if let value = dict["DeliveredCount"] as? Int32 {
                self.deliveredCount = value
            }
            if let value = dict["End"] as? Int64 {
                self.end = value
            }
            if let value = dict["Language"] as? String {
                self.language = value
            }
            if let value = dict["ReadCount"] as? Int32 {
                self.readCount = value
            }
            if let value = dict["SentCount"] as? Int32 {
                self.sentCount = value
            }
            if let value = dict["Start"] as? Int64 {
                self.start = value
            }
            if let value = dict["TemplateCode"] as? String {
                self.templateCode = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [GetChatappTemplateMetricResponseBody.Data]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetChatappTemplateMetricResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetChatappTemplateMetricResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetChatappTemplateMetricResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetChatappTemplateMetricResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetChatappTemplateMetricResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetChatappUploadAuthorizationRequest : Tea.TeaModel {
    public var custSpaceId: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class GetChatappUploadAuthorizationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessKeyId: String?

        public var accessKeySecret: String?

        public var bucketName: String?

        public var dir: String?

        public var endPoint: String?

        public var expire: Int32?

        public var securityToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKeyId != nil {
                map["AccessKeyId"] = self.accessKeyId!
            }
            if self.accessKeySecret != nil {
                map["AccessKeySecret"] = self.accessKeySecret!
            }
            if self.bucketName != nil {
                map["BucketName"] = self.bucketName!
            }
            if self.dir != nil {
                map["Dir"] = self.dir!
            }
            if self.endPoint != nil {
                map["EndPoint"] = self.endPoint!
            }
            if self.expire != nil {
                map["Expire"] = self.expire!
            }
            if self.securityToken != nil {
                map["SecurityToken"] = self.securityToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKeyId"] as? String {
                self.accessKeyId = value
            }
            if let value = dict["AccessKeySecret"] as? String {
                self.accessKeySecret = value
            }
            if let value = dict["BucketName"] as? String {
                self.bucketName = value
            }
            if let value = dict["Dir"] as? String {
                self.dir = value
            }
            if let value = dict["EndPoint"] as? String {
                self.endPoint = value
            }
            if let value = dict["Expire"] as? Int32 {
                self.expire = value
            }
            if let value = dict["SecurityToken"] as? String {
                self.securityToken = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetChatappUploadAuthorizationResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetChatappUploadAuthorizationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetChatappUploadAuthorizationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetChatappUploadAuthorizationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetChatappUploadAuthorizationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetChatappVerifyCodeRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var locale: String?

    public var method: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.locale != nil {
            map["Locale"] = self.locale!
        }
        if self.method != nil {
            map["Method"] = self.method!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["Locale"] as? String {
            self.locale = value
        }
        if let value = dict["Method"] as? String {
            self.method = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class GetChatappVerifyCodeResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetChatappVerifyCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetChatappVerifyCodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetChatappVerifyCodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCommerceSettingRequest : Tea.TeaModel {
    public var custSpaceId: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class GetCommerceSettingResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cartEnable: Bool?

        public var catalogVisible: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cartEnable != nil {
                map["CartEnable"] = self.cartEnable!
            }
            if self.catalogVisible != nil {
                map["CatalogVisible"] = self.catalogVisible!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CartEnable"] as? Bool {
                self.cartEnable = value
            }
            if let value = dict["CatalogVisible"] as? Bool {
                self.catalogVisible = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetCommerceSettingResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetCommerceSettingResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetCommerceSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCommerceSettingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetCommerceSettingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetConversationalAutomationRequest : Tea.TeaModel {
    public var custSpaceId: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class GetConversationalAutomationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Commands : Tea.TeaModel {
            public var commandDescription: String?

            public var commandName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.commandDescription != nil {
                    map["CommandDescription"] = self.commandDescription!
                }
                if self.commandName != nil {
                    map["CommandName"] = self.commandName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CommandDescription"] as? String {
                    self.commandDescription = value
                }
                if let value = dict["CommandName"] as? String {
                    self.commandName = value
                }
            }
        }
        public var commands: [GetConversationalAutomationResponseBody.Data.Commands]?

        public var enableWelcomeMessage: Bool?

        public var phoneNumber: String?

        public var prompts: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commands != nil {
                var tmp : [Any] = []
                for k in self.commands! {
                    tmp.append(k.toMap())
                }
                map["Commands"] = tmp
            }
            if self.enableWelcomeMessage != nil {
                map["EnableWelcomeMessage"] = self.enableWelcomeMessage!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.prompts != nil {
                map["Prompts"] = self.prompts!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Commands"] as? [Any?] {
                var tmp : [GetConversationalAutomationResponseBody.Data.Commands] = []
                for v in value {
                    if v != nil {
                        var model = GetConversationalAutomationResponseBody.Data.Commands()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.commands = tmp
            }
            if let value = dict["EnableWelcomeMessage"] as? Bool {
                self.enableWelcomeMessage = value
            }
            if let value = dict["PhoneNumber"] as? String {
                self.phoneNumber = value
            }
            if let value = dict["Prompts"] as? [String] {
                self.prompts = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetConversationalAutomationResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetConversationalAutomationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetConversationalAutomationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetConversationalAutomationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetConversationalAutomationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFlowRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var flowId: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["FlowId"] as? String {
            self.flowId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class GetFlowResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var categories: [String]?

        public var dataApiVersion: String?

        public var flowId: String?

        public var flowName: String?

        public var JSONVersion: String?

        public var previewUrl: String?

        public var previewUrlExpires: Int64?

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
            if self.categories != nil {
                map["Categories"] = self.categories!
            }
            if self.dataApiVersion != nil {
                map["DataApiVersion"] = self.dataApiVersion!
            }
            if self.flowId != nil {
                map["FlowId"] = self.flowId!
            }
            if self.flowName != nil {
                map["FlowName"] = self.flowName!
            }
            if self.JSONVersion != nil {
                map["JSONVersion"] = self.JSONVersion!
            }
            if self.previewUrl != nil {
                map["PreviewUrl"] = self.previewUrl!
            }
            if self.previewUrlExpires != nil {
                map["PreviewUrlExpires"] = self.previewUrlExpires!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Categories"] as? [String] {
                self.categories = value
            }
            if let value = dict["DataApiVersion"] as? String {
                self.dataApiVersion = value
            }
            if let value = dict["FlowId"] as? String {
                self.flowId = value
            }
            if let value = dict["FlowName"] as? String {
                self.flowName = value
            }
            if let value = dict["JSONVersion"] as? String {
                self.JSONVersion = value
            }
            if let value = dict["PreviewUrl"] as? String {
                self.previewUrl = value
            }
            if let value = dict["PreviewUrlExpires"] as? Int64 {
                self.previewUrlExpires = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetFlowResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetFlowResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFlowJSONAssestRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var flowId: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["FlowId"] as? String {
            self.flowId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class GetFlowJSONAssestResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var filePath: String?

        public var flowId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.filePath != nil {
                map["FilePath"] = self.filePath!
            }
            if self.flowId != nil {
                map["FlowId"] = self.flowId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FilePath"] as? String {
                self.filePath = value
            }
            if let value = dict["FlowId"] as? String {
                self.flowId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetFlowJSONAssestResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetFlowJSONAssestResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetFlowJSONAssestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFlowJSONAssestResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetFlowJSONAssestResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetFlowPreviewUrlRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var flowId: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["FlowId"] as? String {
            self.flowId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class GetFlowPreviewUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var flowId: String?

        public var previewUrl: String?

        public var previewUrlExpires: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.flowId != nil {
                map["FlowId"] = self.flowId!
            }
            if self.previewUrl != nil {
                map["PreviewUrl"] = self.previewUrl!
            }
            if self.previewUrlExpires != nil {
                map["PreviewUrlExpires"] = self.previewUrlExpires!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FlowId"] as? String {
                self.flowId = value
            }
            if let value = dict["PreviewUrl"] as? String {
                self.previewUrl = value
            }
            if let value = dict["PreviewUrlExpires"] as? Int64 {
                self.previewUrlExpires = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetFlowPreviewUrlResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetFlowPreviewUrlResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetFlowPreviewUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFlowPreviewUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetFlowPreviewUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMigrationVerifyCodeRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var locale: String?

    public var method: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.locale != nil {
            map["Locale"] = self.locale!
        }
        if self.method != nil {
            map["Method"] = self.method!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["Locale"] as? String {
            self.locale = value
        }
        if let value = dict["Method"] as? String {
            self.method = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class GetMigrationVerifyCodeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: String?

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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["PhoneNumber"] as? String {
                self.phoneNumber = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetMigrationVerifyCodeResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetMigrationVerifyCodeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetMigrationVerifyCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMigrationVerifyCodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMigrationVerifyCodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPermissionByCodeRequest : Tea.TeaModel {
    public var code: String?

    public var custSpaceId: String?

    public var ownerId: Int64?

    public var permissions: [String]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.permissions != nil {
            map["Permissions"] = self.permissions!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Permissions"] as? [String] {
            self.permissions = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class GetPermissionByCodeShrinkRequest : Tea.TeaModel {
    public var code: String?

    public var custSpaceId: String?

    public var ownerId: Int64?

    public var permissionsShrink: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.permissionsShrink != nil {
            map["Permissions"] = self.permissionsShrink!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Permissions"] as? String {
            self.permissionsShrink = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class GetPermissionByCodeResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPermissionByCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPermissionByCodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPermissionByCodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPhoneEncryptionPublicKeyRequest : Tea.TeaModel {
    public var custSpaceId: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class GetPhoneEncryptionPublicKeyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var encryptionPublicKey: String?

        public var encryptionPublicKeyStatus: String?

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
            if self.encryptionPublicKey != nil {
                map["EncryptionPublicKey"] = self.encryptionPublicKey!
            }
            if self.encryptionPublicKeyStatus != nil {
                map["EncryptionPublicKeyStatus"] = self.encryptionPublicKeyStatus!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EncryptionPublicKey"] as? String {
                self.encryptionPublicKey = value
            }
            if let value = dict["EncryptionPublicKeyStatus"] as? String {
                self.encryptionPublicKeyStatus = value
            }
            if let value = dict["PhoneNumber"] as? String {
                self.phoneNumber = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetPhoneEncryptionPublicKeyResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetPhoneEncryptionPublicKeyResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPhoneEncryptionPublicKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPhoneEncryptionPublicKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPhoneEncryptionPublicKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPhoneNumberVerificationStatusRequest : Tea.TeaModel {
    public var custSpaceId: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class GetPhoneNumberVerificationStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var codeVerificationStatus: String?

        public var id: String?

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
            if self.codeVerificationStatus != nil {
                map["CodeVerificationStatus"] = self.codeVerificationStatus!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CodeVerificationStatus"] as? String {
                self.codeVerificationStatus = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["PhoneNumber"] as? String {
                self.phoneNumber = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetPhoneNumberVerificationStatusResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetPhoneNumberVerificationStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPhoneNumberVerificationStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPhoneNumberVerificationStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPhoneNumberVerificationStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPreValidatePhoneIdRequest : Tea.TeaModel {
    public var phoneNumber: String?

    public var verifyCode: String?

    public override init() {
        super.init()
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
        if self.verifyCode != nil {
            map["VerifyCode"] = self.verifyCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["VerifyCode"] as? String {
            self.verifyCode = value
        }
    }
}

public class GetPreValidatePhoneIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var phoneNumber: String?

        public var phoneNumberId: String?

        public override init() {
            super.init()
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
            if self.phoneNumberId != nil {
                map["PhoneNumberId"] = self.phoneNumberId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PhoneNumber"] as? String {
                self.phoneNumber = value
            }
            if let value = dict["PhoneNumberId"] as? String {
                self.phoneNumberId = value
            }
        }
    }
    public var code: String?

    public var data: GetPreValidatePhoneIdResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetPreValidatePhoneIdResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPreValidatePhoneIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPreValidatePhoneIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPreValidatePhoneIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetWhatsappConnectionCatalogRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var wabaId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
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
        if self.wabaId != nil {
            map["WabaId"] = self.wabaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["WabaId"] as? String {
            self.wabaId = value
        }
    }
}

public class GetWhatsappConnectionCatalogResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: [String: Any]?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any] {
            self.model = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetWhatsappConnectionCatalogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWhatsappConnectionCatalogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetWhatsappConnectionCatalogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetWhatsappHealthStatusRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var language: String?

    public var nodeType: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var templateCode: String?

    public var wabaId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.nodeType != nil {
            map["NodeType"] = self.nodeType!
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
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.wabaId != nil {
            map["WabaId"] = self.wabaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["NodeType"] as? String {
            self.nodeType = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["WabaId"] as? String {
            self.wabaId = value
        }
    }
}

public class GetWhatsappHealthStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Entities : Tea.TeaModel {
            public class Errors : Tea.TeaModel {
                public var errorCode: String?

                public var errorDescription: String?

                public var possibleSolution: String?

                public override init() {
                    super.init()
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
                    if self.errorDescription != nil {
                        map["ErrorDescription"] = self.errorDescription!
                    }
                    if self.possibleSolution != nil {
                        map["PossibleSolution"] = self.possibleSolution!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ErrorCode"] as? String {
                        self.errorCode = value
                    }
                    if let value = dict["ErrorDescription"] as? String {
                        self.errorDescription = value
                    }
                    if let value = dict["PossibleSolution"] as? String {
                        self.possibleSolution = value
                    }
                }
            }
            public var businessId: String?

            public var canSendMessage: String?

            public var entityType: String?

            public var errors: [GetWhatsappHealthStatusResponseBody.Data.Entities.Errors]?

            public var language: String?

            public var phoneNumber: String?

            public var templateCode: String?

            public var wabaId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.businessId != nil {
                    map["BusinessId"] = self.businessId!
                }
                if self.canSendMessage != nil {
                    map["CanSendMessage"] = self.canSendMessage!
                }
                if self.entityType != nil {
                    map["EntityType"] = self.entityType!
                }
                if self.errors != nil {
                    var tmp : [Any] = []
                    for k in self.errors! {
                        tmp.append(k.toMap())
                    }
                    map["Errors"] = tmp
                }
                if self.language != nil {
                    map["Language"] = self.language!
                }
                if self.phoneNumber != nil {
                    map["PhoneNumber"] = self.phoneNumber!
                }
                if self.templateCode != nil {
                    map["TemplateCode"] = self.templateCode!
                }
                if self.wabaId != nil {
                    map["WabaId"] = self.wabaId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BusinessId"] as? String {
                    self.businessId = value
                }
                if let value = dict["CanSendMessage"] as? String {
                    self.canSendMessage = value
                }
                if let value = dict["EntityType"] as? String {
                    self.entityType = value
                }
                if let value = dict["Errors"] as? [Any?] {
                    var tmp : [GetWhatsappHealthStatusResponseBody.Data.Entities.Errors] = []
                    for v in value {
                        if v != nil {
                            var model = GetWhatsappHealthStatusResponseBody.Data.Entities.Errors()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.errors = tmp
                }
                if let value = dict["Language"] as? String {
                    self.language = value
                }
                if let value = dict["PhoneNumber"] as? String {
                    self.phoneNumber = value
                }
                if let value = dict["TemplateCode"] as? String {
                    self.templateCode = value
                }
                if let value = dict["WabaId"] as? String {
                    self.wabaId = value
                }
            }
        }
        public var canSendMessage: String?

        public var entities: [GetWhatsappHealthStatusResponseBody.Data.Entities]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.canSendMessage != nil {
                map["CanSendMessage"] = self.canSendMessage!
            }
            if self.entities != nil {
                var tmp : [Any] = []
                for k in self.entities! {
                    tmp.append(k.toMap())
                }
                map["Entities"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CanSendMessage"] as? String {
                self.canSendMessage = value
            }
            if let value = dict["Entities"] as? [Any?] {
                var tmp : [GetWhatsappHealthStatusResponseBody.Data.Entities] = []
                for v in value {
                    if v != nil {
                        var model = GetWhatsappHealthStatusResponseBody.Data.Entities()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.entities = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: GetWhatsappHealthStatusResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = GetWhatsappHealthStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetWhatsappHealthStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWhatsappHealthStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetWhatsappHealthStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class IsvGetAppIdRequest : Tea.TeaModel {
    public var intlVersion: String?

    public var ownerId: Int64?

    public var permissions: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.intlVersion != nil {
            map["IntlVersion"] = self.intlVersion!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.permissions != nil {
            map["Permissions"] = self.permissions!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IntlVersion"] as? String {
            self.intlVersion = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Permissions"] as? String {
            self.permissions = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class IsvGetAppIdResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var appId: String?

    public var code: String?

    public var configId: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.configId != nil {
            map["ConfigId"] = self.configId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["AppId"] as? String {
            self.appId = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["ConfigId"] as? String {
            self.configId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class IsvGetAppIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IsvGetAppIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = IsvGetAppIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListBindingRelationsForFlowVersionRequest : Tea.TeaModel {
    public var channelType: String?

    public var flowCode: String?

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
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ListBindingRelationsForFlowVersionResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [[String: Any]]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [[String: Any]] {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListBindingRelationsForFlowVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBindingRelationsForFlowVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListBindingRelationsForFlowVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListChatFlowRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtend: [String: Any]?

    public var flowTriggerType: String?

    public var keyword: String?

    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var returnWithOnlineVersion: Bool?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtend != nil {
            map["BizExtend"] = self.bizExtend!
        }
        if self.flowTriggerType != nil {
            map["FlowTriggerType"] = self.flowTriggerType!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.returnWithOnlineVersion != nil {
            map["ReturnWithOnlineVersion"] = self.returnWithOnlineVersion!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? [String: Any] {
            self.bizExtend = value
        }
        if let value = dict["FlowTriggerType"] as? String {
            self.flowTriggerType = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int64 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ReturnWithOnlineVersion"] as? Bool {
            self.returnWithOnlineVersion = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListChatFlowShrinkRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtendShrink: String?

    public var flowTriggerType: String?

    public var keyword: String?

    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var returnWithOnlineVersion: Bool?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtendShrink != nil {
            map["BizExtend"] = self.bizExtendShrink!
        }
        if self.flowTriggerType != nil {
            map["FlowTriggerType"] = self.flowTriggerType!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.returnWithOnlineVersion != nil {
            map["ReturnWithOnlineVersion"] = self.returnWithOnlineVersion!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? String {
            self.bizExtendShrink = value
        }
        if let value = dict["FlowTriggerType"] as? String {
            self.flowTriggerType = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int64 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ReturnWithOnlineVersion"] as? Bool {
            self.returnWithOnlineVersion = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListChatFlowResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var response: [String: Any]?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.response != nil {
            map["Response"] = self.response!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Response"] as? [String: Any] {
            self.response = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListChatFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListChatFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListChatFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListChatFlowTemplateRequest : Tea.TeaModel {
    public var bizCode: String?

    public var keyword: String?

    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var triggerType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.triggerType != nil {
            map["TriggerType"] = self.triggerType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int64 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TriggerType"] as? String {
            self.triggerType = value
        }
    }
}

public class ListChatFlowTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var response: [String: Any]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.response != nil {
                map["Response"] = self.response!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Response"] as? [String: Any] {
                self.response = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: ListChatFlowTemplateResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListChatFlowTemplateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListChatFlowTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListChatFlowTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListChatFlowTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListChatGroupRequest : Tea.TeaModel {
    public class Page : Tea.TeaModel {
        public var index: Int64?

        public var size: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Index"] as? Int64 {
                self.index = value
            }
            if let value = dict["Size"] as? Int64 {
                self.size = value
            }
        }
    }
    public var businessNumber: String?

    public var channelType: String?

    public var custSpaceId: String?

    public var groupStatus: String?

    public var ownerId: Int64?

    public var page: ListChatGroupRequest.Page?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subject: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.page?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessNumber != nil {
            map["BusinessNumber"] = self.businessNumber!
        }
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.groupStatus != nil {
            map["GroupStatus"] = self.groupStatus!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.page != nil {
            map["Page"] = self.page?.toMap()
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.subject != nil {
            map["Subject"] = self.subject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessNumber"] as? String {
            self.businessNumber = value
        }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["GroupStatus"] as? String {
            self.groupStatus = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Page"] as? [String: Any?] {
            var model = ListChatGroupRequest.Page()
            model.fromMap(value)
            self.page = model
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Subject"] as? String {
            self.subject = value
        }
    }
}

public class ListChatGroupShrinkRequest : Tea.TeaModel {
    public var businessNumber: String?

    public var channelType: String?

    public var custSpaceId: String?

    public var groupStatus: String?

    public var ownerId: Int64?

    public var pageShrink: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subject: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessNumber != nil {
            map["BusinessNumber"] = self.businessNumber!
        }
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.groupStatus != nil {
            map["GroupStatus"] = self.groupStatus!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageShrink != nil {
            map["Page"] = self.pageShrink!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.subject != nil {
            map["Subject"] = self.subject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessNumber"] as? String {
            self.businessNumber = value
        }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["GroupStatus"] as? String {
            self.groupStatus = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Page"] as? String {
            self.pageShrink = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Subject"] as? String {
            self.subject = value
        }
    }
}

public class ListChatGroupResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var businessNumber: String?

            public var description_: String?

            public var groupId: String?

            public var groupStatus: String?

            public var inviteLink: String?

            public var profilePictureFile: String?

            public var subject: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.businessNumber != nil {
                    map["BusinessNumber"] = self.businessNumber!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupStatus != nil {
                    map["GroupStatus"] = self.groupStatus!
                }
                if self.inviteLink != nil {
                    map["InviteLink"] = self.inviteLink!
                }
                if self.profilePictureFile != nil {
                    map["ProfilePictureFile"] = self.profilePictureFile!
                }
                if self.subject != nil {
                    map["Subject"] = self.subject!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BusinessNumber"] as? String {
                    self.businessNumber = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["GroupId"] as? String {
                    self.groupId = value
                }
                if let value = dict["GroupStatus"] as? String {
                    self.groupStatus = value
                }
                if let value = dict["InviteLink"] as? String {
                    self.inviteLink = value
                }
                if let value = dict["ProfilePictureFile"] as? String {
                    self.profilePictureFile = value
                }
                if let value = dict["Subject"] as? String {
                    self.subject = value
                }
            }
        }
        public var list: [ListChatGroupResponseBody.Data.List]?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [ListChatGroupResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ListChatGroupResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: ListChatGroupResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListChatGroupResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListChatGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListChatGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListChatGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListChatGroupParticipantsRequest : Tea.TeaModel {
    public class Page : Tea.TeaModel {
        public var index: Int64?

        public var size: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Index"] as? Int64 {
                self.index = value
            }
            if let value = dict["Size"] as? Int64 {
                self.size = value
            }
        }
    }
    public var businessNumber: String?

    public var channelType: String?

    public var custSpaceId: String?

    public var groupId: String?

    public var ownerId: Int64?

    public var page: ListChatGroupParticipantsRequest.Page?

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
        try self.page?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessNumber != nil {
            map["BusinessNumber"] = self.businessNumber!
        }
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.page != nil {
            map["Page"] = self.page?.toMap()
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessNumber"] as? String {
            self.businessNumber = value
        }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Page"] as? [String: Any?] {
            var model = ListChatGroupParticipantsRequest.Page()
            model.fromMap(value)
            self.page = model
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ListChatGroupParticipantsShrinkRequest : Tea.TeaModel {
    public var businessNumber: String?

    public var channelType: String?

    public var custSpaceId: String?

    public var groupId: String?

    public var ownerId: Int64?

    public var pageShrink: String?

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
        if self.businessNumber != nil {
            map["BusinessNumber"] = self.businessNumber!
        }
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageShrink != nil {
            map["Page"] = self.pageShrink!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessNumber"] as? String {
            self.businessNumber = value
        }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Page"] as? String {
            self.pageShrink = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ListChatGroupParticipantsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var participantNumber: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.participantNumber != nil {
                    map["ParticipantNumber"] = self.participantNumber!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ParticipantNumber"] as? String {
                    self.participantNumber = value
                }
            }
        }
        public var list: [ListChatGroupParticipantsResponseBody.Data.List]?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [ListChatGroupParticipantsResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = ListChatGroupParticipantsResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: ListChatGroupParticipantsResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListChatGroupParticipantsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListChatGroupParticipantsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListChatGroupParticipantsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListChatGroupParticipantsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListChatappMessageRequest : Tea.TeaModel {
    public class Page : Tea.TeaModel {
        public var index: Int64?

        public var size: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Index"] as? Int64 {
                self.index = value
            }
            if let value = dict["Size"] as? Int64 {
                self.size = value
            }
        }
    }
    public var businessNumber: String?

    public var channelType: String?

    public var clientAcceptStatus: String?

    public var custSpaceId: String?

    public var endTime: Int64?

    public var eventAction: String?

    public var groupMessageId: String?

    public var messageStatus: String?

    public var ownerId: Int64?

    public var page: ListChatappMessageRequest.Page?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var startTime: Int64?

    public var templateCode: String?

    public var userNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.page?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessNumber != nil {
            map["BusinessNumber"] = self.businessNumber!
        }
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.clientAcceptStatus != nil {
            map["ClientAcceptStatus"] = self.clientAcceptStatus!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.eventAction != nil {
            map["EventAction"] = self.eventAction!
        }
        if self.groupMessageId != nil {
            map["GroupMessageId"] = self.groupMessageId!
        }
        if self.messageStatus != nil {
            map["MessageStatus"] = self.messageStatus!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.page != nil {
            map["Page"] = self.page?.toMap()
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.userNumber != nil {
            map["UserNumber"] = self.userNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessNumber"] as? String {
            self.businessNumber = value
        }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["ClientAcceptStatus"] as? String {
            self.clientAcceptStatus = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["EventAction"] as? String {
            self.eventAction = value
        }
        if let value = dict["GroupMessageId"] as? String {
            self.groupMessageId = value
        }
        if let value = dict["MessageStatus"] as? String {
            self.messageStatus = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Page"] as? [String: Any?] {
            var model = ListChatappMessageRequest.Page()
            model.fromMap(value)
            self.page = model
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["UserNumber"] as? String {
            self.userNumber = value
        }
    }
}

public class ListChatappMessageShrinkRequest : Tea.TeaModel {
    public var businessNumber: String?

    public var channelType: String?

    public var clientAcceptStatus: String?

    public var custSpaceId: String?

    public var endTime: Int64?

    public var eventAction: String?

    public var groupMessageId: String?

    public var messageStatus: String?

    public var ownerId: Int64?

    public var pageShrink: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var startTime: Int64?

    public var templateCode: String?

    public var userNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessNumber != nil {
            map["BusinessNumber"] = self.businessNumber!
        }
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.clientAcceptStatus != nil {
            map["ClientAcceptStatus"] = self.clientAcceptStatus!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.eventAction != nil {
            map["EventAction"] = self.eventAction!
        }
        if self.groupMessageId != nil {
            map["GroupMessageId"] = self.groupMessageId!
        }
        if self.messageStatus != nil {
            map["MessageStatus"] = self.messageStatus!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageShrink != nil {
            map["Page"] = self.pageShrink!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.userNumber != nil {
            map["UserNumber"] = self.userNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessNumber"] as? String {
            self.businessNumber = value
        }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["ClientAcceptStatus"] as? String {
            self.clientAcceptStatus = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["EventAction"] as? String {
            self.eventAction = value
        }
        if let value = dict["GroupMessageId"] as? String {
            self.groupMessageId = value
        }
        if let value = dict["MessageStatus"] as? String {
            self.messageStatus = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Page"] as? String {
            self.pageShrink = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["UserNumber"] as? String {
            self.userNumber = value
        }
    }
}

public class ListChatappMessageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var businessNumber: String?

        public var channelType: String?

        public var clientAcceptStatusName: String?

        public var clientReadStatus: String?

        public var clientReadStatusName: String?

        public var conversationId: String?

        public var eventAction: String?

        public var eventActionName: String?

        public var failBackContent: String?

        public var failBackFlag: String?

        public var failReason: String?

        public var languageCode: String?

        public var message: String?

        public var messageId: String?

        public var messageSource: String?

        public var messageStatus: String?

        public var messageStatusName: String?

        public var messageType: String?

        public var messageTypeName: String?

        public var month: String?

        public var sendTime: String?

        public var templateCode: String?

        public var templateName: String?

        public var type: String?

        public var uniqueMessageId: String?

        public var userNumber: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.businessNumber != nil {
                map["BusinessNumber"] = self.businessNumber!
            }
            if self.channelType != nil {
                map["ChannelType"] = self.channelType!
            }
            if self.clientAcceptStatusName != nil {
                map["ClientAcceptStatusName"] = self.clientAcceptStatusName!
            }
            if self.clientReadStatus != nil {
                map["ClientReadStatus"] = self.clientReadStatus!
            }
            if self.clientReadStatusName != nil {
                map["ClientReadStatusName"] = self.clientReadStatusName!
            }
            if self.conversationId != nil {
                map["ConversationId"] = self.conversationId!
            }
            if self.eventAction != nil {
                map["EventAction"] = self.eventAction!
            }
            if self.eventActionName != nil {
                map["EventActionName"] = self.eventActionName!
            }
            if self.failBackContent != nil {
                map["FailBackContent"] = self.failBackContent!
            }
            if self.failBackFlag != nil {
                map["FailBackFlag"] = self.failBackFlag!
            }
            if self.failReason != nil {
                map["FailReason"] = self.failReason!
            }
            if self.languageCode != nil {
                map["LanguageCode"] = self.languageCode!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.messageId != nil {
                map["MessageId"] = self.messageId!
            }
            if self.messageSource != nil {
                map["MessageSource"] = self.messageSource!
            }
            if self.messageStatus != nil {
                map["MessageStatus"] = self.messageStatus!
            }
            if self.messageStatusName != nil {
                map["MessageStatusName"] = self.messageStatusName!
            }
            if self.messageType != nil {
                map["MessageType"] = self.messageType!
            }
            if self.messageTypeName != nil {
                map["MessageTypeName"] = self.messageTypeName!
            }
            if self.month != nil {
                map["Month"] = self.month!
            }
            if self.sendTime != nil {
                map["SendTime"] = self.sendTime!
            }
            if self.templateCode != nil {
                map["TemplateCode"] = self.templateCode!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.uniqueMessageId != nil {
                map["UniqueMessageId"] = self.uniqueMessageId!
            }
            if self.userNumber != nil {
                map["UserNumber"] = self.userNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BusinessNumber"] as? String {
                self.businessNumber = value
            }
            if let value = dict["ChannelType"] as? String {
                self.channelType = value
            }
            if let value = dict["ClientAcceptStatusName"] as? String {
                self.clientAcceptStatusName = value
            }
            if let value = dict["ClientReadStatus"] as? String {
                self.clientReadStatus = value
            }
            if let value = dict["ClientReadStatusName"] as? String {
                self.clientReadStatusName = value
            }
            if let value = dict["ConversationId"] as? String {
                self.conversationId = value
            }
            if let value = dict["EventAction"] as? String {
                self.eventAction = value
            }
            if let value = dict["EventActionName"] as? String {
                self.eventActionName = value
            }
            if let value = dict["FailBackContent"] as? String {
                self.failBackContent = value
            }
            if let value = dict["FailBackFlag"] as? String {
                self.failBackFlag = value
            }
            if let value = dict["FailReason"] as? String {
                self.failReason = value
            }
            if let value = dict["LanguageCode"] as? String {
                self.languageCode = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["MessageId"] as? String {
                self.messageId = value
            }
            if let value = dict["MessageSource"] as? String {
                self.messageSource = value
            }
            if let value = dict["MessageStatus"] as? String {
                self.messageStatus = value
            }
            if let value = dict["MessageStatusName"] as? String {
                self.messageStatusName = value
            }
            if let value = dict["MessageType"] as? String {
                self.messageType = value
            }
            if let value = dict["MessageTypeName"] as? String {
                self.messageTypeName = value
            }
            if let value = dict["Month"] as? String {
                self.month = value
            }
            if let value = dict["SendTime"] as? String {
                self.sendTime = value
            }
            if let value = dict["TemplateCode"] as? String {
                self.templateCode = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UniqueMessageId"] as? String {
                self.uniqueMessageId = value
            }
            if let value = dict["UserNumber"] as? String {
                self.userNumber = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [ListChatappMessageResponseBody.Data]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListChatappMessageResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListChatappMessageResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListChatappMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListChatappMessageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListChatappMessageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListChatappTemplateRequest : Tea.TeaModel {
    public class Page : Tea.TeaModel {
        public var index: Int32?

        public var size: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Index"] as? Int32 {
                self.index = value
            }
            if let value = dict["Size"] as? Int32 {
                self.size = value
            }
        }
    }
    public var auditStatus: String?

    public var category: String?

    public var code: String?

    public var custSpaceId: String?

    public var custWabaId: String?

    public var isvCode: String?

    public var language: String?

    public var name: String?

    public var ownerId: Int64?

    public var page: ListChatappTemplateRequest.Page?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.page?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditStatus != nil {
            map["AuditStatus"] = self.auditStatus!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.page != nil {
            map["Page"] = self.page?.toMap()
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuditStatus"] as? String {
            self.auditStatus = value
        }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["CustWabaId"] as? String {
            self.custWabaId = value
        }
        if let value = dict["IsvCode"] as? String {
            self.isvCode = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Page"] as? [String: Any?] {
            var model = ListChatappTemplateRequest.Page()
            model.fromMap(value)
            self.page = model
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TemplateType"] as? String {
            self.templateType = value
        }
    }
}

public class ListChatappTemplateShrinkRequest : Tea.TeaModel {
    public var auditStatus: String?

    public var category: String?

    public var code: String?

    public var custSpaceId: String?

    public var custWabaId: String?

    public var isvCode: String?

    public var language: String?

    public var name: String?

    public var ownerId: Int64?

    public var pageShrink: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditStatus != nil {
            map["AuditStatus"] = self.auditStatus!
        }
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageShrink != nil {
            map["Page"] = self.pageShrink!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuditStatus"] as? String {
            self.auditStatus = value
        }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["CustWabaId"] as? String {
            self.custWabaId = value
        }
        if let value = dict["IsvCode"] as? String {
            self.isvCode = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Page"] as? String {
            self.pageShrink = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TemplateType"] as? String {
            self.templateType = value
        }
    }
}

public class ListChatappTemplateResponseBody : Tea.TeaModel {
    public class ListTemplate : Tea.TeaModel {
        public var auditStatus: String?

        public var category: String?

        public var language: String?

        public var lastUpdateTime: Int64?

        public var reason: String?

        public var templateCode: String?

        public var templateName: String?

        public var templateType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auditStatus != nil {
                map["AuditStatus"] = self.auditStatus!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.lastUpdateTime != nil {
                map["LastUpdateTime"] = self.lastUpdateTime!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.templateCode != nil {
                map["TemplateCode"] = self.templateCode!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.templateType != nil {
                map["TemplateType"] = self.templateType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuditStatus"] as? String {
                self.auditStatus = value
            }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["Language"] as? String {
                self.language = value
            }
            if let value = dict["LastUpdateTime"] as? Int64 {
                self.lastUpdateTime = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
            if let value = dict["TemplateCode"] as? String {
                self.templateCode = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["TemplateType"] as? String {
                self.templateType = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var listTemplate: [ListChatappTemplateResponseBody.ListTemplate]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.listTemplate != nil {
            var tmp : [Any] = []
            for k in self.listTemplate! {
                tmp.append(k.toMap())
            }
            map["ListTemplate"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["ListTemplate"] as? [Any?] {
            var tmp : [ListChatappTemplateResponseBody.ListTemplate] = []
            for v in value {
                if v != nil {
                    var model = ListChatappTemplateResponseBody.ListTemplate()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.listTemplate = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class ListChatappTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListChatappTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListChatappTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFlowRequest : Tea.TeaModel {
    public class Page : Tea.TeaModel {
        public var index: Int32?

        public var size: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Index"] as? Int32 {
                self.index = value
            }
            if let value = dict["Size"] as? Int32 {
                self.size = value
            }
        }
    }
    public var custSpaceId: String?

    public var flowName: String?

    public var ownerId: Int64?

    public var page: ListFlowRequest.Page?

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
        try self.page?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.page != nil {
            map["Page"] = self.page?.toMap()
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Page"] as? [String: Any?] {
            var model = ListFlowRequest.Page()
            model.fromMap(value)
            self.page = model
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ListFlowShrinkRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var flowName: String?

    public var ownerId: Int64?

    public var pageShrink: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageShrink != nil {
            map["Page"] = self.pageShrink!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Page"] as? String {
            self.pageShrink = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ListFlowResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var categories: [String]?

        public var flowId: String?

        public var flowName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categories != nil {
                map["Categories"] = self.categories!
            }
            if self.flowId != nil {
                map["FlowId"] = self.flowId!
            }
            if self.flowName != nil {
                map["FlowName"] = self.flowName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Categories"] as? [String] {
                self.categories = value
            }
            if let value = dict["FlowId"] as? String {
                self.flowId = value
            }
            if let value = dict["FlowName"] as? String {
                self.flowName = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [ListFlowResponseBody.Data]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListFlowResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListFlowResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFlowNodePrototypeV2Request : Tea.TeaModel {
    public var bizCode: String?

    public var groupCode: String?

    public var keyword: String?

    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.groupCode != nil {
            map["GroupCode"] = self.groupCode!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["GroupCode"] as? String {
            self.groupCode = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int64 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ListFlowNodePrototypeV2ResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Model : Tea.TeaModel {
            public var code: String?

            public var groupCode: String?

            public var publicExtend: String?

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
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.groupCode != nil {
                    map["GroupCode"] = self.groupCode!
                }
                if self.publicExtend != nil {
                    map["PublicExtend"] = self.publicExtend!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["GroupCode"] as? String {
                    self.groupCode = value
                }
                if let value = dict["PublicExtend"] as? String {
                    self.publicExtend = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var model: [ListFlowNodePrototypeV2ResponseBody.Data.Model]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.model != nil {
                var tmp : [Any] = []
                for k in self.model! {
                    tmp.append(k.toMap())
                }
                map["Model"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Model"] as? [Any?] {
                var tmp : [ListFlowNodePrototypeV2ResponseBody.Data.Model] = []
                for v in value {
                    if v != nil {
                        var model = ListFlowNodePrototypeV2ResponseBody.Data.Model()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.model = tmp
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: Int64?

    public var data: ListFlowNodePrototypeV2ResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ListFlowNodePrototypeV2ResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListFlowNodePrototypeV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFlowNodePrototypeV2ResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListFlowNodePrototypeV2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFlowVersionRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtend: [String: Any]?

    public var flowCode: String?

    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtend != nil {
            map["BizExtend"] = self.bizExtend!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? [String: Any] {
            self.bizExtend = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int64 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListFlowVersionShrinkRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtendShrink: String?

    public var flowCode: String?

    public var ownerId: Int64?

    public var pageNo: Int64?

    public var pageSize: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtendShrink != nil {
            map["BizExtend"] = self.bizExtendShrink!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? String {
            self.bizExtendShrink = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNo"] as? Int64 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListFlowVersionResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var response: [String: Any]?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.response != nil {
            map["Response"] = self.response!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Response"] as? [String: Any] {
            self.response = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListFlowVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFlowVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListFlowVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPhoneMessageQrdlRequest : Tea.TeaModel {
    public var custSpaceId: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ListPhoneMessageQrdlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deepLinkUrl: String?

        public var generateQrImage: String?

        public var phoneNumber: String?

        public var prefilledMessage: String?

        public var qrImageUrl: String?

        public var qrdlCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deepLinkUrl != nil {
                map["DeepLinkUrl"] = self.deepLinkUrl!
            }
            if self.generateQrImage != nil {
                map["GenerateQrImage"] = self.generateQrImage!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.prefilledMessage != nil {
                map["PrefilledMessage"] = self.prefilledMessage!
            }
            if self.qrImageUrl != nil {
                map["QrImageUrl"] = self.qrImageUrl!
            }
            if self.qrdlCode != nil {
                map["QrdlCode"] = self.qrdlCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeepLinkUrl"] as? String {
                self.deepLinkUrl = value
            }
            if let value = dict["GenerateQrImage"] as? String {
                self.generateQrImage = value
            }
            if let value = dict["PhoneNumber"] as? String {
                self.phoneNumber = value
            }
            if let value = dict["PrefilledMessage"] as? String {
                self.prefilledMessage = value
            }
            if let value = dict["QrImageUrl"] as? String {
                self.qrImageUrl = value
            }
            if let value = dict["QrdlCode"] as? String {
                self.qrdlCode = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [ListPhoneMessageQrdlResponseBody.Data]?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ListPhoneMessageQrdlResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListPhoneMessageQrdlResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListPhoneMessageQrdlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPhoneMessageQrdlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListPhoneMessageQrdlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListProductRequest : Tea.TeaModel {
    public var after: String?

    public var before: String?

    public var catalogId: String?

    public var custSpaceId: String?

    public var fields: String?

    public var limit: Int64?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var wabaId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.after != nil {
            map["After"] = self.after!
        }
        if self.before != nil {
            map["Before"] = self.before!
        }
        if self.catalogId != nil {
            map["CatalogId"] = self.catalogId!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.fields != nil {
            map["Fields"] = self.fields!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
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
        if self.wabaId != nil {
            map["WabaId"] = self.wabaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["After"] as? String {
            self.after = value
        }
        if let value = dict["Before"] as? String {
            self.before = value
        }
        if let value = dict["CatalogId"] as? String {
            self.catalogId = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["Fields"] as? String {
            self.fields = value
        }
        if let value = dict["Limit"] as? Int64 {
            self.limit = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["WabaId"] as? String {
            self.wabaId = value
        }
    }
}

public class ListProductResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class Paging : Tea.TeaModel {
            public class Cursors : Tea.TeaModel {
                public var after: String?

                public var before: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.after != nil {
                        map["After"] = self.after!
                    }
                    if self.before != nil {
                        map["Before"] = self.before!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["After"] as? String {
                        self.after = value
                    }
                    if let value = dict["Before"] as? String {
                        self.before = value
                    }
                }
            }
            public var cursors: ListProductResponseBody.Model.Paging.Cursors?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.cursors?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cursors != nil {
                    map["Cursors"] = self.cursors?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cursors"] as? [String: Any?] {
                    var model = ListProductResponseBody.Model.Paging.Cursors()
                    model.fromMap(value)
                    self.cursors = model
                }
            }
        }
        public var data: [[String: Any]]?

        public var paging: ListProductResponseBody.Model.Paging?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.paging?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.paging != nil {
                map["Paging"] = self.paging?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [[String: Any]] {
                self.data = value
            }
            if let value = dict["Paging"] as? [String: Any?] {
                var model = ListProductResponseBody.Model.Paging()
                model.fromMap(value)
                self.paging = model
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: ListProductResponseBody.Model?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = ListProductResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListProductResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProductResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListProductResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListProductCatalogRequest : Tea.TeaModel {
    public var after: String?

    public var before: String?

    public var businessId: Int64?

    public var custSpaceId: String?

    public var fields: String?

    public var limit: Int64?

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
        if self.after != nil {
            map["After"] = self.after!
        }
        if self.before != nil {
            map["Before"] = self.before!
        }
        if self.businessId != nil {
            map["BusinessId"] = self.businessId!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.fields != nil {
            map["Fields"] = self.fields!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["After"] as? String {
            self.after = value
        }
        if let value = dict["Before"] as? String {
            self.before = value
        }
        if let value = dict["BusinessId"] as? Int64 {
            self.businessId = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["Fields"] as? String {
            self.fields = value
        }
        if let value = dict["Limit"] as? Int64 {
            self.limit = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ListProductCatalogResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class Paging : Tea.TeaModel {
            public class Cursors : Tea.TeaModel {
                public var after: String?

                public var before: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.after != nil {
                        map["After"] = self.after!
                    }
                    if self.before != nil {
                        map["Before"] = self.before!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["After"] as? String {
                        self.after = value
                    }
                    if let value = dict["Before"] as? String {
                        self.before = value
                    }
                }
            }
            public var cursors: ListProductCatalogResponseBody.Model.Paging.Cursors?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.cursors?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cursors != nil {
                    map["Cursors"] = self.cursors?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cursors"] as? [String: Any?] {
                    var model = ListProductCatalogResponseBody.Model.Paging.Cursors()
                    model.fromMap(value)
                    self.cursors = model
                }
            }
        }
        public var data: [[String: Any]]?

        public var paging: ListProductCatalogResponseBody.Model.Paging?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.paging?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.data != nil {
                map["Data"] = self.data!
            }
            if self.paging != nil {
                map["Paging"] = self.paging?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [[String: Any]] {
                self.data = value
            }
            if let value = dict["Paging"] as? [String: Any?] {
                var model = ListProductCatalogResponseBody.Model.Paging()
                model.fromMap(value)
                self.paging = model
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: ListProductCatalogResponseBody.Model?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = ListProductCatalogResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListProductCatalogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProductCatalogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListProductCatalogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyChatappTemplateRequest : Tea.TeaModel {
    public class Components : Tea.TeaModel {
        public class Buttons : Tea.TeaModel {
            public class SupportedApps : Tea.TeaModel {
                public var packageName: String?

                public var signatureHash: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.packageName != nil {
                        map["PackageName"] = self.packageName!
                    }
                    if self.signatureHash != nil {
                        map["SignatureHash"] = self.signatureHash!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["PackageName"] as? String {
                        self.packageName = value
                    }
                    if let value = dict["SignatureHash"] as? String {
                        self.signatureHash = value
                    }
                }
            }
            public var autofillText: String?

            public var couponCode: String?

            public var flowAction: String?

            public var flowId: String?

            public var isOptOut: Bool?

            public var navigateScreen: String?

            public var packageName: String?

            public var phoneNumber: String?

            public var signatureHash: String?

            public var supportedApps: [ModifyChatappTemplateRequest.Components.Buttons.SupportedApps]?

            public var text: String?

            public var type: String?

            public var url: String?

            public var urlType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autofillText != nil {
                    map["AutofillText"] = self.autofillText!
                }
                if self.couponCode != nil {
                    map["CouponCode"] = self.couponCode!
                }
                if self.flowAction != nil {
                    map["FlowAction"] = self.flowAction!
                }
                if self.flowId != nil {
                    map["FlowId"] = self.flowId!
                }
                if self.isOptOut != nil {
                    map["IsOptOut"] = self.isOptOut!
                }
                if self.navigateScreen != nil {
                    map["NavigateScreen"] = self.navigateScreen!
                }
                if self.packageName != nil {
                    map["PackageName"] = self.packageName!
                }
                if self.phoneNumber != nil {
                    map["PhoneNumber"] = self.phoneNumber!
                }
                if self.signatureHash != nil {
                    map["SignatureHash"] = self.signatureHash!
                }
                if self.supportedApps != nil {
                    var tmp : [Any] = []
                    for k in self.supportedApps! {
                        tmp.append(k.toMap())
                    }
                    map["SupportedApps"] = tmp
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                if self.urlType != nil {
                    map["UrlType"] = self.urlType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutofillText"] as? String {
                    self.autofillText = value
                }
                if let value = dict["CouponCode"] as? String {
                    self.couponCode = value
                }
                if let value = dict["FlowAction"] as? String {
                    self.flowAction = value
                }
                if let value = dict["FlowId"] as? String {
                    self.flowId = value
                }
                if let value = dict["IsOptOut"] as? Bool {
                    self.isOptOut = value
                }
                if let value = dict["NavigateScreen"] as? String {
                    self.navigateScreen = value
                }
                if let value = dict["PackageName"] as? String {
                    self.packageName = value
                }
                if let value = dict["PhoneNumber"] as? String {
                    self.phoneNumber = value
                }
                if let value = dict["SignatureHash"] as? String {
                    self.signatureHash = value
                }
                if let value = dict["SupportedApps"] as? [Any?] {
                    var tmp : [ModifyChatappTemplateRequest.Components.Buttons.SupportedApps] = []
                    for v in value {
                        if v != nil {
                            var model = ModifyChatappTemplateRequest.Components.Buttons.SupportedApps()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.supportedApps = tmp
                }
                if let value = dict["Text"] as? String {
                    self.text = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
                if let value = dict["UrlType"] as? String {
                    self.urlType = value
                }
            }
        }
        public class Cards : Tea.TeaModel {
            public class CardComponents : Tea.TeaModel {
                public class Buttons : Tea.TeaModel {
                    public var phoneNumber: String?

                    public var text: String?

                    public var type: String?

                    public var url: String?

                    public var urlType: String?

                    public override init() {
                        super.init()
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
                        if self.text != nil {
                            map["Text"] = self.text!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.url != nil {
                            map["Url"] = self.url!
                        }
                        if self.urlType != nil {
                            map["UrlType"] = self.urlType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["PhoneNumber"] as? String {
                            self.phoneNumber = value
                        }
                        if let value = dict["Text"] as? String {
                            self.text = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                        if let value = dict["Url"] as? String {
                            self.url = value
                        }
                        if let value = dict["UrlType"] as? String {
                            self.urlType = value
                        }
                    }
                }
                public var buttons: [ModifyChatappTemplateRequest.Components.Cards.CardComponents.Buttons]?

                public var format: String?

                public var text: String?

                public var type: String?

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
                    if self.buttons != nil {
                        var tmp : [Any] = []
                        for k in self.buttons! {
                            tmp.append(k.toMap())
                        }
                        map["Buttons"] = tmp
                    }
                    if self.format != nil {
                        map["Format"] = self.format!
                    }
                    if self.text != nil {
                        map["Text"] = self.text!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Buttons"] as? [Any?] {
                        var tmp : [ModifyChatappTemplateRequest.Components.Cards.CardComponents.Buttons] = []
                        for v in value {
                            if v != nil {
                                var model = ModifyChatappTemplateRequest.Components.Cards.CardComponents.Buttons()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.buttons = tmp
                    }
                    if let value = dict["Format"] as? String {
                        self.format = value
                    }
                    if let value = dict["Text"] as? String {
                        self.text = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["Url"] as? String {
                        self.url = value
                    }
                }
            }
            public var cardComponents: [ModifyChatappTemplateRequest.Components.Cards.CardComponents]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cardComponents != nil {
                    var tmp : [Any] = []
                    for k in self.cardComponents! {
                        tmp.append(k.toMap())
                    }
                    map["CardComponents"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CardComponents"] as? [Any?] {
                    var tmp : [ModifyChatappTemplateRequest.Components.Cards.CardComponents] = []
                    for v in value {
                        if v != nil {
                            var model = ModifyChatappTemplateRequest.Components.Cards.CardComponents()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.cardComponents = tmp
                }
            }
        }
        public var addSecretRecommendation: Bool?

        public var buttons: [ModifyChatappTemplateRequest.Components.Buttons]?

        public var caption: String?

        public var cards: [ModifyChatappTemplateRequest.Components.Cards]?

        public var codeExpirationMinutes: Int32?

        public var duration: Int32?

        public var fileName: String?

        public var fileType: String?

        public var format: String?

        public var hasExpiration: Bool?

        public var text: String?

        public var thumbUrl: String?

        public var type: String?

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
            if self.addSecretRecommendation != nil {
                map["AddSecretRecommendation"] = self.addSecretRecommendation!
            }
            if self.buttons != nil {
                var tmp : [Any] = []
                for k in self.buttons! {
                    tmp.append(k.toMap())
                }
                map["Buttons"] = tmp
            }
            if self.caption != nil {
                map["Caption"] = self.caption!
            }
            if self.cards != nil {
                var tmp : [Any] = []
                for k in self.cards! {
                    tmp.append(k.toMap())
                }
                map["Cards"] = tmp
            }
            if self.codeExpirationMinutes != nil {
                map["CodeExpirationMinutes"] = self.codeExpirationMinutes!
            }
            if self.duration != nil {
                map["Duration"] = self.duration!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.fileType != nil {
                map["FileType"] = self.fileType!
            }
            if self.format != nil {
                map["Format"] = self.format!
            }
            if self.hasExpiration != nil {
                map["HasExpiration"] = self.hasExpiration!
            }
            if self.text != nil {
                map["Text"] = self.text!
            }
            if self.thumbUrl != nil {
                map["ThumbUrl"] = self.thumbUrl!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddSecretRecommendation"] as? Bool {
                self.addSecretRecommendation = value
            }
            if let value = dict["Buttons"] as? [Any?] {
                var tmp : [ModifyChatappTemplateRequest.Components.Buttons] = []
                for v in value {
                    if v != nil {
                        var model = ModifyChatappTemplateRequest.Components.Buttons()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.buttons = tmp
            }
            if let value = dict["Caption"] as? String {
                self.caption = value
            }
            if let value = dict["Cards"] as? [Any?] {
                var tmp : [ModifyChatappTemplateRequest.Components.Cards] = []
                for v in value {
                    if v != nil {
                        var model = ModifyChatappTemplateRequest.Components.Cards()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.cards = tmp
            }
            if let value = dict["CodeExpirationMinutes"] as? Int32 {
                self.codeExpirationMinutes = value
            }
            if let value = dict["Duration"] as? Int32 {
                self.duration = value
            }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["FileType"] as? String {
                self.fileType = value
            }
            if let value = dict["Format"] as? String {
                self.format = value
            }
            if let value = dict["HasExpiration"] as? Bool {
                self.hasExpiration = value
            }
            if let value = dict["Text"] as? String {
                self.text = value
            }
            if let value = dict["ThumbUrl"] as? String {
                self.thumbUrl = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Url"] as? String {
                self.url = value
            }
        }
    }
    public var category: String?

    public var categoryChangePaused: Bool?

    public var components: [ModifyChatappTemplateRequest.Components]?

    public var custSpaceId: String?

    public var custWabaId: String?

    public var example: [String: String]?

    public var isvCode: String?

    public var language: String?

    public var messageSendTtlSeconds: Int32?

    public var templateCode: String?

    public var templateName: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.categoryChangePaused != nil {
            map["CategoryChangePaused"] = self.categoryChangePaused!
        }
        if self.components != nil {
            var tmp : [Any] = []
            for k in self.components! {
                tmp.append(k.toMap())
            }
            map["Components"] = tmp
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.example != nil {
            map["Example"] = self.example!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.messageSendTtlSeconds != nil {
            map["MessageSendTtlSeconds"] = self.messageSendTtlSeconds!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["CategoryChangePaused"] as? Bool {
            self.categoryChangePaused = value
        }
        if let value = dict["Components"] as? [Any?] {
            var tmp : [ModifyChatappTemplateRequest.Components] = []
            for v in value {
                if v != nil {
                    var model = ModifyChatappTemplateRequest.Components()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.components = tmp
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["CustWabaId"] as? String {
            self.custWabaId = value
        }
        if let value = dict["Example"] as? [String: String] {
            self.example = value
        }
        if let value = dict["IsvCode"] as? String {
            self.isvCode = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["MessageSendTtlSeconds"] as? Int32 {
            self.messageSendTtlSeconds = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateType"] as? String {
            self.templateType = value
        }
    }
}

public class ModifyChatappTemplateShrinkRequest : Tea.TeaModel {
    public var category: String?

    public var categoryChangePaused: Bool?

    public var componentsShrink: String?

    public var custSpaceId: String?

    public var custWabaId: String?

    public var exampleShrink: String?

    public var isvCode: String?

    public var language: String?

    public var messageSendTtlSeconds: Int32?

    public var templateCode: String?

    public var templateName: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.categoryChangePaused != nil {
            map["CategoryChangePaused"] = self.categoryChangePaused!
        }
        if self.componentsShrink != nil {
            map["Components"] = self.componentsShrink!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.exampleShrink != nil {
            map["Example"] = self.exampleShrink!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.messageSendTtlSeconds != nil {
            map["MessageSendTtlSeconds"] = self.messageSendTtlSeconds!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["CategoryChangePaused"] as? Bool {
            self.categoryChangePaused = value
        }
        if let value = dict["Components"] as? String {
            self.componentsShrink = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["CustWabaId"] as? String {
            self.custWabaId = value
        }
        if let value = dict["Example"] as? String {
            self.exampleShrink = value
        }
        if let value = dict["IsvCode"] as? String {
            self.isvCode = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["MessageSendTtlSeconds"] as? Int32 {
            self.messageSendTtlSeconds = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateType"] as? String {
            self.templateType = value
        }
    }
}

public class ModifyChatappTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var templateCode: String?

        public var templateName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.templateCode != nil {
                map["TemplateCode"] = self.templateCode!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TemplateCode"] as? String {
                self.templateCode = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: ModifyChatappTemplateResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ModifyChatappTemplateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyChatappTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyChatappTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyChatappTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyChatappTemplatePropertiesRequest : Tea.TeaModel {
    public var allowSend: Bool?

    public var categoryChangePaused: Bool?

    public var custSpaceId: String?

    public var language: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var templateCode: String?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowSend != nil {
            map["AllowSend"] = self.allowSend!
        }
        if self.categoryChangePaused != nil {
            map["CategoryChangePaused"] = self.categoryChangePaused!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.language != nil {
            map["Language"] = self.language!
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
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateType != nil {
            map["TemplateType"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowSend"] as? Bool {
            self.allowSend = value
        }
        if let value = dict["CategoryChangePaused"] as? Bool {
            self.categoryChangePaused = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateType"] as? String {
            self.templateType = value
        }
    }
}

public class ModifyChatappTemplatePropertiesResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: [String: Any]?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any] {
            self.model = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyChatappTemplatePropertiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyChatappTemplatePropertiesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyChatappTemplatePropertiesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyFlowRequest : Tea.TeaModel {
    public var categories: [String]?

    public var custSpaceId: String?

    public var flowId: String?

    public var flowName: String?

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
        if self.categories != nil {
            map["Categories"] = self.categories!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Categories"] as? [String] {
            self.categories = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["FlowId"] as? String {
            self.flowId = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ModifyFlowShrinkRequest : Tea.TeaModel {
    public var categoriesShrink: String?

    public var custSpaceId: String?

    public var flowId: String?

    public var flowName: String?

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
        if self.categoriesShrink != nil {
            map["Categories"] = self.categoriesShrink!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
        }
        if self.flowName != nil {
            map["FlowName"] = self.flowName!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Categories"] as? String {
            self.categoriesShrink = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["FlowId"] as? String {
            self.flowId = value
        }
        if let value = dict["FlowName"] as? String {
            self.flowName = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ModifyFlowResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var categories: [String]?

        public var flowId: String?

        public var flowName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.categories != nil {
                map["Categories"] = self.categories!
            }
            if self.flowId != nil {
                map["FlowId"] = self.flowId!
            }
            if self.flowName != nil {
                map["FlowName"] = self.flowName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Categories"] as? [String] {
                self.categories = value
            }
            if let value = dict["FlowId"] as? String {
                self.flowId = value
            }
            if let value = dict["FlowName"] as? String {
                self.flowName = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: ModifyFlowResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ModifyFlowResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyPhoneBusinessProfileRequest : Tea.TeaModel {
    public var about: String?

    public var address: String?

    public var custSpaceId: String?

    public var description_: String?

    public var email: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var profilePictureUrl: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var vertical: String?

    public var websites: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.about != nil {
            map["About"] = self.about!
        }
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.profilePictureUrl != nil {
            map["ProfilePictureUrl"] = self.profilePictureUrl!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.vertical != nil {
            map["Vertical"] = self.vertical!
        }
        if self.websites != nil {
            map["Websites"] = self.websites!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["About"] as? String {
            self.about = value
        }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ProfilePictureUrl"] as? String {
            self.profilePictureUrl = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Vertical"] as? String {
            self.vertical = value
        }
        if let value = dict["Websites"] as? [String] {
            self.websites = value
        }
    }
}

public class ModifyPhoneBusinessProfileShrinkRequest : Tea.TeaModel {
    public var about: String?

    public var address: String?

    public var custSpaceId: String?

    public var description_: String?

    public var email: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var profilePictureUrl: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var vertical: String?

    public var websitesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.about != nil {
            map["About"] = self.about!
        }
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.profilePictureUrl != nil {
            map["ProfilePictureUrl"] = self.profilePictureUrl!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.vertical != nil {
            map["Vertical"] = self.vertical!
        }
        if self.websitesShrink != nil {
            map["Websites"] = self.websitesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["About"] as? String {
            self.about = value
        }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ProfilePictureUrl"] as? String {
            self.profilePictureUrl = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Vertical"] as? String {
            self.vertical = value
        }
        if let value = dict["Websites"] as? String {
            self.websitesShrink = value
        }
    }
}

public class ModifyPhoneBusinessProfileResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyPhoneBusinessProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPhoneBusinessProfileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyPhoneBusinessProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OfflineFlowVersionRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtend: [String: Any]?

    public var flowCode: String?

    public var flowVersion: String?

    public var ownerId: Int64?

    public var remark: String?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtend != nil {
            map["BizExtend"] = self.bizExtend!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? [String: Any] {
            self.bizExtend = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["FlowVersion"] as? String {
            self.flowVersion = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class OfflineFlowVersionShrinkRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtendShrink: String?

    public var flowCode: String?

    public var flowVersion: String?

    public var ownerId: Int64?

    public var remark: String?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtendShrink != nil {
            map["BizExtend"] = self.bizExtendShrink!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? String {
            self.bizExtendShrink = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["FlowVersion"] as? String {
            self.flowVersion = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class OfflineFlowVersionResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var response: [String: Any]?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.response != nil {
            map["Response"] = self.response!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Response"] as? [String: Any] {
            self.response = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class OfflineFlowVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OfflineFlowVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = OfflineFlowVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OnlineFlowVersionRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtend: [String: Any]?

    public var flowCode: String?

    public var flowVersion: String?

    public var ownerId: Int64?

    public var remark: String?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtend != nil {
            map["BizExtend"] = self.bizExtend!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? [String: Any] {
            self.bizExtend = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["FlowVersion"] as? String {
            self.flowVersion = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class OnlineFlowVersionShrinkRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtendShrink: String?

    public var flowCode: String?

    public var flowVersion: String?

    public var ownerId: Int64?

    public var remark: String?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtendShrink != nil {
            map["BizExtend"] = self.bizExtendShrink!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? String {
            self.bizExtendShrink = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["FlowVersion"] as? String {
            self.flowVersion = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class OnlineFlowVersionResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var response: [String: Any]?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.response != nil {
            map["Response"] = self.response!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Response"] as? [String: Any] {
            self.response = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class OnlineFlowVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OnlineFlowVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = OnlineFlowVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PublishFlowRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var flowId: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["FlowId"] as? String {
            self.flowId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class PublishFlowResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class PublishFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PublishFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PublishFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryChatappBindWabaRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var isvCode: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["IsvCode"] as? String {
            self.isvCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class QueryChatappBindWabaResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountReviewStatus: String?

        public var authInternationalRateEligibility: [String: Any]?

        public var businessId: String?

        public var businessName: String?

        public var currency: String?

        public var id: String?

        public var marketingMessageLiteStatus: String?

        public var messageTemplateNamespace: String?

        public var name: String?

        public var primaryBusinessLocation: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountReviewStatus != nil {
                map["AccountReviewStatus"] = self.accountReviewStatus!
            }
            if self.authInternationalRateEligibility != nil {
                map["AuthInternationalRateEligibility"] = self.authInternationalRateEligibility!
            }
            if self.businessId != nil {
                map["BusinessId"] = self.businessId!
            }
            if self.businessName != nil {
                map["BusinessName"] = self.businessName!
            }
            if self.currency != nil {
                map["Currency"] = self.currency!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.marketingMessageLiteStatus != nil {
                map["MarketingMessageLiteStatus"] = self.marketingMessageLiteStatus!
            }
            if self.messageTemplateNamespace != nil {
                map["MessageTemplateNamespace"] = self.messageTemplateNamespace!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.primaryBusinessLocation != nil {
                map["PrimaryBusinessLocation"] = self.primaryBusinessLocation!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountReviewStatus"] as? String {
                self.accountReviewStatus = value
            }
            if let value = dict["AuthInternationalRateEligibility"] as? [String: Any] {
                self.authInternationalRateEligibility = value
            }
            if let value = dict["BusinessId"] as? String {
                self.businessId = value
            }
            if let value = dict["BusinessName"] as? String {
                self.businessName = value
            }
            if let value = dict["Currency"] as? String {
                self.currency = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["MarketingMessageLiteStatus"] as? String {
                self.marketingMessageLiteStatus = value
            }
            if let value = dict["MessageTemplateNamespace"] as? String {
                self.messageTemplateNamespace = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["PrimaryBusinessLocation"] as? String {
                self.primaryBusinessLocation = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: QueryChatappBindWabaResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryChatappBindWabaResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryChatappBindWabaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryChatappBindWabaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryChatappBindWabaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryChatappPhoneNumbersRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var isvCode: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["IsvCode"] as? String {
            self.isvCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class QueryChatappPhoneNumbersResponseBody : Tea.TeaModel {
    public class PhoneNumbers : Tea.TeaModel {
        public var codeVerificationStatus: String?

        public var isOfficial: String?

        public var messagingLimitTier: String?

        public var nameStatus: String?

        public var newNameStatus: String?

        public var phoneNumber: String?

        public var qualityRating: String?

        public var status: String?

        public var statusCallbackUrl: String?

        public var statusQueue: String?

        public var upCallbackUrl: String?

        public var upQueue: String?

        public var verifiedName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.codeVerificationStatus != nil {
                map["CodeVerificationStatus"] = self.codeVerificationStatus!
            }
            if self.isOfficial != nil {
                map["IsOfficial"] = self.isOfficial!
            }
            if self.messagingLimitTier != nil {
                map["MessagingLimitTier"] = self.messagingLimitTier!
            }
            if self.nameStatus != nil {
                map["NameStatus"] = self.nameStatus!
            }
            if self.newNameStatus != nil {
                map["NewNameStatus"] = self.newNameStatus!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.qualityRating != nil {
                map["QualityRating"] = self.qualityRating!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusCallbackUrl != nil {
                map["StatusCallbackUrl"] = self.statusCallbackUrl!
            }
            if self.statusQueue != nil {
                map["StatusQueue"] = self.statusQueue!
            }
            if self.upCallbackUrl != nil {
                map["UpCallbackUrl"] = self.upCallbackUrl!
            }
            if self.upQueue != nil {
                map["UpQueue"] = self.upQueue!
            }
            if self.verifiedName != nil {
                map["VerifiedName"] = self.verifiedName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CodeVerificationStatus"] as? String {
                self.codeVerificationStatus = value
            }
            if let value = dict["IsOfficial"] as? String {
                self.isOfficial = value
            }
            if let value = dict["MessagingLimitTier"] as? String {
                self.messagingLimitTier = value
            }
            if let value = dict["NameStatus"] as? String {
                self.nameStatus = value
            }
            if let value = dict["NewNameStatus"] as? String {
                self.newNameStatus = value
            }
            if let value = dict["PhoneNumber"] as? String {
                self.phoneNumber = value
            }
            if let value = dict["QualityRating"] as? String {
                self.qualityRating = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StatusCallbackUrl"] as? String {
                self.statusCallbackUrl = value
            }
            if let value = dict["StatusQueue"] as? String {
                self.statusQueue = value
            }
            if let value = dict["UpCallbackUrl"] as? String {
                self.upCallbackUrl = value
            }
            if let value = dict["UpQueue"] as? String {
                self.upQueue = value
            }
            if let value = dict["VerifiedName"] as? String {
                self.verifiedName = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var phoneNumbers: [QueryChatappPhoneNumbersResponseBody.PhoneNumbers]?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.phoneNumbers != nil {
            var tmp : [Any] = []
            for k in self.phoneNumbers! {
                tmp.append(k.toMap())
            }
            map["PhoneNumbers"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PhoneNumbers"] as? [Any?] {
            var tmp : [QueryChatappPhoneNumbersResponseBody.PhoneNumbers] = []
            for v in value {
                if v != nil {
                    var model = QueryChatappPhoneNumbersResponseBody.PhoneNumbers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.phoneNumbers = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryChatappPhoneNumbersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryChatappPhoneNumbersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryChatappPhoneNumbersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryPhoneBusinessProfileRequest : Tea.TeaModel {
    public var custSpaceId: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class QueryPhoneBusinessProfileResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var about: String?

        public var address: String?

        public var description_: String?

        public var email: String?

        public var profilePictureUrl: String?

        public var vertical: String?

        public var websites: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.about != nil {
                map["About"] = self.about!
            }
            if self.address != nil {
                map["Address"] = self.address!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.profilePictureUrl != nil {
                map["ProfilePictureUrl"] = self.profilePictureUrl!
            }
            if self.vertical != nil {
                map["Vertical"] = self.vertical!
            }
            if self.websites != nil {
                map["Websites"] = self.websites!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["About"] as? String {
                self.about = value
            }
            if let value = dict["Address"] as? String {
                self.address = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["ProfilePictureUrl"] as? String {
                self.profilePictureUrl = value
            }
            if let value = dict["Vertical"] as? String {
                self.vertical = value
            }
            if let value = dict["Websites"] as? [String] {
                self.websites = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: QueryPhoneBusinessProfileResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryPhoneBusinessProfileResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryPhoneBusinessProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryPhoneBusinessProfileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryPhoneBusinessProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryWabaBusinessInfoRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var wabaId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
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
        if self.wabaId != nil {
            map["WabaId"] = self.wabaId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["WabaId"] as? String {
            self.wabaId = value
        }
    }
}

public class QueryWabaBusinessInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var businessId: String?

        public var businessName: String?

        public var verificationStatus: String?

        public var vertical: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.businessId != nil {
                map["BusinessId"] = self.businessId!
            }
            if self.businessName != nil {
                map["BusinessName"] = self.businessName!
            }
            if self.verificationStatus != nil {
                map["VerificationStatus"] = self.verificationStatus!
            }
            if self.vertical != nil {
                map["Vertical"] = self.vertical!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BusinessId"] as? String {
                self.businessId = value
            }
            if let value = dict["BusinessName"] as? String {
                self.businessName = value
            }
            if let value = dict["VerificationStatus"] as? String {
                self.verificationStatus = value
            }
            if let value = dict["Vertical"] as? String {
                self.vertical = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: QueryWabaBusinessInfoResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QueryWabaBusinessInfoResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryWabaBusinessInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryWabaBusinessInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryWabaBusinessInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadChatFlowRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtend: [String: Any]?

    public var flowCode: String?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtend != nil {
            map["BizExtend"] = self.bizExtend!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? [String: Any] {
            self.bizExtend = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ReadChatFlowShrinkRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtendShrink: String?

    public var flowCode: String?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtendShrink != nil {
            map["BizExtend"] = self.bizExtendShrink!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? String {
            self.bizExtendShrink = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ReadChatFlowResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var response: [String: Any]?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.response != nil {
            map["Response"] = self.response!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Response"] as? [String: Any] {
            self.response = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ReadChatFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadChatFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReadChatFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadChatFlowLogSettingRequest : Tea.TeaModel {
    public var flowCode: String?

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
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ReadChatFlowLogSettingResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [String: Any]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ReadChatFlowLogSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadChatFlowLogSettingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReadChatFlowLogSettingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadFlowVersionRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtend: [String: Any]?

    public var flowCode: String?

    public var flowVersion: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtend != nil {
            map["BizExtend"] = self.bizExtend!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? [String: Any] {
            self.bizExtend = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["FlowVersion"] as? String {
            self.flowVersion = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ReadFlowVersionShrinkRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtendShrink: String?

    public var flowCode: String?

    public var flowVersion: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtendShrink != nil {
            map["BizExtend"] = self.bizExtendShrink!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? String {
            self.bizExtendShrink = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["FlowVersion"] as? String {
            self.flowVersion = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ReadFlowVersionResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var response: [String: Any]?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.response != nil {
            map["Response"] = self.response!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Response"] as? [String: Any] {
            self.response = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ReadFlowVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadFlowVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReadFlowVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendChatappMassMessageRequest : Tea.TeaModel {
    public class SenderList : Tea.TeaModel {
        public class FlowAction : Tea.TeaModel {
            public var flowActionData: [String: Any]?

            public var flowToken: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.flowActionData != nil {
                    map["FlowActionData"] = self.flowActionData!
                }
                if self.flowToken != nil {
                    map["FlowToken"] = self.flowToken!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FlowActionData"] as? [String: Any] {
                    self.flowActionData = value
                }
                if let value = dict["FlowToken"] as? String {
                    self.flowToken = value
                }
            }
        }
        public class ProductAction : Tea.TeaModel {
            public class Sections : Tea.TeaModel {
                public class ProductItems : Tea.TeaModel {
                    public var productRetailerId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.productRetailerId != nil {
                            map["ProductRetailerId"] = self.productRetailerId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ProductRetailerId"] as? String {
                            self.productRetailerId = value
                        }
                    }
                }
                public var productItems: [SendChatappMassMessageRequest.SenderList.ProductAction.Sections.ProductItems]?

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
                    if self.productItems != nil {
                        var tmp : [Any] = []
                        for k in self.productItems! {
                            tmp.append(k.toMap())
                        }
                        map["ProductItems"] = tmp
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ProductItems"] as? [Any?] {
                        var tmp : [SendChatappMassMessageRequest.SenderList.ProductAction.Sections.ProductItems] = []
                        for v in value {
                            if v != nil {
                                var model = SendChatappMassMessageRequest.SenderList.ProductAction.Sections.ProductItems()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.productItems = tmp
                    }
                    if let value = dict["Title"] as? String {
                        self.title = value
                    }
                }
            }
            public var sections: [SendChatappMassMessageRequest.SenderList.ProductAction.Sections]?

            public var thumbnailProductRetailerId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.sections != nil {
                    var tmp : [Any] = []
                    for k in self.sections! {
                        tmp.append(k.toMap())
                    }
                    map["Sections"] = tmp
                }
                if self.thumbnailProductRetailerId != nil {
                    map["ThumbnailProductRetailerId"] = self.thumbnailProductRetailerId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Sections"] as? [Any?] {
                    var tmp : [SendChatappMassMessageRequest.SenderList.ProductAction.Sections] = []
                    for v in value {
                        if v != nil {
                            var model = SendChatappMassMessageRequest.SenderList.ProductAction.Sections()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.sections = tmp
                }
                if let value = dict["ThumbnailProductRetailerId"] as? String {
                    self.thumbnailProductRetailerId = value
                }
            }
        }
        public var flowAction: SendChatappMassMessageRequest.SenderList.FlowAction?

        public var payload: [String]?

        public var productAction: SendChatappMassMessageRequest.SenderList.ProductAction?

        public var templateParams: [String: String]?

        public var to: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.flowAction?.validate()
            try self.productAction?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.flowAction != nil {
                map["FlowAction"] = self.flowAction?.toMap()
            }
            if self.payload != nil {
                map["Payload"] = self.payload!
            }
            if self.productAction != nil {
                map["ProductAction"] = self.productAction?.toMap()
            }
            if self.templateParams != nil {
                map["TemplateParams"] = self.templateParams!
            }
            if self.to != nil {
                map["To"] = self.to!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FlowAction"] as? [String: Any?] {
                var model = SendChatappMassMessageRequest.SenderList.FlowAction()
                model.fromMap(value)
                self.flowAction = model
            }
            if let value = dict["Payload"] as? [String] {
                self.payload = value
            }
            if let value = dict["ProductAction"] as? [String: Any?] {
                var model = SendChatappMassMessageRequest.SenderList.ProductAction()
                model.fromMap(value)
                self.productAction = model
            }
            if let value = dict["TemplateParams"] as? [String: String] {
                self.templateParams = value
            }
            if let value = dict["To"] as? String {
                self.to = value
            }
        }
    }
    public var channelType: String?

    public var custSpaceId: String?

    public var custWabaId: String?

    public var fallBackContent: String?

    public var fallBackDuration: Int32?

    public var fallBackId: String?

    public var fallBackRule: String?

    public var from: String?

    public var isvCode: String?

    public var label: String?

    public var language: String?

    public var senderList: [SendChatappMassMessageRequest.SenderList]?

    public var tag: String?

    public var taskId: String?

    public var templateCode: String?

    public var templateName: String?

    public var ttl: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.fallBackContent != nil {
            map["FallBackContent"] = self.fallBackContent!
        }
        if self.fallBackDuration != nil {
            map["FallBackDuration"] = self.fallBackDuration!
        }
        if self.fallBackId != nil {
            map["FallBackId"] = self.fallBackId!
        }
        if self.fallBackRule != nil {
            map["FallBackRule"] = self.fallBackRule!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.senderList != nil {
            var tmp : [Any] = []
            for k in self.senderList! {
                tmp.append(k.toMap())
            }
            map["SenderList"] = tmp
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.ttl != nil {
            map["Ttl"] = self.ttl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["CustWabaId"] as? String {
            self.custWabaId = value
        }
        if let value = dict["FallBackContent"] as? String {
            self.fallBackContent = value
        }
        if let value = dict["FallBackDuration"] as? Int32 {
            self.fallBackDuration = value
        }
        if let value = dict["FallBackId"] as? String {
            self.fallBackId = value
        }
        if let value = dict["FallBackRule"] as? String {
            self.fallBackRule = value
        }
        if let value = dict["From"] as? String {
            self.from = value
        }
        if let value = dict["IsvCode"] as? String {
            self.isvCode = value
        }
        if let value = dict["Label"] as? String {
            self.label = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["SenderList"] as? [Any?] {
            var tmp : [SendChatappMassMessageRequest.SenderList] = []
            for v in value {
                if v != nil {
                    var model = SendChatappMassMessageRequest.SenderList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.senderList = tmp
        }
        if let value = dict["Tag"] as? String {
            self.tag = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["Ttl"] as? Int64 {
            self.ttl = value
        }
    }
}

public class SendChatappMassMessageShrinkRequest : Tea.TeaModel {
    public var channelType: String?

    public var custSpaceId: String?

    public var custWabaId: String?

    public var fallBackContent: String?

    public var fallBackDuration: Int32?

    public var fallBackId: String?

    public var fallBackRule: String?

    public var from: String?

    public var isvCode: String?

    public var label: String?

    public var language: String?

    public var senderListShrink: String?

    public var tag: String?

    public var taskId: String?

    public var templateCode: String?

    public var templateName: String?

    public var ttl: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.fallBackContent != nil {
            map["FallBackContent"] = self.fallBackContent!
        }
        if self.fallBackDuration != nil {
            map["FallBackDuration"] = self.fallBackDuration!
        }
        if self.fallBackId != nil {
            map["FallBackId"] = self.fallBackId!
        }
        if self.fallBackRule != nil {
            map["FallBackRule"] = self.fallBackRule!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.senderListShrink != nil {
            map["SenderList"] = self.senderListShrink!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.ttl != nil {
            map["Ttl"] = self.ttl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["CustWabaId"] as? String {
            self.custWabaId = value
        }
        if let value = dict["FallBackContent"] as? String {
            self.fallBackContent = value
        }
        if let value = dict["FallBackDuration"] as? Int32 {
            self.fallBackDuration = value
        }
        if let value = dict["FallBackId"] as? String {
            self.fallBackId = value
        }
        if let value = dict["FallBackRule"] as? String {
            self.fallBackRule = value
        }
        if let value = dict["From"] as? String {
            self.from = value
        }
        if let value = dict["IsvCode"] as? String {
            self.isvCode = value
        }
        if let value = dict["Label"] as? String {
            self.label = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["SenderList"] as? String {
            self.senderListShrink = value
        }
        if let value = dict["Tag"] as? String {
            self.tag = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["Ttl"] as? Int64 {
            self.ttl = value
        }
    }
}

public class SendChatappMassMessageResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var groupMessageId: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.groupMessageId != nil {
            map["GroupMessageId"] = self.groupMessageId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["GroupMessageId"] as? String {
            self.groupMessageId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SendChatappMassMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendChatappMassMessageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SendChatappMassMessageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SendChatappMessageRequest : Tea.TeaModel {
    public class FlowAction : Tea.TeaModel {
        public var flowActionData: [String: Any]?

        public var flowToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.flowActionData != nil {
                map["FlowActionData"] = self.flowActionData!
            }
            if self.flowToken != nil {
                map["FlowToken"] = self.flowToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FlowActionData"] as? [String: Any] {
                self.flowActionData = value
            }
            if let value = dict["FlowToken"] as? String {
                self.flowToken = value
            }
        }
    }
    public class ProductAction : Tea.TeaModel {
        public class Sections : Tea.TeaModel {
            public class ProductItems : Tea.TeaModel {
                public var productRetailerId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.productRetailerId != nil {
                        map["ProductRetailerId"] = self.productRetailerId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ProductRetailerId"] as? String {
                        self.productRetailerId = value
                    }
                }
            }
            public var productItems: [SendChatappMessageRequest.ProductAction.Sections.ProductItems]?

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
                if self.productItems != nil {
                    var tmp : [Any] = []
                    for k in self.productItems! {
                        tmp.append(k.toMap())
                    }
                    map["ProductItems"] = tmp
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ProductItems"] as? [Any?] {
                    var tmp : [SendChatappMessageRequest.ProductAction.Sections.ProductItems] = []
                    for v in value {
                        if v != nil {
                            var model = SendChatappMessageRequest.ProductAction.Sections.ProductItems()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.productItems = tmp
                }
                if let value = dict["Title"] as? String {
                    self.title = value
                }
            }
        }
        public var sections: [SendChatappMessageRequest.ProductAction.Sections]?

        public var thumbnailProductRetailerId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sections != nil {
                var tmp : [Any] = []
                for k in self.sections! {
                    tmp.append(k.toMap())
                }
                map["Sections"] = tmp
            }
            if self.thumbnailProductRetailerId != nil {
                map["ThumbnailProductRetailerId"] = self.thumbnailProductRetailerId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Sections"] as? [Any?] {
                var tmp : [SendChatappMessageRequest.ProductAction.Sections] = []
                for v in value {
                    if v != nil {
                        var model = SendChatappMessageRequest.ProductAction.Sections()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sections = tmp
            }
            if let value = dict["ThumbnailProductRetailerId"] as? String {
                self.thumbnailProductRetailerId = value
            }
        }
    }
    public var channelType: String?

    public var content: String?

    public var contextMessageId: String?

    public var custSpaceId: String?

    public var custWabaId: String?

    public var fallBackContent: String?

    public var fallBackDuration: Int32?

    public var fallBackId: String?

    public var fallBackRule: String?

    public var flowAction: SendChatappMessageRequest.FlowAction?

    public var from: String?

    public var isvCode: String?

    public var label: String?

    public var language: String?

    public var messageType: String?

    public var payload: [String]?

    public var productAction: SendChatappMessageRequest.ProductAction?

    public var recipientType: String?

    public var tag: String?

    public var taskId: String?

    public var templateCode: String?

    public var templateName: String?

    public var templateParams: [String: String]?

    public var to: String?

    public var trackingData: String?

    public var ttl: Int32?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.flowAction?.validate()
        try self.productAction?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.contextMessageId != nil {
            map["ContextMessageId"] = self.contextMessageId!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.fallBackContent != nil {
            map["FallBackContent"] = self.fallBackContent!
        }
        if self.fallBackDuration != nil {
            map["FallBackDuration"] = self.fallBackDuration!
        }
        if self.fallBackId != nil {
            map["FallBackId"] = self.fallBackId!
        }
        if self.fallBackRule != nil {
            map["FallBackRule"] = self.fallBackRule!
        }
        if self.flowAction != nil {
            map["FlowAction"] = self.flowAction?.toMap()
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.messageType != nil {
            map["MessageType"] = self.messageType!
        }
        if self.payload != nil {
            map["Payload"] = self.payload!
        }
        if self.productAction != nil {
            map["ProductAction"] = self.productAction?.toMap()
        }
        if self.recipientType != nil {
            map["RecipientType"] = self.recipientType!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateParams != nil {
            map["TemplateParams"] = self.templateParams!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        if self.trackingData != nil {
            map["TrackingData"] = self.trackingData!
        }
        if self.ttl != nil {
            map["Ttl"] = self.ttl!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["ContextMessageId"] as? String {
            self.contextMessageId = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["CustWabaId"] as? String {
            self.custWabaId = value
        }
        if let value = dict["FallBackContent"] as? String {
            self.fallBackContent = value
        }
        if let value = dict["FallBackDuration"] as? Int32 {
            self.fallBackDuration = value
        }
        if let value = dict["FallBackId"] as? String {
            self.fallBackId = value
        }
        if let value = dict["FallBackRule"] as? String {
            self.fallBackRule = value
        }
        if let value = dict["FlowAction"] as? [String: Any?] {
            var model = SendChatappMessageRequest.FlowAction()
            model.fromMap(value)
            self.flowAction = model
        }
        if let value = dict["From"] as? String {
            self.from = value
        }
        if let value = dict["IsvCode"] as? String {
            self.isvCode = value
        }
        if let value = dict["Label"] as? String {
            self.label = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["MessageType"] as? String {
            self.messageType = value
        }
        if let value = dict["Payload"] as? [String] {
            self.payload = value
        }
        if let value = dict["ProductAction"] as? [String: Any?] {
            var model = SendChatappMessageRequest.ProductAction()
            model.fromMap(value)
            self.productAction = model
        }
        if let value = dict["RecipientType"] as? String {
            self.recipientType = value
        }
        if let value = dict["Tag"] as? String {
            self.tag = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateParams"] as? [String: String] {
            self.templateParams = value
        }
        if let value = dict["To"] as? String {
            self.to = value
        }
        if let value = dict["TrackingData"] as? String {
            self.trackingData = value
        }
        if let value = dict["Ttl"] as? Int32 {
            self.ttl = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class SendChatappMessageShrinkRequest : Tea.TeaModel {
    public var channelType: String?

    public var content: String?

    public var contextMessageId: String?

    public var custSpaceId: String?

    public var custWabaId: String?

    public var fallBackContent: String?

    public var fallBackDuration: Int32?

    public var fallBackId: String?

    public var fallBackRule: String?

    public var flowActionShrink: String?

    public var from: String?

    public var isvCode: String?

    public var label: String?

    public var language: String?

    public var messageType: String?

    public var payloadShrink: String?

    public var productActionShrink: String?

    public var recipientType: String?

    public var tag: String?

    public var taskId: String?

    public var templateCode: String?

    public var templateName: String?

    public var templateParamsShrink: String?

    public var to: String?

    public var trackingData: String?

    public var ttl: Int32?

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
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.contextMessageId != nil {
            map["ContextMessageId"] = self.contextMessageId!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.custWabaId != nil {
            map["CustWabaId"] = self.custWabaId!
        }
        if self.fallBackContent != nil {
            map["FallBackContent"] = self.fallBackContent!
        }
        if self.fallBackDuration != nil {
            map["FallBackDuration"] = self.fallBackDuration!
        }
        if self.fallBackId != nil {
            map["FallBackId"] = self.fallBackId!
        }
        if self.fallBackRule != nil {
            map["FallBackRule"] = self.fallBackRule!
        }
        if self.flowActionShrink != nil {
            map["FlowAction"] = self.flowActionShrink!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.isvCode != nil {
            map["IsvCode"] = self.isvCode!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.language != nil {
            map["Language"] = self.language!
        }
        if self.messageType != nil {
            map["MessageType"] = self.messageType!
        }
        if self.payloadShrink != nil {
            map["Payload"] = self.payloadShrink!
        }
        if self.productActionShrink != nil {
            map["ProductAction"] = self.productActionShrink!
        }
        if self.recipientType != nil {
            map["RecipientType"] = self.recipientType!
        }
        if self.tag != nil {
            map["Tag"] = self.tag!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.templateParamsShrink != nil {
            map["TemplateParams"] = self.templateParamsShrink!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        if self.trackingData != nil {
            map["TrackingData"] = self.trackingData!
        }
        if self.ttl != nil {
            map["Ttl"] = self.ttl!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["ContextMessageId"] as? String {
            self.contextMessageId = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["CustWabaId"] as? String {
            self.custWabaId = value
        }
        if let value = dict["FallBackContent"] as? String {
            self.fallBackContent = value
        }
        if let value = dict["FallBackDuration"] as? Int32 {
            self.fallBackDuration = value
        }
        if let value = dict["FallBackId"] as? String {
            self.fallBackId = value
        }
        if let value = dict["FallBackRule"] as? String {
            self.fallBackRule = value
        }
        if let value = dict["FlowAction"] as? String {
            self.flowActionShrink = value
        }
        if let value = dict["From"] as? String {
            self.from = value
        }
        if let value = dict["IsvCode"] as? String {
            self.isvCode = value
        }
        if let value = dict["Label"] as? String {
            self.label = value
        }
        if let value = dict["Language"] as? String {
            self.language = value
        }
        if let value = dict["MessageType"] as? String {
            self.messageType = value
        }
        if let value = dict["Payload"] as? String {
            self.payloadShrink = value
        }
        if let value = dict["ProductAction"] as? String {
            self.productActionShrink = value
        }
        if let value = dict["RecipientType"] as? String {
            self.recipientType = value
        }
        if let value = dict["Tag"] as? String {
            self.tag = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TemplateName"] as? String {
            self.templateName = value
        }
        if let value = dict["TemplateParams"] as? String {
            self.templateParamsShrink = value
        }
        if let value = dict["To"] as? String {
            self.to = value
        }
        if let value = dict["TrackingData"] as? String {
            self.trackingData = value
        }
        if let value = dict["Ttl"] as? Int32 {
            self.ttl = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class SendChatappMessageResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var messageId: String?

    public var requestId: String?

    public override init() {
        super.init()
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
        if self.messageId != nil {
            map["MessageId"] = self.messageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if let value = dict["MessageId"] as? String {
            self.messageId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SendChatappMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendChatappMessageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SendChatappMessageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitIsvCustomerTermsRequest : Tea.TeaModel {
    public var businessDesc: String?

    public var contactMail: String?

    public var countryId: String?

    public var custName: String?

    public var custSpaceId: String?

    public var isvTerms: String?

    public var officeAddress: String?

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
        if self.businessDesc != nil {
            map["BusinessDesc"] = self.businessDesc!
        }
        if self.contactMail != nil {
            map["ContactMail"] = self.contactMail!
        }
        if self.countryId != nil {
            map["CountryId"] = self.countryId!
        }
        if self.custName != nil {
            map["CustName"] = self.custName!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.isvTerms != nil {
            map["IsvTerms"] = self.isvTerms!
        }
        if self.officeAddress != nil {
            map["OfficeAddress"] = self.officeAddress!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessDesc"] as? String {
            self.businessDesc = value
        }
        if let value = dict["ContactMail"] as? String {
            self.contactMail = value
        }
        if let value = dict["CountryId"] as? String {
            self.countryId = value
        }
        if let value = dict["CustName"] as? String {
            self.custName = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["IsvTerms"] as? String {
            self.isvTerms = value
        }
        if let value = dict["OfficeAddress"] as? String {
            self.officeAddress = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class SubmitIsvCustomerTermsResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SubmitIsvCustomerTermsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitIsvCustomerTermsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SubmitIsvCustomerTermsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TriggerChatFlowRequest : Tea.TeaModel {
    public var claimTimeMillis: Int64?

    public var data: [String: Any]?

    public var discardTimeMillis: Int64?

    public var flowCode: String?

    public var outId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.claimTimeMillis != nil {
            map["ClaimTimeMillis"] = self.claimTimeMillis!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.discardTimeMillis != nil {
            map["DiscardTimeMillis"] = self.discardTimeMillis!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
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
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClaimTimeMillis"] as? Int64 {
            self.claimTimeMillis = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["DiscardTimeMillis"] as? Int64 {
            self.discardTimeMillis = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class TriggerChatFlowShrinkRequest : Tea.TeaModel {
    public var claimTimeMillis: Int64?

    public var dataShrink: String?

    public var discardTimeMillis: Int64?

    public var flowCode: String?

    public var outId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.claimTimeMillis != nil {
            map["ClaimTimeMillis"] = self.claimTimeMillis!
        }
        if self.dataShrink != nil {
            map["Data"] = self.dataShrink!
        }
        if self.discardTimeMillis != nil {
            map["DiscardTimeMillis"] = self.discardTimeMillis!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
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
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClaimTimeMillis"] as? Int64 {
            self.claimTimeMillis = value
        }
        if let value = dict["Data"] as? String {
            self.dataShrink = value
        }
        if let value = dict["DiscardTimeMillis"] as? Int64 {
            self.discardTimeMillis = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["OutId"] as? String {
            self.outId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class TriggerChatFlowResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [String: Any]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class TriggerChatFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TriggerChatFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TriggerChatFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAccountWebhookRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var httpFlag: String?

    public var ownerId: Int64?

    public var queueFlag: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var statusCallbackUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.httpFlag != nil {
            map["HttpFlag"] = self.httpFlag!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.queueFlag != nil {
            map["QueueFlag"] = self.queueFlag!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.statusCallbackUrl != nil {
            map["StatusCallbackUrl"] = self.statusCallbackUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["HttpFlag"] as? String {
            self.httpFlag = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["QueueFlag"] as? String {
            self.queueFlag = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["StatusCallbackUrl"] as? String {
            self.statusCallbackUrl = value
        }
    }
}

public class UpdateAccountWebhookResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateAccountWebhookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAccountWebhookResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateAccountWebhookResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateChatFlowRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtend: [String: Any]?

    public var flowCode: String?

    public var ownerId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtend != nil {
            map["BizExtend"] = self.bizExtend!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? [String: Any] {
            self.bizExtend = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class UpdateChatFlowShrinkRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtendShrink: String?

    public var flowCode: String?

    public var ownerId: Int64?

    public var remark: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtendShrink != nil {
            map["BizExtend"] = self.bizExtendShrink!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? String {
            self.bizExtendShrink = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
    }
}

public class UpdateChatFlowResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var response: [String: Any]?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.response != nil {
            map["Response"] = self.response!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Response"] as? [String: Any] {
            self.response = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateChatFlowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateChatFlowResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateChatFlowResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateChatFlowLogSettingRequest : Tea.TeaModel {
    public var flowCode: String?

    public var id: Int64?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.id != nil {
            map["Id"] = self.id!
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["Id"] as? Int64 {
            self.id = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class UpdateChatFlowLogSettingResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: [String: Any]?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateChatFlowLogSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateChatFlowLogSettingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateChatFlowLogSettingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateChatGroupRequest : Tea.TeaModel {
    public var businessNumber: String?

    public var channelType: String?

    public var custSpaceId: String?

    public var description_: String?

    public var groupId: String?

    public var ownerId: Int64?

    public var profilePictureFile: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subject: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessNumber != nil {
            map["BusinessNumber"] = self.businessNumber!
        }
        if self.channelType != nil {
            map["ChannelType"] = self.channelType!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.profilePictureFile != nil {
            map["ProfilePictureFile"] = self.profilePictureFile!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.subject != nil {
            map["Subject"] = self.subject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessNumber"] as? String {
            self.businessNumber = value
        }
        if let value = dict["ChannelType"] as? String {
            self.channelType = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ProfilePictureFile"] as? String {
            self.profilePictureFile = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Subject"] as? String {
            self.subject = value
        }
    }
}

public class UpdateChatGroupResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: Int64?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Int64 {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateChatGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateChatGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateChatGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCommerceSettingRequest : Tea.TeaModel {
    public var cartEnable: Bool?

    public var catalogVisible: Bool?

    public var custSpaceId: String?

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
        if self.cartEnable != nil {
            map["CartEnable"] = self.cartEnable!
        }
        if self.catalogVisible != nil {
            map["CatalogVisible"] = self.catalogVisible!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CartEnable"] as? Bool {
            self.cartEnable = value
        }
        if let value = dict["CatalogVisible"] as? Bool {
            self.catalogVisible = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class UpdateCommerceSettingResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateCommerceSettingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCommerceSettingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateCommerceSettingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateConversationalAutomationRequest : Tea.TeaModel {
    public class Commands : Tea.TeaModel {
        public var commandDescription: String?

        public var commandName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commandDescription != nil {
                map["CommandDescription"] = self.commandDescription!
            }
            if self.commandName != nil {
                map["CommandName"] = self.commandName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CommandDescription"] as? String {
                self.commandDescription = value
            }
            if let value = dict["CommandName"] as? String {
                self.commandName = value
            }
        }
    }
    public var commands: [UpdateConversationalAutomationRequest.Commands]?

    public var custSpaceId: String?

    public var enableWelcomeMessage: Bool?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var prompts: [String]?

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
        if self.commands != nil {
            var tmp : [Any] = []
            for k in self.commands! {
                tmp.append(k.toMap())
            }
            map["Commands"] = tmp
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.enableWelcomeMessage != nil {
            map["EnableWelcomeMessage"] = self.enableWelcomeMessage!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.prompts != nil {
            map["Prompts"] = self.prompts!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Commands"] as? [Any?] {
            var tmp : [UpdateConversationalAutomationRequest.Commands] = []
            for v in value {
                if v != nil {
                    var model = UpdateConversationalAutomationRequest.Commands()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.commands = tmp
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["EnableWelcomeMessage"] as? Bool {
            self.enableWelcomeMessage = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["Prompts"] as? [String] {
            self.prompts = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class UpdateConversationalAutomationShrinkRequest : Tea.TeaModel {
    public var commandsShrink: String?

    public var custSpaceId: String?

    public var enableWelcomeMessage: Bool?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var promptsShrink: String?

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
        if self.commandsShrink != nil {
            map["Commands"] = self.commandsShrink!
        }
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.enableWelcomeMessage != nil {
            map["EnableWelcomeMessage"] = self.enableWelcomeMessage!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.promptsShrink != nil {
            map["Prompts"] = self.promptsShrink!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Commands"] as? String {
            self.commandsShrink = value
        }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["EnableWelcomeMessage"] as? Bool {
            self.enableWelcomeMessage = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["Prompts"] as? String {
            self.promptsShrink = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class UpdateConversationalAutomationResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateConversationalAutomationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateConversationalAutomationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateConversationalAutomationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateFlowJSONAssetRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var filePath: String?

    public var flowId: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.flowId != nil {
            map["FlowId"] = self.flowId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["FilePath"] as? String {
            self.filePath = value
        }
        if let value = dict["FlowId"] as? String {
            self.flowId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class UpdateFlowJSONAssetResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var flowId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.flowId != nil {
                map["FlowId"] = self.flowId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FlowId"] as? String {
                self.flowId = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: UpdateFlowJSONAssetResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UpdateFlowJSONAssetResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateFlowJSONAssetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFlowJSONAssetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateFlowJSONAssetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateFlowVersionRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtend: [String: Any]?

    public var flowCode: String?

    public var flowVersion: String?

    public var flowViewModel: String?

    public var ownerId: Int64?

    public var remark: String?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtend != nil {
            map["BizExtend"] = self.bizExtend!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
        }
        if self.flowViewModel != nil {
            map["FlowViewModel"] = self.flowViewModel!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? [String: Any] {
            self.bizExtend = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["FlowVersion"] as? String {
            self.flowVersion = value
        }
        if let value = dict["FlowViewModel"] as? String {
            self.flowViewModel = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class UpdateFlowVersionShrinkRequest : Tea.TeaModel {
    public var bizCode: String?

    public var bizExtendShrink: String?

    public var flowCode: String?

    public var flowVersion: String?

    public var flowViewModel: String?

    public var ownerId: Int64?

    public var remark: String?

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
        if self.bizCode != nil {
            map["BizCode"] = self.bizCode!
        }
        if self.bizExtendShrink != nil {
            map["BizExtend"] = self.bizExtendShrink!
        }
        if self.flowCode != nil {
            map["FlowCode"] = self.flowCode!
        }
        if self.flowVersion != nil {
            map["FlowVersion"] = self.flowVersion!
        }
        if self.flowViewModel != nil {
            map["FlowViewModel"] = self.flowViewModel!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.remark != nil {
            map["Remark"] = self.remark!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizCode"] as? String {
            self.bizCode = value
        }
        if let value = dict["BizExtend"] as? String {
            self.bizExtendShrink = value
        }
        if let value = dict["FlowCode"] as? String {
            self.flowCode = value
        }
        if let value = dict["FlowVersion"] as? String {
            self.flowVersion = value
        }
        if let value = dict["FlowViewModel"] as? String {
            self.flowViewModel = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Remark"] as? String {
            self.remark = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class UpdateFlowVersionResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var response: [String: Any]?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.response != nil {
            map["Response"] = self.response!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Response"] as? [String: Any] {
            self.response = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateFlowVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFlowVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateFlowVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePhoneEncryptionPublicKeyRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var encryptionPublicKey: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.encryptionPublicKey != nil {
            map["EncryptionPublicKey"] = self.encryptionPublicKey!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["EncryptionPublicKey"] as? String {
            self.encryptionPublicKey = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class UpdatePhoneEncryptionPublicKeyResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdatePhoneEncryptionPublicKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePhoneEncryptionPublicKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdatePhoneEncryptionPublicKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePhoneMessageQrdlRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var generateQrImage: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var prefilledMessage: String?

    public var qrdlCode: String?

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
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.generateQrImage != nil {
            map["GenerateQrImage"] = self.generateQrImage!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.prefilledMessage != nil {
            map["PrefilledMessage"] = self.prefilledMessage!
        }
        if self.qrdlCode != nil {
            map["QrdlCode"] = self.qrdlCode!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["GenerateQrImage"] as? String {
            self.generateQrImage = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["PrefilledMessage"] as? String {
            self.prefilledMessage = value
        }
        if let value = dict["QrdlCode"] as? String {
            self.qrdlCode = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class UpdatePhoneMessageQrdlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var deepLinkUrl: String?

        public var generateQrImage: String?

        public var phoneNumber: String?

        public var prefilledMessage: String?

        public var qrImageUrl: String?

        public var qrdlCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deepLinkUrl != nil {
                map["DeepLinkUrl"] = self.deepLinkUrl!
            }
            if self.generateQrImage != nil {
                map["GenerateQrImage"] = self.generateQrImage!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.prefilledMessage != nil {
                map["PrefilledMessage"] = self.prefilledMessage!
            }
            if self.qrImageUrl != nil {
                map["QrImageUrl"] = self.qrImageUrl!
            }
            if self.qrdlCode != nil {
                map["QrdlCode"] = self.qrdlCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeepLinkUrl"] as? String {
                self.deepLinkUrl = value
            }
            if let value = dict["GenerateQrImage"] as? String {
                self.generateQrImage = value
            }
            if let value = dict["PhoneNumber"] as? String {
                self.phoneNumber = value
            }
            if let value = dict["PrefilledMessage"] as? String {
                self.prefilledMessage = value
            }
            if let value = dict["QrImageUrl"] as? String {
                self.qrImageUrl = value
            }
            if let value = dict["QrdlCode"] as? String {
                self.qrdlCode = value
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var data: UpdatePhoneMessageQrdlResponseBody.Data?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UpdatePhoneMessageQrdlResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdatePhoneMessageQrdlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePhoneMessageQrdlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdatePhoneMessageQrdlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePhoneWebhookRequest : Tea.TeaModel {
    public var custSpaceId: String?

    public var httpFlag: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var queueFlag: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var statusCallbackUrl: String?

    public var upCallbackUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.custSpaceId != nil {
            map["CustSpaceId"] = self.custSpaceId!
        }
        if self.httpFlag != nil {
            map["HttpFlag"] = self.httpFlag!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.queueFlag != nil {
            map["QueueFlag"] = self.queueFlag!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.statusCallbackUrl != nil {
            map["StatusCallbackUrl"] = self.statusCallbackUrl!
        }
        if self.upCallbackUrl != nil {
            map["UpCallbackUrl"] = self.upCallbackUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustSpaceId"] as? String {
            self.custSpaceId = value
        }
        if let value = dict["HttpFlag"] as? String {
            self.httpFlag = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PhoneNumber"] as? String {
            self.phoneNumber = value
        }
        if let value = dict["QueueFlag"] as? String {
            self.queueFlag = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["StatusCallbackUrl"] as? String {
            self.statusCallbackUrl = value
        }
        if let value = dict["UpCallbackUrl"] as? String {
            self.upCallbackUrl = value
        }
    }
}

public class UpdatePhoneWebhookResponseBody : Tea.TeaModel {
    public var accessDeniedDetail: String?

    public var code: String?

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
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessDeniedDetail"] as? String {
            self.accessDeniedDetail = value
        }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdatePhoneWebhookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePhoneWebhookResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdatePhoneWebhookResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
