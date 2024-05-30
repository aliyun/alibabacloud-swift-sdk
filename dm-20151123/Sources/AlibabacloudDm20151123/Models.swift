import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddIpfilterRequest : Tea.TeaModel {
    public var ipAddress: String?

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
        if self.ipAddress != nil {
            map["IpAddress"] = self.ipAddress!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpAddress") {
            self.ipAddress = dict["IpAddress"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class AddIpfilterResponseBody : Tea.TeaModel {
    public var ipFilterId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipFilterId != nil {
            map["IpFilterId"] = self.ipFilterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpFilterId") {
            self.ipFilterId = dict["IpFilterId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddIpfilterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddIpfilterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddIpfilterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApproveReplyMailAddressRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var ticket: String?

    public override init() {
        super.init()
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
        if self.ticket != nil {
            map["Ticket"] = self.ticket!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Ticket") {
            self.ticket = dict["Ticket"] as! String
        }
    }
}

public class ApproveReplyMailAddressResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ApproveReplyMailAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApproveReplyMailAddressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ApproveReplyMailAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BatchSendMailRequest : Tea.TeaModel {
    public var accountName: String?

    public var addressType: Int32?

    public var clickTrace: String?

    public var ownerId: Int64?

    public var receiversName: String?

    public var replyAddress: String?

    public var replyAddressAlias: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tagName: String?

    public var templateName: String?

    public var unSubscribeFilterLevel: String?

    public var unSubscribeLinkType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.addressType != nil {
            map["AddressType"] = self.addressType!
        }
        if self.clickTrace != nil {
            map["ClickTrace"] = self.clickTrace!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.receiversName != nil {
            map["ReceiversName"] = self.receiversName!
        }
        if self.replyAddress != nil {
            map["ReplyAddress"] = self.replyAddress!
        }
        if self.replyAddressAlias != nil {
            map["ReplyAddressAlias"] = self.replyAddressAlias!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        if self.templateName != nil {
            map["TemplateName"] = self.templateName!
        }
        if self.unSubscribeFilterLevel != nil {
            map["UnSubscribeFilterLevel"] = self.unSubscribeFilterLevel!
        }
        if self.unSubscribeLinkType != nil {
            map["UnSubscribeLinkType"] = self.unSubscribeLinkType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AddressType") {
            self.addressType = dict["AddressType"] as! Int32
        }
        if dict.keys.contains("ClickTrace") {
            self.clickTrace = dict["ClickTrace"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ReceiversName") {
            self.receiversName = dict["ReceiversName"] as! String
        }
        if dict.keys.contains("ReplyAddress") {
            self.replyAddress = dict["ReplyAddress"] as! String
        }
        if dict.keys.contains("ReplyAddressAlias") {
            self.replyAddressAlias = dict["ReplyAddressAlias"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TagName") {
            self.tagName = dict["TagName"] as! String
        }
        if dict.keys.contains("TemplateName") {
            self.templateName = dict["TemplateName"] as! String
        }
        if dict.keys.contains("UnSubscribeFilterLevel") {
            self.unSubscribeFilterLevel = dict["UnSubscribeFilterLevel"] as! String
        }
        if dict.keys.contains("UnSubscribeLinkType") {
            self.unSubscribeLinkType = dict["UnSubscribeLinkType"] as! String
        }
    }
}

public class BatchSendMailResponseBody : Tea.TeaModel {
    public var envId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BatchSendMailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchSendMailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BatchSendMailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckDomainRequest : Tea.TeaModel {
    public var domainId: Int32?

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
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainId") {
            self.domainId = dict["DomainId"] as! Int32
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CheckDomainResponseBody : Tea.TeaModel {
    public var domainStatus: Int32?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainStatus != nil {
            map["DomainStatus"] = self.domainStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainStatus") {
            self.domainStatus = dict["DomainStatus"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckReplyToMailAddressRequest : Tea.TeaModel {
    public var lang: String?

    public var mailAddressId: Int32?

    public var ownerId: Int64?

    public var region: String?

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
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.mailAddressId != nil {
            map["MailAddressId"] = self.mailAddressId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lang") {
            self.lang = dict["Lang"] as! String
        }
        if dict.keys.contains("MailAddressId") {
            self.mailAddressId = dict["MailAddressId"] as! Int32
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CheckReplyToMailAddressResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class CheckReplyToMailAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckReplyToMailAddressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckReplyToMailAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDomainRequest : Tea.TeaModel {
    public var domainName: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CreateDomainResponseBody : Tea.TeaModel {
    public var domainId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainId") {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMailAddressRequest : Tea.TeaModel {
    public var accountName: String?

    public var ownerId: Int64?

    public var replyAddress: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sendtype: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.replyAddress != nil {
            map["ReplyAddress"] = self.replyAddress!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sendtype != nil {
            map["Sendtype"] = self.sendtype!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ReplyAddress") {
            self.replyAddress = dict["ReplyAddress"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Sendtype") {
            self.sendtype = dict["Sendtype"] as! String
        }
    }
}

public class CreateMailAddressResponseBody : Tea.TeaModel {
    public var mailAddressId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mailAddressId != nil {
            map["MailAddressId"] = self.mailAddressId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MailAddressId") {
            self.mailAddressId = dict["MailAddressId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateMailAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMailAddressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateMailAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateReceiverRequest : Tea.TeaModel {
    public var desc: String?

    public var ownerId: Int64?

    public var receiversAlias: String?

    public var receiversName: String?

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
        if self.desc != nil {
            map["Desc"] = self.desc!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.receiversAlias != nil {
            map["ReceiversAlias"] = self.receiversAlias!
        }
        if self.receiversName != nil {
            map["ReceiversName"] = self.receiversName!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Desc") {
            self.desc = dict["Desc"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ReceiversAlias") {
            self.receiversAlias = dict["ReceiversAlias"] as! String
        }
        if dict.keys.contains("ReceiversName") {
            self.receiversName = dict["ReceiversName"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CreateReceiverResponseBody : Tea.TeaModel {
    public var receiverId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.receiverId != nil {
            map["ReceiverId"] = self.receiverId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ReceiverId") {
            self.receiverId = dict["ReceiverId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateReceiverResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateReceiverResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateReceiverResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTagRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tagDescription: String?

    public var tagName: String?

    public override init() {
        super.init()
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
        if self.tagDescription != nil {
            map["TagDescription"] = self.tagDescription!
        }
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TagDescription") {
            self.tagDescription = dict["TagDescription"] as! String
        }
        if dict.keys.contains("TagName") {
            self.tagName = dict["TagName"] as! String
        }
    }
}

public class CreateTagResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var tagId: String?

    public override init() {
        super.init()
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
        if self.tagId != nil {
            map["TagId"] = self.tagId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagId") {
            self.tagId = dict["TagId"] as! String
        }
    }
}

public class CreateTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTagResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateUserSuppressionRequest : Tea.TeaModel {
    public var address: String?

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
        if self.address != nil {
            map["Address"] = self.address!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class CreateUserSuppressionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var suppressionId: String?

    public override init() {
        super.init()
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
        if self.suppressionId != nil {
            map["SuppressionId"] = self.suppressionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuppressionId") {
            self.suppressionId = dict["SuppressionId"] as! String
        }
    }
}

public class CreateUserSuppressionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUserSuppressionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateUserSuppressionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDomainRequest : Tea.TeaModel {
    public var domainId: Int32?

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
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainId") {
            self.domainId = dict["DomainId"] as! Int32
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteDomainResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteInvalidAddressRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var toAddress: String?

    public override init() {
        super.init()
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
        if self.toAddress != nil {
            map["ToAddress"] = self.toAddress!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ToAddress") {
            self.toAddress = dict["ToAddress"] as! String
        }
    }
}

public class DeleteInvalidAddressResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteInvalidAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInvalidAddressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteInvalidAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteIpfilterByEdmIdRequest : Tea.TeaModel {
    public var fromType: Int32?

    public var id: String?

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
        if self.fromType != nil {
            map["FromType"] = self.fromType!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FromType") {
            self.fromType = dict["FromType"] as! Int32
        }
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteIpfilterByEdmIdResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteIpfilterByEdmIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIpfilterByEdmIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteIpfilterByEdmIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteMailAddressRequest : Tea.TeaModel {
    public var mailAddressId: Int32?

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
        if self.mailAddressId != nil {
            map["MailAddressId"] = self.mailAddressId!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MailAddressId") {
            self.mailAddressId = dict["MailAddressId"] as! Int32
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteMailAddressResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteMailAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMailAddressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteMailAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteReceiverRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var receiverId: String?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.receiverId != nil {
            map["ReceiverId"] = self.receiverId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ReceiverId") {
            self.receiverId = dict["ReceiverId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteReceiverResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteReceiverResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteReceiverResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteReceiverResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteReceiverDetailRequest : Tea.TeaModel {
    public var email: String?

    public var ownerId: Int64?

    public var receiverId: String?

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
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.receiverId != nil {
            map["ReceiverId"] = self.receiverId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ReceiverId") {
            self.receiverId = dict["ReceiverId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DeleteReceiverDetailResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteReceiverDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteReceiverDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteReceiverDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTagRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tagId: Int32?

    public override init() {
        super.init()
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
        if self.tagId != nil {
            map["TagId"] = self.tagId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TagId") {
            self.tagId = dict["TagId"] as! Int32
        }
    }
}

public class DeleteTagResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class DeleteTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTagResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescAccountSummaryRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescAccountSummaryResponseBody : Tea.TeaModel {
    public var dailyQuota: Int32?

    public var dayuStatus: Int32?

    public var domains: Int32?

    public var enableTimes: Int32?

    public var mailAddresses: Int32?

    public var maxQuotaLevel: Int32?

    public var monthQuota: Int32?

    public var quotaLevel: Int32?

    public var receivers: Int32?

    public var remainFreeQuota: Int32?

    public var requestId: String?

    public var smsRecord: Int32?

    public var smsSign: Int32?

    public var smsTemplates: Int32?

    public var tags: Int32?

    public var templates: Int32?

    public var userStatus: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dailyQuota != nil {
            map["DailyQuota"] = self.dailyQuota!
        }
        if self.dayuStatus != nil {
            map["DayuStatus"] = self.dayuStatus!
        }
        if self.domains != nil {
            map["Domains"] = self.domains!
        }
        if self.enableTimes != nil {
            map["EnableTimes"] = self.enableTimes!
        }
        if self.mailAddresses != nil {
            map["MailAddresses"] = self.mailAddresses!
        }
        if self.maxQuotaLevel != nil {
            map["MaxQuotaLevel"] = self.maxQuotaLevel!
        }
        if self.monthQuota != nil {
            map["MonthQuota"] = self.monthQuota!
        }
        if self.quotaLevel != nil {
            map["QuotaLevel"] = self.quotaLevel!
        }
        if self.receivers != nil {
            map["Receivers"] = self.receivers!
        }
        if self.remainFreeQuota != nil {
            map["RemainFreeQuota"] = self.remainFreeQuota!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.smsRecord != nil {
            map["SmsRecord"] = self.smsRecord!
        }
        if self.smsSign != nil {
            map["SmsSign"] = self.smsSign!
        }
        if self.smsTemplates != nil {
            map["SmsTemplates"] = self.smsTemplates!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.templates != nil {
            map["Templates"] = self.templates!
        }
        if self.userStatus != nil {
            map["UserStatus"] = self.userStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DailyQuota") {
            self.dailyQuota = dict["DailyQuota"] as! Int32
        }
        if dict.keys.contains("DayuStatus") {
            self.dayuStatus = dict["DayuStatus"] as! Int32
        }
        if dict.keys.contains("Domains") {
            self.domains = dict["Domains"] as! Int32
        }
        if dict.keys.contains("EnableTimes") {
            self.enableTimes = dict["EnableTimes"] as! Int32
        }
        if dict.keys.contains("MailAddresses") {
            self.mailAddresses = dict["MailAddresses"] as! Int32
        }
        if dict.keys.contains("MaxQuotaLevel") {
            self.maxQuotaLevel = dict["MaxQuotaLevel"] as! Int32
        }
        if dict.keys.contains("MonthQuota") {
            self.monthQuota = dict["MonthQuota"] as! Int32
        }
        if dict.keys.contains("QuotaLevel") {
            self.quotaLevel = dict["QuotaLevel"] as! Int32
        }
        if dict.keys.contains("Receivers") {
            self.receivers = dict["Receivers"] as! Int32
        }
        if dict.keys.contains("RemainFreeQuota") {
            self.remainFreeQuota = dict["RemainFreeQuota"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SmsRecord") {
            self.smsRecord = dict["SmsRecord"] as! Int32
        }
        if dict.keys.contains("SmsSign") {
            self.smsSign = dict["SmsSign"] as! Int32
        }
        if dict.keys.contains("SmsTemplates") {
            self.smsTemplates = dict["SmsTemplates"] as! Int32
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! Int32
        }
        if dict.keys.contains("Templates") {
            self.templates = dict["Templates"] as! Int32
        }
        if dict.keys.contains("UserStatus") {
            self.userStatus = dict["UserStatus"] as! Int32
        }
    }
}

public class DescAccountSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescAccountSummaryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescAccountSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescDomainRequest : Tea.TeaModel {
    public var domainId: Int32?

    public var ownerId: Int64?

    public var requireRealTimeDnsRecords: Bool?

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
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.requireRealTimeDnsRecords != nil {
            map["RequireRealTimeDnsRecords"] = self.requireRealTimeDnsRecords!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainId") {
            self.domainId = dict["DomainId"] as! Int32
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RequireRealTimeDnsRecords") {
            self.requireRealTimeDnsRecords = dict["RequireRealTimeDnsRecords"] as! Bool
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescDomainResponseBody : Tea.TeaModel {
    public var cnameAuthStatus: String?

    public var cnameConfirmStatus: String?

    public var cnameRecord: String?

    public var createTime: String?

    public var defaultDomain: String?

    public var dkimAuthStatus: String?

    public var dkimPublicKey: String?

    public var dkimRR: String?

    public var dmarcAuthStatus: Int32?

    public var dmarcHostRecord: String?

    public var dmarcRecord: String?

    public var dnsDmarc: String?

    public var dnsMx: String?

    public var dnsSpf: String?

    public var dnsTxt: String?

    public var domainId: String?

    public var domainName: String?

    public var domainStatus: String?

    public var domainType: String?

    public var hostRecord: String?

    public var icpStatus: String?

    public var mxAuthStatus: String?

    public var mxRecord: String?

    public var requestId: String?

    public var spfAuthStatus: String?

    public var spfRecord: String?

    public var spfRecordV2: String?

    public var tlDomainName: String?

    public var tracefRecord: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cnameAuthStatus != nil {
            map["CnameAuthStatus"] = self.cnameAuthStatus!
        }
        if self.cnameConfirmStatus != nil {
            map["CnameConfirmStatus"] = self.cnameConfirmStatus!
        }
        if self.cnameRecord != nil {
            map["CnameRecord"] = self.cnameRecord!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.defaultDomain != nil {
            map["DefaultDomain"] = self.defaultDomain!
        }
        if self.dkimAuthStatus != nil {
            map["DkimAuthStatus"] = self.dkimAuthStatus!
        }
        if self.dkimPublicKey != nil {
            map["DkimPublicKey"] = self.dkimPublicKey!
        }
        if self.dkimRR != nil {
            map["DkimRR"] = self.dkimRR!
        }
        if self.dmarcAuthStatus != nil {
            map["DmarcAuthStatus"] = self.dmarcAuthStatus!
        }
        if self.dmarcHostRecord != nil {
            map["DmarcHostRecord"] = self.dmarcHostRecord!
        }
        if self.dmarcRecord != nil {
            map["DmarcRecord"] = self.dmarcRecord!
        }
        if self.dnsDmarc != nil {
            map["DnsDmarc"] = self.dnsDmarc!
        }
        if self.dnsMx != nil {
            map["DnsMx"] = self.dnsMx!
        }
        if self.dnsSpf != nil {
            map["DnsSpf"] = self.dnsSpf!
        }
        if self.dnsTxt != nil {
            map["DnsTxt"] = self.dnsTxt!
        }
        if self.domainId != nil {
            map["DomainId"] = self.domainId!
        }
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.domainStatus != nil {
            map["DomainStatus"] = self.domainStatus!
        }
        if self.domainType != nil {
            map["DomainType"] = self.domainType!
        }
        if self.hostRecord != nil {
            map["HostRecord"] = self.hostRecord!
        }
        if self.icpStatus != nil {
            map["IcpStatus"] = self.icpStatus!
        }
        if self.mxAuthStatus != nil {
            map["MxAuthStatus"] = self.mxAuthStatus!
        }
        if self.mxRecord != nil {
            map["MxRecord"] = self.mxRecord!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.spfAuthStatus != nil {
            map["SpfAuthStatus"] = self.spfAuthStatus!
        }
        if self.spfRecord != nil {
            map["SpfRecord"] = self.spfRecord!
        }
        if self.spfRecordV2 != nil {
            map["SpfRecordV2"] = self.spfRecordV2!
        }
        if self.tlDomainName != nil {
            map["TlDomainName"] = self.tlDomainName!
        }
        if self.tracefRecord != nil {
            map["TracefRecord"] = self.tracefRecord!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CnameAuthStatus") {
            self.cnameAuthStatus = dict["CnameAuthStatus"] as! String
        }
        if dict.keys.contains("CnameConfirmStatus") {
            self.cnameConfirmStatus = dict["CnameConfirmStatus"] as! String
        }
        if dict.keys.contains("CnameRecord") {
            self.cnameRecord = dict["CnameRecord"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("DefaultDomain") {
            self.defaultDomain = dict["DefaultDomain"] as! String
        }
        if dict.keys.contains("DkimAuthStatus") {
            self.dkimAuthStatus = dict["DkimAuthStatus"] as! String
        }
        if dict.keys.contains("DkimPublicKey") {
            self.dkimPublicKey = dict["DkimPublicKey"] as! String
        }
        if dict.keys.contains("DkimRR") {
            self.dkimRR = dict["DkimRR"] as! String
        }
        if dict.keys.contains("DmarcAuthStatus") {
            self.dmarcAuthStatus = dict["DmarcAuthStatus"] as! Int32
        }
        if dict.keys.contains("DmarcHostRecord") {
            self.dmarcHostRecord = dict["DmarcHostRecord"] as! String
        }
        if dict.keys.contains("DmarcRecord") {
            self.dmarcRecord = dict["DmarcRecord"] as! String
        }
        if dict.keys.contains("DnsDmarc") {
            self.dnsDmarc = dict["DnsDmarc"] as! String
        }
        if dict.keys.contains("DnsMx") {
            self.dnsMx = dict["DnsMx"] as! String
        }
        if dict.keys.contains("DnsSpf") {
            self.dnsSpf = dict["DnsSpf"] as! String
        }
        if dict.keys.contains("DnsTxt") {
            self.dnsTxt = dict["DnsTxt"] as! String
        }
        if dict.keys.contains("DomainId") {
            self.domainId = dict["DomainId"] as! String
        }
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("DomainStatus") {
            self.domainStatus = dict["DomainStatus"] as! String
        }
        if dict.keys.contains("DomainType") {
            self.domainType = dict["DomainType"] as! String
        }
        if dict.keys.contains("HostRecord") {
            self.hostRecord = dict["HostRecord"] as! String
        }
        if dict.keys.contains("IcpStatus") {
            self.icpStatus = dict["IcpStatus"] as! String
        }
        if dict.keys.contains("MxAuthStatus") {
            self.mxAuthStatus = dict["MxAuthStatus"] as! String
        }
        if dict.keys.contains("MxRecord") {
            self.mxRecord = dict["MxRecord"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SpfAuthStatus") {
            self.spfAuthStatus = dict["SpfAuthStatus"] as! String
        }
        if dict.keys.contains("SpfRecord") {
            self.spfRecord = dict["SpfRecord"] as! String
        }
        if dict.keys.contains("SpfRecordV2") {
            self.spfRecordV2 = dict["SpfRecordV2"] as! String
        }
        if dict.keys.contains("TlDomainName") {
            self.tlDomainName = dict["TlDomainName"] as! String
        }
        if dict.keys.contains("TracefRecord") {
            self.tracefRecord = dict["TracefRecord"] as! String
        }
    }
}

public class DescDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetIpProtectionRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class GetIpProtectionResponseBody : Tea.TeaModel {
    public var ipProtection: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipProtection != nil {
            map["IpProtection"] = self.ipProtection!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpProtection") {
            self.ipProtection = dict["IpProtection"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetIpProtectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIpProtectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetIpProtectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetIpfilterListRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class GetIpfilterListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Ipfilters : Tea.TeaModel {
            public var createTime: String?

            public var id: String?

            public var ipAddress: String?

            public override init() {
                super.init()
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
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.ipAddress != nil {
                    map["IpAddress"] = self.ipAddress!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("IpAddress") {
                    self.ipAddress = dict["IpAddress"] as! String
                }
            }
        }
        public var ipfilters: [GetIpfilterListResponseBody.Data.Ipfilters]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ipfilters != nil {
                var tmp : [Any] = []
                for k in self.ipfilters! {
                    tmp.append(k.toMap())
                }
                map["ipfilters"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ipfilters") {
                var tmp : [GetIpfilterListResponseBody.Data.Ipfilters] = []
                for v in dict["ipfilters"] as! [Any] {
                    var model = GetIpfilterListResponseBody.Data.Ipfilters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ipfilters = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var data: GetIpfilterListResponseBody.Data?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("data") {
            var model = GetIpfilterListResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
    }
}

public class GetIpfilterListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIpfilterListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetIpfilterListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSuppressionListLevelRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class GetSuppressionListLevelResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var suppressionListLevel: String?

    public override init() {
        super.init()
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
        if self.suppressionListLevel != nil {
            map["SuppressionListLevel"] = self.suppressionListLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuppressionListLevel") {
            self.suppressionListLevel = dict["SuppressionListLevel"] as! String
        }
    }
}

public class GetSuppressionListLevelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSuppressionListLevelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSuppressionListLevelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTrackListRequest : Tea.TeaModel {
    public var endTime: String?

    public var offset: String?

    public var offsetCreateTime: String?

    public var offsetCreateTimeDesc: String?

    public var ownerId: Int64?

    public var pageNumber: String?

    public var pageSize: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var startTime: String?

    public var total: String?

    public override init() {
        super.init()
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
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.offsetCreateTime != nil {
            map["OffsetCreateTime"] = self.offsetCreateTime!
        }
        if self.offsetCreateTimeDesc != nil {
            map["OffsetCreateTimeDesc"] = self.offsetCreateTimeDesc!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Offset") {
            self.offset = dict["Offset"] as! String
        }
        if dict.keys.contains("OffsetCreateTime") {
            self.offsetCreateTime = dict["OffsetCreateTime"] as! String
        }
        if dict.keys.contains("OffsetCreateTimeDesc") {
            self.offsetCreateTimeDesc = dict["OffsetCreateTimeDesc"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! String
        }
    }
}

public class GetTrackListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Stat : Tea.TeaModel {
            public var createTime: String?

            public var rcptClickCount: String?

            public var rcptClickRate: String?

            public var rcptOpenCount: String?

            public var rcptOpenRate: String?

            public var rcptUniqueClickCount: String?

            public var rcptUniqueClickRate: String?

            public var rcptUniqueOpenCount: String?

            public var rcptUniqueOpenRate: String?

            public var totalNumber: String?

            public override init() {
                super.init()
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
                if self.rcptClickCount != nil {
                    map["RcptClickCount"] = self.rcptClickCount!
                }
                if self.rcptClickRate != nil {
                    map["RcptClickRate"] = self.rcptClickRate!
                }
                if self.rcptOpenCount != nil {
                    map["RcptOpenCount"] = self.rcptOpenCount!
                }
                if self.rcptOpenRate != nil {
                    map["RcptOpenRate"] = self.rcptOpenRate!
                }
                if self.rcptUniqueClickCount != nil {
                    map["RcptUniqueClickCount"] = self.rcptUniqueClickCount!
                }
                if self.rcptUniqueClickRate != nil {
                    map["RcptUniqueClickRate"] = self.rcptUniqueClickRate!
                }
                if self.rcptUniqueOpenCount != nil {
                    map["RcptUniqueOpenCount"] = self.rcptUniqueOpenCount!
                }
                if self.rcptUniqueOpenRate != nil {
                    map["RcptUniqueOpenRate"] = self.rcptUniqueOpenRate!
                }
                if self.totalNumber != nil {
                    map["TotalNumber"] = self.totalNumber!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("RcptClickCount") {
                    self.rcptClickCount = dict["RcptClickCount"] as! String
                }
                if dict.keys.contains("RcptClickRate") {
                    self.rcptClickRate = dict["RcptClickRate"] as! String
                }
                if dict.keys.contains("RcptOpenCount") {
                    self.rcptOpenCount = dict["RcptOpenCount"] as! String
                }
                if dict.keys.contains("RcptOpenRate") {
                    self.rcptOpenRate = dict["RcptOpenRate"] as! String
                }
                if dict.keys.contains("RcptUniqueClickCount") {
                    self.rcptUniqueClickCount = dict["RcptUniqueClickCount"] as! String
                }
                if dict.keys.contains("RcptUniqueClickRate") {
                    self.rcptUniqueClickRate = dict["RcptUniqueClickRate"] as! String
                }
                if dict.keys.contains("RcptUniqueOpenCount") {
                    self.rcptUniqueOpenCount = dict["RcptUniqueOpenCount"] as! String
                }
                if dict.keys.contains("RcptUniqueOpenRate") {
                    self.rcptUniqueOpenRate = dict["RcptUniqueOpenRate"] as! String
                }
                if dict.keys.contains("TotalNumber") {
                    self.totalNumber = dict["TotalNumber"] as! String
                }
            }
        }
        public var stat: [GetTrackListResponseBody.Data.Stat]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.stat != nil {
                var tmp : [Any] = []
                for k in self.stat! {
                    tmp.append(k.toMap())
                }
                map["stat"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("stat") {
                var tmp : [GetTrackListResponseBody.Data.Stat] = []
                for v in dict["stat"] as! [Any] {
                    var model = GetTrackListResponseBody.Data.Stat()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.stat = tmp
            }
        }
    }
    public var offsetCreateTime: String?

    public var offsetCreateTimeDesc: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var total: Int32?

    public var data: GetTrackListResponseBody.Data?

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
        if self.offsetCreateTime != nil {
            map["OffsetCreateTime"] = self.offsetCreateTime!
        }
        if self.offsetCreateTimeDesc != nil {
            map["OffsetCreateTimeDesc"] = self.offsetCreateTimeDesc!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OffsetCreateTime") {
            self.offsetCreateTime = dict["OffsetCreateTime"] as! String
        }
        if dict.keys.contains("OffsetCreateTimeDesc") {
            self.offsetCreateTimeDesc = dict["OffsetCreateTimeDesc"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
        }
        if dict.keys.contains("data") {
            var model = GetTrackListResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
    }
}

public class GetTrackListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTrackListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTrackListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTrackListByMailFromAndTagNameRequest : Tea.TeaModel {
    public var accountName: String?

    public var endTime: String?

    public var offset: String?

    public var offsetCreateTime: String?

    public var offsetCreateTimeDesc: String?

    public var ownerId: Int64?

    public var pageNumber: String?

    public var pageSize: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var startTime: String?

    public var tagName: String?

    public var total: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.offsetCreateTime != nil {
            map["OffsetCreateTime"] = self.offsetCreateTime!
        }
        if self.offsetCreateTimeDesc != nil {
            map["OffsetCreateTimeDesc"] = self.offsetCreateTimeDesc!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Offset") {
            self.offset = dict["Offset"] as! String
        }
        if dict.keys.contains("OffsetCreateTime") {
            self.offsetCreateTime = dict["OffsetCreateTime"] as! String
        }
        if dict.keys.contains("OffsetCreateTimeDesc") {
            self.offsetCreateTimeDesc = dict["OffsetCreateTimeDesc"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TagName") {
            self.tagName = dict["TagName"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! String
        }
    }
}

public class GetTrackListByMailFromAndTagNameResponseBody : Tea.TeaModel {
    public class TrackList : Tea.TeaModel {
        public class Stat : Tea.TeaModel {
            public var createTime: String?

            public var rcptClickCount: String?

            public var rcptClickRate: String?

            public var rcptOpenCount: String?

            public var rcptOpenRate: String?

            public var rcptUniqueClickCount: String?

            public var rcptUniqueClickRate: String?

            public var rcptUniqueOpenCount: String?

            public var rcptUniqueOpenRate: String?

            public var totalNumber: String?

            public override init() {
                super.init()
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
                if self.rcptClickCount != nil {
                    map["RcptClickCount"] = self.rcptClickCount!
                }
                if self.rcptClickRate != nil {
                    map["RcptClickRate"] = self.rcptClickRate!
                }
                if self.rcptOpenCount != nil {
                    map["RcptOpenCount"] = self.rcptOpenCount!
                }
                if self.rcptOpenRate != nil {
                    map["RcptOpenRate"] = self.rcptOpenRate!
                }
                if self.rcptUniqueClickCount != nil {
                    map["RcptUniqueClickCount"] = self.rcptUniqueClickCount!
                }
                if self.rcptUniqueClickRate != nil {
                    map["RcptUniqueClickRate"] = self.rcptUniqueClickRate!
                }
                if self.rcptUniqueOpenCount != nil {
                    map["RcptUniqueOpenCount"] = self.rcptUniqueOpenCount!
                }
                if self.rcptUniqueOpenRate != nil {
                    map["RcptUniqueOpenRate"] = self.rcptUniqueOpenRate!
                }
                if self.totalNumber != nil {
                    map["TotalNumber"] = self.totalNumber!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("RcptClickCount") {
                    self.rcptClickCount = dict["RcptClickCount"] as! String
                }
                if dict.keys.contains("RcptClickRate") {
                    self.rcptClickRate = dict["RcptClickRate"] as! String
                }
                if dict.keys.contains("RcptOpenCount") {
                    self.rcptOpenCount = dict["RcptOpenCount"] as! String
                }
                if dict.keys.contains("RcptOpenRate") {
                    self.rcptOpenRate = dict["RcptOpenRate"] as! String
                }
                if dict.keys.contains("RcptUniqueClickCount") {
                    self.rcptUniqueClickCount = dict["RcptUniqueClickCount"] as! String
                }
                if dict.keys.contains("RcptUniqueClickRate") {
                    self.rcptUniqueClickRate = dict["RcptUniqueClickRate"] as! String
                }
                if dict.keys.contains("RcptUniqueOpenCount") {
                    self.rcptUniqueOpenCount = dict["RcptUniqueOpenCount"] as! String
                }
                if dict.keys.contains("RcptUniqueOpenRate") {
                    self.rcptUniqueOpenRate = dict["RcptUniqueOpenRate"] as! String
                }
                if dict.keys.contains("TotalNumber") {
                    self.totalNumber = dict["TotalNumber"] as! String
                }
            }
        }
        public var stat: [GetTrackListByMailFromAndTagNameResponseBody.TrackList.Stat]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.stat != nil {
                var tmp : [Any] = []
                for k in self.stat! {
                    tmp.append(k.toMap())
                }
                map["Stat"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Stat") {
                var tmp : [GetTrackListByMailFromAndTagNameResponseBody.TrackList.Stat] = []
                for v in dict["Stat"] as! [Any] {
                    var model = GetTrackListByMailFromAndTagNameResponseBody.TrackList.Stat()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.stat = tmp
            }
        }
    }
    public var offsetCreateTime: String?

    public var offsetCreateTimeDesc: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var total: Int32?

    public var trackList: GetTrackListByMailFromAndTagNameResponseBody.TrackList?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.trackList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.offsetCreateTime != nil {
            map["OffsetCreateTime"] = self.offsetCreateTime!
        }
        if self.offsetCreateTimeDesc != nil {
            map["OffsetCreateTimeDesc"] = self.offsetCreateTimeDesc!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        if self.trackList != nil {
            map["TrackList"] = self.trackList?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OffsetCreateTime") {
            self.offsetCreateTime = dict["OffsetCreateTime"] as! String
        }
        if dict.keys.contains("OffsetCreateTimeDesc") {
            self.offsetCreateTimeDesc = dict["OffsetCreateTimeDesc"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") {
            self.total = dict["Total"] as! Int32
        }
        if dict.keys.contains("TrackList") {
            var model = GetTrackListByMailFromAndTagNameResponseBody.TrackList()
            model.fromMap(dict["TrackList"] as! [String: Any])
            self.trackList = model
        }
    }
}

public class GetTrackListByMailFromAndTagNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTrackListByMailFromAndTagNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTrackListByMailFromAndTagNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var enableEventbridge: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableEventbridge != nil {
                map["EnableEventbridge"] = self.enableEventbridge!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnableEventbridge") {
                self.enableEventbridge = dict["EnableEventbridge"] as! Bool
            }
        }
    }
    public var data: GetUserResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = GetUserResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserSuppressionRequest : Tea.TeaModel {
    public var address: String?

    public var endBounceTime: Int32?

    public var endCreateTime: Int32?

    public var ownerId: Int64?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var startBounceTime: Int32?

    public var startCreateTime: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.endBounceTime != nil {
            map["EndBounceTime"] = self.endBounceTime!
        }
        if self.endCreateTime != nil {
            map["EndCreateTime"] = self.endCreateTime!
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
        if self.startBounceTime != nil {
            map["StartBounceTime"] = self.startBounceTime!
        }
        if self.startCreateTime != nil {
            map["StartCreateTime"] = self.startCreateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("EndBounceTime") {
            self.endBounceTime = dict["EndBounceTime"] as! Int32
        }
        if dict.keys.contains("EndCreateTime") {
            self.endCreateTime = dict["EndCreateTime"] as! Int32
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartBounceTime") {
            self.startBounceTime = dict["StartBounceTime"] as! Int32
        }
        if dict.keys.contains("StartCreateTime") {
            self.startCreateTime = dict["StartCreateTime"] as! Int32
        }
    }
}

public class ListUserSuppressionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class UserSuppressions : Tea.TeaModel {
            public var address: String?

            public var createTime: Int32?

            public var lastBounceTime: Int32?

            public var suppressionId: Int32?

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
                if self.address != nil {
                    map["Address"] = self.address!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.lastBounceTime != nil {
                    map["LastBounceTime"] = self.lastBounceTime!
                }
                if self.suppressionId != nil {
                    map["SuppressionId"] = self.suppressionId!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Address") {
                    self.address = dict["Address"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int32
                }
                if dict.keys.contains("LastBounceTime") {
                    self.lastBounceTime = dict["LastBounceTime"] as! Int32
                }
                if dict.keys.contains("SuppressionId") {
                    self.suppressionId = dict["SuppressionId"] as! Int32
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var userSuppressions: [ListUserSuppressionResponseBody.Data.UserSuppressions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.userSuppressions != nil {
                var tmp : [Any] = []
                for k in self.userSuppressions! {
                    tmp.append(k.toMap())
                }
                map["UserSuppressions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserSuppressions") {
                var tmp : [ListUserSuppressionResponseBody.Data.UserSuppressions] = []
                for v in dict["UserSuppressions"] as! [Any] {
                    var model = ListUserSuppressionResponseBody.Data.UserSuppressions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.userSuppressions = tmp
            }
        }
    }
    public var data: ListUserSuppressionResponseBody.Data?

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
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if dict.keys.contains("Data") {
            var model = ListUserSuppressionResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListUserSuppressionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserSuppressionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUserSuppressionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyMailAddressRequest : Tea.TeaModel {
    public var mailAddressId: Int32?

    public var ownerId: Int64?

    public var password: String?

    public var replyAddress: String?

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
        if self.mailAddressId != nil {
            map["MailAddressId"] = self.mailAddressId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.replyAddress != nil {
            map["ReplyAddress"] = self.replyAddress!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MailAddressId") {
            self.mailAddressId = dict["MailAddressId"] as! Int32
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("ReplyAddress") {
            self.replyAddress = dict["ReplyAddress"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ModifyMailAddressResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyMailAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyMailAddressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyMailAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyPWByDomainRequest : Tea.TeaModel {
    public var domainName: String?

    public var ownerId: Int64?

    public var password: String?

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
        if self.domainName != nil {
            map["DomainName"] = self.domainName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainName") {
            self.domainName = dict["DomainName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ModifyPWByDomainResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ModifyPWByDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPWByDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyPWByDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyTagRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tagDescription: String?

    public var tagId: Int32?

    public var tagName: String?

    public override init() {
        super.init()
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
        if self.tagDescription != nil {
            map["TagDescription"] = self.tagDescription!
        }
        if self.tagId != nil {
            map["TagId"] = self.tagId!
        }
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TagDescription") {
            self.tagDescription = dict["TagDescription"] as! String
        }
        if dict.keys.contains("TagId") {
            self.tagId = dict["TagId"] as! Int32
        }
        if dict.keys.contains("TagName") {
            self.tagName = dict["TagName"] as! String
        }
    }
}

public class ModifyTagResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class ModifyTagResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyTagResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyTagResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryDomainByParamRequest : Tea.TeaModel {
    public var keyWord: String?

    public var ownerId: Int64?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var status: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyWord != nil {
            map["KeyWord"] = self.keyWord!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyWord") {
            self.keyWord = dict["KeyWord"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class QueryDomainByParamResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Domain : Tea.TeaModel {
            public var cnameAuthStatus: String?

            public var confirmStatus: String?

            public var createTime: String?

            public var domainId: String?

            public var domainName: String?

            public var domainRecord: String?

            public var domainStatus: String?

            public var icpStatus: String?

            public var mxAuthStatus: String?

            public var spfAuthStatus: String?

            public var utcCreateTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cnameAuthStatus != nil {
                    map["CnameAuthStatus"] = self.cnameAuthStatus!
                }
                if self.confirmStatus != nil {
                    map["ConfirmStatus"] = self.confirmStatus!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.domainId != nil {
                    map["DomainId"] = self.domainId!
                }
                if self.domainName != nil {
                    map["DomainName"] = self.domainName!
                }
                if self.domainRecord != nil {
                    map["DomainRecord"] = self.domainRecord!
                }
                if self.domainStatus != nil {
                    map["DomainStatus"] = self.domainStatus!
                }
                if self.icpStatus != nil {
                    map["IcpStatus"] = self.icpStatus!
                }
                if self.mxAuthStatus != nil {
                    map["MxAuthStatus"] = self.mxAuthStatus!
                }
                if self.spfAuthStatus != nil {
                    map["SpfAuthStatus"] = self.spfAuthStatus!
                }
                if self.utcCreateTime != nil {
                    map["UtcCreateTime"] = self.utcCreateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CnameAuthStatus") {
                    self.cnameAuthStatus = dict["CnameAuthStatus"] as! String
                }
                if dict.keys.contains("ConfirmStatus") {
                    self.confirmStatus = dict["ConfirmStatus"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DomainId") {
                    self.domainId = dict["DomainId"] as! String
                }
                if dict.keys.contains("DomainName") {
                    self.domainName = dict["DomainName"] as! String
                }
                if dict.keys.contains("DomainRecord") {
                    self.domainRecord = dict["DomainRecord"] as! String
                }
                if dict.keys.contains("DomainStatus") {
                    self.domainStatus = dict["DomainStatus"] as! String
                }
                if dict.keys.contains("IcpStatus") {
                    self.icpStatus = dict["IcpStatus"] as! String
                }
                if dict.keys.contains("MxAuthStatus") {
                    self.mxAuthStatus = dict["MxAuthStatus"] as! String
                }
                if dict.keys.contains("SpfAuthStatus") {
                    self.spfAuthStatus = dict["SpfAuthStatus"] as! String
                }
                if dict.keys.contains("UtcCreateTime") {
                    self.utcCreateTime = dict["UtcCreateTime"] as! Int64
                }
            }
        }
        public var domain: [QueryDomainByParamResponseBody.Data.Domain]?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.domain! {
                    tmp.append(k.toMap())
                }
                map["domain"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("domain") {
                var tmp : [QueryDomainByParamResponseBody.Data.Domain] = []
                for v in dict["domain"] as! [Any] {
                    var model = QueryDomainByParamResponseBody.Data.Domain()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.domain = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var data: QueryDomainByParamResponseBody.Data?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("data") {
            var model = QueryDomainByParamResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
    }
}

public class QueryDomainByParamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDomainByParamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryDomainByParamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryInvalidAddressRequest : Tea.TeaModel {
    public var endTime: String?

    public var keyWord: String?

    public var length: Int32?

    public var nextStart: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var startTime: String?

    public override init() {
        super.init()
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
        if self.keyWord != nil {
            map["KeyWord"] = self.keyWord!
        }
        if self.length != nil {
            map["Length"] = self.length!
        }
        if self.nextStart != nil {
            map["NextStart"] = self.nextStart!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("KeyWord") {
            self.keyWord = dict["KeyWord"] as! String
        }
        if dict.keys.contains("Length") {
            self.length = dict["Length"] as! Int32
        }
        if dict.keys.contains("NextStart") {
            self.nextStart = dict["NextStart"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class QueryInvalidAddressResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class MailDetail : Tea.TeaModel {
            public var lastUpdateTime: String?

            public var toAddress: String?

            public var utcLastUpdateTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.lastUpdateTime != nil {
                    map["LastUpdateTime"] = self.lastUpdateTime!
                }
                if self.toAddress != nil {
                    map["ToAddress"] = self.toAddress!
                }
                if self.utcLastUpdateTime != nil {
                    map["UtcLastUpdateTime"] = self.utcLastUpdateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LastUpdateTime") {
                    self.lastUpdateTime = dict["LastUpdateTime"] as! String
                }
                if dict.keys.contains("ToAddress") {
                    self.toAddress = dict["ToAddress"] as! String
                }
                if dict.keys.contains("UtcLastUpdateTime") {
                    self.utcLastUpdateTime = dict["UtcLastUpdateTime"] as! Int64
                }
            }
        }
        public var mailDetail: [QueryInvalidAddressResponseBody.Data.MailDetail]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mailDetail != nil {
                var tmp : [Any] = []
                for k in self.mailDetail! {
                    tmp.append(k.toMap())
                }
                map["mailDetail"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("mailDetail") {
                var tmp : [QueryInvalidAddressResponseBody.Data.MailDetail] = []
                for v in dict["mailDetail"] as! [Any] {
                    var model = QueryInvalidAddressResponseBody.Data.MailDetail()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.mailDetail = tmp
            }
        }
    }
    public var nextStart: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var data: QueryInvalidAddressResponseBody.Data?

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
        if self.nextStart != nil {
            map["NextStart"] = self.nextStart!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextStart") {
            self.nextStart = dict["NextStart"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("data") {
            var model = QueryInvalidAddressResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
    }
}

public class QueryInvalidAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryInvalidAddressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryInvalidAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryMailAddressByParamRequest : Tea.TeaModel {
    public var keyWord: String?

    public var ownerId: Int64?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sendtype: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyWord != nil {
            map["KeyWord"] = self.keyWord!
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
        if self.sendtype != nil {
            map["Sendtype"] = self.sendtype!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyWord") {
            self.keyWord = dict["KeyWord"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Sendtype") {
            self.sendtype = dict["Sendtype"] as! String
        }
    }
}

public class QueryMailAddressByParamResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class MailAddress : Tea.TeaModel {
            public var accountName: String?

            public var accountStatus: String?

            public var createTime: String?

            public var dailyCount: String?

            public var dailyReqCount: String?

            public var domainStatus: String?

            public var mailAddressId: String?

            public var monthCount: String?

            public var monthReqCount: String?

            public var replyAddress: String?

            public var replyStatus: String?

            public var sendtype: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountName != nil {
                    map["AccountName"] = self.accountName!
                }
                if self.accountStatus != nil {
                    map["AccountStatus"] = self.accountStatus!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dailyCount != nil {
                    map["DailyCount"] = self.dailyCount!
                }
                if self.dailyReqCount != nil {
                    map["DailyReqCount"] = self.dailyReqCount!
                }
                if self.domainStatus != nil {
                    map["DomainStatus"] = self.domainStatus!
                }
                if self.mailAddressId != nil {
                    map["MailAddressId"] = self.mailAddressId!
                }
                if self.monthCount != nil {
                    map["MonthCount"] = self.monthCount!
                }
                if self.monthReqCount != nil {
                    map["MonthReqCount"] = self.monthReqCount!
                }
                if self.replyAddress != nil {
                    map["ReplyAddress"] = self.replyAddress!
                }
                if self.replyStatus != nil {
                    map["ReplyStatus"] = self.replyStatus!
                }
                if self.sendtype != nil {
                    map["Sendtype"] = self.sendtype!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountName") {
                    self.accountName = dict["AccountName"] as! String
                }
                if dict.keys.contains("AccountStatus") {
                    self.accountStatus = dict["AccountStatus"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DailyCount") {
                    self.dailyCount = dict["DailyCount"] as! String
                }
                if dict.keys.contains("DailyReqCount") {
                    self.dailyReqCount = dict["DailyReqCount"] as! String
                }
                if dict.keys.contains("DomainStatus") {
                    self.domainStatus = dict["DomainStatus"] as! String
                }
                if dict.keys.contains("MailAddressId") {
                    self.mailAddressId = dict["MailAddressId"] as! String
                }
                if dict.keys.contains("MonthCount") {
                    self.monthCount = dict["MonthCount"] as! String
                }
                if dict.keys.contains("MonthReqCount") {
                    self.monthReqCount = dict["MonthReqCount"] as! String
                }
                if dict.keys.contains("ReplyAddress") {
                    self.replyAddress = dict["ReplyAddress"] as! String
                }
                if dict.keys.contains("ReplyStatus") {
                    self.replyStatus = dict["ReplyStatus"] as! String
                }
                if dict.keys.contains("Sendtype") {
                    self.sendtype = dict["Sendtype"] as! String
                }
            }
        }
        public var mailAddress: [QueryMailAddressByParamResponseBody.Data.MailAddress]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mailAddress != nil {
                var tmp : [Any] = []
                for k in self.mailAddress! {
                    tmp.append(k.toMap())
                }
                map["mailAddress"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("mailAddress") {
                var tmp : [QueryMailAddressByParamResponseBody.Data.MailAddress] = []
                for v in dict["mailAddress"] as! [Any] {
                    var model = QueryMailAddressByParamResponseBody.Data.MailAddress()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.mailAddress = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var data: QueryMailAddressByParamResponseBody.Data?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("data") {
            var model = QueryMailAddressByParamResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
    }
}

public class QueryMailAddressByParamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryMailAddressByParamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryMailAddressByParamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryReceiverByParamRequest : Tea.TeaModel {
    public var keyWord: String?

    public var ownerId: Int64?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var status: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyWord != nil {
            map["KeyWord"] = self.keyWord!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyWord") {
            self.keyWord = dict["KeyWord"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class QueryReceiverByParamResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Receiver : Tea.TeaModel {
            public var count: String?

            public var createTime: String?

            public var desc: String?

            public var receiverId: String?

            public var receiversAlias: String?

            public var receiversName: String?

            public var receiversStatus: String?

            public var utcCreateTime: Int64?

            public override init() {
                super.init()
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
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.desc != nil {
                    map["Desc"] = self.desc!
                }
                if self.receiverId != nil {
                    map["ReceiverId"] = self.receiverId!
                }
                if self.receiversAlias != nil {
                    map["ReceiversAlias"] = self.receiversAlias!
                }
                if self.receiversName != nil {
                    map["ReceiversName"] = self.receiversName!
                }
                if self.receiversStatus != nil {
                    map["ReceiversStatus"] = self.receiversStatus!
                }
                if self.utcCreateTime != nil {
                    map["UtcCreateTime"] = self.utcCreateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Desc") {
                    self.desc = dict["Desc"] as! String
                }
                if dict.keys.contains("ReceiverId") {
                    self.receiverId = dict["ReceiverId"] as! String
                }
                if dict.keys.contains("ReceiversAlias") {
                    self.receiversAlias = dict["ReceiversAlias"] as! String
                }
                if dict.keys.contains("ReceiversName") {
                    self.receiversName = dict["ReceiversName"] as! String
                }
                if dict.keys.contains("ReceiversStatus") {
                    self.receiversStatus = dict["ReceiversStatus"] as! String
                }
                if dict.keys.contains("UtcCreateTime") {
                    self.utcCreateTime = dict["UtcCreateTime"] as! Int64
                }
            }
        }
        public var receiver: [QueryReceiverByParamResponseBody.Data.Receiver]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.receiver != nil {
                var tmp : [Any] = []
                for k in self.receiver! {
                    tmp.append(k.toMap())
                }
                map["receiver"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("receiver") {
                var tmp : [QueryReceiverByParamResponseBody.Data.Receiver] = []
                for v in dict["receiver"] as! [Any] {
                    var model = QueryReceiverByParamResponseBody.Data.Receiver()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.receiver = tmp
            }
        }
    }
    public var nextStart: String?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var data: QueryReceiverByParamResponseBody.Data?

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
        if self.nextStart != nil {
            map["NextStart"] = self.nextStart!
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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextStart") {
            self.nextStart = dict["NextStart"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("data") {
            var model = QueryReceiverByParamResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
    }
}

public class QueryReceiverByParamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryReceiverByParamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryReceiverByParamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryReceiverDetailRequest : Tea.TeaModel {
    public var keyWord: String?

    public var nextStart: String?

    public var ownerId: Int64?

    public var pageSize: Int32?

    public var receiverId: String?

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
        if self.keyWord != nil {
            map["KeyWord"] = self.keyWord!
        }
        if self.nextStart != nil {
            map["NextStart"] = self.nextStart!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.receiverId != nil {
            map["ReceiverId"] = self.receiverId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyWord") {
            self.keyWord = dict["KeyWord"] as! String
        }
        if dict.keys.contains("NextStart") {
            self.nextStart = dict["NextStart"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ReceiverId") {
            self.receiverId = dict["ReceiverId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryReceiverDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Detail : Tea.TeaModel {
            public var createTime: String?

            public var data: String?

            public var email: String?

            public var utcCreateTime: Int64?

            public override init() {
                super.init()
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
                if self.data != nil {
                    map["Data"] = self.data!
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.utcCreateTime != nil {
                    map["UtcCreateTime"] = self.utcCreateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Data") {
                    self.data = dict["Data"] as! String
                }
                if dict.keys.contains("Email") {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("UtcCreateTime") {
                    self.utcCreateTime = dict["UtcCreateTime"] as! Int64
                }
            }
        }
        public var detail: [QueryReceiverDetailResponseBody.Data.Detail]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detail != nil {
                var tmp : [Any] = []
                for k in self.detail! {
                    tmp.append(k.toMap())
                }
                map["detail"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("detail") {
                var tmp : [QueryReceiverDetailResponseBody.Data.Detail] = []
                for v in dict["detail"] as! [Any] {
                    var model = QueryReceiverDetailResponseBody.Data.Detail()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.detail = tmp
            }
        }
    }
    public var dataSchema: String?

    public var nextStart: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var data: QueryReceiverDetailResponseBody.Data?

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
        if self.dataSchema != nil {
            map["DataSchema"] = self.dataSchema!
        }
        if self.nextStart != nil {
            map["NextStart"] = self.nextStart!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataSchema") {
            self.dataSchema = dict["DataSchema"] as! String
        }
        if dict.keys.contains("NextStart") {
            self.nextStart = dict["NextStart"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("data") {
            var model = QueryReceiverDetailResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
    }
}

public class QueryReceiverDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryReceiverDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryReceiverDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryTagByParamRequest : Tea.TeaModel {
    public var keyWord: String?

    public var ownerId: Int64?

    public var pageNo: Int32?

    public var pageSize: Int32?

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
        if self.keyWord != nil {
            map["KeyWord"] = self.keyWord!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyWord") {
            self.keyWord = dict["KeyWord"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class QueryTagByParamResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Tag : Tea.TeaModel {
            public var tagDescription: String?

            public var tagId: String?

            public var tagName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tagDescription != nil {
                    map["TagDescription"] = self.tagDescription!
                }
                if self.tagId != nil {
                    map["TagId"] = self.tagId!
                }
                if self.tagName != nil {
                    map["TagName"] = self.tagName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TagDescription") {
                    self.tagDescription = dict["TagDescription"] as! String
                }
                if dict.keys.contains("TagId") {
                    self.tagId = dict["TagId"] as! String
                }
                if dict.keys.contains("TagName") {
                    self.tagName = dict["TagName"] as! String
                }
            }
        }
        public var tag: [QueryTagByParamResponseBody.Data.Tag]?

        public override init() {
            super.init()
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
                map["tag"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tag") {
                var tmp : [QueryTagByParamResponseBody.Data.Tag] = []
                for v in dict["tag"] as! [Any] {
                    var model = QueryTagByParamResponseBody.Data.Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tag = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var data: QueryTagByParamResponseBody.Data?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("data") {
            var model = QueryTagByParamResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
    }
}

public class QueryTagByParamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTagByParamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryTagByParamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryTaskByParamRequest : Tea.TeaModel {
    public var keyWord: String?

    public var ownerId: Int64?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var status: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyWord != nil {
            map["KeyWord"] = self.keyWord!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyWord") {
            self.keyWord = dict["KeyWord"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class QueryTaskByParamResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Task : Tea.TeaModel {
            public var addressType: String?

            public var createTime: String?

            public var receiversName: String?

            public var requestCount: String?

            public var tagName: String?

            public var taskId: String?

            public var taskStatus: String?

            public var templateName: String?

            public var utcCreateTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.addressType != nil {
                    map["AddressType"] = self.addressType!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.receiversName != nil {
                    map["ReceiversName"] = self.receiversName!
                }
                if self.requestCount != nil {
                    map["RequestCount"] = self.requestCount!
                }
                if self.tagName != nil {
                    map["TagName"] = self.tagName!
                }
                if self.taskId != nil {
                    map["TaskId"] = self.taskId!
                }
                if self.taskStatus != nil {
                    map["TaskStatus"] = self.taskStatus!
                }
                if self.templateName != nil {
                    map["TemplateName"] = self.templateName!
                }
                if self.utcCreateTime != nil {
                    map["UtcCreateTime"] = self.utcCreateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AddressType") {
                    self.addressType = dict["AddressType"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("ReceiversName") {
                    self.receiversName = dict["ReceiversName"] as! String
                }
                if dict.keys.contains("RequestCount") {
                    self.requestCount = dict["RequestCount"] as! String
                }
                if dict.keys.contains("TagName") {
                    self.tagName = dict["TagName"] as! String
                }
                if dict.keys.contains("TaskId") {
                    self.taskId = dict["TaskId"] as! String
                }
                if dict.keys.contains("TaskStatus") {
                    self.taskStatus = dict["TaskStatus"] as! String
                }
                if dict.keys.contains("TemplateName") {
                    self.templateName = dict["TemplateName"] as! String
                }
                if dict.keys.contains("UtcCreateTime") {
                    self.utcCreateTime = dict["UtcCreateTime"] as! Int64
                }
            }
        }
        public var task: [QueryTaskByParamResponseBody.Data.Task]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.task != nil {
                var tmp : [Any] = []
                for k in self.task! {
                    tmp.append(k.toMap())
                }
                map["task"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("task") {
                var tmp : [QueryTaskByParamResponseBody.Data.Task] = []
                for v in dict["task"] as! [Any] {
                    var model = QueryTaskByParamResponseBody.Data.Task()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.task = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var data: QueryTaskByParamResponseBody.Data?

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
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("data") {
            var model = QueryTaskByParamResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
    }
}

public class QueryTaskByParamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTaskByParamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryTaskByParamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveUserSuppressionRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var suppressionIds: String?

    public override init() {
        super.init()
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
        if self.suppressionIds != nil {
            map["SuppressionIds"] = self.suppressionIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SuppressionIds") {
            self.suppressionIds = dict["SuppressionIds"] as! String
        }
    }
}

public class RemoveUserSuppressionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class RemoveUserSuppressionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveUserSuppressionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RemoveUserSuppressionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SaveReceiverDetailRequest : Tea.TeaModel {
    public var detail: String?

    public var ownerId: Int64?

    public var receiverId: String?

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
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.receiverId != nil {
            map["ReceiverId"] = self.receiverId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Detail") {
            self.detail = dict["Detail"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ReceiverId") {
            self.receiverId = dict["ReceiverId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class SaveReceiverDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Detail : Tea.TeaModel {
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
                if self.email != nil {
                    map["Email"] = self.email!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Email") {
                    self.email = dict["Email"] as! String
                }
            }
        }
        public var detail: [SaveReceiverDetailResponseBody.Data.Detail]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detail != nil {
                var tmp : [Any] = []
                for k in self.detail! {
                    tmp.append(k.toMap())
                }
                map["Detail"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Detail") {
                var tmp : [SaveReceiverDetailResponseBody.Data.Detail] = []
                for v in dict["Detail"] as! [Any] {
                    var model = SaveReceiverDetailResponseBody.Data.Detail()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.detail = tmp
            }
        }
    }
    public var data: SaveReceiverDetailResponseBody.Data?

    public var errorCount: Int32?

    public var requestId: String?

    public var successCount: Int32?

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
        if self.errorCount != nil {
            map["ErrorCount"] = self.errorCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successCount != nil {
            map["SuccessCount"] = self.successCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = SaveReceiverDetailResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("ErrorCount") {
            self.errorCount = dict["ErrorCount"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessCount") {
            self.successCount = dict["SuccessCount"] as! Int32
        }
    }
}

public class SaveReceiverDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveReceiverDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SaveReceiverDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendTestByTemplateRequest : Tea.TeaModel {
    public var accountName: String?

    public var birthday: String?

    public var email: String?

    public var gender: String?

    public var mobile: String?

    public var nickName: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var templateId: Int32?

    public var userName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.birthday != nil {
            map["Birthday"] = self.birthday!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.gender != nil {
            map["Gender"] = self.gender!
        }
        if self.mobile != nil {
            map["Mobile"] = self.mobile!
        }
        if self.nickName != nil {
            map["NickName"] = self.nickName!
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
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("Birthday") {
            self.birthday = dict["Birthday"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("Gender") {
            self.gender = dict["Gender"] as! String
        }
        if dict.keys.contains("Mobile") {
            self.mobile = dict["Mobile"] as! String
        }
        if dict.keys.contains("NickName") {
            self.nickName = dict["NickName"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! Int32
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class SendTestByTemplateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class SendTestByTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendTestByTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SendTestByTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SenderStatisticsByTagNameAndBatchIDRequest : Tea.TeaModel {
    public var accountName: String?

    public var endTime: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var startTime: String?

    public var tagName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TagName") {
            self.tagName = dict["TagName"] as! String
        }
    }
}

public class SenderStatisticsByTagNameAndBatchIDResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Stat : Tea.TeaModel {
            public var createTime: String?

            public var faildCount: String?

            public var requestCount: String?

            public var succeededPercent: String?

            public var successCount: String?

            public var unavailableCount: String?

            public var unavailablePercent: String?

            public override init() {
                super.init()
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
                if self.faildCount != nil {
                    map["faildCount"] = self.faildCount!
                }
                if self.requestCount != nil {
                    map["requestCount"] = self.requestCount!
                }
                if self.succeededPercent != nil {
                    map["succeededPercent"] = self.succeededPercent!
                }
                if self.successCount != nil {
                    map["successCount"] = self.successCount!
                }
                if self.unavailableCount != nil {
                    map["unavailableCount"] = self.unavailableCount!
                }
                if self.unavailablePercent != nil {
                    map["unavailablePercent"] = self.unavailablePercent!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("faildCount") {
                    self.faildCount = dict["faildCount"] as! String
                }
                if dict.keys.contains("requestCount") {
                    self.requestCount = dict["requestCount"] as! String
                }
                if dict.keys.contains("succeededPercent") {
                    self.succeededPercent = dict["succeededPercent"] as! String
                }
                if dict.keys.contains("successCount") {
                    self.successCount = dict["successCount"] as! String
                }
                if dict.keys.contains("unavailableCount") {
                    self.unavailableCount = dict["unavailableCount"] as! String
                }
                if dict.keys.contains("unavailablePercent") {
                    self.unavailablePercent = dict["unavailablePercent"] as! String
                }
            }
        }
        public var stat: [SenderStatisticsByTagNameAndBatchIDResponseBody.Data.Stat]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.stat != nil {
                var tmp : [Any] = []
                for k in self.stat! {
                    tmp.append(k.toMap())
                }
                map["stat"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("stat") {
                var tmp : [SenderStatisticsByTagNameAndBatchIDResponseBody.Data.Stat] = []
                for v in dict["stat"] as! [Any] {
                    var model = SenderStatisticsByTagNameAndBatchIDResponseBody.Data.Stat()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.stat = tmp
            }
        }
    }
    public var requestId: String?

    public var totalCount: Int32?

    public var data: SenderStatisticsByTagNameAndBatchIDResponseBody.Data?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("data") {
            var model = SenderStatisticsByTagNameAndBatchIDResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
    }
}

public class SenderStatisticsByTagNameAndBatchIDResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SenderStatisticsByTagNameAndBatchIDResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SenderStatisticsByTagNameAndBatchIDResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SenderStatisticsDetailByParamRequest : Tea.TeaModel {
    public var accountName: String?

    public var endTime: String?

    public var length: Int32?

    public var nextStart: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var startTime: String?

    public var status: Int32?

    public var tagName: String?

    public var toAddress: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.length != nil {
            map["Length"] = self.length!
        }
        if self.nextStart != nil {
            map["NextStart"] = self.nextStart!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        if self.toAddress != nil {
            map["ToAddress"] = self.toAddress!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Length") {
            self.length = dict["Length"] as! Int32
        }
        if dict.keys.contains("NextStart") {
            self.nextStart = dict["NextStart"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("TagName") {
            self.tagName = dict["TagName"] as! String
        }
        if dict.keys.contains("ToAddress") {
            self.toAddress = dict["ToAddress"] as! String
        }
    }
}

public class SenderStatisticsDetailByParamResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class MailDetail : Tea.TeaModel {
            public var accountName: String?

            public var errorClassification: String?

            public var lastUpdateTime: String?

            public var message: String?

            public var status: Int32?

            public var subject: String?

            public var toAddress: String?

            public var utcLastUpdateTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountName != nil {
                    map["AccountName"] = self.accountName!
                }
                if self.errorClassification != nil {
                    map["ErrorClassification"] = self.errorClassification!
                }
                if self.lastUpdateTime != nil {
                    map["LastUpdateTime"] = self.lastUpdateTime!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.subject != nil {
                    map["Subject"] = self.subject!
                }
                if self.toAddress != nil {
                    map["ToAddress"] = self.toAddress!
                }
                if self.utcLastUpdateTime != nil {
                    map["UtcLastUpdateTime"] = self.utcLastUpdateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountName") {
                    self.accountName = dict["AccountName"] as! String
                }
                if dict.keys.contains("ErrorClassification") {
                    self.errorClassification = dict["ErrorClassification"] as! String
                }
                if dict.keys.contains("LastUpdateTime") {
                    self.lastUpdateTime = dict["LastUpdateTime"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("Subject") {
                    self.subject = dict["Subject"] as! String
                }
                if dict.keys.contains("ToAddress") {
                    self.toAddress = dict["ToAddress"] as! String
                }
                if dict.keys.contains("UtcLastUpdateTime") {
                    self.utcLastUpdateTime = dict["UtcLastUpdateTime"] as! String
                }
            }
        }
        public var mailDetail: [SenderStatisticsDetailByParamResponseBody.Data.MailDetail]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mailDetail != nil {
                var tmp : [Any] = []
                for k in self.mailDetail! {
                    tmp.append(k.toMap())
                }
                map["mailDetail"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("mailDetail") {
                var tmp : [SenderStatisticsDetailByParamResponseBody.Data.MailDetail] = []
                for v in dict["mailDetail"] as! [Any] {
                    var model = SenderStatisticsDetailByParamResponseBody.Data.MailDetail()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.mailDetail = tmp
            }
        }
    }
    public var nextStart: String?

    public var requestId: String?

    public var data: SenderStatisticsDetailByParamResponseBody.Data?

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
        if self.nextStart != nil {
            map["NextStart"] = self.nextStart!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextStart") {
            self.nextStart = dict["NextStart"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") {
            var model = SenderStatisticsDetailByParamResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
    }
}

public class SenderStatisticsDetailByParamResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SenderStatisticsDetailByParamResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SenderStatisticsDetailByParamResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetSuppressionListLevelRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var suppressionListLevel: String?

    public override init() {
        super.init()
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
        if self.suppressionListLevel != nil {
            map["SuppressionListLevel"] = self.suppressionListLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SuppressionListLevel") {
            self.suppressionListLevel = dict["SuppressionListLevel"] as! String
        }
    }
}

public class SetSuppressionListLevelResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var suppressionListLevel: String?

    public override init() {
        super.init()
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
        if self.suppressionListLevel != nil {
            map["SuppressionListLevel"] = self.suppressionListLevel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuppressionListLevel") {
            self.suppressionListLevel = dict["SuppressionListLevel"] as! String
        }
    }
}

public class SetSuppressionListLevelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetSuppressionListLevelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SetSuppressionListLevelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SingleSendMailRequest : Tea.TeaModel {
    public var accountName: String?

    public var addressType: Int32?

    public var clickTrace: String?

    public var fromAlias: String?

    public var htmlBody: String?

    public var ownerId: Int64?

    public var replyAddress: String?

    public var replyAddressAlias: String?

    public var replyToAddress: Bool?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subject: String?

    public var tagName: String?

    public var textBody: String?

    public var toAddress: String?

    public var unSubscribeFilterLevel: String?

    public var unSubscribeLinkType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.addressType != nil {
            map["AddressType"] = self.addressType!
        }
        if self.clickTrace != nil {
            map["ClickTrace"] = self.clickTrace!
        }
        if self.fromAlias != nil {
            map["FromAlias"] = self.fromAlias!
        }
        if self.htmlBody != nil {
            map["HtmlBody"] = self.htmlBody!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.replyAddress != nil {
            map["ReplyAddress"] = self.replyAddress!
        }
        if self.replyAddressAlias != nil {
            map["ReplyAddressAlias"] = self.replyAddressAlias!
        }
        if self.replyToAddress != nil {
            map["ReplyToAddress"] = self.replyToAddress!
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
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        if self.textBody != nil {
            map["TextBody"] = self.textBody!
        }
        if self.toAddress != nil {
            map["ToAddress"] = self.toAddress!
        }
        if self.unSubscribeFilterLevel != nil {
            map["UnSubscribeFilterLevel"] = self.unSubscribeFilterLevel!
        }
        if self.unSubscribeLinkType != nil {
            map["UnSubscribeLinkType"] = self.unSubscribeLinkType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AddressType") {
            self.addressType = dict["AddressType"] as! Int32
        }
        if dict.keys.contains("ClickTrace") {
            self.clickTrace = dict["ClickTrace"] as! String
        }
        if dict.keys.contains("FromAlias") {
            self.fromAlias = dict["FromAlias"] as! String
        }
        if dict.keys.contains("HtmlBody") {
            self.htmlBody = dict["HtmlBody"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ReplyAddress") {
            self.replyAddress = dict["ReplyAddress"] as! String
        }
        if dict.keys.contains("ReplyAddressAlias") {
            self.replyAddressAlias = dict["ReplyAddressAlias"] as! String
        }
        if dict.keys.contains("ReplyToAddress") {
            self.replyToAddress = dict["ReplyToAddress"] as! Bool
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Subject") {
            self.subject = dict["Subject"] as! String
        }
        if dict.keys.contains("TagName") {
            self.tagName = dict["TagName"] as! String
        }
        if dict.keys.contains("TextBody") {
            self.textBody = dict["TextBody"] as! String
        }
        if dict.keys.contains("ToAddress") {
            self.toAddress = dict["ToAddress"] as! String
        }
        if dict.keys.contains("UnSubscribeFilterLevel") {
            self.unSubscribeFilterLevel = dict["UnSubscribeFilterLevel"] as! String
        }
        if dict.keys.contains("UnSubscribeLinkType") {
            self.unSubscribeLinkType = dict["UnSubscribeLinkType"] as! String
        }
    }
}

public class SingleSendMailResponseBody : Tea.TeaModel {
    public var envId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.envId != nil {
            map["EnvId"] = self.envId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnvId") {
            self.envId = dict["EnvId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SingleSendMailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SingleSendMailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SingleSendMailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateIpProtectionRequest : Tea.TeaModel {
    public var ipProtection: String?

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
        if self.ipProtection != nil {
            map["IpProtection"] = self.ipProtection!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpProtection") {
            self.ipProtection = dict["IpProtection"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class UpdateIpProtectionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class UpdateIpProtectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateIpProtectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateIpProtectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserRequest : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public var enableEventbridge: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableEventbridge != nil {
                map["EnableEventbridge"] = self.enableEventbridge!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EnableEventbridge") {
                self.enableEventbridge = dict["EnableEventbridge"] as! Bool
            }
        }
    }
    public var user: UpdateUserRequest.User?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.user?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("User") {
            var model = UpdateUserRequest.User()
            model.fromMap(dict["User"] as! [String: Any])
            self.user = model
        }
    }
}

public class UpdateUserShrinkRequest : Tea.TeaModel {
    public var userShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userShrink != nil {
            map["User"] = self.userShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("User") {
            self.userShrink = dict["User"] as! String
        }
    }
}

public class UpdateUserResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
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

public class UpdateUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
